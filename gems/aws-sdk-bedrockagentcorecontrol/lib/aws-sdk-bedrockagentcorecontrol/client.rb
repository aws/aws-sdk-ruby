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

module Aws::BedrockAgentCoreControl
  # An API client for BedrockAgentCoreControl.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::BedrockAgentCoreControl::Client.new(
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

    @identifier = :bedrockagentcorecontrol

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
    add_plugin(Aws::BedrockAgentCoreControl::Plugins::Endpoints)

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
    #     Used only in `standard` and `adaptive` retry modes. Specifies whether to apply
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
    #     * `legacy` - The pre-existing retry behavior. This is the default
    #       value if no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - A retry mode that includes all the functionality of
    #       `standard` mode along with automatic client side throttling.
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
    #   @option options [Aws::BedrockAgentCoreControl::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::BedrockAgentCoreControl::EndpointParameters`.
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

    # Adds examples to the dataset's DRAFT. All examples are validated
    # against the dataset's schema type before any writes occur. If any
    # example fails validation, the entire batch is rejected (all-or-nothing
    # semantics).
    #
    # @option params [required, String] :dataset_id
    #   The unique identifier of the dataset to add examples to.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a previous
    #   request, the service ignores the request, but doesn't return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, Types::DataSourceType] :source
    #   Source of examples to add. Provide either inline examples or an S3 URI
    #   pointing to a JSONL file.
    #
    # @return [Types::AddDatasetExamplesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddDatasetExamplesResponse#dataset_arn #dataset_arn} => String
    #   * {Types::AddDatasetExamplesResponse#dataset_id #dataset_id} => String
    #   * {Types::AddDatasetExamplesResponse#status #status} => String
    #   * {Types::AddDatasetExamplesResponse#added_count #added_count} => Integer
    #   * {Types::AddDatasetExamplesResponse#updated_at #updated_at} => Time
    #   * {Types::AddDatasetExamplesResponse#example_ids #example_ids} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_dataset_examples({
    #     dataset_id: "DatasetId", # required
    #     client_token: "ClientToken",
    #     source: { # required
    #       inline_examples: {
    #         examples: [ # required
    #           {
    #           },
    #         ],
    #       },
    #       s3_source: {
    #         s3_uri: "S3Uri", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_arn #=> String
    #   resp.dataset_id #=> String
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
    #   resp.added_count #=> Integer
    #   resp.updated_at #=> Time
    #   resp.example_ids #=> Array
    #   resp.example_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/AddDatasetExamples AWS API Documentation
    #
    # @overload add_dataset_examples(params = {})
    # @param [Hash] params ({})
    def add_dataset_examples(params = {}, options = {})
      req = build_request(:add_dataset_examples, params)
      req.send_request(options)
    end

    # Atomically creates or updates multiple rate limits for a gateway. The
    # operation updates existing limits with matching keys and creates new
    # limits for new keys. If the operation fails, the service applies no
    # changes. Retry the request after resolving the issue.
    #
    # @option params [required, String] :gateway_identifier
    #   The unique identifier of the gateway.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a previous
    #   request, the service ignores the request, but doesn't return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, Array<Types::BatchPutLimitEntry>] :rate_limits
    #   The complete set of rate limits for this gateway. This operation
    #   replaces all existing rate limits in a single request. If the
    #   operation fails, no rate limits are changed.
    #
    # @return [Types::BatchPutGatewayRateLimitsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchPutGatewayRateLimitsResponse#rate_limits #rate_limits} => Array&lt;Types::GatewayRateLimitDetail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_put_gateway_rate_limits({
    #     gateway_identifier: "GatewayIdentifier", # required
    #     client_token: "ClientToken",
    #     rate_limits: [ # required
    #       {
    #         rate_limit_id: "GatewayRateLimitId",
    #         description: "GatewayRateLimitDescription",
    #         dimension_keys: ["DimensionKey"], # required
    #         entries: [ # required
    #           {
    #             dimensions: { # required
    #               "DimensionKey" => "DimensionValue",
    #             },
    #             requests: [
    #               {
    #                 rate: 1.0, # required
    #                 period: "second", # required, accepts second, minute
    #               },
    #             ],
    #             tokens: [
    #               {
    #                 rate: 1.0, # required
    #                 period: "second", # required, accepts second, minute
    #               },
    #             ],
    #             connections: [
    #               {
    #                 rate: 1.0, # required
    #                 period: "second", # required, accepts second, minute
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.rate_limits #=> Array
    #   resp.rate_limits[0].rate_limit_id #=> String
    #   resp.rate_limits[0].gateway_identifier #=> String
    #   resp.rate_limits[0].description #=> String
    #   resp.rate_limits[0].dimension_keys #=> Array
    #   resp.rate_limits[0].dimension_keys[0] #=> String
    #   resp.rate_limits[0].entries #=> Array
    #   resp.rate_limits[0].entries[0].dimensions #=> Hash
    #   resp.rate_limits[0].entries[0].dimensions["DimensionKey"] #=> String
    #   resp.rate_limits[0].entries[0].requests #=> Array
    #   resp.rate_limits[0].entries[0].requests[0].rate #=> Float
    #   resp.rate_limits[0].entries[0].requests[0].period #=> String, one of "second", "minute"
    #   resp.rate_limits[0].entries[0].tokens #=> Array
    #   resp.rate_limits[0].entries[0].tokens[0].rate #=> Float
    #   resp.rate_limits[0].entries[0].tokens[0].period #=> String, one of "second", "minute"
    #   resp.rate_limits[0].entries[0].connections #=> Array
    #   resp.rate_limits[0].entries[0].connections[0].rate #=> Float
    #   resp.rate_limits[0].entries[0].connections[0].period #=> String, one of "second", "minute"
    #   resp.rate_limits[0].status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING"
    #   resp.rate_limits[0].created_at #=> Time
    #   resp.rate_limits[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/BatchPutGatewayRateLimits AWS API Documentation
    #
    # @overload batch_put_gateway_rate_limits(params = {})
    # @param [Hash] params ({})
    def batch_put_gateway_rate_limits(params = {}, options = {})
      req = build_request(:batch_put_gateway_rate_limits, params)
      req.send_request(options)
    end

    # Creates an Amazon Bedrock AgentCore Runtime.
    #
    # @option params [required, String] :agent_runtime_name
    #   The name of the AgentCore Runtime.
    #
    # @option params [required, Types::AgentRuntimeArtifact] :agent_runtime_artifact
    #   The artifact of the AgentCore Runtime.
    #
    # @option params [required, String] :role_arn
    #   The IAM role ARN that provides permissions for the AgentCore Runtime.
    #
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   The network configuration for the AgentCore Runtime.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   The description of the AgentCore Runtime.
    #
    # @option params [Types::AuthorizerConfiguration] :authorizer_configuration
    #   The authorizer configuration for the AgentCore Runtime.
    #
    # @option params [Types::RequestHeaderConfiguration] :request_header_configuration
    #   Configuration for HTTP request headers that will be passed through to
    #   the runtime.
    #
    # @option params [Types::ProtocolConfiguration] :protocol_configuration
    #   The protocol configuration for an agent runtime. This structure
    #   defines how the agent runtime communicates with clients.
    #
    # @option params [Types::LifecycleConfiguration] :lifecycle_configuration
    #   The life cycle configuration for the AgentCore Runtime.
    #
    # @option params [Hash<String,String>] :environment_variables
    #   Environment variables to set in the AgentCore Runtime environment.
    #
    # @option params [Array<Types::FilesystemConfiguration>] :filesystem_configurations
    #   The filesystem configurations to mount into the AgentCore Runtime. Use
    #   filesystem configurations to provide persistent storage to your
    #   AgentCore Runtime sessions.
    #
    # @option params [Types::CapacityProviderConfiguration] :capacity_provider_configuration
    #   The capacity provider configuration for the AgentCore Runtime. Use a
    #   capacity provider to run the AgentCore Runtime on the Instances
    #   compute type, which provisions Amazon Web Services managed compute in
    #   your account.
    #
    # @option params [Hash<String,String>] :tags
    #   A map of tag keys and values to assign to the agent runtime. Tags
    #   enable you to categorize your resources in different ways, for
    #   example, by purpose, owner, or environment.
    #
    # @return [Types::CreateAgentRuntimeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAgentRuntimeResponse#agent_runtime_arn #agent_runtime_arn} => String
    #   * {Types::CreateAgentRuntimeResponse#workload_identity_details #workload_identity_details} => Types::WorkloadIdentityDetails
    #   * {Types::CreateAgentRuntimeResponse#agent_runtime_id #agent_runtime_id} => String
    #   * {Types::CreateAgentRuntimeResponse#agent_runtime_version #agent_runtime_version} => String
    #   * {Types::CreateAgentRuntimeResponse#created_at #created_at} => Time
    #   * {Types::CreateAgentRuntimeResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_agent_runtime({
    #     agent_runtime_name: "AgentRuntimeName", # required
    #     agent_runtime_artifact: { # required
    #       container_configuration: {
    #         container_uri: "RuntimeContainerUri", # required
    #       },
    #       code_configuration: {
    #         code: { # required
    #           s3: {
    #             bucket: "S3LocationBucketString", # required
    #             prefix: "S3LocationPrefixString", # required
    #             version_id: "S3LocationVersionIdString",
    #           },
    #         },
    #         runtime: "PYTHON_3_10", # required, accepts PYTHON_3_10, PYTHON_3_11, PYTHON_3_12, PYTHON_3_13, PYTHON_3_14, NODE_22
    #         entry_point: ["entryPoint"], # required
    #       },
    #     },
    #     role_arn: "RoleArn", # required
    #     network_configuration: {
    #       network_mode: "PUBLIC", # required, accepts PUBLIC, VPC
    #       network_mode_config: {
    #         security_groups: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #         require_service_s3_endpoint: false,
    #       },
    #     },
    #     client_token: "ClientToken",
    #     description: "Description",
    #     authorizer_configuration: {
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"],
    #         allowed_scopes: ["AllowedScopeType"],
    #         advertised_scope_mapping: {
    #           "AllowedScopeType" => "AllowedScopeType",
    #         },
    #         custom_claims: [
    #           {
    #             inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #             inbound_token_claim_value_type: "STRING", # required, accepts STRING, STRING_ARRAY
    #             authorizing_claim_match_value: { # required
    #               claim_match_value: { # required
    #                 match_value_string: "MatchValueString",
    #                 match_value_string_list: ["MatchValueString"],
    #               },
    #               claim_match_operator: "EQUALS", # required, accepts EQUALS, CONTAINS, CONTAINS_ANY
    #             },
    #           },
    #         ],
    #         private_endpoint: {
    #           self_managed_lattice_resource: {
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier",
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4", # required, accepts IPV4, IPV6
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue",
    #             },
    #             routing_domain: "RoutingDomain",
    #           },
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               self_managed_lattice_resource: {
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier",
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4", # required, accepts IPV4, IPV6
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue",
    #                 },
    #                 routing_domain: "RoutingDomain",
    #               },
    #             },
    #           },
    #         ],
    #         allowed_workload_configuration: {
    #           hosting_environments: [
    #             {
    #               arn: "BedrockAgentcoreResourceArn", # required
    #             },
    #           ],
    #           workload_identities: ["WorkloadIdentityNameType"],
    #         },
    #       },
    #     },
    #     request_header_configuration: {
    #       request_header_allowlist: ["HeaderName"],
    #     },
    #     protocol_configuration: {
    #       server_protocol: "MCP", # required, accepts MCP, HTTP, A2A, AGUI
    #     },
    #     lifecycle_configuration: {
    #       idle_runtime_session_timeout: 1,
    #       max_lifetime: 1,
    #     },
    #     environment_variables: {
    #       "EnvironmentVariableKey" => "EnvironmentVariableValue",
    #     },
    #     filesystem_configurations: [
    #       {
    #         session_storage: {
    #           mount_path: "MountPath", # required
    #         },
    #         s3_files_access_point: {
    #           access_point_arn: "S3FilesAccessPointArn", # required
    #           mount_path: "MountPath", # required
    #         },
    #         efs_access_point: {
    #           access_point_arn: "EfsAccessPointArn", # required
    #           mount_path: "MountPath", # required
    #         },
    #         capacity_provider_volume: {
    #           volume_name: "CapacityProviderVolumeName", # required
    #           mount_path: "MountPath", # required
    #         },
    #       },
    #     ],
    #     capacity_provider_configuration: {
    #       capacity_provider_arn: "CapacityProviderArn", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_runtime_arn #=> String
    #   resp.workload_identity_details.workload_identity_arn #=> String
    #   resp.agent_runtime_id #=> String
    #   resp.agent_runtime_version #=> String
    #   resp.created_at #=> Time
    #   resp.status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateAgentRuntime AWS API Documentation
    #
    # @overload create_agent_runtime(params = {})
    # @param [Hash] params ({})
    def create_agent_runtime(params = {}, options = {})
      req = build_request(:create_agent_runtime, params)
      req.send_request(options)
    end

    # Creates an AgentCore Runtime endpoint.
    #
    # @option params [required, String] :agent_runtime_id
    #   The unique identifier of the AgentCore Runtime to create an endpoint
    #   for.
    #
    # @option params [required, String] :name
    #   The name of the AgentCore Runtime endpoint.
    #
    # @option params [String] :agent_runtime_version
    #   The version of the AgentCore Runtime to use for the endpoint.
    #
    # @option params [String] :description
    #   The description of the AgentCore Runtime endpoint.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   A map of tag keys and values to assign to the agent runtime endpoint.
    #   Tags enable you to categorize your resources in different ways, for
    #   example, by purpose, owner, or environment.
    #
    # @return [Types::CreateAgentRuntimeEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAgentRuntimeEndpointResponse#target_version #target_version} => String
    #   * {Types::CreateAgentRuntimeEndpointResponse#agent_runtime_endpoint_arn #agent_runtime_endpoint_arn} => String
    #   * {Types::CreateAgentRuntimeEndpointResponse#agent_runtime_arn #agent_runtime_arn} => String
    #   * {Types::CreateAgentRuntimeEndpointResponse#agent_runtime_id #agent_runtime_id} => String
    #   * {Types::CreateAgentRuntimeEndpointResponse#endpoint_name #endpoint_name} => String
    #   * {Types::CreateAgentRuntimeEndpointResponse#status #status} => String
    #   * {Types::CreateAgentRuntimeEndpointResponse#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_agent_runtime_endpoint({
    #     agent_runtime_id: "AgentRuntimeId", # required
    #     name: "EndpointName", # required
    #     agent_runtime_version: "AgentRuntimeVersion",
    #     description: "AgentEndpointDescription",
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.target_version #=> String
    #   resp.agent_runtime_endpoint_arn #=> String
    #   resp.agent_runtime_arn #=> String
    #   resp.agent_runtime_id #=> String
    #   resp.endpoint_name #=> String
    #   resp.status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING"
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateAgentRuntimeEndpoint AWS API Documentation
    #
    # @overload create_agent_runtime_endpoint(params = {})
    # @param [Hash] params ({})
    def create_agent_runtime_endpoint(params = {}, options = {})
      req = build_request(:create_agent_runtime_endpoint, params)
      req.send_request(options)
    end

    # Creates a new API key credential provider.
    #
    # @option params [required, String] :name
    #   The name of the API key credential provider. The name must be unique
    #   within your account.
    #
    # @option params [String] :api_key
    #   The API key to use for authentication. This value is encrypted and
    #   stored securely.
    #
    # @option params [Types::SecretReference] :api_key_secret_config
    #   A reference to the Amazon Web Services Secrets Manager secret that
    #   stores the API key. This includes the secret ID and the JSON key used
    #   to extract the API key value from the secret. Required when
    #   `apiKeySecretSource` is set to `EXTERNAL`.
    #
    # @option params [String] :api_key_secret_source
    #   The source type of the API key secret. Use `MANAGED` if the secret is
    #   managed by the service, or `EXTERNAL` if you manage the secret
    #   yourself in Amazon Web Services Secrets Manager.
    #
    # @option params [Hash<String,String>] :tags
    #   A map of tag keys and values to assign to the API key credential
    #   provider. Tags enable you to categorize your resources in different
    #   ways, for example, by purpose, owner, or environment.
    #
    # @return [Types::CreateApiKeyCredentialProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateApiKeyCredentialProviderResponse#api_key_secret_arn #api_key_secret_arn} => Types::Secret
    #   * {Types::CreateApiKeyCredentialProviderResponse#api_key_secret_json_key #api_key_secret_json_key} => String
    #   * {Types::CreateApiKeyCredentialProviderResponse#api_key_secret_source #api_key_secret_source} => String
    #   * {Types::CreateApiKeyCredentialProviderResponse#name #name} => String
    #   * {Types::CreateApiKeyCredentialProviderResponse#credential_provider_arn #credential_provider_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_api_key_credential_provider({
    #     name: "CredentialProviderName", # required
    #     api_key: "DefaultApiKeyType",
    #     api_key_secret_config: {
    #       secret_id: "SecretIdType", # required
    #       json_key: "SecretJsonKeyType", # required
    #     },
    #     api_key_secret_source: "MANAGED", # accepts MANAGED, EXTERNAL
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.api_key_secret_arn.secret_arn #=> String
    #   resp.api_key_secret_json_key #=> String
    #   resp.api_key_secret_source #=> String, one of "MANAGED", "EXTERNAL"
    #   resp.name #=> String
    #   resp.credential_provider_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateApiKeyCredentialProvider AWS API Documentation
    #
    # @overload create_api_key_credential_provider(params = {})
    # @param [Hash] params ({})
    def create_api_key_credential_provider(params = {}, options = {})
      req = build_request(:create_api_key_credential_provider, params)
      req.send_request(options)
    end

    # Creates a custom browser.
    #
    # @option params [required, String] :name
    #   The name of the browser. The name must be unique within your account.
    #
    # @option params [String] :description
    #   The description of the browser.
    #
    # @option params [String] :execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that provides
    #   permissions for the browser to access Amazon Web Services services.
    #
    # @option params [required, Types::BrowserNetworkConfiguration] :network_configuration
    #   The network configuration for the browser. This configuration
    #   specifies the network mode for the browser.
    #
    # @option params [Types::RecordingConfig] :recording
    #   The recording configuration for the browser. When enabled, browser
    #   sessions are recorded and stored in the specified Amazon S3 location.
    #
    # @option params [Types::BrowserSigningConfigInput] :browser_signing
    #   The browser signing configuration that enables cryptographic agent
    #   identification using HTTP message signatures for web bot
    #   authentication.
    #
    # @option params [Array<Types::BrowserEnterprisePolicy>] :enterprise_policies
    #   A list of enterprise policy files for the browser.
    #
    # @option params [Array<Types::Certificate>] :certificates
    #   A list of certificates to install in the browser.
    #
    # @option params [Array<Types::ToolsFileSystemConfiguration>] :filesystem_configurations
    #   The file system configurations to mount into the browser. Use these
    #   configurations to mount your own Amazon Simple Storage Service (Amazon
    #   S3) Files or Amazon Elastic File System (Amazon EFS) access points.
    #   Your sessions can then access your data. If you don't specify this
    #   field, no file systems are mounted.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the operation
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock AgentCore ignores the request but does not
    #   return an error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   A map of tag keys and values to assign to the browser. Tags enable you
    #   to categorize your resources in different ways, for example, by
    #   purpose, owner, or environment.
    #
    # @return [Types::CreateBrowserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBrowserResponse#browser_id #browser_id} => String
    #   * {Types::CreateBrowserResponse#browser_arn #browser_arn} => String
    #   * {Types::CreateBrowserResponse#created_at #created_at} => Time
    #   * {Types::CreateBrowserResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_browser({
    #     name: "SandboxName", # required
    #     description: "Description",
    #     execution_role_arn: "RoleArn",
    #     network_configuration: { # required
    #       network_mode: "PUBLIC", # required, accepts PUBLIC, VPC
    #       vpc_config: {
    #         security_groups: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #         require_service_s3_endpoint: false,
    #       },
    #     },
    #     recording: {
    #       enabled: false,
    #       s3_location: {
    #         bucket: "S3LocationBucketString", # required
    #         prefix: "S3LocationPrefixString", # required
    #         version_id: "S3LocationVersionIdString",
    #       },
    #     },
    #     browser_signing: {
    #       enabled: false, # required
    #     },
    #     enterprise_policies: [
    #       {
    #         location: { # required
    #           s3: {
    #             bucket: "S3LocationBucketString", # required
    #             prefix: "S3LocationPrefixString", # required
    #             version_id: "S3LocationVersionIdString",
    #           },
    #         },
    #         type: "MANAGED", # accepts MANAGED, RECOMMENDED
    #       },
    #     ],
    #     certificates: [
    #       {
    #         location: { # required
    #           secrets_manager: {
    #             secret_arn: "ToolSecretArn", # required
    #           },
    #         },
    #       },
    #     ],
    #     filesystem_configurations: [
    #       {
    #         s3_files_configuration: {
    #           access_point_arn: "S3FilesAccessPointArn", # required
    #           mount_path: "MountPath", # required
    #           file_system_arn: "S3FilesFileSystemArn", # required
    #         },
    #         efs_configuration: {
    #           access_point_arn: "EfsAccessPointArn", # required
    #           mount_path: "MountPath", # required
    #           file_system_arn: "EfsFileSystemArn", # required
    #         },
    #       },
    #     ],
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.browser_id #=> String
    #   resp.browser_arn #=> String
    #   resp.created_at #=> Time
    #   resp.status #=> String, one of "CREATING", "CREATE_FAILED", "READY", "DELETING", "DELETE_FAILED", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateBrowser AWS API Documentation
    #
    # @overload create_browser(params = {})
    # @param [Hash] params ({})
    def create_browser(params = {}, options = {})
      req = build_request(:create_browser, params)
      req.send_request(options)
    end

    # Creates a browser profile in Amazon Bedrock AgentCore. A browser
    # profile stores persistent browser data such as cookies, local storage,
    # session storage, and browsing history that can be saved from browser
    # sessions and reused in subsequent sessions.
    #
    # @option params [required, String] :name
    #   The name of the browser profile. The name must be unique within your
    #   account and can contain alphanumeric characters and underscores.
    #
    # @option params [String] :description
    #   A description of the browser profile. Use this field to describe the
    #   purpose or contents of the profile.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the operation
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock AgentCore ignores the request but does not
    #   return an error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   A map of tag keys and values to assign to the browser profile. Tags
    #   enable you to categorize your resources in different ways, for
    #   example, by purpose, owner, or environment.
    #
    # @return [Types::CreateBrowserProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBrowserProfileResponse#profile_id #profile_id} => String
    #   * {Types::CreateBrowserProfileResponse#profile_arn #profile_arn} => String
    #   * {Types::CreateBrowserProfileResponse#created_at #created_at} => Time
    #   * {Types::CreateBrowserProfileResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_browser_profile({
    #     name: "BrowserProfileName", # required
    #     description: "Description",
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_id #=> String
    #   resp.profile_arn #=> String
    #   resp.created_at #=> Time
    #   resp.status #=> String, one of "READY", "DELETING", "DELETED", "SAVING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateBrowserProfile AWS API Documentation
    #
    # @overload create_browser_profile(params = {})
    # @param [Hash] params ({})
    def create_browser_profile(params = {}, options = {})
      req = build_request(:create_browser_profile, params)
      req.send_request(options)
    end

    # Creates a capacity provider. A capacity provider defines the Amazon
    # EC2 infrastructure for AgentCore Runtime, including the operating
    # system, allowed instance types, networking, and storage. It also
    # specifies the IAM permissions that AgentCore uses to manage those
    # instances.
    #
    # The capacity provider name must be unique within your account. After
    # you create the capacity provider, it enters a `CREATING` state and
    # transitions to `READY` when it is available for use.
    #
    # @option params [required, String] :name
    #   The name of the capacity provider. The name must be unique within your
    #   account.
    #
    # @option params [String] :description
    #   An optional description of the capacity provider. If you don't
    #   specify a description, the service creates the capacity provider
    #   without one.
    #
    # @option params [required, Types::PermissionsConfiguration] :permissions_configuration
    #   The permissions configuration for the capacity provider. This
    #   specifies the IAM role that AgentCore uses to manage the Amazon EC2
    #   instances on your behalf.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a previous
    #   request, the service ignores the request, but doesn't return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [Hash<String,String>] :tags
    #   A map of tag keys and values to associate with the capacity provider.
    #   If you don't specify tags, the capacity provider is created with no
    #   tags.
    #
    # @option params [required, Types::ComputeConfiguration] :compute_configuration
    #   The compute configuration for the capacity provider. This defines the
    #   Amazon EC2 compute resources used to launch instances: the operating
    #   system, allowed instance types, networking, and storage.
    #
    # @return [Types::CreateCapacityProviderOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCapacityProviderOutput#capacity_provider_id #capacity_provider_id} => String
    #   * {Types::CreateCapacityProviderOutput#capacity_provider_arn #capacity_provider_arn} => String
    #   * {Types::CreateCapacityProviderOutput#name #name} => String
    #   * {Types::CreateCapacityProviderOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_capacity_provider({
    #     name: "CapacityProviderName", # required
    #     description: "Description",
    #     permissions_configuration: { # required
    #       capacity_provider_operator_role_arn: "RoleArn", # required
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     compute_configuration: { # required
    #       ec2_configuration: {
    #         launch_template_source: { # required
    #           launch_parameters: {
    #             operating_system: "LINUX_X86_64", # required, accepts LINUX_X86_64, LINUX_ARM64
    #             instance_requirements: { # required
    #               allowed_instance_types: ["EC2InstanceType"], # required
    #             },
    #             ephemeral_volumes: [
    #               {
    #                 device_name: "DeviceName",
    #                 virtual_name: "VirtualDeviceName",
    #                 ebs: {
    #                   volume_type: "standard", # accepts standard, io1, io2, gp2, sc1, st1, gp3
    #                   iops: 1,
    #                   throughput: 1,
    #                   encrypted: false,
    #                   kms_key_id: "KmsKeyId",
    #                   snapshot_id: "EbsSnapshotId",
    #                   volume_size: 1,
    #                   volume_initialization_rate: 1,
    #                   ebs_card_index: 1,
    #                 },
    #               },
    #             ],
    #             monitoring: "BASIC", # accepts BASIC, DETAILED
    #             license_specifications: [
    #               {
    #                 license_configuration_arn: "LicenseConfigurationArn", # required
    #               },
    #             ],
    #             capacity_reservation_specification: {
    #               capacity_reservation_preference: "capacity-reservations-only", # accepts capacity-reservations-only, open, none
    #               capacity_reservation_target: {
    #                 capacity_reservation_id: "CapacityReservationId",
    #                 capacity_reservation_resource_group_arn: "CapacityReservationResourceGroupArn",
    #               },
    #             },
    #             ssh_key_name: "SSHKeyName",
    #             instance_profile_arn: "InstanceProfileArn",
    #             propagated_tags: {
    #               "TagKey" => "TagValue",
    #             },
    #           },
    #         },
    #         vpc_configuration: { # required
    #           subnets: ["SubnetId"], # required
    #           security_groups: ["SecurityGroupId"], # required
    #         },
    #         volumes: [
    #           {
    #             ebs_configuration: {
    #               name: "VolumeName", # required
    #               size_gi_b: 1, # required
    #               volume_type: "standard", # accepts standard, io1, io2, gp2, sc1, st1, gp3
    #               iops: 1,
    #               throughput: 1,
    #               encrypted: false,
    #               kms_key_id: "KmsKeyId",
    #               snapshot_id: "EbsSnapshotId",
    #             },
    #           },
    #         ],
    #         lifecycle_configuration: {
    #           idle_instance_timeout: 1,
    #           max_lifetime: 1,
    #         },
    #         root_volume: {
    #           volume_type: "standard", # accepts standard, io1, io2, gp2, sc1, st1, gp3
    #           iops: 1,
    #           throughput: 1,
    #           encrypted: false,
    #           kms_key_id: "KmsKeyId",
    #           free_space_gi_b: 1,
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.capacity_provider_id #=> String
    #   resp.capacity_provider_arn #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateCapacityProvider AWS API Documentation
    #
    # @overload create_capacity_provider(params = {})
    # @param [Hash] params ({})
    def create_capacity_provider(params = {}, options = {})
      req = build_request(:create_capacity_provider, params)
      req.send_request(options)
    end

    # Creates a custom code interpreter.
    #
    # @option params [required, String] :name
    #   The name of the code interpreter. The name must be unique within your
    #   account.
    #
    # @option params [String] :description
    #   The description of the code interpreter.
    #
    # @option params [String] :execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that provides
    #   permissions for the code interpreter to access Amazon Web Services
    #   services.
    #
    # @option params [required, Types::CodeInterpreterNetworkConfiguration] :network_configuration
    #   The network configuration for the code interpreter. This configuration
    #   specifies the network mode for the code interpreter.
    #
    # @option params [Array<Types::Certificate>] :certificates
    #   A list of certificates to install in the code interpreter.
    #
    # @option params [Array<Types::ToolsFileSystemConfiguration>] :filesystem_configurations
    #   The file system configurations to mount into the code interpreter. Use
    #   these configurations to mount your own Amazon Simple Storage Service
    #   (Amazon S3) Files or Amazon Elastic File System (Amazon EFS) access
    #   points. Your sessions can then access your data. If you don't specify
    #   this field, no file systems are mounted.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the operation
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock AgentCore ignores the request but does not
    #   return an error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   A map of tag keys and values to assign to the code interpreter. Tags
    #   enable you to categorize your resources in different ways, for
    #   example, by purpose, owner, or environment.
    #
    # @return [Types::CreateCodeInterpreterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCodeInterpreterResponse#code_interpreter_id #code_interpreter_id} => String
    #   * {Types::CreateCodeInterpreterResponse#code_interpreter_arn #code_interpreter_arn} => String
    #   * {Types::CreateCodeInterpreterResponse#created_at #created_at} => Time
    #   * {Types::CreateCodeInterpreterResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_code_interpreter({
    #     name: "SandboxName", # required
    #     description: "Description",
    #     execution_role_arn: "RoleArn",
    #     network_configuration: { # required
    #       network_mode: "PUBLIC", # required, accepts PUBLIC, SANDBOX, VPC
    #       vpc_config: {
    #         security_groups: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #         require_service_s3_endpoint: false,
    #       },
    #     },
    #     certificates: [
    #       {
    #         location: { # required
    #           secrets_manager: {
    #             secret_arn: "ToolSecretArn", # required
    #           },
    #         },
    #       },
    #     ],
    #     filesystem_configurations: [
    #       {
    #         s3_files_configuration: {
    #           access_point_arn: "S3FilesAccessPointArn", # required
    #           mount_path: "MountPath", # required
    #           file_system_arn: "S3FilesFileSystemArn", # required
    #         },
    #         efs_configuration: {
    #           access_point_arn: "EfsAccessPointArn", # required
    #           mount_path: "MountPath", # required
    #           file_system_arn: "EfsFileSystemArn", # required
    #         },
    #       },
    #     ],
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.code_interpreter_id #=> String
    #   resp.code_interpreter_arn #=> String
    #   resp.created_at #=> Time
    #   resp.status #=> String, one of "CREATING", "CREATE_FAILED", "READY", "DELETING", "DELETE_FAILED", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateCodeInterpreter AWS API Documentation
    #
    # @overload create_code_interpreter(params = {})
    # @param [Hash] params ({})
    def create_code_interpreter(params = {}, options = {})
      req = build_request(:create_code_interpreter, params)
      req.send_request(options)
    end

    # Creates a new configuration bundle resource. A configuration bundle
    # stores versioned component configurations for agent evaluation
    # workflows.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a previous
    #   request, the service ignores the request, but doesn't return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, String] :bundle_name
    #   The name for the configuration bundle. Names must be unique within
    #   your account.
    #
    # @option params [String] :description
    #   The description for the configuration bundle.
    #
    # @option params [required, Hash<String,Types::ComponentConfiguration>] :components
    #   A map of component identifiers to their configurations. Each component
    #   represents a configurable element within the bundle.
    #
    # @option params [String] :branch_name
    #   The branch name for version tracking. Defaults to `mainline` if not
    #   specified.
    #
    # @option params [String] :commit_message
    #   A commit message describing the initial version of the configuration
    #   bundle.
    #
    # @option params [Types::VersionCreatedBySource] :created_by
    #   The source that created this version, including the source name and
    #   optional ARN.
    #
    # @option params [String] :kms_key_arn
    #   Optional KMS key ARN for encrypting component configurations.
    #
    # @option params [Hash<String,String>] :tags
    #   A map of tag keys and values to assign to the configuration bundle.
    #   Tags enable you to categorize your resources in different ways, for
    #   example, by purpose, owner, or environment.
    #
    # @return [Types::CreateConfigurationBundleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConfigurationBundleResponse#bundle_arn #bundle_arn} => String
    #   * {Types::CreateConfigurationBundleResponse#bundle_id #bundle_id} => String
    #   * {Types::CreateConfigurationBundleResponse#version_id #version_id} => String
    #   * {Types::CreateConfigurationBundleResponse#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration_bundle({
    #     client_token: "ClientToken",
    #     bundle_name: "ConfigurationBundleName", # required
    #     description: "ConfigurationBundleDescription",
    #     components: { # required
    #       "ComponentIdentifier" => {
    #         configuration: { # required
    #         },
    #       },
    #     },
    #     branch_name: "BranchName",
    #     commit_message: "CreateConfigurationBundleRequestCommitMessageString",
    #     created_by: {
    #       name: "String", # required
    #       arn: "String",
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.bundle_arn #=> String
    #   resp.bundle_id #=> String
    #   resp.version_id #=> String
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateConfigurationBundle AWS API Documentation
    #
    # @overload create_configuration_bundle(params = {})
    # @param [Hash] params ({})
    def create_configuration_bundle(params = {}, options = {})
      req = build_request(:create_configuration_bundle, params)
      req.send_request(options)
    end

    # Creates a new dataset resource asynchronously. Returns immediately
    # with status CREATING. Poll `GetDataset` until status transitions to
    # ACTIVE or CREATE\_FAILED.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a previous
    #   request, the service ignores the request, but doesn't return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, String] :dataset_name
    #   Human-readable name for the dataset. Must be unique within the
    #   account. Immutable after creation.
    #
    # @option params [String] :description
    #   A description of the dataset.
    #
    # @option params [required, Types::DataSourceType] :source
    #   Source of initial examples. Provide either inline examples or an S3
    #   URI pointing to a JSONL file.
    #
    # @option params [required, String] :schema_type
    #   Versioned schema type governing the structure of examples. Immutable
    #   after creation.
    #
    # @option params [String] :kms_key_arn
    #   Optional KMS key ARN for server-side encryption on service Amazon S3
    #   writes.
    #
    # @option params [Hash<String,String>] :tags
    #   A map of tag keys and values to assign to the dataset.
    #
    # @return [Types::CreateDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDatasetResponse#dataset_arn #dataset_arn} => String
    #   * {Types::CreateDatasetResponse#dataset_id #dataset_id} => String
    #   * {Types::CreateDatasetResponse#status #status} => String
    #   * {Types::CreateDatasetResponse#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset({
    #     client_token: "ClientToken",
    #     dataset_name: "DatasetName", # required
    #     description: "CreateDatasetRequestDescriptionString",
    #     source: { # required
    #       inline_examples: {
    #         examples: [ # required
    #           {
    #           },
    #         ],
    #       },
    #       s3_source: {
    #         s3_uri: "S3Uri", # required
    #       },
    #     },
    #     schema_type: "AGENTCORE_EVALUATION_PREDEFINED_V1", # required, accepts AGENTCORE_EVALUATION_PREDEFINED_V1, AGENTCORE_EVALUATION_SIMULATED_V1, THIRD_PARTY_EVALUATION_V1
    #     kms_key_arn: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_arn #=> String
    #   resp.dataset_id #=> String
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateDataset AWS API Documentation
    #
    # @overload create_dataset(params = {})
    # @param [Hash] params ({})
    def create_dataset(params = {}, options = {})
      req = build_request(:create_dataset, params)
      req.send_request(options)
    end

    # Publishes the current DRAFT as a new numbered version. The DRAFT is
    # preserved and remains editable after publishing. Returns immediately
    # with status UPDATING. Poll `GetDataset` until status transitions to
    # ACTIVE or UPDATE\_FAILED.
    #
    # @option params [required, String] :dataset_id
    #   The unique identifier of the dataset to publish a version for.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a previous
    #   request, the service ignores the request, but doesn't return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @return [Types::CreateDatasetVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDatasetVersionResponse#dataset_arn #dataset_arn} => String
    #   * {Types::CreateDatasetVersionResponse#dataset_id #dataset_id} => String
    #   * {Types::CreateDatasetVersionResponse#status #status} => String
    #   * {Types::CreateDatasetVersionResponse#dataset_version #dataset_version} => String
    #   * {Types::CreateDatasetVersionResponse#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset_version({
    #     dataset_id: "DatasetId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_arn #=> String
    #   resp.dataset_id #=> String
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
    #   resp.dataset_version #=> String
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateDatasetVersion AWS API Documentation
    #
    # @overload create_dataset_version(params = {})
    # @param [Hash] params ({})
    def create_dataset_version(params = {}, options = {})
      req = build_request(:create_dataset_version, params)
      req.send_request(options)
    end

    # Creates a custom evaluator for agent quality assessment. Custom
    # evaluators can use either LLM-as-a-Judge configurations with
    # user-defined prompts, rating scales, and model settings, or code-based
    # configurations with customer-managed Lambda functions to evaluate
    # agent performance at tool call, trace, or session levels.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a previous
    #   request, the service ignores the request, but doesn't return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, String] :evaluator_name
    #   The name of the evaluator. Must be unique within your account.
    #
    # @option params [String] :description
    #   The description of the evaluator that explains its purpose and
    #   evaluation criteria.
    #
    # @option params [required, Types::EvaluatorConfig] :evaluator_config
    #   The configuration for the evaluator. Specify either LLM-as-a-Judge
    #   settings with instructions, rating scale, and model configuration, or
    #   code-based settings with a customer-managed Lambda function.
    #
    # @option params [required, String] :level
    #   The evaluation level that determines the scope of evaluation. Valid
    #   values are `TOOL_CALL` for individual tool invocations, `TRACE` for
    #   single request-response interactions, or `SESSION` for entire
    #   conversation sessions.
    #
    # @option params [String] :kms_key_arn
    #   The Amazon Resource Name (ARN) of a customer managed KMS key to use
    #   for encrypting sensitive evaluator data, including instructions and
    #   rating scale. If you don't specify a KMS key, the evaluator data is
    #   encrypted with an Amazon Web Services owned key. Only symmetric
    #   encryption KMS keys are supported. For more information, see
    #   [Encryption at rest for AgentCore Evaluations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/evaluations-encryption.html
    #
    # @option params [Hash<String,String>] :tags
    #   A map of tag keys and values to assign to an AgentCore Evaluator. Tags
    #   enable you to categorize your resources in different ways, for
    #   example, by purpose, owner, or environment.
    #
    # @return [Types::CreateEvaluatorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEvaluatorResponse#evaluator_arn #evaluator_arn} => String
    #   * {Types::CreateEvaluatorResponse#evaluator_id #evaluator_id} => String
    #   * {Types::CreateEvaluatorResponse#created_at #created_at} => Time
    #   * {Types::CreateEvaluatorResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_evaluator({
    #     client_token: "ClientToken",
    #     evaluator_name: "CustomEvaluatorName", # required
    #     description: "EvaluatorDescription",
    #     evaluator_config: { # required
    #       llm_as_a_judge: {
    #         instructions: "EvaluatorInstructions", # required
    #         rating_scale: { # required
    #           numerical: [
    #             {
    #               definition: "String", # required
    #               value: 1.0, # required
    #               label: "NumericalScaleDefinitionLabelString", # required
    #             },
    #           ],
    #           categorical: [
    #             {
    #               definition: "String", # required
    #               label: "CategoricalScaleDefinitionLabelString", # required
    #             },
    #           ],
    #         },
    #         model_config: { # required
    #           bedrock_evaluator_model_config: {
    #             model_id: "ModelId", # required
    #             inference_config: {
    #               max_tokens: 1,
    #               temperature: 1.0,
    #               top_p: 1.0,
    #               stop_sequences: ["NonEmptyString"],
    #             },
    #             additional_model_request_fields: {
    #             },
    #           },
    #           responses_evaluator_model_config: {
    #             model_id: "ModelId", # required
    #             max_output_tokens: 1,
    #             temperature: 1.0,
    #             top_p: 1.0,
    #             reasoning: {
    #               effort: "ReasoningConfigurationEffortString",
    #             },
    #           },
    #         },
    #       },
    #       code_based: {
    #         lambda_config: {
    #           lambda_arn: "LambdaArn", # required
    #           lambda_timeout_in_seconds: 1,
    #         },
    #       },
    #       derived: {
    #         base_evaluator_id: "EvaluatorId", # required
    #         model_config: { # required
    #           bedrock_evaluator_model_config: {
    #             model_id: "ModelId", # required
    #             inference_config: {
    #               max_tokens: 1,
    #               temperature: 1.0,
    #               top_p: 1.0,
    #               stop_sequences: ["NonEmptyString"],
    #             },
    #             additional_model_request_fields: {
    #             },
    #           },
    #           responses_evaluator_model_config: {
    #             model_id: "ModelId", # required
    #             max_output_tokens: 1,
    #             temperature: 1.0,
    #             top_p: 1.0,
    #             reasoning: {
    #               effort: "ReasoningConfigurationEffortString",
    #             },
    #           },
    #         },
    #       },
    #     },
    #     level: "TOOL_CALL", # required, accepts TOOL_CALL, TRACE, SESSION
    #     kms_key_arn: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluator_arn #=> String
    #   resp.evaluator_id #=> String
    #   resp.created_at #=> Time
    #   resp.status #=> String, one of "ACTIVE", "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateEvaluator AWS API Documentation
    #
    # @overload create_evaluator(params = {})
    # @param [Hash] params ({})
    def create_evaluator(params = {}, options = {})
      req = build_request(:create_evaluator, params)
      req.send_request(options)
    end

    # Creates a gateway for Amazon Bedrock Agent. A gateway serves as an
    # integration point between your agent and external services.
    #
    # If you specify `CUSTOM_JWT` as the `authorizerType`, you must provide
    # an `authorizerConfiguration`.
    #
    # @option params [required, String] :name
    #   The name of the gateway. The name must be unique within your account.
    #
    # @option params [String] :description
    #   The description of the gateway.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a previous
    #   request, the service ignores the request, but doesn't return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that provides
    #   permissions for the gateway to access Amazon Web Services services.
    #
    # @option params [String] :protocol_type
    #   The protocol type for the gateway.
    #
    # @option params [Types::GatewayProtocolConfiguration] :protocol_configuration
    #   The configuration settings for the protocol specified in the
    #   `protocolType` parameter.
    #
    # @option params [required, String] :authorizer_type
    #   The type of authorizer to use for the gateway.
    #
    #   * `CUSTOM_JWT` - Authorize with a bearer token.
    #
    #   * `AWS_IAM` - Authorize with your Amazon Web Services IAM credentials.
    #
    #   * `NONE` - No authorization
    #
    # @option params [Types::AuthorizerConfiguration] :authorizer_configuration
    #   The authorizer configuration for the gateway. Required if
    #   `authorizerType` is `CUSTOM_JWT`.
    #
    # @option params [String] :kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt data
    #   associated with the gateway.
    #
    # @option params [Array<Types::GatewayInterceptorConfiguration>] :interceptor_configurations
    #   A list of configuration settings for a gateway interceptor. Gateway
    #   interceptors allow custom code to be invoked during gateway
    #   invocations.
    #
    # @option params [Types::GatewayPolicyEngineConfiguration] :policy_engine_configuration
    #   The policy engine configuration for the gateway. A policy engine is a
    #   collection of policies that evaluates and authorizes agent tool calls.
    #   When associated with a gateway, the policy engine intercepts all agent
    #   requests and determines whether to allow or deny each action based on
    #   the defined policies.
    #
    # @option params [String] :exception_level
    #   The level of detail in error messages returned when invoking the
    #   gateway.
    #
    #   * If the value is `DEBUG`, granular exception messages are returned to
    #     help a user debug the gateway.
    #
    #   * If the value is omitted, a generic error message is returned to the
    #     end user.
    #
    # @option params [Hash<String,String>] :tags
    #   A map of key-value pairs to associate with the gateway as metadata
    #   tags.
    #
    # @return [Types::CreateGatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGatewayResponse#gateway_arn #gateway_arn} => String
    #   * {Types::CreateGatewayResponse#gateway_id #gateway_id} => String
    #   * {Types::CreateGatewayResponse#gateway_url #gateway_url} => String
    #   * {Types::CreateGatewayResponse#created_at #created_at} => Time
    #   * {Types::CreateGatewayResponse#updated_at #updated_at} => Time
    #   * {Types::CreateGatewayResponse#status #status} => String
    #   * {Types::CreateGatewayResponse#status_reasons #status_reasons} => Array&lt;String&gt;
    #   * {Types::CreateGatewayResponse#name #name} => String
    #   * {Types::CreateGatewayResponse#description #description} => String
    #   * {Types::CreateGatewayResponse#role_arn #role_arn} => String
    #   * {Types::CreateGatewayResponse#protocol_type #protocol_type} => String
    #   * {Types::CreateGatewayResponse#protocol_configuration #protocol_configuration} => Types::GatewayProtocolConfiguration
    #   * {Types::CreateGatewayResponse#authorizer_type #authorizer_type} => String
    #   * {Types::CreateGatewayResponse#authorizer_configuration #authorizer_configuration} => Types::AuthorizerConfiguration
    #   * {Types::CreateGatewayResponse#kms_key_arn #kms_key_arn} => String
    #   * {Types::CreateGatewayResponse#custom_transform_configuration #custom_transform_configuration} => Types::CustomTransformConfiguration
    #   * {Types::CreateGatewayResponse#interceptor_configurations #interceptor_configurations} => Array&lt;Types::GatewayInterceptorConfiguration&gt;
    #   * {Types::CreateGatewayResponse#policy_engine_configuration #policy_engine_configuration} => Types::GatewayPolicyEngineConfiguration
    #   * {Types::CreateGatewayResponse#workload_identity_details #workload_identity_details} => Types::WorkloadIdentityDetails
    #   * {Types::CreateGatewayResponse#exception_level #exception_level} => String
    #   * {Types::CreateGatewayResponse#web_acl_arn #web_acl_arn} => String
    #   * {Types::CreateGatewayResponse#waf_configuration #waf_configuration} => Types::WafConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_gateway({
    #     name: "GatewayName", # required
    #     description: "GatewayDescription",
    #     client_token: "ClientToken",
    #     role_arn: "RoleArn", # required
    #     protocol_type: "MCP", # accepts MCP
    #     protocol_configuration: {
    #       mcp: {
    #         supported_versions: ["McpVersion"],
    #         instructions: "McpInstructions",
    #         search_type: "SEMANTIC", # accepts SEMANTIC
    #         session_configuration: {
    #           session_timeout_in_seconds: 1,
    #         },
    #         streaming_configuration: {
    #           enable_response_streaming: false,
    #         },
    #       },
    #     },
    #     authorizer_type: "CUSTOM_JWT", # required, accepts CUSTOM_JWT, AWS_IAM, NONE, AUTHENTICATE_ONLY
    #     authorizer_configuration: {
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"],
    #         allowed_scopes: ["AllowedScopeType"],
    #         advertised_scope_mapping: {
    #           "AllowedScopeType" => "AllowedScopeType",
    #         },
    #         custom_claims: [
    #           {
    #             inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #             inbound_token_claim_value_type: "STRING", # required, accepts STRING, STRING_ARRAY
    #             authorizing_claim_match_value: { # required
    #               claim_match_value: { # required
    #                 match_value_string: "MatchValueString",
    #                 match_value_string_list: ["MatchValueString"],
    #               },
    #               claim_match_operator: "EQUALS", # required, accepts EQUALS, CONTAINS, CONTAINS_ANY
    #             },
    #           },
    #         ],
    #         private_endpoint: {
    #           self_managed_lattice_resource: {
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier",
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4", # required, accepts IPV4, IPV6
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue",
    #             },
    #             routing_domain: "RoutingDomain",
    #           },
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               self_managed_lattice_resource: {
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier",
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4", # required, accepts IPV4, IPV6
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue",
    #                 },
    #                 routing_domain: "RoutingDomain",
    #               },
    #             },
    #           },
    #         ],
    #         allowed_workload_configuration: {
    #           hosting_environments: [
    #             {
    #               arn: "BedrockAgentcoreResourceArn", # required
    #             },
    #           ],
    #           workload_identities: ["WorkloadIdentityNameType"],
    #         },
    #       },
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #     interceptor_configurations: [
    #       {
    #         interceptor: { # required
    #           lambda: {
    #             arn: "LambdaFunctionArn", # required
    #           },
    #         },
    #         interception_points: ["REQUEST"], # required, accepts REQUEST, RESPONSE
    #         input_configuration: {
    #           pass_request_headers: false, # required
    #           payload_filter: {
    #             exclude: [ # required
    #               {
    #                 field: "RESPONSE_BODY", # accepts RESPONSE_BODY
    #               },
    #             ],
    #           },
    #         },
    #       },
    #     ],
    #     policy_engine_configuration: {
    #       arn: "GatewayPolicyEngineArn", # required
    #       mode: "LOG_ONLY", # required, accepts LOG_ONLY, ENFORCE
    #     },
    #     exception_level: "DEBUG", # accepts DEBUG
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.gateway_id #=> String
    #   resp.gateway_url #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED"
    #   resp.status_reasons #=> Array
    #   resp.status_reasons[0] #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.role_arn #=> String
    #   resp.protocol_type #=> String, one of "MCP"
    #   resp.protocol_configuration.mcp.supported_versions #=> Array
    #   resp.protocol_configuration.mcp.supported_versions[0] #=> String
    #   resp.protocol_configuration.mcp.instructions #=> String
    #   resp.protocol_configuration.mcp.search_type #=> String, one of "SEMANTIC"
    #   resp.protocol_configuration.mcp.session_configuration.session_timeout_in_seconds #=> Integer
    #   resp.protocol_configuration.mcp.streaming_configuration.enable_response_streaming #=> Boolean
    #   resp.authorizer_type #=> String, one of "CUSTOM_JWT", "AWS_IAM", "NONE", "AUTHENTICATE_ONLY"
    #   resp.authorizer_configuration.custom_jwt_authorizer.discovery_url #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_audience #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_audience[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_clients #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_clients[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_scopes #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_scopes[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.advertised_scope_mapping #=> Hash
    #   resp.authorizer_configuration.custom_jwt_authorizer.advertised_scope_mapping["AllowedScopeType"] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_name #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_value_type #=> String, one of "STRING", "STRING_ARRAY"
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_operator #=> String, one of "EQUALS", "CONTAINS", "CONTAINS_ANY"
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].domain #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.hosting_environments #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.hosting_environments[0].arn #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.workload_identities #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.workload_identities[0] #=> String
    #   resp.kms_key_arn #=> String
    #   resp.custom_transform_configuration.lambda.arn #=> String
    #   resp.interceptor_configurations #=> Array
    #   resp.interceptor_configurations[0].interceptor.lambda.arn #=> String
    #   resp.interceptor_configurations[0].interception_points #=> Array
    #   resp.interceptor_configurations[0].interception_points[0] #=> String, one of "REQUEST", "RESPONSE"
    #   resp.interceptor_configurations[0].input_configuration.pass_request_headers #=> Boolean
    #   resp.interceptor_configurations[0].input_configuration.payload_filter.exclude #=> Array
    #   resp.interceptor_configurations[0].input_configuration.payload_filter.exclude[0].field #=> String, one of "RESPONSE_BODY"
    #   resp.policy_engine_configuration.arn #=> String
    #   resp.policy_engine_configuration.mode #=> String, one of "LOG_ONLY", "ENFORCE"
    #   resp.workload_identity_details.workload_identity_arn #=> String
    #   resp.exception_level #=> String, one of "DEBUG"
    #   resp.web_acl_arn #=> String
    #   resp.waf_configuration.failure_mode #=> String, one of "FAIL_CLOSE", "FAIL_OPEN"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateGateway AWS API Documentation
    #
    # @overload create_gateway(params = {})
    # @param [Hash] params ({})
    def create_gateway(params = {}, options = {})
      req = build_request(:create_gateway, params)
      req.send_request(options)
    end

    # Creates a rate limit for a gateway. Rate limits define throttling
    # rules for each dimension that control request rates, token consumption
    # rates, and concurrent connections through the gateway.
    #
    # @option params [required, String] :gateway_identifier
    #   The unique identifier of the gateway to create the rate limit for.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a previous
    #   request, the service ignores the request, but doesn't return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [String] :rate_limit_id
    #   An optional customer-defined identifier for the rate limit. If not
    #   provided, the system generates one.
    #
    # @option params [String] :description
    #   An optional human-readable description for this rate limit. If not
    #   provided, the rate limit is created without a description.
    #
    # @option params [required, Array<String>] :dimension_keys
    #   The ordered list of dimension key names that define the scope of this
    #   rate limit. Must be unique per gateway—no two rate limits can share
    #   the same dimension keys.
    #
    # @option params [required, Array<Types::LimitEntry>] :entries
    #   The rule entries that map dimension values to rate configurations.
    #
    # @return [Types::CreateGatewayRateLimitResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGatewayRateLimitResponse#rate_limit_id #rate_limit_id} => String
    #   * {Types::CreateGatewayRateLimitResponse#gateway_identifier #gateway_identifier} => String
    #   * {Types::CreateGatewayRateLimitResponse#description #description} => String
    #   * {Types::CreateGatewayRateLimitResponse#dimension_keys #dimension_keys} => Array&lt;String&gt;
    #   * {Types::CreateGatewayRateLimitResponse#entries #data.entries} => Array&lt;Types::LimitEntry&gt; (This method conflicts with a method on Response, call it through the data member)
    #   * {Types::CreateGatewayRateLimitResponse#status #status} => String
    #   * {Types::CreateGatewayRateLimitResponse#created_at #created_at} => Time
    #   * {Types::CreateGatewayRateLimitResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_gateway_rate_limit({
    #     gateway_identifier: "GatewayIdentifier", # required
    #     client_token: "ClientToken",
    #     rate_limit_id: "GatewayRateLimitId",
    #     description: "GatewayRateLimitDescription",
    #     dimension_keys: ["DimensionKey"], # required
    #     entries: [ # required
    #       {
    #         dimensions: { # required
    #           "DimensionKey" => "DimensionValue",
    #         },
    #         requests: [
    #           {
    #             rate: 1.0, # required
    #             period: "second", # required, accepts second, minute
    #           },
    #         ],
    #         tokens: [
    #           {
    #             rate: 1.0, # required
    #             period: "second", # required, accepts second, minute
    #           },
    #         ],
    #         connections: [
    #           {
    #             rate: 1.0, # required
    #             period: "second", # required, accepts second, minute
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.rate_limit_id #=> String
    #   resp.gateway_identifier #=> String
    #   resp.description #=> String
    #   resp.dimension_keys #=> Array
    #   resp.dimension_keys[0] #=> String
    #   resp.data.entries #=> Array
    #   resp.data.entries[0].dimensions #=> Hash
    #   resp.data.entries[0].dimensions["DimensionKey"] #=> String
    #   resp.data.entries[0].requests #=> Array
    #   resp.data.entries[0].requests[0].rate #=> Float
    #   resp.data.entries[0].requests[0].period #=> String, one of "second", "minute"
    #   resp.data.entries[0].tokens #=> Array
    #   resp.data.entries[0].tokens[0].rate #=> Float
    #   resp.data.entries[0].tokens[0].period #=> String, one of "second", "minute"
    #   resp.data.entries[0].connections #=> Array
    #   resp.data.entries[0].connections[0].rate #=> Float
    #   resp.data.entries[0].connections[0].period #=> String, one of "second", "minute"
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateGatewayRateLimit AWS API Documentation
    #
    # @overload create_gateway_rate_limit(params = {})
    # @param [Hash] params ({})
    def create_gateway_rate_limit(params = {}, options = {})
      req = build_request(:create_gateway_rate_limit, params)
      req.send_request(options)
    end

    # Creates a rule for a gateway. Rules define conditions and actions that
    # control how requests are routed and processed through the gateway,
    # including principal-based access control and path-based routing.
    #
    # @option params [required, String] :gateway_identifier
    #   The identifier of the gateway to create a rule for.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a previous
    #   request, the service ignores the request, but doesn't return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, Integer] :priority
    #   The priority of the rule. Rules are evaluated in order of priority,
    #   with lower numbers evaluated first. Must be between 1 and 1,000,000.
    #
    # @option params [Array<Types::Condition>] :conditions
    #   The conditions that must be met for the rule to apply. Conditions can
    #   match on principals (IAM ARNs) or request paths.
    #
    # @option params [required, Array<Types::Action>] :actions
    #   The actions to take when the rule conditions are met. Actions can
    #   route to a specific target or apply a configuration bundle override.
    #
    # @option params [String] :description
    #   The description of the gateway rule.
    #
    # @return [Types::CreateGatewayRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGatewayRuleResponse#rule_id #rule_id} => String
    #   * {Types::CreateGatewayRuleResponse#gateway_arn #gateway_arn} => String
    #   * {Types::CreateGatewayRuleResponse#priority #priority} => Integer
    #   * {Types::CreateGatewayRuleResponse#conditions #conditions} => Array&lt;Types::Condition&gt;
    #   * {Types::CreateGatewayRuleResponse#actions #actions} => Array&lt;Types::Action&gt;
    #   * {Types::CreateGatewayRuleResponse#description #description} => String
    #   * {Types::CreateGatewayRuleResponse#created_at #created_at} => Time
    #   * {Types::CreateGatewayRuleResponse#status #status} => String
    #   * {Types::CreateGatewayRuleResponse#system #system} => Types::SystemManagedBlock
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_gateway_rule({
    #     gateway_identifier: "GatewayIdentifier", # required
    #     client_token: "ClientToken",
    #     priority: 1, # required
    #     conditions: [
    #       {
    #         match_principals: {
    #           any_of: [ # required
    #             {
    #               iam_principal: {
    #                 arn: "IamPrincipalArn", # required
    #                 operator: "StringEquals", # accepts StringEquals, StringLike
    #               },
    #             },
    #           ],
    #         },
    #         match_paths: {
    #           any_of: ["MatchPathPattern"], # required
    #         },
    #       },
    #     ],
    #     actions: [ # required
    #       {
    #         configuration_bundle: {
    #           static_override: {
    #             bundle_arn: "GatewayConfigurationBundleArn", # required
    #             bundle_version: "StaticOverrideBundleVersionString", # required
    #           },
    #           weighted_override: {
    #             traffic_split: [ # required
    #               {
    #                 name: "TrafficSplitEntryNameString", # required
    #                 weight: 1, # required
    #                 configuration_bundle: { # required
    #                   bundle_arn: "GatewayConfigurationBundleArn", # required
    #                   bundle_version: "ConfigurationBundleReferenceBundleVersionString", # required
    #                 },
    #                 description: "TrafficSplitEntryDescriptionString",
    #                 metadata: {
    #                   "TrafficSplitMetadataKey" => "TrafficSplitMetadataValue",
    #                 },
    #               },
    #             ],
    #           },
    #         },
    #         route_to_target: {
    #           static_route: {
    #             target_name: "TargetName", # required
    #           },
    #           weighted_route: {
    #             traffic_split: [ # required
    #               {
    #                 name: "TargetTrafficSplitEntryNameString", # required
    #                 weight: 1, # required
    #                 target_name: "TargetName", # required
    #                 description: "TargetTrafficSplitEntryDescriptionString",
    #                 metadata: {
    #                   "TrafficSplitMetadataKey" => "TrafficSplitMetadataValue",
    #                 },
    #               },
    #             ],
    #           },
    #         },
    #       },
    #     ],
    #     description: "GatewayRuleDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_id #=> String
    #   resp.gateway_arn #=> String
    #   resp.priority #=> Integer
    #   resp.conditions #=> Array
    #   resp.conditions[0].match_principals.any_of #=> Array
    #   resp.conditions[0].match_principals.any_of[0].iam_principal.arn #=> String
    #   resp.conditions[0].match_principals.any_of[0].iam_principal.operator #=> String, one of "StringEquals", "StringLike"
    #   resp.conditions[0].match_paths.any_of #=> Array
    #   resp.conditions[0].match_paths.any_of[0] #=> String
    #   resp.actions #=> Array
    #   resp.actions[0].configuration_bundle.static_override.bundle_arn #=> String
    #   resp.actions[0].configuration_bundle.static_override.bundle_version #=> String
    #   resp.actions[0].configuration_bundle.weighted_override.traffic_split #=> Array
    #   resp.actions[0].configuration_bundle.weighted_override.traffic_split[0].name #=> String
    #   resp.actions[0].configuration_bundle.weighted_override.traffic_split[0].weight #=> Integer
    #   resp.actions[0].configuration_bundle.weighted_override.traffic_split[0].configuration_bundle.bundle_arn #=> String
    #   resp.actions[0].configuration_bundle.weighted_override.traffic_split[0].configuration_bundle.bundle_version #=> String
    #   resp.actions[0].configuration_bundle.weighted_override.traffic_split[0].description #=> String
    #   resp.actions[0].configuration_bundle.weighted_override.traffic_split[0].metadata #=> Hash
    #   resp.actions[0].configuration_bundle.weighted_override.traffic_split[0].metadata["TrafficSplitMetadataKey"] #=> String
    #   resp.actions[0].route_to_target.static_route.target_name #=> String
    #   resp.actions[0].route_to_target.weighted_route.traffic_split #=> Array
    #   resp.actions[0].route_to_target.weighted_route.traffic_split[0].name #=> String
    #   resp.actions[0].route_to_target.weighted_route.traffic_split[0].weight #=> Integer
    #   resp.actions[0].route_to_target.weighted_route.traffic_split[0].target_name #=> String
    #   resp.actions[0].route_to_target.weighted_route.traffic_split[0].description #=> String
    #   resp.actions[0].route_to_target.weighted_route.traffic_split[0].metadata #=> Hash
    #   resp.actions[0].route_to_target.weighted_route.traffic_split[0].metadata["TrafficSplitMetadataKey"] #=> String
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING"
    #   resp.system.managed_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateGatewayRule AWS API Documentation
    #
    # @overload create_gateway_rule(params = {})
    # @param [Hash] params ({})
    def create_gateway_rule(params = {}, options = {})
      req = build_request(:create_gateway_rule, params)
      req.send_request(options)
    end

    # Creates a target for a gateway. A target defines an endpoint that the
    # gateway can connect to.
    #
    # @option params [required, String] :gateway_identifier
    #   The identifier of the gateway to create a target for.
    #
    # @option params [String] :name
    #   The name of the gateway target. The name must be unique within the
    #   gateway.
    #
    # @option params [String] :description
    #   The description of the gateway target.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a previous
    #   request, the service ignores the request, but doesn't return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, Types::TargetConfiguration] :target_configuration
    #   The configuration settings for the target, including endpoint
    #   information and schema definitions.
    #
    # @option params [Array<Types::CredentialProviderConfiguration>] :credential_provider_configurations
    #   The credential provider configurations for the target. These
    #   configurations specify how the gateway authenticates with the target
    #   endpoint.
    #
    # @option params [Types::MetadataConfiguration] :metadata_configuration
    #   Optional configuration for HTTP header and query parameter propagation
    #   to and from the gateway target.
    #
    # @option params [Types::PrivateEndpoint] :private_endpoint
    #   The private endpoint configuration for the gateway target. Use this to
    #   connect the gateway to private resources in your VPC.
    #
    # @return [Types::CreateGatewayTargetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGatewayTargetResponse#gateway_arn #gateway_arn} => String
    #   * {Types::CreateGatewayTargetResponse#target_id #target_id} => String
    #   * {Types::CreateGatewayTargetResponse#created_at #created_at} => Time
    #   * {Types::CreateGatewayTargetResponse#updated_at #updated_at} => Time
    #   * {Types::CreateGatewayTargetResponse#status #status} => String
    #   * {Types::CreateGatewayTargetResponse#status_reasons #status_reasons} => Array&lt;String&gt;
    #   * {Types::CreateGatewayTargetResponse#name #name} => String
    #   * {Types::CreateGatewayTargetResponse#description #description} => String
    #   * {Types::CreateGatewayTargetResponse#target_configuration #target_configuration} => Types::TargetConfiguration
    #   * {Types::CreateGatewayTargetResponse#credential_provider_configurations #credential_provider_configurations} => Array&lt;Types::CredentialProviderConfiguration&gt;
    #   * {Types::CreateGatewayTargetResponse#last_synchronized_at #last_synchronized_at} => Time
    #   * {Types::CreateGatewayTargetResponse#metadata_configuration #metadata_configuration} => Types::MetadataConfiguration
    #   * {Types::CreateGatewayTargetResponse#private_endpoint #private_endpoint} => Types::PrivateEndpoint
    #   * {Types::CreateGatewayTargetResponse#private_endpoint_managed_resources #private_endpoint_managed_resources} => Array&lt;Types::ManagedResourceDetails&gt;
    #   * {Types::CreateGatewayTargetResponse#authorization_data #authorization_data} => Types::AuthorizationData
    #   * {Types::CreateGatewayTargetResponse#protocol_type #protocol_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_gateway_target({
    #     gateway_identifier: "GatewayIdentifier", # required
    #     name: "TargetName",
    #     description: "TargetDescription",
    #     client_token: "ClientToken",
    #     target_configuration: { # required
    #       mcp: {
    #         open_api_schema: {
    #           s3: {
    #             uri: "S3BucketUri",
    #             bucket_owner_account_id: "AwsAccountId",
    #           },
    #           inline_payload: "InlinePayload",
    #         },
    #         smithy_model: {
    #           s3: {
    #             uri: "S3BucketUri",
    #             bucket_owner_account_id: "AwsAccountId",
    #           },
    #           inline_payload: "InlinePayload",
    #         },
    #         lambda: {
    #           lambda_arn: "LambdaFunctionArn", # required
    #           tool_schema: { # required
    #             s3: {
    #               uri: "S3BucketUri",
    #               bucket_owner_account_id: "AwsAccountId",
    #             },
    #             inline_payload: [
    #               {
    #                 name: "String", # required
    #                 description: "String", # required
    #                 input_schema: { # required
    #                   type: "string", # required, accepts string, number, object, array, boolean, integer
    #                   properties: {
    #                     "String" => {
    #                       # recursive SchemaDefinition
    #                     },
    #                   },
    #                   required: ["String"],
    #                   items: {
    #                     # recursive SchemaDefinition
    #                   },
    #                   description: "String",
    #                 },
    #                 output_schema: {
    #                   type: "string", # required, accepts string, number, object, array, boolean, integer
    #                   properties: {
    #                     "String" => {
    #                       # recursive SchemaDefinition
    #                     },
    #                   },
    #                   required: ["String"],
    #                   items: {
    #                     # recursive SchemaDefinition
    #                   },
    #                   description: "String",
    #                 },
    #               },
    #             ],
    #           },
    #         },
    #         mcp_server: {
    #           endpoint: "McpServerTargetConfigurationEndpointString", # required
    #           mcp_tool_schema: {
    #             s3: {
    #               uri: "S3BucketUri",
    #               bucket_owner_account_id: "AwsAccountId",
    #             },
    #             inline_payload: "InlinePayload",
    #           },
    #           listing_mode: "DEFAULT", # accepts DEFAULT, DYNAMIC
    #           resource_priority: 1,
    #         },
    #         api_gateway: {
    #           rest_api_id: "String", # required
    #           stage: "String", # required
    #           api_gateway_tool_configuration: { # required
    #             tool_overrides: [
    #               {
    #                 name: "String", # required
    #                 description: "String",
    #                 path: "String", # required
    #                 method: "GET", # required, accepts GET, DELETE, HEAD, OPTIONS, PATCH, PUT, POST
    #               },
    #             ],
    #             tool_filters: [ # required
    #               {
    #                 filter_path: "String", # required
    #                 methods: ["GET"], # required, accepts GET, DELETE, HEAD, OPTIONS, PATCH, PUT, POST
    #               },
    #             ],
    #           },
    #         },
    #         connector: {
    #           source: { # required
    #             connector_id: "ConnectorId", # required
    #             version: "ConnectorVersion",
    #           },
    #           enabled: ["String"],
    #           configurations: [
    #             {
    #               name: "ConnectorConfigurationNameString", # required
    #               description: "ConnectorConfigurationDescriptionString",
    #               parameter_values: {
    #               },
    #               parameter_overrides: [
    #                 {
    #                   path: "String", # required
    #                   description: "String",
    #                   visible: false,
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #       },
    #       http: {
    #         agentcore_runtime: {
    #           arn: "RuntimeArn", # required
    #           qualifier: "RuntimeQualifier",
    #           schema: {
    #             source: { # required
    #               s3: {
    #                 uri: "S3BucketUri",
    #                 bucket_owner_account_id: "AwsAccountId",
    #               },
    #               inline_payload: "InlinePayload",
    #             },
    #           },
    #         },
    #         passthrough: {
    #           endpoint: "PassthroughEndpoint", # required
    #           protocol_type: "MCP", # required, accepts MCP, A2A, INFERENCE, CUSTOM
    #           schema: {
    #             source: { # required
    #               s3: {
    #                 uri: "S3BucketUri",
    #                 bucket_owner_account_id: "AwsAccountId",
    #               },
    #               inline_payload: "InlinePayload",
    #             },
    #           },
    #           stickiness_configuration: {
    #             identifier: "StickinessConfigurationIdentifierString", # required
    #             timeout: 1,
    #             composite_identifier: ["CompositeIdentifierEntry"],
    #           },
    #           static_query_parameters: {
    #             "StaticQueryParameterName" => "StaticQueryParameterValue",
    #           },
    #           static_query_parameter_conflict_resolution: "CLIENT_OVERRIDE", # accepts CLIENT_OVERRIDE, STATIC_OVERRIDE
    #         },
    #         connector: {
    #           source: { # required
    #             connector_id: "ConnectorId", # required
    #           },
    #           parameters: {
    #             "ConnectorParameterName" => "ConnectorParameterValue",
    #           },
    #         },
    #       },
    #       inference: {
    #         connector: {
    #           source: { # required
    #             connector_id: "InferenceConnectorId", # required
    #           },
    #         },
    #         provider: {
    #           endpoint: "PassthroughEndpoint", # required
    #           model_mapping: {
    #             provider_prefix: {
    #               strip: false,
    #               separator: "ProviderPrefixSeparatorString",
    #             },
    #           },
    #           operations: [
    #             {
    #               path: "InferenceOperationPath", # required
    #               provider_path: "InferenceOperationPath",
    #               models: [
    #                 {
    #                   model: "ModelPattern", # required
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #       },
    #     },
    #     credential_provider_configurations: [
    #       {
    #         credential_provider_type: "GATEWAY_IAM_ROLE", # required, accepts GATEWAY_IAM_ROLE, OAUTH, API_KEY, CALLER_IAM_CREDENTIALS, JWT_PASSTHROUGH
    #         credential_provider: {
    #           oauth_credential_provider: {
    #             provider_arn: "OAuthCredentialProviderArn", # required
    #             scopes: ["OAuthScope"], # required
    #             custom_parameters: {
    #               "OAuthCustomParametersKey" => "OAuthCustomParametersValue",
    #             },
    #             grant_type: "CLIENT_CREDENTIALS", # accepts CLIENT_CREDENTIALS, AUTHORIZATION_CODE, TOKEN_EXCHANGE
    #             default_return_url: "OAuthDefaultReturnUrl",
    #           },
    #           api_key_credential_provider: {
    #             provider_arn: "ApiKeyCredentialProviderArn", # required
    #             credential_parameter_name: "ApiKeyCredentialParameterName",
    #             credential_prefix: "ApiKeyCredentialPrefix",
    #             credential_location: "HEADER", # accepts HEADER, QUERY_PARAMETER
    #           },
    #           iam_credential_provider: {
    #             service: "IamCredentialProviderServiceString", # required
    #             region: "IamCredentialProviderRegionString",
    #           },
    #         },
    #       },
    #     ],
    #     metadata_configuration: {
    #       allowed_request_headers: ["HttpHeaderName"],
    #       allowed_query_parameters: ["HttpQueryParameterName"],
    #       allowed_response_headers: ["HttpHeaderName"],
    #     },
    #     private_endpoint: {
    #       self_managed_lattice_resource: {
    #         resource_configuration_identifier: "ResourceConfigurationIdentifier",
    #       },
    #       managed_vpc_resource: {
    #         vpc_identifier: "VpcIdentifier", # required
    #         subnet_ids: ["SubnetId"], # required
    #         endpoint_ip_address_type: "IPV4", # required, accepts IPV4, IPV6
    #         security_group_ids: ["SecurityGroupIdentifier"],
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         routing_domain: "RoutingDomain",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.target_id #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED", "SYNCHRONIZING", "SYNCHRONIZE_UNSUCCESSFUL", "CREATE_PENDING_AUTH", "UPDATE_PENDING_AUTH", "SYNCHRONIZE_PENDING_AUTH"
    #   resp.status_reasons #=> Array
    #   resp.status_reasons[0] #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.target_configuration.mcp.open_api_schema.s3.uri #=> String
    #   resp.target_configuration.mcp.open_api_schema.s3.bucket_owner_account_id #=> String
    #   resp.target_configuration.mcp.open_api_schema.inline_payload #=> String
    #   resp.target_configuration.mcp.smithy_model.s3.uri #=> String
    #   resp.target_configuration.mcp.smithy_model.s3.bucket_owner_account_id #=> String
    #   resp.target_configuration.mcp.smithy_model.inline_payload #=> String
    #   resp.target_configuration.mcp.lambda.lambda_arn #=> String
    #   resp.target_configuration.mcp.lambda.tool_schema.s3.uri #=> String
    #   resp.target_configuration.mcp.lambda.tool_schema.s3.bucket_owner_account_id #=> String
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload #=> Array
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].name #=> String
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].description #=> String
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].input_schema.type #=> String, one of "string", "number", "object", "array", "boolean", "integer"
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].input_schema.properties #=> Hash
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].input_schema.properties["String"] #=> Types::SchemaDefinition
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].input_schema.required #=> Array
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].input_schema.required[0] #=> String
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].input_schema.items #=> Types::SchemaDefinition
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].input_schema.description #=> String
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].output_schema.type #=> String, one of "string", "number", "object", "array", "boolean", "integer"
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].output_schema.properties #=> Hash
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].output_schema.properties["String"] #=> Types::SchemaDefinition
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].output_schema.required #=> Array
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].output_schema.required[0] #=> String
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].output_schema.items #=> Types::SchemaDefinition
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].output_schema.description #=> String
    #   resp.target_configuration.mcp.mcp_server.endpoint #=> String
    #   resp.target_configuration.mcp.mcp_server.mcp_tool_schema.s3.uri #=> String
    #   resp.target_configuration.mcp.mcp_server.mcp_tool_schema.s3.bucket_owner_account_id #=> String
    #   resp.target_configuration.mcp.mcp_server.mcp_tool_schema.inline_payload #=> String
    #   resp.target_configuration.mcp.mcp_server.listing_mode #=> String, one of "DEFAULT", "DYNAMIC"
    #   resp.target_configuration.mcp.mcp_server.resource_priority #=> Integer
    #   resp.target_configuration.mcp.api_gateway.rest_api_id #=> String
    #   resp.target_configuration.mcp.api_gateway.stage #=> String
    #   resp.target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_overrides #=> Array
    #   resp.target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_overrides[0].name #=> String
    #   resp.target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_overrides[0].description #=> String
    #   resp.target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_overrides[0].path #=> String
    #   resp.target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_overrides[0].method #=> String, one of "GET", "DELETE", "HEAD", "OPTIONS", "PATCH", "PUT", "POST"
    #   resp.target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_filters #=> Array
    #   resp.target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_filters[0].filter_path #=> String
    #   resp.target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_filters[0].methods #=> Array
    #   resp.target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_filters[0].methods[0] #=> String, one of "GET", "DELETE", "HEAD", "OPTIONS", "PATCH", "PUT", "POST"
    #   resp.target_configuration.mcp.connector.source.connector_id #=> String
    #   resp.target_configuration.mcp.connector.source.version #=> String
    #   resp.target_configuration.mcp.connector.enabled #=> Array
    #   resp.target_configuration.mcp.connector.enabled[0] #=> String
    #   resp.target_configuration.mcp.connector.configurations #=> Array
    #   resp.target_configuration.mcp.connector.configurations[0].name #=> String
    #   resp.target_configuration.mcp.connector.configurations[0].description #=> String
    #   resp.target_configuration.mcp.connector.configurations[0].parameter_overrides #=> Array
    #   resp.target_configuration.mcp.connector.configurations[0].parameter_overrides[0].path #=> String
    #   resp.target_configuration.mcp.connector.configurations[0].parameter_overrides[0].description #=> String
    #   resp.target_configuration.mcp.connector.configurations[0].parameter_overrides[0].visible #=> Boolean
    #   resp.target_configuration.http.agentcore_runtime.arn #=> String
    #   resp.target_configuration.http.agentcore_runtime.qualifier #=> String
    #   resp.target_configuration.http.agentcore_runtime.schema.source.s3.uri #=> String
    #   resp.target_configuration.http.agentcore_runtime.schema.source.s3.bucket_owner_account_id #=> String
    #   resp.target_configuration.http.agentcore_runtime.schema.source.inline_payload #=> String
    #   resp.target_configuration.http.passthrough.endpoint #=> String
    #   resp.target_configuration.http.passthrough.protocol_type #=> String, one of "MCP", "A2A", "INFERENCE", "CUSTOM"
    #   resp.target_configuration.http.passthrough.schema.source.s3.uri #=> String
    #   resp.target_configuration.http.passthrough.schema.source.s3.bucket_owner_account_id #=> String
    #   resp.target_configuration.http.passthrough.schema.source.inline_payload #=> String
    #   resp.target_configuration.http.passthrough.stickiness_configuration.identifier #=> String
    #   resp.target_configuration.http.passthrough.stickiness_configuration.timeout #=> Integer
    #   resp.target_configuration.http.passthrough.stickiness_configuration.composite_identifier #=> Array
    #   resp.target_configuration.http.passthrough.stickiness_configuration.composite_identifier[0] #=> String
    #   resp.target_configuration.http.passthrough.static_query_parameters #=> Hash
    #   resp.target_configuration.http.passthrough.static_query_parameters["StaticQueryParameterName"] #=> String
    #   resp.target_configuration.http.passthrough.static_query_parameter_conflict_resolution #=> String, one of "CLIENT_OVERRIDE", "STATIC_OVERRIDE"
    #   resp.target_configuration.http.connector.source.connector_id #=> String
    #   resp.target_configuration.http.connector.parameters #=> Hash
    #   resp.target_configuration.http.connector.parameters["ConnectorParameterName"] #=> String
    #   resp.target_configuration.inference.connector.source.connector_id #=> String
    #   resp.target_configuration.inference.provider.endpoint #=> String
    #   resp.target_configuration.inference.provider.model_mapping.provider_prefix.strip #=> Boolean
    #   resp.target_configuration.inference.provider.model_mapping.provider_prefix.separator #=> String
    #   resp.target_configuration.inference.provider.operations #=> Array
    #   resp.target_configuration.inference.provider.operations[0].path #=> String
    #   resp.target_configuration.inference.provider.operations[0].provider_path #=> String
    #   resp.target_configuration.inference.provider.operations[0].models #=> Array
    #   resp.target_configuration.inference.provider.operations[0].models[0].model #=> String
    #   resp.credential_provider_configurations #=> Array
    #   resp.credential_provider_configurations[0].credential_provider_type #=> String, one of "GATEWAY_IAM_ROLE", "OAUTH", "API_KEY", "CALLER_IAM_CREDENTIALS", "JWT_PASSTHROUGH"
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.provider_arn #=> String
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes #=> Array
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes[0] #=> String
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters #=> Hash
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters["OAuthCustomParametersKey"] #=> String
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.grant_type #=> String, one of "CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "TOKEN_EXCHANGE"
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.default_return_url #=> String
    #   resp.credential_provider_configurations[0].credential_provider.api_key_credential_provider.provider_arn #=> String
    #   resp.credential_provider_configurations[0].credential_provider.api_key_credential_provider.credential_parameter_name #=> String
    #   resp.credential_provider_configurations[0].credential_provider.api_key_credential_provider.credential_prefix #=> String
    #   resp.credential_provider_configurations[0].credential_provider.api_key_credential_provider.credential_location #=> String, one of "HEADER", "QUERY_PARAMETER"
    #   resp.credential_provider_configurations[0].credential_provider.iam_credential_provider.service #=> String
    #   resp.credential_provider_configurations[0].credential_provider.iam_credential_provider.region #=> String
    #   resp.last_synchronized_at #=> Time
    #   resp.metadata_configuration.allowed_request_headers #=> Array
    #   resp.metadata_configuration.allowed_request_headers[0] #=> String
    #   resp.metadata_configuration.allowed_query_parameters #=> Array
    #   resp.metadata_configuration.allowed_query_parameters[0] #=> String
    #   resp.metadata_configuration.allowed_response_headers #=> Array
    #   resp.metadata_configuration.allowed_response_headers[0] #=> String
    #   resp.private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.private_endpoint_managed_resources #=> Array
    #   resp.private_endpoint_managed_resources[0].domain #=> String
    #   resp.private_endpoint_managed_resources[0].resource_gateway_arn #=> String
    #   resp.private_endpoint_managed_resources[0].resource_association_arn #=> String
    #   resp.authorization_data.oauth2.authorization_url #=> String
    #   resp.authorization_data.oauth2.user_id #=> String
    #   resp.protocol_type #=> String, one of "MCP", "HTTP"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateGatewayTarget AWS API Documentation
    #
    # @overload create_gateway_target(params = {})
    # @param [Hash] params ({})
    def create_gateway_target(params = {}, options = {})
      req = build_request(:create_gateway_target, params)
      req.send_request(options)
    end

    # Operation to create a harness.
    #
    # @option params [required, String] :harness_name
    #   The name of the harness. Must start with a letter and contain only
    #   alphanumeric characters and underscores.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :execution_role_arn
    #   The ARN of the IAM role that the harness assumes when running. This
    #   role must have permissions for the services the agent needs to access,
    #   such as Amazon Bedrock for model invocation.
    #
    # @option params [Types::HarnessEnvironmentProviderRequest] :environment
    #   The compute environment configuration for the harness, including
    #   network and lifecycle settings.
    #
    # @option params [Types::HarnessEnvironmentArtifact] :environment_artifact
    #   The environment artifact for the harness, such as a custom container
    #   image containing additional dependencies.
    #
    # @option params [Hash<String,String>] :environment_variables
    #   Environment variables to set in the harness runtime environment.
    #
    # @option params [Types::AuthorizerConfiguration] :authorizer_configuration
    #   Represents inbound authorization configuration options used to
    #   authenticate incoming requests.
    #
    # @option params [Types::HarnessModelConfiguration] :model
    #   The model configuration for the harness. Supports Amazon Bedrock,
    #   OpenAI, and Google Gemini model providers.
    #
    # @option params [Array<Types::HarnessSystemContentBlock>] :system_prompt
    #   The system prompt that defines the agent's behavior and instructions.
    #
    # @option params [Array<Types::HarnessTool>] :tools
    #   The tools available to the agent, such as remote MCP servers,
    #   AgentCore Gateway, AgentCore Browser, Code Interpreter, or inline
    #   functions.
    #
    # @option params [Array<Types::HarnessSkill>] :skills
    #   The skills available to the agent. Skills are bundles of files that
    #   the agent can pull into its context on demand.
    #
    # @option params [Array<String>] :allowed_tools
    #   The tools that the agent is allowed to use. Supports glob patterns
    #   such as * for all tools, @builtin for all built-in tools, or
    #   @serverName/toolName for specific MCP server tools.
    #
    # @option params [Types::HarnessMemoryConfiguration] :memory
    #   The AgentCore Memory configuration for persisting conversation context
    #   across sessions.
    #
    # @option params [Types::HarnessTruncationConfiguration] :truncation
    #   The truncation configuration for managing conversation context when it
    #   exceeds model limits.
    #
    # @option params [Integer] :max_iterations
    #   The maximum number of iterations the agent loop can execute per
    #   invocation.
    #
    # @option params [Integer] :max_tokens
    #   The maximum total number of output tokens the agent can generate
    #   across all model calls within a single invocation.
    #
    # @option params [Integer] :timeout_seconds
    #   The maximum duration in seconds for the agent loop execution per
    #   invocation.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags to apply to the harness resource.
    #
    # @return [Types::CreateHarnessResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateHarnessResponse#harness #harness} => Types::Harness
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_harness({
    #     harness_name: "HarnessName", # required
    #     client_token: "ClientToken",
    #     execution_role_arn: "RoleArn", # required
    #     environment: {
    #       agent_core_runtime_environment: {
    #         lifecycle_configuration: {
    #           idle_runtime_session_timeout: 1,
    #           max_lifetime: 1,
    #         },
    #         network_configuration: {
    #           network_mode: "PUBLIC", # required, accepts PUBLIC, VPC
    #           network_mode_config: {
    #             security_groups: ["SecurityGroupId"], # required
    #             subnets: ["SubnetId"], # required
    #             require_service_s3_endpoint: false,
    #           },
    #         },
    #         filesystem_configurations: [
    #           {
    #             session_storage: {
    #               mount_path: "MountPath", # required
    #             },
    #             s3_files_access_point: {
    #               access_point_arn: "S3FilesAccessPointArn", # required
    #               mount_path: "MountPath", # required
    #             },
    #             efs_access_point: {
    #               access_point_arn: "EfsAccessPointArn", # required
    #               mount_path: "MountPath", # required
    #             },
    #             capacity_provider_volume: {
    #               volume_name: "CapacityProviderVolumeName", # required
    #               mount_path: "MountPath", # required
    #             },
    #           },
    #         ],
    #       },
    #     },
    #     environment_artifact: {
    #       container_configuration: {
    #         container_uri: "RuntimeContainerUri", # required
    #       },
    #     },
    #     environment_variables: {
    #       "EnvironmentVariableKey" => "EnvironmentVariableValue",
    #     },
    #     authorizer_configuration: {
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"],
    #         allowed_scopes: ["AllowedScopeType"],
    #         advertised_scope_mapping: {
    #           "AllowedScopeType" => "AllowedScopeType",
    #         },
    #         custom_claims: [
    #           {
    #             inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #             inbound_token_claim_value_type: "STRING", # required, accepts STRING, STRING_ARRAY
    #             authorizing_claim_match_value: { # required
    #               claim_match_value: { # required
    #                 match_value_string: "MatchValueString",
    #                 match_value_string_list: ["MatchValueString"],
    #               },
    #               claim_match_operator: "EQUALS", # required, accepts EQUALS, CONTAINS, CONTAINS_ANY
    #             },
    #           },
    #         ],
    #         private_endpoint: {
    #           self_managed_lattice_resource: {
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier",
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4", # required, accepts IPV4, IPV6
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue",
    #             },
    #             routing_domain: "RoutingDomain",
    #           },
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               self_managed_lattice_resource: {
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier",
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4", # required, accepts IPV4, IPV6
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue",
    #                 },
    #                 routing_domain: "RoutingDomain",
    #               },
    #             },
    #           },
    #         ],
    #         allowed_workload_configuration: {
    #           hosting_environments: [
    #             {
    #               arn: "BedrockAgentcoreResourceArn", # required
    #             },
    #           ],
    #           workload_identities: ["WorkloadIdentityNameType"],
    #         },
    #       },
    #     },
    #     model: {
    #       bedrock_model_config: {
    #         model_id: "ModelId", # required
    #         max_tokens: 1,
    #         temperature: 1.0,
    #         top_p: 1.0,
    #         api_format: "converse_stream", # accepts converse_stream, responses, chat_completions
    #         additional_params: {
    #         },
    #       },
    #       open_ai_model_config: {
    #         model_id: "ModelId", # required
    #         api_key_arn: "ApiKeyArn", # required
    #         max_tokens: 1,
    #         temperature: 1.0,
    #         top_p: 1.0,
    #         api_format: "chat_completions", # accepts chat_completions, responses
    #         additional_params: {
    #         },
    #       },
    #       gemini_model_config: {
    #         model_id: "ModelId", # required
    #         api_key_arn: "ApiKeyArn", # required
    #         max_tokens: 1,
    #         temperature: 1.0,
    #         top_p: 1.0,
    #         top_k: 1,
    #         additional_params: {
    #         },
    #       },
    #       lite_llm_model_config: {
    #         model_id: "ModelId", # required
    #         api_key_arn: "ApiKeyArn",
    #         api_base: "HarnessLiteLlmApiBase",
    #         max_tokens: 1,
    #         temperature: 1.0,
    #         top_p: 1.0,
    #         additional_params: {
    #         },
    #       },
    #     },
    #     system_prompt: [
    #       {
    #         text: "SensitiveText",
    #       },
    #     ],
    #     tools: [
    #       {
    #         type: "remote_mcp", # required, accepts remote_mcp, agentcore_browser, agentcore_gateway, inline_function, agentcore_code_interpreter
    #         name: "HarnessToolName",
    #         config: {
    #           remote_mcp: {
    #             url: "HarnessRemoteMcpUrl", # required
    #             headers: {
    #               "HttpHeaderKey" => "HttpHeaderValue",
    #             },
    #           },
    #           agent_core_browser: {
    #             browser_arn: "HarnessBrowserArn",
    #           },
    #           agent_core_gateway: {
    #             gateway_arn: "GatewayArn", # required
    #             outbound_auth: {
    #               aws_iam: {
    #               },
    #               none: {
    #               },
    #               oauth: {
    #                 provider_arn: "OAuthCredentialProviderArn", # required
    #                 scopes: ["OAuthScope"], # required
    #                 custom_parameters: {
    #                   "OAuthCustomParametersKey" => "OAuthCustomParametersValue",
    #                 },
    #                 grant_type: "CLIENT_CREDENTIALS", # accepts CLIENT_CREDENTIALS, AUTHORIZATION_CODE, TOKEN_EXCHANGE
    #                 default_return_url: "OAuthDefaultReturnUrl",
    #               },
    #             },
    #           },
    #           inline_function: {
    #             description: "HarnessInlineFunctionDescription", # required
    #             input_schema: { # required
    #             },
    #           },
    #           agent_core_code_interpreter: {
    #             code_interpreter_arn: "HarnessCodeInterpreterArn",
    #           },
    #         },
    #       },
    #     ],
    #     skills: [
    #       {
    #         path: "HarnessSkillPath",
    #         s3: {
    #           uri: "HarnessSkillS3Uri", # required
    #         },
    #         git: {
    #           url: "HarnessSkillGitUrl", # required
    #           path: "String",
    #           auth: {
    #             credential_arn: "ApiKeyArn", # required
    #             username: "String",
    #           },
    #         },
    #         aws_skills: {
    #           paths: ["HarnessAwsSkillPath"],
    #         },
    #       },
    #     ],
    #     allowed_tools: ["HarnessAllowedTool"],
    #     memory: {
    #       agent_core_memory_configuration: {
    #         arn: "MemoryArn", # required
    #         actor_id: "String",
    #         messages_count: 1,
    #         retrieval_config: {
    #           "String" => {
    #             top_k: 1,
    #             relevance_score: 1.0,
    #             strategy_id: "String",
    #           },
    #         },
    #       },
    #       managed_memory_configuration: {
    #         arn: "MemoryArn",
    #         strategies: ["SEMANTIC"], # accepts SEMANTIC, SUMMARIZATION, USER_PREFERENCE, EPISODIC
    #         event_expiry_duration: 1,
    #         encryption_key_arn: "KmsKeyArn",
    #       },
    #       disabled: {
    #       },
    #     },
    #     truncation: {
    #       strategy: "sliding_window", # required, accepts sliding_window, summarization, none
    #       config: {
    #         sliding_window: {
    #           messages_count: 1,
    #         },
    #         summarization: {
    #           summary_ratio: 1.0,
    #           preserve_recent_messages: 1,
    #           summarization_system_prompt: "String",
    #         },
    #       },
    #     },
    #     max_iterations: 1,
    #     max_tokens: 1,
    #     timeout_seconds: 1,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.harness.harness_id #=> String
    #   resp.harness.harness_name #=> String
    #   resp.harness.arn #=> String
    #   resp.harness.status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"
    #   resp.harness.harness_version #=> String
    #   resp.harness.execution_role_arn #=> String
    #   resp.harness.created_at #=> Time
    #   resp.harness.updated_at #=> Time
    #   resp.harness.model.bedrock_model_config.model_id #=> String
    #   resp.harness.model.bedrock_model_config.max_tokens #=> Integer
    #   resp.harness.model.bedrock_model_config.temperature #=> Float
    #   resp.harness.model.bedrock_model_config.top_p #=> Float
    #   resp.harness.model.bedrock_model_config.api_format #=> String, one of "converse_stream", "responses", "chat_completions"
    #   resp.harness.model.open_ai_model_config.model_id #=> String
    #   resp.harness.model.open_ai_model_config.api_key_arn #=> String
    #   resp.harness.model.open_ai_model_config.max_tokens #=> Integer
    #   resp.harness.model.open_ai_model_config.temperature #=> Float
    #   resp.harness.model.open_ai_model_config.top_p #=> Float
    #   resp.harness.model.open_ai_model_config.api_format #=> String, one of "chat_completions", "responses"
    #   resp.harness.model.gemini_model_config.model_id #=> String
    #   resp.harness.model.gemini_model_config.api_key_arn #=> String
    #   resp.harness.model.gemini_model_config.max_tokens #=> Integer
    #   resp.harness.model.gemini_model_config.temperature #=> Float
    #   resp.harness.model.gemini_model_config.top_p #=> Float
    #   resp.harness.model.gemini_model_config.top_k #=> Integer
    #   resp.harness.model.lite_llm_model_config.model_id #=> String
    #   resp.harness.model.lite_llm_model_config.api_key_arn #=> String
    #   resp.harness.model.lite_llm_model_config.api_base #=> String
    #   resp.harness.model.lite_llm_model_config.max_tokens #=> Integer
    #   resp.harness.model.lite_llm_model_config.temperature #=> Float
    #   resp.harness.model.lite_llm_model_config.top_p #=> Float
    #   resp.harness.system_prompt #=> Array
    #   resp.harness.system_prompt[0].text #=> String
    #   resp.harness.tools #=> Array
    #   resp.harness.tools[0].type #=> String, one of "remote_mcp", "agentcore_browser", "agentcore_gateway", "inline_function", "agentcore_code_interpreter"
    #   resp.harness.tools[0].name #=> String
    #   resp.harness.tools[0].config.remote_mcp.url #=> String
    #   resp.harness.tools[0].config.remote_mcp.headers #=> Hash
    #   resp.harness.tools[0].config.remote_mcp.headers["HttpHeaderKey"] #=> String
    #   resp.harness.tools[0].config.agent_core_browser.browser_arn #=> String
    #   resp.harness.tools[0].config.agent_core_gateway.gateway_arn #=> String
    #   resp.harness.tools[0].config.agent_core_gateway.outbound_auth.oauth.provider_arn #=> String
    #   resp.harness.tools[0].config.agent_core_gateway.outbound_auth.oauth.scopes #=> Array
    #   resp.harness.tools[0].config.agent_core_gateway.outbound_auth.oauth.scopes[0] #=> String
    #   resp.harness.tools[0].config.agent_core_gateway.outbound_auth.oauth.custom_parameters #=> Hash
    #   resp.harness.tools[0].config.agent_core_gateway.outbound_auth.oauth.custom_parameters["OAuthCustomParametersKey"] #=> String
    #   resp.harness.tools[0].config.agent_core_gateway.outbound_auth.oauth.grant_type #=> String, one of "CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "TOKEN_EXCHANGE"
    #   resp.harness.tools[0].config.agent_core_gateway.outbound_auth.oauth.default_return_url #=> String
    #   resp.harness.tools[0].config.inline_function.description #=> String
    #   resp.harness.tools[0].config.agent_core_code_interpreter.code_interpreter_arn #=> String
    #   resp.harness.skills #=> Array
    #   resp.harness.skills[0].path #=> String
    #   resp.harness.skills[0].s3.uri #=> String
    #   resp.harness.skills[0].git.url #=> String
    #   resp.harness.skills[0].git.path #=> String
    #   resp.harness.skills[0].git.auth.credential_arn #=> String
    #   resp.harness.skills[0].git.auth.username #=> String
    #   resp.harness.skills[0].aws_skills.paths #=> Array
    #   resp.harness.skills[0].aws_skills.paths[0] #=> String
    #   resp.harness.allowed_tools #=> Array
    #   resp.harness.allowed_tools[0] #=> String
    #   resp.harness.truncation.strategy #=> String, one of "sliding_window", "summarization", "none"
    #   resp.harness.truncation.config.sliding_window.messages_count #=> Integer
    #   resp.harness.truncation.config.summarization.summary_ratio #=> Float
    #   resp.harness.truncation.config.summarization.preserve_recent_messages #=> Integer
    #   resp.harness.truncation.config.summarization.summarization_system_prompt #=> String
    #   resp.harness.environment.agent_core_runtime_environment.agent_runtime_arn #=> String
    #   resp.harness.environment.agent_core_runtime_environment.agent_runtime_name #=> String
    #   resp.harness.environment.agent_core_runtime_environment.agent_runtime_id #=> String
    #   resp.harness.environment.agent_core_runtime_environment.lifecycle_configuration.idle_runtime_session_timeout #=> Integer
    #   resp.harness.environment.agent_core_runtime_environment.lifecycle_configuration.max_lifetime #=> Integer
    #   resp.harness.environment.agent_core_runtime_environment.network_configuration.network_mode #=> String, one of "PUBLIC", "VPC"
    #   resp.harness.environment.agent_core_runtime_environment.network_configuration.network_mode_config.security_groups #=> Array
    #   resp.harness.environment.agent_core_runtime_environment.network_configuration.network_mode_config.security_groups[0] #=> String
    #   resp.harness.environment.agent_core_runtime_environment.network_configuration.network_mode_config.subnets #=> Array
    #   resp.harness.environment.agent_core_runtime_environment.network_configuration.network_mode_config.subnets[0] #=> String
    #   resp.harness.environment.agent_core_runtime_environment.network_configuration.network_mode_config.require_service_s3_endpoint #=> Boolean
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations #=> Array
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations[0].session_storage.mount_path #=> String
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations[0].s3_files_access_point.access_point_arn #=> String
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations[0].s3_files_access_point.mount_path #=> String
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations[0].efs_access_point.access_point_arn #=> String
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations[0].efs_access_point.mount_path #=> String
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations[0].capacity_provider_volume.volume_name #=> String
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations[0].capacity_provider_volume.mount_path #=> String
    #   resp.harness.environment_artifact.container_configuration.container_uri #=> String
    #   resp.harness.environment_variables #=> Hash
    #   resp.harness.environment_variables["EnvironmentVariableKey"] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.discovery_url #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_audience #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_audience[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_clients #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_clients[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_scopes #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_scopes[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.advertised_scope_mapping #=> Hash
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.advertised_scope_mapping["AllowedScopeType"] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.custom_claims #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_name #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_value_type #=> String, one of "STRING", "STRING_ARRAY"
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_operator #=> String, one of "EQUALS", "CONTAINS", "CONTAINS_ANY"
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].domain #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.hosting_environments #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.hosting_environments[0].arn #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.workload_identities #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.workload_identities[0] #=> String
    #   resp.harness.memory.agent_core_memory_configuration.arn #=> String
    #   resp.harness.memory.agent_core_memory_configuration.actor_id #=> String
    #   resp.harness.memory.agent_core_memory_configuration.messages_count #=> Integer
    #   resp.harness.memory.agent_core_memory_configuration.retrieval_config #=> Hash
    #   resp.harness.memory.agent_core_memory_configuration.retrieval_config["String"].top_k #=> Integer
    #   resp.harness.memory.agent_core_memory_configuration.retrieval_config["String"].relevance_score #=> Float
    #   resp.harness.memory.agent_core_memory_configuration.retrieval_config["String"].strategy_id #=> String
    #   resp.harness.memory.managed_memory_configuration.arn #=> String
    #   resp.harness.memory.managed_memory_configuration.strategies #=> Array
    #   resp.harness.memory.managed_memory_configuration.strategies[0] #=> String, one of "SEMANTIC", "SUMMARIZATION", "USER_PREFERENCE", "EPISODIC"
    #   resp.harness.memory.managed_memory_configuration.event_expiry_duration #=> Integer
    #   resp.harness.memory.managed_memory_configuration.encryption_key_arn #=> String
    #   resp.harness.max_iterations #=> Integer
    #   resp.harness.max_tokens #=> Integer
    #   resp.harness.timeout_seconds #=> Integer
    #   resp.harness.failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateHarness AWS API Documentation
    #
    # @overload create_harness(params = {})
    # @param [Hash] params ({})
    def create_harness(params = {}, options = {})
      req = build_request(:create_harness, params)
      req.send_request(options)
    end

    # Operation to create a harness endpoint.
    #
    # @option params [required, String] :harness_id
    #   The ID of the harness to create an endpoint for.
    #
    # @option params [required, String] :endpoint_name
    #   The name of the endpoint. Must start with a letter and contain only
    #   alphanumeric characters and underscores.
    #
    # @option params [String] :target_version
    #   The harness version that the endpoint points to and serves invocations
    #   from.
    #
    # @option params [String] :description
    #   A description of the endpoint.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   Tags to apply to the endpoint resource.
    #
    # @return [Types::CreateHarnessEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateHarnessEndpointResponse#endpoint #endpoint} => Types::HarnessEndpoint
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_harness_endpoint({
    #     harness_id: "HarnessId", # required
    #     endpoint_name: "HarnessEndpointName", # required
    #     target_version: "HarnessVersion",
    #     description: "HarnessEndpointDescription",
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint.harness_id #=> String
    #   resp.endpoint.harness_name #=> String
    #   resp.endpoint.endpoint_name #=> String
    #   resp.endpoint.arn #=> String
    #   resp.endpoint.status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"
    #   resp.endpoint.created_at #=> Time
    #   resp.endpoint.updated_at #=> Time
    #   resp.endpoint.live_version #=> String
    #   resp.endpoint.target_version #=> String
    #   resp.endpoint.description #=> String
    #   resp.endpoint.failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateHarnessEndpoint AWS API Documentation
    #
    # @overload create_harness_endpoint(params = {})
    # @param [Hash] params ({})
    def create_harness_endpoint(params = {}, options = {})
      req = build_request(:create_harness_endpoint, params)
      req.send_request(options)
    end

    # Creates a new Amazon Bedrock AgentCore Memory resource.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the operation
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request but does not return an
    #   error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :name
    #   The name of the memory. The name must be unique within your account.
    #
    # @option params [String] :description
    #   The description of the memory.
    #
    # @option params [String] :encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt the
    #   memory data.
    #
    # @option params [String] :memory_execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that provides
    #   permissions for the memory to access Amazon Web Services services.
    #
    # @option params [required, Integer] :event_expiry_duration
    #   The duration after which memory events expire. Specified as an ISO
    #   8601 duration.
    #
    # @option params [Array<Types::MemoryStrategyInput>] :memory_strategies
    #   The memory strategies to use for this memory. Strategies define how
    #   information is extracted, processed, and consolidated.
    #
    # @option params [Array<Types::IndexedKey>] :indexed_keys
    #   Metadata keys to index for filtering. Once declared, indexed keys
    #   cannot be removed.
    #
    # @option params [Array<Types::NamespaceKeyEntry>] :namespace_keys
    #   The namespace variable key definitions with optional validation rules.
    #   Use these `namespaceKeys` in `namespaceTemplates` to control namespace
    #   hierarchy.
    #
    # @option params [Types::StreamDeliveryResources] :stream_delivery_resources
    #   Configuration for streaming memory record data to external resources.
    #
    # @option params [Hash<String,String>] :tags
    #   A map of tag keys and values to assign to an AgentCore Memory. Tags
    #   enable you to categorize your resources in different ways, for
    #   example, by purpose, owner, or environment.
    #
    # @return [Types::CreateMemoryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMemoryOutput#memory #memory} => Types::Memory
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_memory({
    #     client_token: "CreateMemoryInputClientTokenString",
    #     name: "Name", # required
    #     description: "Description",
    #     encryption_key_arn: "Arn",
    #     memory_execution_role_arn: "Arn",
    #     event_expiry_duration: 1, # required
    #     memory_strategies: [
    #       {
    #         semantic_memory_strategy: {
    #           name: "Name", # required
    #           description: "Description",
    #           namespaces: ["Namespace"],
    #           namespace_templates: ["Namespace"],
    #           memory_record_schema: {
    #             metadata_schema: [
    #               {
    #                 key: "MetadataKey", # required
    #                 type: "STRING", # accepts STRING, STRINGLIST, NUMBER
    #                 extraction_type: "LLM_INFERRED", # accepts LLM_INFERRED, STRICTLY_CONSISTENT
    #                 extraction_config: {
    #                   llm_extraction_config: {
    #                     llm_extraction_instruction: "LlmExtractionInstruction",
    #                     definition: "Definition", # required
    #                     validation: {
    #                       string_validation: {
    #                         allowed_values: ["AllowedStringValue"], # required
    #                       },
    #                       string_list_validation: {
    #                         allowed_values: ["AllowedStringListValue"],
    #                         max_items: 1,
    #                       },
    #                       number_validation: {
    #                         min_value: 1.0,
    #                         max_value: 1.0,
    #                       },
    #                     },
    #                   },
    #                 },
    #               },
    #             ],
    #           },
    #         },
    #         summary_memory_strategy: {
    #           name: "Name", # required
    #           description: "Description",
    #           namespaces: ["Namespace"],
    #           namespace_templates: ["Namespace"],
    #           memory_record_schema: {
    #             metadata_schema: [
    #               {
    #                 key: "MetadataKey", # required
    #                 type: "STRING", # accepts STRING, STRINGLIST, NUMBER
    #                 extraction_type: "LLM_INFERRED", # accepts LLM_INFERRED, STRICTLY_CONSISTENT
    #                 extraction_config: {
    #                   llm_extraction_config: {
    #                     llm_extraction_instruction: "LlmExtractionInstruction",
    #                     definition: "Definition", # required
    #                     validation: {
    #                       string_validation: {
    #                         allowed_values: ["AllowedStringValue"], # required
    #                       },
    #                       string_list_validation: {
    #                         allowed_values: ["AllowedStringListValue"],
    #                         max_items: 1,
    #                       },
    #                       number_validation: {
    #                         min_value: 1.0,
    #                         max_value: 1.0,
    #                       },
    #                     },
    #                   },
    #                 },
    #               },
    #             ],
    #           },
    #         },
    #         user_preference_memory_strategy: {
    #           name: "Name", # required
    #           description: "Description",
    #           namespaces: ["Namespace"],
    #           namespace_templates: ["Namespace"],
    #           memory_record_schema: {
    #             metadata_schema: [
    #               {
    #                 key: "MetadataKey", # required
    #                 type: "STRING", # accepts STRING, STRINGLIST, NUMBER
    #                 extraction_type: "LLM_INFERRED", # accepts LLM_INFERRED, STRICTLY_CONSISTENT
    #                 extraction_config: {
    #                   llm_extraction_config: {
    #                     llm_extraction_instruction: "LlmExtractionInstruction",
    #                     definition: "Definition", # required
    #                     validation: {
    #                       string_validation: {
    #                         allowed_values: ["AllowedStringValue"], # required
    #                       },
    #                       string_list_validation: {
    #                         allowed_values: ["AllowedStringListValue"],
    #                         max_items: 1,
    #                       },
    #                       number_validation: {
    #                         min_value: 1.0,
    #                         max_value: 1.0,
    #                       },
    #                     },
    #                   },
    #                 },
    #               },
    #             ],
    #           },
    #         },
    #         custom_memory_strategy: {
    #           name: "Name", # required
    #           description: "Description",
    #           namespaces: ["Namespace"],
    #           namespace_templates: ["Namespace"],
    #           configuration: {
    #             semantic_override: {
    #               extraction: {
    #                 append_to_prompt: "Prompt", # required
    #                 model_id: "String", # required
    #               },
    #               consolidation: {
    #                 append_to_prompt: "Prompt", # required
    #                 model_id: "String", # required
    #               },
    #             },
    #             summary_override: {
    #               consolidation: {
    #                 append_to_prompt: "Prompt", # required
    #                 model_id: "String", # required
    #               },
    #             },
    #             user_preference_override: {
    #               extraction: {
    #                 append_to_prompt: "Prompt", # required
    #                 model_id: "String", # required
    #               },
    #               consolidation: {
    #                 append_to_prompt: "Prompt", # required
    #                 model_id: "String", # required
    #               },
    #             },
    #             episodic_override: {
    #               extraction: {
    #                 append_to_prompt: "Prompt", # required
    #                 model_id: "String", # required
    #               },
    #               consolidation: {
    #                 append_to_prompt: "Prompt", # required
    #                 model_id: "String", # required
    #               },
    #               reflection: {
    #                 append_to_prompt: "Prompt", # required
    #                 model_id: "String", # required
    #                 namespaces: ["Namespace"],
    #                 namespace_templates: ["Namespace"],
    #                 memory_record_schema: {
    #                   metadata_schema: [
    #                     {
    #                       key: "MetadataKey", # required
    #                       type: "STRING", # accepts STRING, STRINGLIST, NUMBER
    #                       extraction_type: "LLM_INFERRED", # accepts LLM_INFERRED, STRICTLY_CONSISTENT
    #                       extraction_config: {
    #                         llm_extraction_config: {
    #                           llm_extraction_instruction: "LlmExtractionInstruction",
    #                           definition: "Definition", # required
    #                           validation: {
    #                             string_validation: {
    #                               allowed_values: ["AllowedStringValue"], # required
    #                             },
    #                             string_list_validation: {
    #                               allowed_values: ["AllowedStringListValue"],
    #                               max_items: 1,
    #                             },
    #                             number_validation: {
    #                               min_value: 1.0,
    #                               max_value: 1.0,
    #                             },
    #                           },
    #                         },
    #                       },
    #                     },
    #                   ],
    #                 },
    #               },
    #             },
    #             self_managed_configuration: {
    #               trigger_conditions: [
    #                 {
    #                   message_based_trigger: {
    #                     message_count: 1,
    #                   },
    #                   token_based_trigger: {
    #                     token_count: 1,
    #                   },
    #                   time_based_trigger: {
    #                     idle_session_timeout: 1,
    #                   },
    #                 },
    #               ],
    #               invocation_configuration: { # required
    #                 topic_arn: "Arn", # required
    #                 payload_delivery_bucket_name: "InvocationConfigurationInputPayloadDeliveryBucketNameString", # required
    #               },
    #               historical_context_window_size: 1,
    #             },
    #           },
    #           memory_record_schema: {
    #             metadata_schema: [
    #               {
    #                 key: "MetadataKey", # required
    #                 type: "STRING", # accepts STRING, STRINGLIST, NUMBER
    #                 extraction_type: "LLM_INFERRED", # accepts LLM_INFERRED, STRICTLY_CONSISTENT
    #                 extraction_config: {
    #                   llm_extraction_config: {
    #                     llm_extraction_instruction: "LlmExtractionInstruction",
    #                     definition: "Definition", # required
    #                     validation: {
    #                       string_validation: {
    #                         allowed_values: ["AllowedStringValue"], # required
    #                       },
    #                       string_list_validation: {
    #                         allowed_values: ["AllowedStringListValue"],
    #                         max_items: 1,
    #                       },
    #                       number_validation: {
    #                         min_value: 1.0,
    #                         max_value: 1.0,
    #                       },
    #                     },
    #                   },
    #                 },
    #               },
    #             ],
    #           },
    #         },
    #         episodic_memory_strategy: {
    #           name: "Name", # required
    #           description: "Description",
    #           namespaces: ["Namespace"],
    #           namespace_templates: ["Namespace"],
    #           reflection_configuration: {
    #             namespaces: ["Namespace"],
    #             namespace_templates: ["Namespace"],
    #             memory_record_schema: {
    #               metadata_schema: [
    #                 {
    #                   key: "MetadataKey", # required
    #                   type: "STRING", # accepts STRING, STRINGLIST, NUMBER
    #                   extraction_type: "LLM_INFERRED", # accepts LLM_INFERRED, STRICTLY_CONSISTENT
    #                   extraction_config: {
    #                     llm_extraction_config: {
    #                       llm_extraction_instruction: "LlmExtractionInstruction",
    #                       definition: "Definition", # required
    #                       validation: {
    #                         string_validation: {
    #                           allowed_values: ["AllowedStringValue"], # required
    #                         },
    #                         string_list_validation: {
    #                           allowed_values: ["AllowedStringListValue"],
    #                           max_items: 1,
    #                         },
    #                         number_validation: {
    #                           min_value: 1.0,
    #                           max_value: 1.0,
    #                         },
    #                       },
    #                     },
    #                   },
    #                 },
    #               ],
    #             },
    #           },
    #           memory_record_schema: {
    #             metadata_schema: [
    #               {
    #                 key: "MetadataKey", # required
    #                 type: "STRING", # accepts STRING, STRINGLIST, NUMBER
    #                 extraction_type: "LLM_INFERRED", # accepts LLM_INFERRED, STRICTLY_CONSISTENT
    #                 extraction_config: {
    #                   llm_extraction_config: {
    #                     llm_extraction_instruction: "LlmExtractionInstruction",
    #                     definition: "Definition", # required
    #                     validation: {
    #                       string_validation: {
    #                         allowed_values: ["AllowedStringValue"], # required
    #                       },
    #                       string_list_validation: {
    #                         allowed_values: ["AllowedStringListValue"],
    #                         max_items: 1,
    #                       },
    #                       number_validation: {
    #                         min_value: 1.0,
    #                         max_value: 1.0,
    #                       },
    #                     },
    #                   },
    #                 },
    #               },
    #             ],
    #           },
    #         },
    #       },
    #     ],
    #     indexed_keys: [
    #       {
    #         key: "MetadataKey", # required
    #         type: "STRING", # required, accepts STRING, STRINGLIST, NUMBER
    #       },
    #     ],
    #     namespace_keys: [
    #       {
    #         key: "NamespaceVariableKey", # required
    #         validation: {
    #           allowed_values: ["NamespaceAllowedValue"],
    #           regex_pattern: "NamespaceRegexPattern",
    #         },
    #       },
    #     ],
    #     stream_delivery_resources: {
    #       resources: [ # required
    #         {
    #           kinesis: {
    #             data_stream_arn: "Arn", # required
    #             content_configurations: [ # required
    #               {
    #                 type: "MEMORY_RECORDS", # required, accepts MEMORY_RECORDS
    #                 level: "METADATA_ONLY", # accepts METADATA_ONLY, FULL_CONTENT
    #               },
    #             ],
    #           },
    #         },
    #       ],
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.memory.arn #=> String
    #   resp.memory.id #=> String
    #   resp.memory.name #=> String
    #   resp.memory.description #=> String
    #   resp.memory.encryption_key_arn #=> String
    #   resp.memory.memory_execution_role_arn #=> String
    #   resp.memory.event_expiry_duration #=> Integer
    #   resp.memory.status #=> String, one of "CREATING", "ACTIVE", "FAILED", "DELETING", "UPDATING"
    #   resp.memory.failure_reason #=> String
    #   resp.memory.created_at #=> Time
    #   resp.memory.updated_at #=> Time
    #   resp.memory.strategies #=> Array
    #   resp.memory.strategies[0].strategy_id #=> String
    #   resp.memory.strategies[0].name #=> String
    #   resp.memory.strategies[0].description #=> String
    #   resp.memory.strategies[0].configuration.type #=> String, one of "SEMANTIC_OVERRIDE", "SUMMARY_OVERRIDE", "USER_PREFERENCE_OVERRIDE", "SELF_MANAGED", "EPISODIC_OVERRIDE"
    #   resp.memory.strategies[0].configuration.extraction.custom_extraction_configuration.semantic_extraction_override.append_to_prompt #=> String
    #   resp.memory.strategies[0].configuration.extraction.custom_extraction_configuration.semantic_extraction_override.model_id #=> String
    #   resp.memory.strategies[0].configuration.extraction.custom_extraction_configuration.user_preference_extraction_override.append_to_prompt #=> String
    #   resp.memory.strategies[0].configuration.extraction.custom_extraction_configuration.user_preference_extraction_override.model_id #=> String
    #   resp.memory.strategies[0].configuration.extraction.custom_extraction_configuration.episodic_extraction_override.append_to_prompt #=> String
    #   resp.memory.strategies[0].configuration.extraction.custom_extraction_configuration.episodic_extraction_override.model_id #=> String
    #   resp.memory.strategies[0].configuration.consolidation.custom_consolidation_configuration.semantic_consolidation_override.append_to_prompt #=> String
    #   resp.memory.strategies[0].configuration.consolidation.custom_consolidation_configuration.semantic_consolidation_override.model_id #=> String
    #   resp.memory.strategies[0].configuration.consolidation.custom_consolidation_configuration.summary_consolidation_override.append_to_prompt #=> String
    #   resp.memory.strategies[0].configuration.consolidation.custom_consolidation_configuration.summary_consolidation_override.model_id #=> String
    #   resp.memory.strategies[0].configuration.consolidation.custom_consolidation_configuration.user_preference_consolidation_override.append_to_prompt #=> String
    #   resp.memory.strategies[0].configuration.consolidation.custom_consolidation_configuration.user_preference_consolidation_override.model_id #=> String
    #   resp.memory.strategies[0].configuration.consolidation.custom_consolidation_configuration.episodic_consolidation_override.append_to_prompt #=> String
    #   resp.memory.strategies[0].configuration.consolidation.custom_consolidation_configuration.episodic_consolidation_override.model_id #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.append_to_prompt #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.model_id #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.namespaces #=> Array
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.namespaces[0] #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.namespace_templates #=> Array
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.namespace_templates[0] #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema #=> Array
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].key #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].type #=> String, one of "STRING", "STRINGLIST", "NUMBER"
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_type #=> String, one of "LLM_INFERRED", "STRICTLY_CONSISTENT"
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.llm_extraction_instruction #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.definition #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_validation.allowed_values #=> Array
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_validation.allowed_values[0] #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_list_validation.allowed_values #=> Array
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_list_validation.allowed_values[0] #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_list_validation.max_items #=> Integer
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.number_validation.min_value #=> Float
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.number_validation.max_value #=> Float
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.namespaces #=> Array
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.namespaces[0] #=> String
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.namespace_templates #=> Array
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.namespace_templates[0] #=> String
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema #=> Array
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].key #=> String
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].type #=> String, one of "STRING", "STRINGLIST", "NUMBER"
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_type #=> String, one of "LLM_INFERRED", "STRICTLY_CONSISTENT"
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.llm_extraction_instruction #=> String
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.definition #=> String
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_validation.allowed_values #=> Array
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_validation.allowed_values[0] #=> String
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_list_validation.allowed_values #=> Array
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_list_validation.allowed_values[0] #=> String
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_list_validation.max_items #=> Integer
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.number_validation.min_value #=> Float
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.number_validation.max_value #=> Float
    #   resp.memory.strategies[0].configuration.self_managed_configuration.trigger_conditions #=> Array
    #   resp.memory.strategies[0].configuration.self_managed_configuration.trigger_conditions[0].message_based_trigger.message_count #=> Integer
    #   resp.memory.strategies[0].configuration.self_managed_configuration.trigger_conditions[0].token_based_trigger.token_count #=> Integer
    #   resp.memory.strategies[0].configuration.self_managed_configuration.trigger_conditions[0].time_based_trigger.idle_session_timeout #=> Integer
    #   resp.memory.strategies[0].configuration.self_managed_configuration.invocation_configuration.topic_arn #=> String
    #   resp.memory.strategies[0].configuration.self_managed_configuration.invocation_configuration.payload_delivery_bucket_name #=> String
    #   resp.memory.strategies[0].configuration.self_managed_configuration.historical_context_window_size #=> Integer
    #   resp.memory.strategies[0].type #=> String, one of "SEMANTIC", "SUMMARIZATION", "USER_PREFERENCE", "CUSTOM", "EPISODIC"
    #   resp.memory.strategies[0].namespaces #=> Array
    #   resp.memory.strategies[0].namespaces[0] #=> String
    #   resp.memory.strategies[0].namespace_templates #=> Array
    #   resp.memory.strategies[0].namespace_templates[0] #=> String
    #   resp.memory.strategies[0].created_at #=> Time
    #   resp.memory.strategies[0].updated_at #=> Time
    #   resp.memory.strategies[0].status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema #=> Array
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].key #=> String
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].type #=> String, one of "STRING", "STRINGLIST", "NUMBER"
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_type #=> String, one of "LLM_INFERRED", "STRICTLY_CONSISTENT"
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.llm_extraction_instruction #=> String
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.definition #=> String
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_validation.allowed_values #=> Array
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_validation.allowed_values[0] #=> String
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_list_validation.allowed_values #=> Array
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_list_validation.allowed_values[0] #=> String
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_list_validation.max_items #=> Integer
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.number_validation.min_value #=> Float
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.number_validation.max_value #=> Float
    #   resp.memory.indexed_keys #=> Array
    #   resp.memory.indexed_keys[0].key #=> String
    #   resp.memory.indexed_keys[0].type #=> String, one of "STRING", "STRINGLIST", "NUMBER"
    #   resp.memory.namespace_keys #=> Array
    #   resp.memory.namespace_keys[0].key #=> String
    #   resp.memory.namespace_keys[0].validation.allowed_values #=> Array
    #   resp.memory.namespace_keys[0].validation.allowed_values[0] #=> String
    #   resp.memory.namespace_keys[0].validation.regex_pattern #=> String
    #   resp.memory.stream_delivery_resources.resources #=> Array
    #   resp.memory.stream_delivery_resources.resources[0].kinesis.data_stream_arn #=> String
    #   resp.memory.stream_delivery_resources.resources[0].kinesis.content_configurations #=> Array
    #   resp.memory.stream_delivery_resources.resources[0].kinesis.content_configurations[0].type #=> String, one of "MEMORY_RECORDS"
    #   resp.memory.stream_delivery_resources.resources[0].kinesis.content_configurations[0].level #=> String, one of "METADATA_ONLY", "FULL_CONTENT"
    #   resp.memory.managed_by_resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateMemory AWS API Documentation
    #
    # @overload create_memory(params = {})
    # @param [Hash] params ({})
    def create_memory(params = {}, options = {})
      req = build_request(:create_memory, params)
      req.send_request(options)
    end

    # Creates a new OAuth2 credential provider.
    #
    # @option params [required, String] :name
    #   The name of the OAuth2 credential provider. The name must be unique
    #   within your account.
    #
    # @option params [required, String] :credential_provider_vendor
    #   The vendor of the OAuth2 credential provider. This specifies which
    #   OAuth2 implementation to use.
    #
    # @option params [required, Types::Oauth2ProviderConfigInput] :oauth2_provider_config_input
    #   The configuration settings for the OAuth2 provider, including client
    #   ID, client secret, and other vendor-specific settings.
    #
    # @option params [Hash<String,String>] :tags
    #   A map of tag keys and values to assign to the OAuth2 credential
    #   provider. Tags enable you to categorize your resources in different
    #   ways, for example, by purpose, owner, or environment.
    #
    # @return [Types::CreateOauth2CredentialProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOauth2CredentialProviderResponse#client_secret_arn #client_secret_arn} => Types::Secret
    #   * {Types::CreateOauth2CredentialProviderResponse#client_secret_json_key #client_secret_json_key} => String
    #   * {Types::CreateOauth2CredentialProviderResponse#client_secret_source #client_secret_source} => String
    #   * {Types::CreateOauth2CredentialProviderResponse#name #name} => String
    #   * {Types::CreateOauth2CredentialProviderResponse#credential_provider_arn #credential_provider_arn} => String
    #   * {Types::CreateOauth2CredentialProviderResponse#callback_url #callback_url} => String
    #   * {Types::CreateOauth2CredentialProviderResponse#oauth2_provider_config_output #oauth2_provider_config_output} => Types::Oauth2ProviderConfigOutput
    #   * {Types::CreateOauth2CredentialProviderResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_oauth_2_credential_provider({
    #     name: "CredentialProviderName", # required
    #     credential_provider_vendor: "GoogleOauth2", # required, accepts GoogleOauth2, GithubOauth2, SlackOauth2, SalesforceOauth2, MicrosoftOauth2, CustomOauth2, AtlassianOauth2, LinkedinOauth2, XOauth2, OktaOauth2, OneLoginOauth2, PingOneOauth2, FacebookOauth2, YandexOauth2, RedditOauth2, ZoomOauth2, TwitchOauth2, SpotifyOauth2, DropboxOauth2, NotionOauth2, HubspotOauth2, CyberArkOauth2, FusionAuthOauth2, Auth0Oauth2, CognitoOauth2
    #     oauth2_provider_config_input: { # required
    #       custom_oauth_2_provider_config: {
    #         oauth_discovery: { # required
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"],
    #           },
    #         },
    #         client_id: "DefaultClientIdType",
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED", # accepts MANAGED, EXTERNAL
    #         on_behalf_of_token_exchange_config: {
    #           grant_type: "TOKEN_EXCHANGE", # required, accepts TOKEN_EXCHANGE, JWT_AUTHORIZATION_GRANT
    #           token_exchange_grant_type_config: {
    #             actor_token_content: "NONE", # required, accepts NONE, M2M, AWS_IAM_ID_TOKEN_JWT
    #             actor_token_scopes: ["ScopeType"],
    #           },
    #         },
    #         client_authentication_method: "CLIENT_SECRET_BASIC", # accepts CLIENT_SECRET_BASIC, CLIENT_SECRET_POST, AWS_IAM_ID_TOKEN_JWT, PRIVATE_KEY_JWT
    #         private_key_jwt_config: {
    #           private_key_source: {
    #             kms_key_source: {
    #               kms_key_arn: "KmsKeyArn", # required
    #             },
    #           },
    #           signing_algorithm: "RS256", # accepts RS256, PS256, ES256
    #           additional_header_claims: {
    #             "AdditionalClaimName" => "AdditionalClaimValue",
    #           },
    #           additional_payload_claims: {
    #             "AdditionalClaimName" => "AdditionalClaimValue",
    #           },
    #         },
    #         private_endpoint: {
    #           self_managed_lattice_resource: {
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier",
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4", # required, accepts IPV4, IPV6
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue",
    #             },
    #             routing_domain: "RoutingDomain",
    #           },
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               self_managed_lattice_resource: {
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier",
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4", # required, accepts IPV4, IPV6
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue",
    #                 },
    #                 routing_domain: "RoutingDomain",
    #               },
    #             },
    #           },
    #         ],
    #       },
    #       google_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED", # accepts MANAGED, EXTERNAL
    #       },
    #       github_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED", # accepts MANAGED, EXTERNAL
    #       },
    #       slack_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED", # accepts MANAGED, EXTERNAL
    #       },
    #       salesforce_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED", # accepts MANAGED, EXTERNAL
    #       },
    #       microsoft_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED", # accepts MANAGED, EXTERNAL
    #         tenant_id: "TenantIdType",
    #       },
    #       atlassian_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED", # accepts MANAGED, EXTERNAL
    #       },
    #       linkedin_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED", # accepts MANAGED, EXTERNAL
    #       },
    #       included_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED", # accepts MANAGED, EXTERNAL
    #         issuer: "IssuerUrlType",
    #         authorization_endpoint: "AuthorizationEndpointType",
    #         token_endpoint: "TokenEndpointType",
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.client_secret_arn.secret_arn #=> String
    #   resp.client_secret_json_key #=> String
    #   resp.client_secret_source #=> String, one of "MANAGED", "EXTERNAL"
    #   resp.name #=> String
    #   resp.credential_provider_arn #=> String
    #   resp.callback_url #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.oauth_discovery.discovery_url #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.issuer #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.authorization_endpoint #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types #=> Array
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types[0] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods #=> Array
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods[0] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.client_id #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.on_behalf_of_token_exchange_config.grant_type #=> String, one of "TOKEN_EXCHANGE", "JWT_AUTHORIZATION_GRANT"
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.on_behalf_of_token_exchange_config.token_exchange_grant_type_config.actor_token_content #=> String, one of "NONE", "M2M", "AWS_IAM_ID_TOKEN_JWT"
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.on_behalf_of_token_exchange_config.token_exchange_grant_type_config.actor_token_scopes #=> Array
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.on_behalf_of_token_exchange_config.token_exchange_grant_type_config.actor_token_scopes[0] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.client_authentication_method #=> String, one of "CLIENT_SECRET_BASIC", "CLIENT_SECRET_POST", "AWS_IAM_ID_TOKEN_JWT", "PRIVATE_KEY_JWT"
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides #=> Array
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].domain #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_key_jwt_config.private_key_source.kms_key_source.kms_key_arn #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_key_jwt_config.signing_algorithm #=> String, one of "RS256", "PS256", "ES256"
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_key_jwt_config.additional_header_claims #=> Hash
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_key_jwt_config.additional_header_claims["AdditionalClaimName"] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_key_jwt_config.additional_payload_claims #=> Hash
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_key_jwt_config.additional_payload_claims["AdditionalClaimName"] #=> String
    #   resp.oauth2_provider_config_output.google_oauth_2_provider_config.oauth_discovery.discovery_url #=> String
    #   resp.oauth2_provider_config_output.google_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.issuer #=> String
    #   resp.oauth2_provider_config_output.google_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.authorization_endpoint #=> String
    #   resp.oauth2_provider_config_output.google_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint #=> String
    #   resp.oauth2_provider_config_output.google_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types #=> Array
    #   resp.oauth2_provider_config_output.google_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types[0] #=> String
    #   resp.oauth2_provider_config_output.google_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods #=> Array
    #   resp.oauth2_provider_config_output.google_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods[0] #=> String
    #   resp.oauth2_provider_config_output.google_oauth_2_provider_config.client_id #=> String
    #   resp.oauth2_provider_config_output.github_oauth_2_provider_config.oauth_discovery.discovery_url #=> String
    #   resp.oauth2_provider_config_output.github_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.issuer #=> String
    #   resp.oauth2_provider_config_output.github_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.authorization_endpoint #=> String
    #   resp.oauth2_provider_config_output.github_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint #=> String
    #   resp.oauth2_provider_config_output.github_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types #=> Array
    #   resp.oauth2_provider_config_output.github_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types[0] #=> String
    #   resp.oauth2_provider_config_output.github_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods #=> Array
    #   resp.oauth2_provider_config_output.github_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods[0] #=> String
    #   resp.oauth2_provider_config_output.github_oauth_2_provider_config.client_id #=> String
    #   resp.oauth2_provider_config_output.slack_oauth_2_provider_config.oauth_discovery.discovery_url #=> String
    #   resp.oauth2_provider_config_output.slack_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.issuer #=> String
    #   resp.oauth2_provider_config_output.slack_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.authorization_endpoint #=> String
    #   resp.oauth2_provider_config_output.slack_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint #=> String
    #   resp.oauth2_provider_config_output.slack_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types #=> Array
    #   resp.oauth2_provider_config_output.slack_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types[0] #=> String
    #   resp.oauth2_provider_config_output.slack_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods #=> Array
    #   resp.oauth2_provider_config_output.slack_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods[0] #=> String
    #   resp.oauth2_provider_config_output.slack_oauth_2_provider_config.client_id #=> String
    #   resp.oauth2_provider_config_output.salesforce_oauth_2_provider_config.oauth_discovery.discovery_url #=> String
    #   resp.oauth2_provider_config_output.salesforce_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.issuer #=> String
    #   resp.oauth2_provider_config_output.salesforce_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.authorization_endpoint #=> String
    #   resp.oauth2_provider_config_output.salesforce_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint #=> String
    #   resp.oauth2_provider_config_output.salesforce_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types #=> Array
    #   resp.oauth2_provider_config_output.salesforce_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types[0] #=> String
    #   resp.oauth2_provider_config_output.salesforce_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods #=> Array
    #   resp.oauth2_provider_config_output.salesforce_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods[0] #=> String
    #   resp.oauth2_provider_config_output.salesforce_oauth_2_provider_config.client_id #=> String
    #   resp.oauth2_provider_config_output.microsoft_oauth_2_provider_config.oauth_discovery.discovery_url #=> String
    #   resp.oauth2_provider_config_output.microsoft_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.issuer #=> String
    #   resp.oauth2_provider_config_output.microsoft_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.authorization_endpoint #=> String
    #   resp.oauth2_provider_config_output.microsoft_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint #=> String
    #   resp.oauth2_provider_config_output.microsoft_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types #=> Array
    #   resp.oauth2_provider_config_output.microsoft_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types[0] #=> String
    #   resp.oauth2_provider_config_output.microsoft_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods #=> Array
    #   resp.oauth2_provider_config_output.microsoft_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods[0] #=> String
    #   resp.oauth2_provider_config_output.microsoft_oauth_2_provider_config.client_id #=> String
    #   resp.oauth2_provider_config_output.atlassian_oauth_2_provider_config.oauth_discovery.discovery_url #=> String
    #   resp.oauth2_provider_config_output.atlassian_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.issuer #=> String
    #   resp.oauth2_provider_config_output.atlassian_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.authorization_endpoint #=> String
    #   resp.oauth2_provider_config_output.atlassian_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint #=> String
    #   resp.oauth2_provider_config_output.atlassian_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types #=> Array
    #   resp.oauth2_provider_config_output.atlassian_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types[0] #=> String
    #   resp.oauth2_provider_config_output.atlassian_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods #=> Array
    #   resp.oauth2_provider_config_output.atlassian_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods[0] #=> String
    #   resp.oauth2_provider_config_output.atlassian_oauth_2_provider_config.client_id #=> String
    #   resp.oauth2_provider_config_output.linkedin_oauth_2_provider_config.oauth_discovery.discovery_url #=> String
    #   resp.oauth2_provider_config_output.linkedin_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.issuer #=> String
    #   resp.oauth2_provider_config_output.linkedin_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.authorization_endpoint #=> String
    #   resp.oauth2_provider_config_output.linkedin_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint #=> String
    #   resp.oauth2_provider_config_output.linkedin_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types #=> Array
    #   resp.oauth2_provider_config_output.linkedin_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types[0] #=> String
    #   resp.oauth2_provider_config_output.linkedin_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods #=> Array
    #   resp.oauth2_provider_config_output.linkedin_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods[0] #=> String
    #   resp.oauth2_provider_config_output.linkedin_oauth_2_provider_config.client_id #=> String
    #   resp.oauth2_provider_config_output.included_oauth_2_provider_config.oauth_discovery.discovery_url #=> String
    #   resp.oauth2_provider_config_output.included_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.issuer #=> String
    #   resp.oauth2_provider_config_output.included_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.authorization_endpoint #=> String
    #   resp.oauth2_provider_config_output.included_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint #=> String
    #   resp.oauth2_provider_config_output.included_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types #=> Array
    #   resp.oauth2_provider_config_output.included_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types[0] #=> String
    #   resp.oauth2_provider_config_output.included_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods #=> Array
    #   resp.oauth2_provider_config_output.included_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods[0] #=> String
    #   resp.oauth2_provider_config_output.included_oauth_2_provider_config.client_id #=> String
    #   resp.status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateOauth2CredentialProvider AWS API Documentation
    #
    # @overload create_oauth_2_credential_provider(params = {})
    # @param [Hash] params ({})
    def create_oauth_2_credential_provider(params = {}, options = {})
      req = build_request(:create_oauth_2_credential_provider, params)
      req.send_request(options)
    end

    # Creates an online evaluation configuration for continuous monitoring
    # of agent performance. Online evaluation automatically samples live
    # traffic from CloudWatch logs at specified rates and applies evaluators
    # to assess agent quality in production.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a previous
    #   request, the service ignores the request, but doesn't return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, String] :online_evaluation_config_name
    #   The name of the online evaluation configuration. Must be unique within
    #   your account.
    #
    # @option params [String] :description
    #   The description of the online evaluation configuration that explains
    #   its monitoring purpose and scope.
    #
    # @option params [required, Types::Rule] :rule
    #   The evaluation rule that defines sampling configuration, filters, and
    #   session detection settings for the online evaluation.
    #
    # @option params [required, Types::DataSourceConfig] :data_source_config
    #   The data source configuration that specifies CloudWatch log groups and
    #   service names to monitor for agent traces.
    #
    # @option params [Array<Types::EvaluatorReference>] :evaluators
    #   The list of evaluators to apply during online evaluation. Can include
    #   both built-in evaluators and custom evaluators created with
    #   `CreateEvaluator`.
    #
    # @option params [Array<Types::Insight>] :insights
    #   The list of insight types to run against agent sessions.
    #
    # @option params [Types::ClusteringConfig] :clustering_config
    #   Configuration for periodic batch evaluation clustering of insight
    #   results.
    #
    # @option params [required, String] :evaluation_execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants permissions
    #   to read from CloudWatch logs, write evaluation results, and invoke
    #   Amazon Bedrock models for evaluation. If the configuration references
    #   evaluators encrypted with a customer managed KMS key, this role must
    #   also have `kms:Decrypt` permission on the KMS key. The service
    #   validates this permission at configuration creation time. For more
    #   information, see [Encryption at rest for AgentCore Evaluations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/evaluations-encryption.html
    #
    # @option params [required, Boolean] :enable_on_create
    #   Whether to enable the online evaluation configuration immediately upon
    #   creation. If true, evaluation begins automatically.
    #
    # @option params [Hash<String,String>] :tags
    #   A map of tag keys and values to assign to an AgentCore Online
    #   Evaluation Config. Tags enable you to categorize your resources in
    #   different ways, for example, by purpose, owner, or environment.
    #
    # @return [Types::CreateOnlineEvaluationConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOnlineEvaluationConfigResponse#online_evaluation_config_arn #online_evaluation_config_arn} => String
    #   * {Types::CreateOnlineEvaluationConfigResponse#online_evaluation_config_id #online_evaluation_config_id} => String
    #   * {Types::CreateOnlineEvaluationConfigResponse#created_at #created_at} => Time
    #   * {Types::CreateOnlineEvaluationConfigResponse#output_config #output_config} => Types::OutputConfig
    #   * {Types::CreateOnlineEvaluationConfigResponse#status #status} => String
    #   * {Types::CreateOnlineEvaluationConfigResponse#execution_status #execution_status} => String
    #   * {Types::CreateOnlineEvaluationConfigResponse#failure_reason #failure_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_online_evaluation_config({
    #     client_token: "ClientToken",
    #     online_evaluation_config_name: "EvaluationConfigName", # required
    #     description: "EvaluationConfigDescription",
    #     rule: { # required
    #       sampling_config: { # required
    #         sampling_percentage: 1.0, # required
    #       },
    #       filters: [
    #         {
    #           key: "FilterKeyString", # required
    #           operator: "Equals", # required, accepts Equals, NotEquals, GreaterThan, LessThan, GreaterThanOrEqual, LessThanOrEqual, Contains, NotContains
    #           value: { # required
    #             string_value: "FilterValueStringValueString",
    #             double_value: 1.0,
    #             boolean_value: false,
    #           },
    #         },
    #       ],
    #       session_config: {
    #         session_timeout_minutes: 1, # required
    #       },
    #     },
    #     data_source_config: { # required
    #       cloud_watch_logs: {
    #         log_group_names: ["LogGroupName"], # required
    #         service_names: ["ServiceName"], # required
    #       },
    #     },
    #     evaluators: [
    #       {
    #         evaluator_id: "EvaluatorId",
    #       },
    #     ],
    #     insights: [
    #       {
    #         insight_id: "InsightId", # required
    #       },
    #     ],
    #     clustering_config: {
    #       frequencies: ["DAILY"], # required, accepts DAILY, WEEKLY, MONTHLY
    #     },
    #     evaluation_execution_role_arn: "RoleArn", # required
    #     enable_on_create: false, # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.online_evaluation_config_arn #=> String
    #   resp.online_evaluation_config_id #=> String
    #   resp.created_at #=> Time
    #   resp.output_config.cloud_watch_config.log_group_name #=> String
    #   resp.status #=> String, one of "ACTIVE", "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "ERROR"
    #   resp.execution_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateOnlineEvaluationConfig AWS API Documentation
    #
    # @overload create_online_evaluation_config(params = {})
    # @param [Hash] params ({})
    def create_online_evaluation_config(params = {}, options = {})
      req = build_request(:create_online_evaluation_config, params)
      req.send_request(options)
    end

    # Creates a new payment connector for a payment manager. A payment
    # connector integrates with a supported payment provider to enable
    # payment processing capabilities.
    #
    # @option params [required, String] :payment_manager_id
    #   The unique identifier of the payment manager to create the connector
    #   for.
    #
    # @option params [required, String] :name
    #   The name of the payment connector.
    #
    # @option params [String] :description
    #   A description of the payment connector.
    #
    # @option params [required, String] :type
    #   The type of payment connector, which determines the payment provider
    #   integration.
    #
    # @option params [required, Array<Types::CredentialsProviderConfiguration>] :credential_provider_configurations
    #   The credential provider configurations for the payment connector.
    #   These configurations specify how the connector authenticates with the
    #   payment provider.
    #
    # @option params [String] :provision_mode
    #   The provision mode for creating the payment connector. If you don't
    #   specify a value, the default is `MANUAL`.
    #
    #   * `MANUAL` - You provide the credential provider configurations
    #     directly.
    #
    #   * `QUICK_CREATE` - The service orchestrates OAuth consent and
    #     provisions the credential provider for you.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a previous
    #   request, the service ignores the request, but doesn't return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @return [Types::CreatePaymentConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePaymentConnectorResponse#payment_connector_id #payment_connector_id} => String
    #   * {Types::CreatePaymentConnectorResponse#payment_manager_id #payment_manager_id} => String
    #   * {Types::CreatePaymentConnectorResponse#name #name} => String
    #   * {Types::CreatePaymentConnectorResponse#type #type} => String
    #   * {Types::CreatePaymentConnectorResponse#credential_provider_configurations #credential_provider_configurations} => Array&lt;Types::CredentialsProviderConfiguration&gt;
    #   * {Types::CreatePaymentConnectorResponse#created_at #created_at} => Time
    #   * {Types::CreatePaymentConnectorResponse#status #status} => String
    #   * {Types::CreatePaymentConnectorResponse#authorization_url #authorization_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_payment_connector({
    #     payment_manager_id: "PaymentManagerId", # required
    #     name: "PaymentConnectorName", # required
    #     description: "PaymentsDescription",
    #     type: "CoinbaseCDP", # required, accepts CoinbaseCDP, StripePrivy
    #     credential_provider_configurations: [ # required
    #       {
    #         coinbase_cdp: {
    #           credential_provider_arn: "PaymentCredentialProviderArn", # required
    #         },
    #         stripe_privy: {
    #           credential_provider_arn: "PaymentCredentialProviderArn", # required
    #         },
    #       },
    #     ],
    #     provision_mode: "MANUAL", # accepts MANUAL, QUICK_CREATE
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.payment_connector_id #=> String
    #   resp.payment_manager_id #=> String
    #   resp.name #=> String
    #   resp.type #=> String, one of "CoinbaseCDP", "StripePrivy"
    #   resp.credential_provider_configurations #=> Array
    #   resp.credential_provider_configurations[0].coinbase_cdp.credential_provider_arn #=> String
    #   resp.credential_provider_configurations[0].stripe_privy.credential_provider_arn #=> String
    #   resp.created_at #=> Time
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "READY", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED", "AWS_MARKETPLACE_SUBSCRIPTION_REQUIRED", "PENDING_AUTHENTICATION", "PROVISIONING", "AUTHENTICATION_EXPIRED", "AUTHENTICATION_FAILED"
    #   resp.authorization_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreatePaymentConnector AWS API Documentation
    #
    # @overload create_payment_connector(params = {})
    # @param [Hash] params ({})
    def create_payment_connector(params = {}, options = {})
      req = build_request(:create_payment_connector, params)
      req.send_request(options)
    end

    # Creates a new payment credential provider for storing authentication
    # credentials used by payment connectors to communicate with external
    # payment providers.
    #
    # @option params [required, String] :name
    #   Unique name for the payment credential provider.
    #
    # @option params [required, String] :credential_provider_vendor
    #   The vendor type for the payment credential provider (e.g.,
    #   CoinbaseCDP, StripePrivy).
    #
    # @option params [required, Types::PaymentProviderConfigurationInput] :provider_configuration_input
    #   Configuration specific to the vendor, including API credentials.
    #
    # @option params [Hash<String,String>] :tags
    #   Optional tags for resource organization.
    #
    # @return [Types::CreatePaymentCredentialProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePaymentCredentialProviderResponse#name #name} => String
    #   * {Types::CreatePaymentCredentialProviderResponse#credential_provider_vendor #credential_provider_vendor} => String
    #   * {Types::CreatePaymentCredentialProviderResponse#credential_provider_arn #credential_provider_arn} => String
    #   * {Types::CreatePaymentCredentialProviderResponse#provider_configuration_output #provider_configuration_output} => Types::PaymentProviderConfigurationOutput
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_payment_credential_provider({
    #     name: "CredentialProviderName", # required
    #     credential_provider_vendor: "CoinbaseCDP", # required, accepts CoinbaseCDP, StripePrivy
    #     provider_configuration_input: { # required
    #       coinbase_cdp_configuration: {
    #         api_key_id: "CoinbaseCdpApiKeyIdType", # required
    #         api_key_secret: "DefaultCoinbaseCdpApiKeySecretType",
    #         api_key_secret_source: "MANAGED", # accepts MANAGED, EXTERNAL
    #         api_key_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         wallet_secret: "DefaultCoinbaseCdpWalletSecretType",
    #         wallet_secret_source: "MANAGED", # accepts MANAGED, EXTERNAL
    #         wallet_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #       },
    #       stripe_privy_configuration: {
    #         app_id: "StripePrivyAppIdType", # required
    #         app_secret: "DefaultStripePrivyAppSecretType",
    #         app_secret_source: "MANAGED", # accepts MANAGED, EXTERNAL
    #         app_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         authorization_private_key: "DefaultStripePrivyAuthorizationPrivateKeyType",
    #         authorization_private_key_source: "MANAGED", # accepts MANAGED, EXTERNAL
    #         authorization_private_key_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         authorization_id: "StripePrivyAuthorizationIdType", # required
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.credential_provider_vendor #=> String, one of "CoinbaseCDP", "StripePrivy"
    #   resp.credential_provider_arn #=> String
    #   resp.provider_configuration_output.coinbase_cdp_configuration.api_key_id #=> String
    #   resp.provider_configuration_output.coinbase_cdp_configuration.api_key_secret_arn.secret_arn #=> String
    #   resp.provider_configuration_output.coinbase_cdp_configuration.api_key_secret_json_key #=> String
    #   resp.provider_configuration_output.coinbase_cdp_configuration.api_key_secret_source #=> String, one of "MANAGED", "EXTERNAL"
    #   resp.provider_configuration_output.coinbase_cdp_configuration.wallet_secret_arn.secret_arn #=> String
    #   resp.provider_configuration_output.coinbase_cdp_configuration.wallet_secret_json_key #=> String
    #   resp.provider_configuration_output.coinbase_cdp_configuration.wallet_secret_source #=> String, one of "MANAGED", "EXTERNAL"
    #   resp.provider_configuration_output.stripe_privy_configuration.app_id #=> String
    #   resp.provider_configuration_output.stripe_privy_configuration.app_secret_arn.secret_arn #=> String
    #   resp.provider_configuration_output.stripe_privy_configuration.app_secret_json_key #=> String
    #   resp.provider_configuration_output.stripe_privy_configuration.app_secret_source #=> String, one of "MANAGED", "EXTERNAL"
    #   resp.provider_configuration_output.stripe_privy_configuration.authorization_private_key_arn.secret_arn #=> String
    #   resp.provider_configuration_output.stripe_privy_configuration.authorization_private_key_json_key #=> String
    #   resp.provider_configuration_output.stripe_privy_configuration.authorization_private_key_source #=> String, one of "MANAGED", "EXTERNAL"
    #   resp.provider_configuration_output.stripe_privy_configuration.authorization_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreatePaymentCredentialProvider AWS API Documentation
    #
    # @overload create_payment_credential_provider(params = {})
    # @param [Hash] params ({})
    def create_payment_credential_provider(params = {}, options = {})
      req = build_request(:create_payment_credential_provider, params)
      req.send_request(options)
    end

    # Creates a new payment manager in your Amazon Web Services account. A
    # payment manager serves as the top-level resource for managing payment
    # processing capabilities, including payment connectors that integrate
    # with supported payment providers.
    #
    # If you specify `CUSTOM_JWT` as the `authorizerType`, you must provide
    # an `authorizerConfiguration`.
    #
    # @option params [required, String] :name
    #   The name of the payment manager.
    #
    # @option params [String] :description
    #   A description of the payment manager.
    #
    # @option params [required, String] :authorizer_type
    #   The type of authorizer to use for the payment manager.
    #
    #   * `CUSTOM_JWT` - Authorize with a bearer token.
    #
    #   * `AWS_IAM` - Authorize with your Amazon Web Services IAM credentials.
    #
    # @option params [Types::AuthorizerConfiguration] :authorizer_configuration
    #   The authorizer configuration for the payment manager.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that the payment
    #   manager assumes to access resources on your behalf.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a previous
    #   request, the service ignores the request, but doesn't return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [Hash<String,String>] :tags
    #   A map of tag keys and values to assign to the payment manager.
    #
    # @option params [String] :kms_key_arn
    #   The Amazon Resource Name (ARN) of the customer managed KMS key to use
    #   for encrypting sensitive payment manager data at rest. If you don't
    #   specify a key, the data is encrypted with an Amazon Web Services owned
    #   key.
    #
    # @return [Types::CreatePaymentManagerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePaymentManagerResponse#payment_manager_arn #payment_manager_arn} => String
    #   * {Types::CreatePaymentManagerResponse#payment_manager_id #payment_manager_id} => String
    #   * {Types::CreatePaymentManagerResponse#name #name} => String
    #   * {Types::CreatePaymentManagerResponse#authorizer_type #authorizer_type} => String
    #   * {Types::CreatePaymentManagerResponse#authorizer_configuration #authorizer_configuration} => Types::AuthorizerConfiguration
    #   * {Types::CreatePaymentManagerResponse#role_arn #role_arn} => String
    #   * {Types::CreatePaymentManagerResponse#workload_identity_details #workload_identity_details} => Types::WorkloadIdentityDetails
    #   * {Types::CreatePaymentManagerResponse#created_at #created_at} => Time
    #   * {Types::CreatePaymentManagerResponse#status #status} => String
    #   * {Types::CreatePaymentManagerResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreatePaymentManagerResponse#kms_key_arn #kms_key_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_payment_manager({
    #     name: "PaymentManagerName", # required
    #     description: "PaymentsDescription",
    #     authorizer_type: "CUSTOM_JWT", # required, accepts CUSTOM_JWT, AWS_IAM
    #     authorizer_configuration: {
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"],
    #         allowed_scopes: ["AllowedScopeType"],
    #         advertised_scope_mapping: {
    #           "AllowedScopeType" => "AllowedScopeType",
    #         },
    #         custom_claims: [
    #           {
    #             inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #             inbound_token_claim_value_type: "STRING", # required, accepts STRING, STRING_ARRAY
    #             authorizing_claim_match_value: { # required
    #               claim_match_value: { # required
    #                 match_value_string: "MatchValueString",
    #                 match_value_string_list: ["MatchValueString"],
    #               },
    #               claim_match_operator: "EQUALS", # required, accepts EQUALS, CONTAINS, CONTAINS_ANY
    #             },
    #           },
    #         ],
    #         private_endpoint: {
    #           self_managed_lattice_resource: {
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier",
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4", # required, accepts IPV4, IPV6
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue",
    #             },
    #             routing_domain: "RoutingDomain",
    #           },
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               self_managed_lattice_resource: {
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier",
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4", # required, accepts IPV4, IPV6
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue",
    #                 },
    #                 routing_domain: "RoutingDomain",
    #               },
    #             },
    #           },
    #         ],
    #         allowed_workload_configuration: {
    #           hosting_environments: [
    #             {
    #               arn: "BedrockAgentcoreResourceArn", # required
    #             },
    #           ],
    #           workload_identities: ["WorkloadIdentityNameType"],
    #         },
    #       },
    #     },
    #     role_arn: "RoleArn", # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.payment_manager_arn #=> String
    #   resp.payment_manager_id #=> String
    #   resp.name #=> String
    #   resp.authorizer_type #=> String, one of "CUSTOM_JWT", "AWS_IAM"
    #   resp.authorizer_configuration.custom_jwt_authorizer.discovery_url #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_audience #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_audience[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_clients #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_clients[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_scopes #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_scopes[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.advertised_scope_mapping #=> Hash
    #   resp.authorizer_configuration.custom_jwt_authorizer.advertised_scope_mapping["AllowedScopeType"] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_name #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_value_type #=> String, one of "STRING", "STRING_ARRAY"
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_operator #=> String, one of "EQUALS", "CONTAINS", "CONTAINS_ANY"
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].domain #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.hosting_environments #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.hosting_environments[0].arn #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.workload_identities #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.workload_identities[0] #=> String
    #   resp.role_arn #=> String
    #   resp.workload_identity_details.workload_identity_arn #=> String
    #   resp.created_at #=> Time
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "READY", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreatePaymentManager AWS API Documentation
    #
    # @overload create_payment_manager(params = {})
    # @param [Hash] params ({})
    def create_payment_manager(params = {}, options = {})
      req = build_request(:create_payment_manager, params)
      req.send_request(options)
    end

    # Creates a policy within the AgentCore Policy system. Policies provide
    # real-time, deterministic control over agentic interactions with
    # AgentCore Gateway. Using the Cedar policy language, you can define
    # fine-grained policies that specify which interactions with Gateway
    # tools are permitted based on input parameters and OAuth claims,
    # ensuring agents operate within defined boundaries and business rules.
    # The policy is validated during creation against the Cedar schema
    # generated from the Gateway's tools' input schemas, which defines the
    # available tools, their parameters, and expected data types. This is an
    # asynchronous operation. Use the [GetPolicy][1] operation to poll the
    # `status` field to track completion.
    #
    # If the new policy is a temporal policy, creating it invalidates the
    # policy engine's active temporal sessions. For more information about
    # temporal policy sessions, see [session-based temporal policies][2].
    # The policy engine returns an HTTP 409 `ConflictException` to in-flight
    # sessions. To resume, you must start a new session with a new session
    # ID.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_GetPolicy.html
    # [2]: https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/policy-session-based-temporal.html
    #
    # @option params [required, String] :name
    #   The customer-assigned immutable name for the policy. Must be unique
    #   within the account. This name is used for policy identification and
    #   cannot be changed after creation.
    #
    # @option params [required, Types::PolicyDefinition] :definition
    #   The Cedar policy statement that defines the access control rules. This
    #   contains the actual policy logic written in Cedar policy language,
    #   specifying effect (permit or forbid), principals, actions, resources,
    #   and conditions for agent behavior control.
    #
    # @option params [String] :description
    #   A human-readable description of the policy's purpose and
    #   functionality (1-4,096 characters). This helps policy administrators
    #   understand the policy's intent, business rules, and operational
    #   scope. Use this field to document why the policy exists, what business
    #   requirement it addresses, and any special considerations for
    #   maintenance. Clear descriptions are essential for policy governance,
    #   auditing, and troubleshooting.
    #
    # @option params [String] :validation_mode
    #   The validation mode for the policy creation. Determines how Cedar
    #   analyzer validation results are handled during policy creation.
    #   FAIL\_ON\_ANY\_FINDINGS (default) runs the Cedar analyzer to validate
    #   the policy against the Cedar schema and tool context, failing creation
    #   if the analyzer detects any validation issues to ensure strict
    #   conformance. IGNORE\_ALL\_FINDINGS runs the Cedar analyzer but allows
    #   policy creation even if validation issues are detected, useful for
    #   testing or when the policy schema is evolving. Use
    #   FAIL\_ON\_ANY\_FINDINGS for production policies to ensure correctness,
    #   and IGNORE\_ALL\_FINDINGS only when you understand and accept the
    #   analyzer findings.
    #
    # @option params [String] :enforcement_mode
    #   The enforcement mode for the policy. Run this policy in `LOG_ONLY`
    #   mode to collect data on how it affects your application. Once you are
    #   satisfied with the data gathered, switch the policy to `ACTIVE`.
    #   Defaults to `ACTIVE`.
    #
    # @option params [required, String] :policy_engine_id
    #   The identifier of the policy engine which contains this policy. Policy
    #   engines group related policies and provide the execution context for
    #   policy evaluation.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure the idempotency of the
    #   request. The AWS SDK automatically generates this token, so you don't
    #   need to provide it in most cases. If you retry a request with the same
    #   client token, the service returns the same response without creating a
    #   duplicate policy.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreatePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePolicyResponse#policy_id #policy_id} => String
    #   * {Types::CreatePolicyResponse#name #name} => String
    #   * {Types::CreatePolicyResponse#policy_engine_id #policy_engine_id} => String
    #   * {Types::CreatePolicyResponse#created_at #created_at} => Time
    #   * {Types::CreatePolicyResponse#updated_at #updated_at} => Time
    #   * {Types::CreatePolicyResponse#policy_arn #policy_arn} => String
    #   * {Types::CreatePolicyResponse#status #status} => String
    #   * {Types::CreatePolicyResponse#enforcement_mode #enforcement_mode} => String
    #   * {Types::CreatePolicyResponse#definition #definition} => Types::PolicyDefinition
    #   * {Types::CreatePolicyResponse#description #description} => String
    #   * {Types::CreatePolicyResponse#status_reasons #status_reasons} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_policy({
    #     name: "PolicyName", # required
    #     definition: { # required
    #       cedar: {
    #         statement: "Statement", # required
    #       },
    #       policy_generation: {
    #         policy_generation_id: "ResourceId", # required
    #         policy_generation_asset_id: "ResourceId", # required
    #       },
    #       policy: {
    #         statement: "Statement", # required
    #       },
    #     },
    #     description: "Description",
    #     validation_mode: "FAIL_ON_ANY_FINDINGS", # accepts FAIL_ON_ANY_FINDINGS, IGNORE_ALL_FINDINGS
    #     enforcement_mode: "ACTIVE", # accepts ACTIVE, LOG_ONLY
    #     policy_engine_id: "ResourceId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_id #=> String
    #   resp.name #=> String
    #   resp.policy_engine_id #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.policy_arn #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
    #   resp.enforcement_mode #=> String, one of "ACTIVE", "LOG_ONLY"
    #   resp.definition.cedar.statement #=> String
    #   resp.definition.policy_generation.policy_generation_id #=> String
    #   resp.definition.policy_generation.policy_generation_asset_id #=> String
    #   resp.definition.policy.statement #=> String
    #   resp.description #=> String
    #   resp.status_reasons #=> Array
    #   resp.status_reasons[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreatePolicy AWS API Documentation
    #
    # @overload create_policy(params = {})
    # @param [Hash] params ({})
    def create_policy(params = {}, options = {})
      req = build_request(:create_policy, params)
      req.send_request(options)
    end

    # Creates a new policy engine within the AgentCore Policy system. A
    # policy engine is a collection of policies that evaluates and
    # authorizes agent tool calls. When associated with Gateways (each
    # Gateway can be associated with at most one policy engine, but multiple
    # Gateways can be associated with the same engine), the policy engine
    # intercepts all agent requests and determines whether to allow or deny
    # each action based on the defined policies. This is an asynchronous
    # operation. Use the [GetPolicyEngine][1] operation to poll the `status`
    # field to track completion.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_GetPolicyEngine.html
    #
    # @option params [required, String] :name
    #   The customer-assigned immutable name for the policy engine. This name
    #   identifies the policy engine and cannot be changed after creation.
    #
    # @option params [String] :description
    #   A human-readable description of the policy engine's purpose and scope
    #   (1-4,096 characters). This helps administrators understand the policy
    #   engine's role in the overall governance strategy. Document which
    #   Gateway this engine will be associated with, what types of tools or
    #   workflows it governs, and the team or service responsible for
    #   maintaining it. Clear descriptions are essential when managing
    #   multiple policy engines across different services or environments.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you retry a request with the same
    #   client token, the service returns the same response without creating a
    #   duplicate policy engine.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt the
    #   policy engine data.
    #
    # @option params [Hash<String,String>] :tags
    #   A map of tag keys and values to assign to an AgentCore Policy. Tags
    #   enable you to categorize your resources in different ways, for
    #   example, by purpose, owner, or environment.
    #
    # @return [Types::CreatePolicyEngineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePolicyEngineResponse#policy_engine_id #policy_engine_id} => String
    #   * {Types::CreatePolicyEngineResponse#name #name} => String
    #   * {Types::CreatePolicyEngineResponse#created_at #created_at} => Time
    #   * {Types::CreatePolicyEngineResponse#updated_at #updated_at} => Time
    #   * {Types::CreatePolicyEngineResponse#policy_engine_arn #policy_engine_arn} => String
    #   * {Types::CreatePolicyEngineResponse#status #status} => String
    #   * {Types::CreatePolicyEngineResponse#encryption_key_arn #encryption_key_arn} => String
    #   * {Types::CreatePolicyEngineResponse#description #description} => String
    #   * {Types::CreatePolicyEngineResponse#status_reasons #status_reasons} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_policy_engine({
    #     name: "PolicyEngineName", # required
    #     description: "Description",
    #     client_token: "ClientToken",
    #     encryption_key_arn: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_engine_id #=> String
    #   resp.name #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.policy_engine_arn #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
    #   resp.encryption_key_arn #=> String
    #   resp.description #=> String
    #   resp.status_reasons #=> Array
    #   resp.status_reasons[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreatePolicyEngine AWS API Documentation
    #
    # @overload create_policy_engine(params = {})
    # @param [Hash] params ({})
    def create_policy_engine(params = {}, options = {})
      req = build_request(:create_policy_engine, params)
      req.send_request(options)
    end

    # Creates a new registry in your Amazon Web Services account. A registry
    # serves as a centralized catalog for organizing and managing registry
    # records, including MCP servers, A2A agents, agent skills, and custom
    # resource types.
    #
    # If you specify `CUSTOM_JWT` as the `authorizerType`, you must provide
    # an `authorizerConfiguration`.
    #
    # @option params [required, String] :name
    #   The name of the registry. The name must be unique within your account
    #   and can contain alphanumeric characters and underscores.
    #
    # @option params [String] :description
    #   A description of the registry.
    #
    # @option params [String] :authorizer_type
    #   The type of authorizer to use for the registry. This controls the
    #   authorization method for the Search and Invoke APIs used by consumers,
    #   and does not affect the standard CRUDL APIs for registry and registry
    #   record management used by administrators.
    #
    #   * `CUSTOM_JWT` - Authorize with a bearer token.
    #
    #   * `AWS_IAM` - Authorize with your Amazon Web Services IAM credentials.
    #
    # @option params [Types::AuthorizerConfiguration] :authorizer_configuration
    #   The authorizer configuration for the registry. Required if
    #   `authorizerType` is `CUSTOM_JWT`. For details, see the
    #   `AuthorizerConfiguration` data type.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a previous
    #   request, the service ignores the request, but doesn't return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [Types::ApprovalConfiguration] :approval_configuration
    #   The approval configuration for registry records. Controls whether
    #   records require explicit approval before becoming active. See the
    #   `ApprovalConfiguration` data type for supported configuration options.
    #
    # @return [Types::CreateRegistryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRegistryResponse#registry_arn #registry_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_registry({
    #     name: "RegistryName", # required
    #     description: "Description",
    #     authorizer_type: "CUSTOM_JWT", # accepts CUSTOM_JWT, AWS_IAM
    #     authorizer_configuration: {
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"],
    #         allowed_scopes: ["AllowedScopeType"],
    #         advertised_scope_mapping: {
    #           "AllowedScopeType" => "AllowedScopeType",
    #         },
    #         custom_claims: [
    #           {
    #             inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #             inbound_token_claim_value_type: "STRING", # required, accepts STRING, STRING_ARRAY
    #             authorizing_claim_match_value: { # required
    #               claim_match_value: { # required
    #                 match_value_string: "MatchValueString",
    #                 match_value_string_list: ["MatchValueString"],
    #               },
    #               claim_match_operator: "EQUALS", # required, accepts EQUALS, CONTAINS, CONTAINS_ANY
    #             },
    #           },
    #         ],
    #         private_endpoint: {
    #           self_managed_lattice_resource: {
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier",
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4", # required, accepts IPV4, IPV6
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue",
    #             },
    #             routing_domain: "RoutingDomain",
    #           },
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               self_managed_lattice_resource: {
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier",
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4", # required, accepts IPV4, IPV6
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue",
    #                 },
    #                 routing_domain: "RoutingDomain",
    #               },
    #             },
    #           },
    #         ],
    #         allowed_workload_configuration: {
    #           hosting_environments: [
    #             {
    #               arn: "BedrockAgentcoreResourceArn", # required
    #             },
    #           ],
    #           workload_identities: ["WorkloadIdentityNameType"],
    #         },
    #       },
    #     },
    #     client_token: "ClientToken",
    #     approval_configuration: {
    #       auto_approval: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateRegistry AWS API Documentation
    #
    # @overload create_registry(params = {})
    # @param [Hash] params ({})
    def create_registry(params = {}, options = {})
      req = build_request(:create_registry, params)
      req.send_request(options)
    end

    # Creates a new registry record within the specified registry. A
    # registry record represents an individual AI resource's metadata in
    # the registry. This could be an MCP server (and associated tools), A2A
    # agent, agent skill, or a custom resource with a custom schema.
    #
    # The record is processed asynchronously and returns HTTP 202 Accepted.
    #
    # @option params [required, String] :registry_id
    #   The identifier of the registry where the record will be created. You
    #   can specify either the Amazon Resource Name (ARN) or the ID of the
    #   registry.
    #
    # @option params [required, String] :name
    #   The name of the registry record.
    #
    # @option params [String] :description
    #   A description of the registry record.
    #
    # @option params [required, String] :descriptor_type
    #   The descriptor type of the registry record.
    #
    #   * `MCP` - Model Context Protocol descriptor for MCP-compatible servers
    #     and tools.
    #
    #   * `A2A` - Agent-to-Agent protocol descriptor.
    #
    #   * `CUSTOM` - Custom descriptor type for resources such as APIs, Lambda
    #     functions, or servers not conforming to a standard protocol.
    #
    #   * `AGENT_SKILLS` - Agent skills descriptor for defining agent skill
    #     definitions.
    #
    # @option params [Types::Descriptors] :descriptors
    #   The descriptor-type-specific configuration containing the resource
    #   schema and metadata. The structure of this field depends on the
    #   `descriptorType` you specify.
    #
    # @option params [String] :record_version
    #   The version of the registry record. Use this to track different
    #   versions of the record's content.
    #
    # @option params [String] :synchronization_type
    #   The type of synchronization to use for keeping the record metadata up
    #   to date from an external source. Possible values include `FROM_URL`
    #   and `NONE`.
    #
    # @option params [Types::SynchronizationConfiguration] :synchronization_configuration
    #   The configuration for synchronizing registry record metadata from an
    #   external source, such as a URL-based MCP server.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a previous
    #   request, the service ignores the request, but doesn't return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @return [Types::CreateRegistryRecordResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRegistryRecordResponse#record_arn #record_arn} => String
    #   * {Types::CreateRegistryRecordResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_registry_record({
    #     registry_id: "RegistryIdentifier", # required
    #     name: "RegistryRecordName", # required
    #     description: "Description",
    #     descriptor_type: "MCP", # required, accepts MCP, A2A, CUSTOM, AGENT_SKILLS
    #     descriptors: {
    #       mcp: {
    #         server: {
    #           schema_version: "SchemaVersion",
    #           inline_content: "InlineContent",
    #         },
    #         tools: {
    #           protocol_version: "SchemaVersion",
    #           inline_content: "InlineContent",
    #         },
    #       },
    #       a2a: {
    #         agent_card: {
    #           schema_version: "SchemaVersion",
    #           inline_content: "InlineContent",
    #         },
    #       },
    #       custom: {
    #         inline_content: "InlineContent",
    #       },
    #       agent_skills: {
    #         skill_md: {
    #           inline_content: "InlineContent",
    #         },
    #         skill_definition: {
    #           schema_version: "SchemaVersion",
    #           inline_content: "InlineContent",
    #         },
    #       },
    #     },
    #     record_version: "RegistryRecordVersion",
    #     synchronization_type: "URL", # accepts URL
    #     synchronization_configuration: {
    #       from_url: {
    #         url: "McpServerUrl", # required
    #         credential_provider_configurations: [
    #           {
    #             credential_provider_type: "OAUTH", # required, accepts OAUTH, IAM
    #             credential_provider: { # required
    #               oauth_credential_provider: {
    #                 provider_arn: "CredentialProviderArn", # required
    #                 grant_type: "CLIENT_CREDENTIALS", # accepts CLIENT_CREDENTIALS
    #                 scopes: ["String"],
    #                 custom_parameters: {
    #                   "String" => "String",
    #                 },
    #               },
    #               iam_credential_provider: {
    #                 role_arn: "IamRoleArn",
    #                 service: "IamSigningServiceName",
    #                 region: "IamSigningRegion",
    #               },
    #             },
    #           },
    #         ],
    #       },
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.record_arn #=> String
    #   resp.status #=> String, one of "DRAFT", "PENDING_APPROVAL", "APPROVED", "REJECTED", "DEPRECATED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateRegistryRecord AWS API Documentation
    #
    # @overload create_registry_record(params = {})
    # @param [Hash] params ({})
    def create_registry_record(params = {}, options = {})
      req = build_request(:create_registry_record, params)
      req.send_request(options)
    end

    # Creates a new workload identity.
    #
    # @option params [required, String] :name
    #   The name of the workload identity. The name must be unique within your
    #   account.
    #
    # @option params [Array<String>] :allowed_resource_oauth_2_return_urls
    #   The list of allowed OAuth2 return URLs for resources associated with
    #   this workload identity.
    #
    # @option params [Hash<String,String>] :tags
    #   A map of tag keys and values to assign to the workload identity. Tags
    #   enable you to categorize your resources in different ways, for
    #   example, by purpose, owner, or environment.
    #
    # @return [Types::CreateWorkloadIdentityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkloadIdentityResponse#name #name} => String
    #   * {Types::CreateWorkloadIdentityResponse#workload_identity_arn #workload_identity_arn} => String
    #   * {Types::CreateWorkloadIdentityResponse#allowed_resource_oauth_2_return_urls #allowed_resource_oauth_2_return_urls} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workload_identity({
    #     name: "WorkloadIdentityNameType", # required
    #     allowed_resource_oauth_2_return_urls: ["ResourceOauth2ReturnUrlType"],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.workload_identity_arn #=> String
    #   resp.allowed_resource_oauth_2_return_urls #=> Array
    #   resp.allowed_resource_oauth_2_return_urls[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateWorkloadIdentity AWS API Documentation
    #
    # @overload create_workload_identity(params = {})
    # @param [Hash] params ({})
    def create_workload_identity(params = {}, options = {})
      req = build_request(:create_workload_identity, params)
      req.send_request(options)
    end

    # Deletes an Amazon Bedrock AgentCore Runtime, or a single version of an
    # AgentCore Runtime when you provide the version qualifier.
    #
    # @option params [required, String] :agent_runtime_id
    #   The unique identifier of the AgentCore Runtime to delete.
    #
    # @option params [String] :agent_runtime_version
    #   The version of the AgentCore Runtime to delete. When you provide this
    #   value, only that version is deleted. When you omit it, the entire
    #   AgentCore Runtime and all of its versions are deleted.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the operation
    #   completes no more than one time. If this token matches a previous
    #   request, the service ignores the request but does not return an error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeleteAgentRuntimeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAgentRuntimeResponse#status #status} => String
    #   * {Types::DeleteAgentRuntimeResponse#agent_runtime_id #agent_runtime_id} => String
    #   * {Types::DeleteAgentRuntimeResponse#agent_runtime_version #agent_runtime_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_agent_runtime({
    #     agent_runtime_id: "AgentRuntimeId", # required
    #     agent_runtime_version: "AgentRuntimeVersion",
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING"
    #   resp.agent_runtime_id #=> String
    #   resp.agent_runtime_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteAgentRuntime AWS API Documentation
    #
    # @overload delete_agent_runtime(params = {})
    # @param [Hash] params ({})
    def delete_agent_runtime(params = {}, options = {})
      req = build_request(:delete_agent_runtime, params)
      req.send_request(options)
    end

    # Deletes an AgentCore Runtime endpoint.
    #
    # @option params [required, String] :agent_runtime_id
    #   The unique identifier of the AgentCore Runtime associated with the
    #   endpoint.
    #
    # @option params [required, String] :endpoint_name
    #   The name of the AgentCore Runtime endpoint to delete.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeleteAgentRuntimeEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAgentRuntimeEndpointResponse#status #status} => String
    #   * {Types::DeleteAgentRuntimeEndpointResponse#agent_runtime_id #agent_runtime_id} => String
    #   * {Types::DeleteAgentRuntimeEndpointResponse#endpoint_name #endpoint_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_agent_runtime_endpoint({
    #     agent_runtime_id: "AgentRuntimeId", # required
    #     endpoint_name: "EndpointName", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING"
    #   resp.agent_runtime_id #=> String
    #   resp.endpoint_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteAgentRuntimeEndpoint AWS API Documentation
    #
    # @overload delete_agent_runtime_endpoint(params = {})
    # @param [Hash] params ({})
    def delete_agent_runtime_endpoint(params = {}, options = {})
      req = build_request(:delete_agent_runtime_endpoint, params)
      req.send_request(options)
    end

    # Deletes an API key credential provider.
    #
    # @option params [required, String] :name
    #   The name of the API key credential provider to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_api_key_credential_provider({
    #     name: "CredentialProviderName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteApiKeyCredentialProvider AWS API Documentation
    #
    # @overload delete_api_key_credential_provider(params = {})
    # @param [Hash] params ({})
    def delete_api_key_credential_provider(params = {}, options = {})
      req = build_request(:delete_api_key_credential_provider, params)
      req.send_request(options)
    end

    # Deletes a custom browser.
    #
    # @option params [required, String] :browser_id
    #   The unique identifier of the browser to delete.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeleteBrowserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBrowserResponse#browser_id #browser_id} => String
    #   * {Types::DeleteBrowserResponse#status #status} => String
    #   * {Types::DeleteBrowserResponse#last_updated_at #last_updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_browser({
    #     browser_id: "BrowserId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.browser_id #=> String
    #   resp.status #=> String, one of "CREATING", "CREATE_FAILED", "READY", "DELETING", "DELETE_FAILED", "DELETED"
    #   resp.last_updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteBrowser AWS API Documentation
    #
    # @overload delete_browser(params = {})
    # @param [Hash] params ({})
    def delete_browser(params = {}, options = {})
      req = build_request(:delete_browser, params)
      req.send_request(options)
    end

    # Deletes a browser profile.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of the browser profile to delete.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeleteBrowserProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBrowserProfileResponse#profile_id #profile_id} => String
    #   * {Types::DeleteBrowserProfileResponse#profile_arn #profile_arn} => String
    #   * {Types::DeleteBrowserProfileResponse#status #status} => String
    #   * {Types::DeleteBrowserProfileResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::DeleteBrowserProfileResponse#last_saved_at #last_saved_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_browser_profile({
    #     profile_id: "BrowserProfileId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_id #=> String
    #   resp.profile_arn #=> String
    #   resp.status #=> String, one of "READY", "DELETING", "DELETED", "SAVING"
    #   resp.last_updated_at #=> Time
    #   resp.last_saved_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteBrowserProfile AWS API Documentation
    #
    # @overload delete_browser_profile(params = {})
    # @param [Hash] params ({})
    def delete_browser_profile(params = {}, options = {})
      req = build_request(:delete_browser_profile, params)
      req.send_request(options)
    end

    # Deletes a capacity provider. Before you delete a capacity provider,
    # disassociate all agent runtimes and runtime versions that reference
    # it. If any references remain, the operation fails.
    #
    # @option params [required, String] :capacity_provider_id
    #   The unique identifier of the capacity provider to delete.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a previous
    #   request, the service ignores the request, but doesn't return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @return [Types::DeleteCapacityProviderOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteCapacityProviderOutput#capacity_provider_id #capacity_provider_id} => String
    #   * {Types::DeleteCapacityProviderOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_capacity_provider({
    #     capacity_provider_id: "CapacityProviderId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.capacity_provider_id #=> String
    #   resp.status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteCapacityProvider AWS API Documentation
    #
    # @overload delete_capacity_provider(params = {})
    # @param [Hash] params ({})
    def delete_capacity_provider(params = {}, options = {})
      req = build_request(:delete_capacity_provider, params)
      req.send_request(options)
    end

    # Deletes a custom code interpreter.
    #
    # @option params [required, String] :code_interpreter_id
    #   The unique identifier of the code interpreter to delete.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeleteCodeInterpreterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteCodeInterpreterResponse#code_interpreter_id #code_interpreter_id} => String
    #   * {Types::DeleteCodeInterpreterResponse#status #status} => String
    #   * {Types::DeleteCodeInterpreterResponse#last_updated_at #last_updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_code_interpreter({
    #     code_interpreter_id: "CodeInterpreterId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.code_interpreter_id #=> String
    #   resp.status #=> String, one of "CREATING", "CREATE_FAILED", "READY", "DELETING", "DELETE_FAILED", "DELETED"
    #   resp.last_updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteCodeInterpreter AWS API Documentation
    #
    # @overload delete_code_interpreter(params = {})
    # @param [Hash] params ({})
    def delete_code_interpreter(params = {}, options = {})
      req = build_request(:delete_code_interpreter, params)
      req.send_request(options)
    end

    # Deletes a configuration bundle and all of its versions.
    #
    # @option params [required, String] :bundle_id
    #   The unique identifier of the configuration bundle to delete.
    #
    # @return [Types::DeleteConfigurationBundleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteConfigurationBundleResponse#bundle_id #bundle_id} => String
    #   * {Types::DeleteConfigurationBundleResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configuration_bundle({
    #     bundle_id: "ConfigurationBundleId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bundle_id #=> String
    #   resp.status #=> String, one of "ACTIVE", "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteConfigurationBundle AWS API Documentation
    #
    # @overload delete_configuration_bundle(params = {})
    # @param [Hash] params ({})
    def delete_configuration_bundle(params = {}, options = {})
      req = build_request(:delete_configuration_bundle, params)
      req.send_request(options)
    end

    # Deletes a dataset version or an entire dataset asynchronously. If
    # `datasetVersion` is absent, deletes all versions and the dataset
    # record itself. If provided, deletes only that specific version.
    #
    # @option params [required, String] :dataset_id
    #   The unique identifier of the dataset to delete.
    #
    # @option params [String] :dataset_version
    #   Optional version to delete. If absent, deletes the entire dataset. If
    #   provided, deletes only that specific version.
    #
    # @return [Types::DeleteDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDatasetResponse#dataset_arn #dataset_arn} => String
    #   * {Types::DeleteDatasetResponse#dataset_id #dataset_id} => String
    #   * {Types::DeleteDatasetResponse#status #status} => String
    #   * {Types::DeleteDatasetResponse#dataset_version #dataset_version} => String
    #   * {Types::DeleteDatasetResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataset({
    #     dataset_id: "DatasetId", # required
    #     dataset_version: "DatasetVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_arn #=> String
    #   resp.dataset_id #=> String
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
    #   resp.dataset_version #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteDataset AWS API Documentation
    #
    # @overload delete_dataset(params = {})
    # @param [Hash] params ({})
    def delete_dataset(params = {}, options = {})
      req = build_request(:delete_dataset, params)
      req.send_request(options)
    end

    # Deletes specific examples by ID from DRAFT. All example IDs are
    # validated before any deletes occur. If any ID does not exist in DRAFT,
    # the entire batch is rejected (all-or-nothing semantics).
    #
    # @option params [required, String] :dataset_id
    #   The unique identifier of the dataset.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a previous
    #   request, the service ignores the request, but doesn't return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, Array<String>] :example_ids
    #   The IDs of the examples to delete.
    #
    # @return [Types::DeleteDatasetExamplesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDatasetExamplesResponse#dataset_arn #dataset_arn} => String
    #   * {Types::DeleteDatasetExamplesResponse#dataset_id #dataset_id} => String
    #   * {Types::DeleteDatasetExamplesResponse#status #status} => String
    #   * {Types::DeleteDatasetExamplesResponse#deleted_count #deleted_count} => Integer
    #   * {Types::DeleteDatasetExamplesResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataset_examples({
    #     dataset_id: "DatasetId", # required
    #     client_token: "ClientToken",
    #     example_ids: ["ExampleId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_arn #=> String
    #   resp.dataset_id #=> String
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
    #   resp.deleted_count #=> Integer
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteDatasetExamples AWS API Documentation
    #
    # @overload delete_dataset_examples(params = {})
    # @param [Hash] params ({})
    def delete_dataset_examples(params = {}, options = {})
      req = build_request(:delete_dataset_examples, params)
      req.send_request(options)
    end

    # Deletes a custom evaluator. Builtin evaluators cannot be deleted. The
    # evaluator must not be referenced by any active online evaluation
    # configurations.
    #
    # @option params [required, String] :evaluator_id
    #   The unique identifier of the evaluator to delete.
    #
    # @return [Types::DeleteEvaluatorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEvaluatorResponse#evaluator_arn #evaluator_arn} => String
    #   * {Types::DeleteEvaluatorResponse#evaluator_id #evaluator_id} => String
    #   * {Types::DeleteEvaluatorResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_evaluator({
    #     evaluator_id: "EvaluatorId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluator_arn #=> String
    #   resp.evaluator_id #=> String
    #   resp.status #=> String, one of "ACTIVE", "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteEvaluator AWS API Documentation
    #
    # @overload delete_evaluator(params = {})
    # @param [Hash] params ({})
    def delete_evaluator(params = {}, options = {})
      req = build_request(:delete_evaluator, params)
      req.send_request(options)
    end

    # Deletes a gateway.
    #
    # @option params [required, String] :gateway_identifier
    #   The identifier of the gateway to delete.
    #
    # @return [Types::DeleteGatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGatewayResponse#gateway_id #gateway_id} => String
    #   * {Types::DeleteGatewayResponse#status #status} => String
    #   * {Types::DeleteGatewayResponse#status_reasons #status_reasons} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_gateway({
    #     gateway_identifier: "GatewayIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_id #=> String
    #   resp.status #=> String, one of "CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED"
    #   resp.status_reasons #=> Array
    #   resp.status_reasons[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteGateway AWS API Documentation
    #
    # @overload delete_gateway(params = {})
    # @param [Hash] params ({})
    def delete_gateway(params = {}, options = {})
      req = build_request(:delete_gateway, params)
      req.send_request(options)
    end

    # Deletes a gateway rate limit.
    #
    # @option params [required, String] :gateway_identifier
    #   The unique identifier of the gateway.
    #
    # @option params [required, String] :rate_limit_id
    #   The unique identifier of the rate limit to delete.
    #
    # @return [Types::DeleteGatewayRateLimitResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGatewayRateLimitResponse#rate_limit_id #rate_limit_id} => String
    #   * {Types::DeleteGatewayRateLimitResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_gateway_rate_limit({
    #     gateway_identifier: "GatewayIdentifier", # required
    #     rate_limit_id: "GatewayRateLimitId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rate_limit_id #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteGatewayRateLimit AWS API Documentation
    #
    # @overload delete_gateway_rate_limit(params = {})
    # @param [Hash] params ({})
    def delete_gateway_rate_limit(params = {}, options = {})
      req = build_request(:delete_gateway_rate_limit, params)
      req.send_request(options)
    end

    # Deletes a gateway rule.
    #
    # @option params [required, String] :gateway_identifier
    #   The identifier of the gateway containing the rule.
    #
    # @option params [required, String] :rule_id
    #   The unique identifier of the rule to delete.
    #
    # @return [Types::DeleteGatewayRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGatewayRuleResponse#rule_id #rule_id} => String
    #   * {Types::DeleteGatewayRuleResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_gateway_rule({
    #     gateway_identifier: "GatewayIdentifier", # required
    #     rule_id: "GatewayRuleId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_id #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteGatewayRule AWS API Documentation
    #
    # @overload delete_gateway_rule(params = {})
    # @param [Hash] params ({})
    def delete_gateway_rule(params = {}, options = {})
      req = build_request(:delete_gateway_rule, params)
      req.send_request(options)
    end

    # Deletes a gateway target.
    #
    # You cannot delete a target that is in a pending authorization state
    # (`CREATE_PENDING_AUTH`, `UPDATE_PENDING_AUTH`, or
    # `SYNCHRONIZE_PENDING_AUTH`). Wait for the authorization to complete or
    # fail before deleting the target.
    #
    # @option params [required, String] :gateway_identifier
    #   The unique identifier of the gateway associated with the target.
    #
    # @option params [required, String] :target_id
    #   The unique identifier of the gateway target to delete.
    #
    # @return [Types::DeleteGatewayTargetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGatewayTargetResponse#gateway_arn #gateway_arn} => String
    #   * {Types::DeleteGatewayTargetResponse#target_id #target_id} => String
    #   * {Types::DeleteGatewayTargetResponse#status #status} => String
    #   * {Types::DeleteGatewayTargetResponse#status_reasons #status_reasons} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_gateway_target({
    #     gateway_identifier: "GatewayIdentifier", # required
    #     target_id: "TargetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.target_id #=> String
    #   resp.status #=> String, one of "CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED", "SYNCHRONIZING", "SYNCHRONIZE_UNSUCCESSFUL", "CREATE_PENDING_AUTH", "UPDATE_PENDING_AUTH", "SYNCHRONIZE_PENDING_AUTH"
    #   resp.status_reasons #=> Array
    #   resp.status_reasons[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteGatewayTarget AWS API Documentation
    #
    # @overload delete_gateway_target(params = {})
    # @param [Hash] params ({})
    def delete_gateway_target(params = {}, options = {})
      req = build_request(:delete_gateway_target, params)
      req.send_request(options)
    end

    # Operation to delete a Harness.
    #
    # @option params [required, String] :harness_id
    #   The ID of the harness to delete.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Boolean] :delete_managed_memory
    #   Whether to delete the managed memory on harness deletion. Default:
    #   true. If false, the memory is disassociated and becomes a regular
    #   customer-owned resource.
    #
    # @return [Types::DeleteHarnessResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteHarnessResponse#harness #harness} => Types::Harness
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_harness({
    #     harness_id: "HarnessId", # required
    #     client_token: "ClientToken",
    #     delete_managed_memory: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.harness.harness_id #=> String
    #   resp.harness.harness_name #=> String
    #   resp.harness.arn #=> String
    #   resp.harness.status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"
    #   resp.harness.harness_version #=> String
    #   resp.harness.execution_role_arn #=> String
    #   resp.harness.created_at #=> Time
    #   resp.harness.updated_at #=> Time
    #   resp.harness.model.bedrock_model_config.model_id #=> String
    #   resp.harness.model.bedrock_model_config.max_tokens #=> Integer
    #   resp.harness.model.bedrock_model_config.temperature #=> Float
    #   resp.harness.model.bedrock_model_config.top_p #=> Float
    #   resp.harness.model.bedrock_model_config.api_format #=> String, one of "converse_stream", "responses", "chat_completions"
    #   resp.harness.model.open_ai_model_config.model_id #=> String
    #   resp.harness.model.open_ai_model_config.api_key_arn #=> String
    #   resp.harness.model.open_ai_model_config.max_tokens #=> Integer
    #   resp.harness.model.open_ai_model_config.temperature #=> Float
    #   resp.harness.model.open_ai_model_config.top_p #=> Float
    #   resp.harness.model.open_ai_model_config.api_format #=> String, one of "chat_completions", "responses"
    #   resp.harness.model.gemini_model_config.model_id #=> String
    #   resp.harness.model.gemini_model_config.api_key_arn #=> String
    #   resp.harness.model.gemini_model_config.max_tokens #=> Integer
    #   resp.harness.model.gemini_model_config.temperature #=> Float
    #   resp.harness.model.gemini_model_config.top_p #=> Float
    #   resp.harness.model.gemini_model_config.top_k #=> Integer
    #   resp.harness.model.lite_llm_model_config.model_id #=> String
    #   resp.harness.model.lite_llm_model_config.api_key_arn #=> String
    #   resp.harness.model.lite_llm_model_config.api_base #=> String
    #   resp.harness.model.lite_llm_model_config.max_tokens #=> Integer
    #   resp.harness.model.lite_llm_model_config.temperature #=> Float
    #   resp.harness.model.lite_llm_model_config.top_p #=> Float
    #   resp.harness.system_prompt #=> Array
    #   resp.harness.system_prompt[0].text #=> String
    #   resp.harness.tools #=> Array
    #   resp.harness.tools[0].type #=> String, one of "remote_mcp", "agentcore_browser", "agentcore_gateway", "inline_function", "agentcore_code_interpreter"
    #   resp.harness.tools[0].name #=> String
    #   resp.harness.tools[0].config.remote_mcp.url #=> String
    #   resp.harness.tools[0].config.remote_mcp.headers #=> Hash
    #   resp.harness.tools[0].config.remote_mcp.headers["HttpHeaderKey"] #=> String
    #   resp.harness.tools[0].config.agent_core_browser.browser_arn #=> String
    #   resp.harness.tools[0].config.agent_core_gateway.gateway_arn #=> String
    #   resp.harness.tools[0].config.agent_core_gateway.outbound_auth.oauth.provider_arn #=> String
    #   resp.harness.tools[0].config.agent_core_gateway.outbound_auth.oauth.scopes #=> Array
    #   resp.harness.tools[0].config.agent_core_gateway.outbound_auth.oauth.scopes[0] #=> String
    #   resp.harness.tools[0].config.agent_core_gateway.outbound_auth.oauth.custom_parameters #=> Hash
    #   resp.harness.tools[0].config.agent_core_gateway.outbound_auth.oauth.custom_parameters["OAuthCustomParametersKey"] #=> String
    #   resp.harness.tools[0].config.agent_core_gateway.outbound_auth.oauth.grant_type #=> String, one of "CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "TOKEN_EXCHANGE"
    #   resp.harness.tools[0].config.agent_core_gateway.outbound_auth.oauth.default_return_url #=> String
    #   resp.harness.tools[0].config.inline_function.description #=> String
    #   resp.harness.tools[0].config.agent_core_code_interpreter.code_interpreter_arn #=> String
    #   resp.harness.skills #=> Array
    #   resp.harness.skills[0].path #=> String
    #   resp.harness.skills[0].s3.uri #=> String
    #   resp.harness.skills[0].git.url #=> String
    #   resp.harness.skills[0].git.path #=> String
    #   resp.harness.skills[0].git.auth.credential_arn #=> String
    #   resp.harness.skills[0].git.auth.username #=> String
    #   resp.harness.skills[0].aws_skills.paths #=> Array
    #   resp.harness.skills[0].aws_skills.paths[0] #=> String
    #   resp.harness.allowed_tools #=> Array
    #   resp.harness.allowed_tools[0] #=> String
    #   resp.harness.truncation.strategy #=> String, one of "sliding_window", "summarization", "none"
    #   resp.harness.truncation.config.sliding_window.messages_count #=> Integer
    #   resp.harness.truncation.config.summarization.summary_ratio #=> Float
    #   resp.harness.truncation.config.summarization.preserve_recent_messages #=> Integer
    #   resp.harness.truncation.config.summarization.summarization_system_prompt #=> String
    #   resp.harness.environment.agent_core_runtime_environment.agent_runtime_arn #=> String
    #   resp.harness.environment.agent_core_runtime_environment.agent_runtime_name #=> String
    #   resp.harness.environment.agent_core_runtime_environment.agent_runtime_id #=> String
    #   resp.harness.environment.agent_core_runtime_environment.lifecycle_configuration.idle_runtime_session_timeout #=> Integer
    #   resp.harness.environment.agent_core_runtime_environment.lifecycle_configuration.max_lifetime #=> Integer
    #   resp.harness.environment.agent_core_runtime_environment.network_configuration.network_mode #=> String, one of "PUBLIC", "VPC"
    #   resp.harness.environment.agent_core_runtime_environment.network_configuration.network_mode_config.security_groups #=> Array
    #   resp.harness.environment.agent_core_runtime_environment.network_configuration.network_mode_config.security_groups[0] #=> String
    #   resp.harness.environment.agent_core_runtime_environment.network_configuration.network_mode_config.subnets #=> Array
    #   resp.harness.environment.agent_core_runtime_environment.network_configuration.network_mode_config.subnets[0] #=> String
    #   resp.harness.environment.agent_core_runtime_environment.network_configuration.network_mode_config.require_service_s3_endpoint #=> Boolean
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations #=> Array
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations[0].session_storage.mount_path #=> String
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations[0].s3_files_access_point.access_point_arn #=> String
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations[0].s3_files_access_point.mount_path #=> String
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations[0].efs_access_point.access_point_arn #=> String
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations[0].efs_access_point.mount_path #=> String
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations[0].capacity_provider_volume.volume_name #=> String
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations[0].capacity_provider_volume.mount_path #=> String
    #   resp.harness.environment_artifact.container_configuration.container_uri #=> String
    #   resp.harness.environment_variables #=> Hash
    #   resp.harness.environment_variables["EnvironmentVariableKey"] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.discovery_url #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_audience #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_audience[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_clients #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_clients[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_scopes #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_scopes[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.advertised_scope_mapping #=> Hash
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.advertised_scope_mapping["AllowedScopeType"] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.custom_claims #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_name #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_value_type #=> String, one of "STRING", "STRING_ARRAY"
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_operator #=> String, one of "EQUALS", "CONTAINS", "CONTAINS_ANY"
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].domain #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.hosting_environments #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.hosting_environments[0].arn #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.workload_identities #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.workload_identities[0] #=> String
    #   resp.harness.memory.agent_core_memory_configuration.arn #=> String
    #   resp.harness.memory.agent_core_memory_configuration.actor_id #=> String
    #   resp.harness.memory.agent_core_memory_configuration.messages_count #=> Integer
    #   resp.harness.memory.agent_core_memory_configuration.retrieval_config #=> Hash
    #   resp.harness.memory.agent_core_memory_configuration.retrieval_config["String"].top_k #=> Integer
    #   resp.harness.memory.agent_core_memory_configuration.retrieval_config["String"].relevance_score #=> Float
    #   resp.harness.memory.agent_core_memory_configuration.retrieval_config["String"].strategy_id #=> String
    #   resp.harness.memory.managed_memory_configuration.arn #=> String
    #   resp.harness.memory.managed_memory_configuration.strategies #=> Array
    #   resp.harness.memory.managed_memory_configuration.strategies[0] #=> String, one of "SEMANTIC", "SUMMARIZATION", "USER_PREFERENCE", "EPISODIC"
    #   resp.harness.memory.managed_memory_configuration.event_expiry_duration #=> Integer
    #   resp.harness.memory.managed_memory_configuration.encryption_key_arn #=> String
    #   resp.harness.max_iterations #=> Integer
    #   resp.harness.max_tokens #=> Integer
    #   resp.harness.timeout_seconds #=> Integer
    #   resp.harness.failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteHarness AWS API Documentation
    #
    # @overload delete_harness(params = {})
    # @param [Hash] params ({})
    def delete_harness(params = {}, options = {})
      req = build_request(:delete_harness, params)
      req.send_request(options)
    end

    # Operation to delete a harness endpoint.
    #
    # @option params [required, String] :harness_id
    #   The ID of the harness that the endpoint belongs to.
    #
    # @option params [required, String] :endpoint_name
    #   The name of the endpoint to delete.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeleteHarnessEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteHarnessEndpointResponse#endpoint #endpoint} => Types::HarnessEndpoint
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_harness_endpoint({
    #     harness_id: "HarnessId", # required
    #     endpoint_name: "HarnessEndpointName", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint.harness_id #=> String
    #   resp.endpoint.harness_name #=> String
    #   resp.endpoint.endpoint_name #=> String
    #   resp.endpoint.arn #=> String
    #   resp.endpoint.status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"
    #   resp.endpoint.created_at #=> Time
    #   resp.endpoint.updated_at #=> Time
    #   resp.endpoint.live_version #=> String
    #   resp.endpoint.target_version #=> String
    #   resp.endpoint.description #=> String
    #   resp.endpoint.failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteHarnessEndpoint AWS API Documentation
    #
    # @overload delete_harness_endpoint(params = {})
    # @param [Hash] params ({})
    def delete_harness_endpoint(params = {}, options = {})
      req = build_request(:delete_harness_endpoint, params)
      req.send_request(options)
    end

    # Deletes an Amazon Bedrock AgentCore Memory resource. When you delete a
    # memory resource, it is permanently removed.
    #
    # @option params [String] :client_token
    #   A client token is used for keeping track of idempotent requests. It
    #   can contain a session id which can be around 250 chars, combined with
    #   a unique AWS identifier.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :memory_id
    #   The unique identifier of the memory to delete.
    #
    # @return [Types::DeleteMemoryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteMemoryOutput#memory_id #memory_id} => String
    #   * {Types::DeleteMemoryOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_memory({
    #     client_token: "DeleteMemoryInputClientTokenString",
    #     memory_id: "MemoryId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.memory_id #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "FAILED", "DELETING", "UPDATING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteMemory AWS API Documentation
    #
    # @overload delete_memory(params = {})
    # @param [Hash] params ({})
    def delete_memory(params = {}, options = {})
      req = build_request(:delete_memory, params)
      req.send_request(options)
    end

    # Deletes an OAuth2 credential provider.
    #
    # @option params [required, String] :name
    #   The name of the OAuth2 credential provider to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_oauth_2_credential_provider({
    #     name: "CredentialProviderName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteOauth2CredentialProvider AWS API Documentation
    #
    # @overload delete_oauth_2_credential_provider(params = {})
    # @param [Hash] params ({})
    def delete_oauth_2_credential_provider(params = {}, options = {})
      req = build_request(:delete_oauth_2_credential_provider, params)
      req.send_request(options)
    end

    # Deletes an online evaluation configuration and stops any ongoing
    # evaluation processes associated with it.
    #
    # @option params [required, String] :online_evaluation_config_id
    #   The unique identifier of the online evaluation configuration to
    #   delete.
    #
    # @return [Types::DeleteOnlineEvaluationConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteOnlineEvaluationConfigResponse#online_evaluation_config_arn #online_evaluation_config_arn} => String
    #   * {Types::DeleteOnlineEvaluationConfigResponse#online_evaluation_config_id #online_evaluation_config_id} => String
    #   * {Types::DeleteOnlineEvaluationConfigResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_online_evaluation_config({
    #     online_evaluation_config_id: "OnlineEvaluationConfigId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.online_evaluation_config_arn #=> String
    #   resp.online_evaluation_config_id #=> String
    #   resp.status #=> String, one of "ACTIVE", "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteOnlineEvaluationConfig AWS API Documentation
    #
    # @overload delete_online_evaluation_config(params = {})
    # @param [Hash] params ({})
    def delete_online_evaluation_config(params = {}, options = {})
      req = build_request(:delete_online_evaluation_config, params)
      req.send_request(options)
    end

    # Deletes a payment connector.
    #
    # @option params [required, String] :payment_manager_id
    #   The unique identifier of the parent payment manager.
    #
    # @option params [required, String] :payment_connector_id
    #   The unique identifier of the payment connector to delete.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a previous
    #   request, the service ignores the request, but doesn't return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @return [Types::DeletePaymentConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePaymentConnectorResponse#status #status} => String
    #   * {Types::DeletePaymentConnectorResponse#payment_connector_id #payment_connector_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_payment_connector({
    #     payment_manager_id: "PaymentManagerId", # required
    #     payment_connector_id: "PaymentConnectorId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "READY", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED", "AWS_MARKETPLACE_SUBSCRIPTION_REQUIRED", "PENDING_AUTHENTICATION", "PROVISIONING", "AUTHENTICATION_EXPIRED", "AUTHENTICATION_FAILED"
    #   resp.payment_connector_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeletePaymentConnector AWS API Documentation
    #
    # @overload delete_payment_connector(params = {})
    # @param [Hash] params ({})
    def delete_payment_connector(params = {}, options = {})
      req = build_request(:delete_payment_connector, params)
      req.send_request(options)
    end

    # Deletes a payment credential provider and its associated stored
    # credentials.
    #
    # @option params [required, String] :name
    #   The name of the payment credential provider to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_payment_credential_provider({
    #     name: "CredentialProviderName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeletePaymentCredentialProvider AWS API Documentation
    #
    # @overload delete_payment_credential_provider(params = {})
    # @param [Hash] params ({})
    def delete_payment_credential_provider(params = {}, options = {})
      req = build_request(:delete_payment_credential_provider, params)
      req.send_request(options)
    end

    # Deletes a payment manager. All payment connectors associated with the
    # payment manager must be deleted before the payment manager can be
    # deleted. This operation initiates the deletion process asynchronously.
    #
    # @option params [required, String] :payment_manager_id
    #   The unique identifier of the payment manager to delete.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a previous
    #   request, the service ignores the request, but doesn't return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @return [Types::DeletePaymentManagerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePaymentManagerResponse#status #status} => String
    #   * {Types::DeletePaymentManagerResponse#payment_manager_id #payment_manager_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_payment_manager({
    #     payment_manager_id: "PaymentManagerId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "READY", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
    #   resp.payment_manager_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeletePaymentManager AWS API Documentation
    #
    # @overload delete_payment_manager(params = {})
    # @param [Hash] params ({})
    def delete_payment_manager(params = {}, options = {})
      req = build_request(:delete_payment_manager, params)
      req.send_request(options)
    end

    # Deletes an existing policy from the AgentCore Policy system. Once
    # deleted, the policy can no longer be used for agent behavior control
    # and all references to it become invalid. This is an asynchronous
    # operation. Use the `GetPolicy` operation to poll the `status` field to
    # track completion.
    #
    # @option params [required, String] :policy_engine_id
    #   The identifier of the policy engine that manages the policy to be
    #   deleted. This ensures the policy is deleted from the correct policy
    #   engine context.
    #
    # @option params [required, String] :policy_id
    #   The unique identifier of the policy to be deleted. This must be a
    #   valid policy ID that exists within the specified policy engine.
    #
    # @return [Types::DeletePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePolicyResponse#policy_id #policy_id} => String
    #   * {Types::DeletePolicyResponse#name #name} => String
    #   * {Types::DeletePolicyResponse#policy_engine_id #policy_engine_id} => String
    #   * {Types::DeletePolicyResponse#created_at #created_at} => Time
    #   * {Types::DeletePolicyResponse#updated_at #updated_at} => Time
    #   * {Types::DeletePolicyResponse#policy_arn #policy_arn} => String
    #   * {Types::DeletePolicyResponse#status #status} => String
    #   * {Types::DeletePolicyResponse#enforcement_mode #enforcement_mode} => String
    #   * {Types::DeletePolicyResponse#definition #definition} => Types::PolicyDefinition
    #   * {Types::DeletePolicyResponse#description #description} => String
    #   * {Types::DeletePolicyResponse#status_reasons #status_reasons} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy({
    #     policy_engine_id: "ResourceId", # required
    #     policy_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_id #=> String
    #   resp.name #=> String
    #   resp.policy_engine_id #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.policy_arn #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
    #   resp.enforcement_mode #=> String, one of "ACTIVE", "LOG_ONLY"
    #   resp.definition.cedar.statement #=> String
    #   resp.definition.policy_generation.policy_generation_id #=> String
    #   resp.definition.policy_generation.policy_generation_asset_id #=> String
    #   resp.definition.policy.statement #=> String
    #   resp.description #=> String
    #   resp.status_reasons #=> Array
    #   resp.status_reasons[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeletePolicy AWS API Documentation
    #
    # @overload delete_policy(params = {})
    # @param [Hash] params ({})
    def delete_policy(params = {}, options = {})
      req = build_request(:delete_policy, params)
      req.send_request(options)
    end

    # Deletes an existing policy engine from the AgentCore Policy system.
    # The policy engine must not have any associated policies before
    # deletion. Once deleted, the policy engine and all its configurations
    # become unavailable for policy management and evaluation. This is an
    # asynchronous operation. Use the `GetPolicyEngine` operation to poll
    # the `status` field to track completion.
    #
    # @option params [required, String] :policy_engine_id
    #   The unique identifier of the policy engine to be deleted. This must be
    #   a valid policy engine ID that exists within the account.
    #
    # @return [Types::DeletePolicyEngineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePolicyEngineResponse#policy_engine_id #policy_engine_id} => String
    #   * {Types::DeletePolicyEngineResponse#name #name} => String
    #   * {Types::DeletePolicyEngineResponse#created_at #created_at} => Time
    #   * {Types::DeletePolicyEngineResponse#updated_at #updated_at} => Time
    #   * {Types::DeletePolicyEngineResponse#policy_engine_arn #policy_engine_arn} => String
    #   * {Types::DeletePolicyEngineResponse#status #status} => String
    #   * {Types::DeletePolicyEngineResponse#encryption_key_arn #encryption_key_arn} => String
    #   * {Types::DeletePolicyEngineResponse#description #description} => String
    #   * {Types::DeletePolicyEngineResponse#status_reasons #status_reasons} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy_engine({
    #     policy_engine_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_engine_id #=> String
    #   resp.name #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.policy_engine_arn #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
    #   resp.encryption_key_arn #=> String
    #   resp.description #=> String
    #   resp.status_reasons #=> Array
    #   resp.status_reasons[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeletePolicyEngine AWS API Documentation
    #
    # @overload delete_policy_engine(params = {})
    # @param [Hash] params ({})
    def delete_policy_engine(params = {}, options = {})
      req = build_request(:delete_policy_engine, params)
      req.send_request(options)
    end

    # Deletes a registry. The registry must contain zero records before it
    # can be deleted. This operation initiates the deletion process
    # asynchronously.
    #
    # @option params [required, String] :registry_id
    #   The identifier of the registry to delete. You can specify either the
    #   Amazon Resource Name (ARN) or the ID of the registry.
    #
    # @return [Types::DeleteRegistryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRegistryResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_registry({
    #     registry_id: "RegistryIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "CREATING", "READY", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteRegistry AWS API Documentation
    #
    # @overload delete_registry(params = {})
    # @param [Hash] params ({})
    def delete_registry(params = {}, options = {})
      req = build_request(:delete_registry, params)
      req.send_request(options)
    end

    # Deletes a registry record. The record's status transitions to
    # `DELETING` and the record is removed asynchronously.
    #
    # @option params [required, String] :registry_id
    #   The identifier of the registry containing the record. You can specify
    #   either the Amazon Resource Name (ARN) or the ID of the registry.
    #
    # @option params [required, String] :record_id
    #   The identifier of the registry record to delete. You can specify
    #   either the Amazon Resource Name (ARN) or the ID of the record.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_registry_record({
    #     registry_id: "RegistryIdentifier", # required
    #     record_id: "RecordIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteRegistryRecord AWS API Documentation
    #
    # @overload delete_registry_record(params = {})
    # @param [Hash] params ({})
    def delete_registry_record(params = {}, options = {})
      req = build_request(:delete_registry_record, params)
      req.send_request(options)
    end

    # Deletes the resource-based policy for a specified resource.
    #
    # <note markdown="1"> This feature is currently available only for AgentCore Runtime and
    # Gateway.
    #
    #  </note>
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which to delete the
    #   resource policy.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy({
    #     resource_arn: "BedrockAgentcoreResourceArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteResourcePolicy AWS API Documentation
    #
    # @overload delete_resource_policy(params = {})
    # @param [Hash] params ({})
    def delete_resource_policy(params = {}, options = {})
      req = build_request(:delete_resource_policy, params)
      req.send_request(options)
    end

    # Deletes a workload identity.
    #
    # @option params [required, String] :name
    #   The name of the workload identity to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workload_identity({
    #     name: "WorkloadIdentityNameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteWorkloadIdentity AWS API Documentation
    #
    # @overload delete_workload_identity(params = {})
    # @param [Hash] params ({})
    def delete_workload_identity(params = {}, options = {})
      req = build_request(:delete_workload_identity, params)
      req.send_request(options)
    end

    # Gets an Amazon Bedrock AgentCore Runtime.
    #
    # @option params [required, String] :agent_runtime_id
    #   The unique identifier of the AgentCore Runtime to retrieve.
    #
    # @option params [String] :agent_runtime_version
    #   The version of the AgentCore Runtime to retrieve.
    #
    # @return [Types::GetAgentRuntimeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAgentRuntimeResponse#agent_runtime_arn #agent_runtime_arn} => String
    #   * {Types::GetAgentRuntimeResponse#agent_runtime_name #agent_runtime_name} => String
    #   * {Types::GetAgentRuntimeResponse#agent_runtime_id #agent_runtime_id} => String
    #   * {Types::GetAgentRuntimeResponse#agent_runtime_version #agent_runtime_version} => String
    #   * {Types::GetAgentRuntimeResponse#created_at #created_at} => Time
    #   * {Types::GetAgentRuntimeResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetAgentRuntimeResponse#role_arn #role_arn} => String
    #   * {Types::GetAgentRuntimeResponse#network_configuration #network_configuration} => Types::NetworkConfiguration
    #   * {Types::GetAgentRuntimeResponse#status #status} => String
    #   * {Types::GetAgentRuntimeResponse#lifecycle_configuration #lifecycle_configuration} => Types::LifecycleConfiguration
    #   * {Types::GetAgentRuntimeResponse#failure_reason #failure_reason} => String
    #   * {Types::GetAgentRuntimeResponse#description #description} => String
    #   * {Types::GetAgentRuntimeResponse#workload_identity_details #workload_identity_details} => Types::WorkloadIdentityDetails
    #   * {Types::GetAgentRuntimeResponse#agent_runtime_artifact #agent_runtime_artifact} => Types::AgentRuntimeArtifact
    #   * {Types::GetAgentRuntimeResponse#protocol_configuration #protocol_configuration} => Types::ProtocolConfiguration
    #   * {Types::GetAgentRuntimeResponse#environment_variables #environment_variables} => Hash&lt;String,String&gt;
    #   * {Types::GetAgentRuntimeResponse#authorizer_configuration #authorizer_configuration} => Types::AuthorizerConfiguration
    #   * {Types::GetAgentRuntimeResponse#request_header_configuration #request_header_configuration} => Types::RequestHeaderConfiguration
    #   * {Types::GetAgentRuntimeResponse#metadata_configuration #metadata_configuration} => Types::RuntimeMetadataConfiguration
    #   * {Types::GetAgentRuntimeResponse#filesystem_configurations #filesystem_configurations} => Array&lt;Types::FilesystemConfiguration&gt;
    #   * {Types::GetAgentRuntimeResponse#capacity_provider_configuration #capacity_provider_configuration} => Types::CapacityProviderConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_agent_runtime({
    #     agent_runtime_id: "AgentRuntimeId", # required
    #     agent_runtime_version: "AgentRuntimeVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_runtime_arn #=> String
    #   resp.agent_runtime_name #=> String
    #   resp.agent_runtime_id #=> String
    #   resp.agent_runtime_version #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.role_arn #=> String
    #   resp.network_configuration.network_mode #=> String, one of "PUBLIC", "VPC"
    #   resp.network_configuration.network_mode_config.security_groups #=> Array
    #   resp.network_configuration.network_mode_config.security_groups[0] #=> String
    #   resp.network_configuration.network_mode_config.subnets #=> Array
    #   resp.network_configuration.network_mode_config.subnets[0] #=> String
    #   resp.network_configuration.network_mode_config.require_service_s3_endpoint #=> Boolean
    #   resp.status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING"
    #   resp.lifecycle_configuration.idle_runtime_session_timeout #=> Integer
    #   resp.lifecycle_configuration.max_lifetime #=> Integer
    #   resp.failure_reason #=> String
    #   resp.description #=> String
    #   resp.workload_identity_details.workload_identity_arn #=> String
    #   resp.agent_runtime_artifact.container_configuration.container_uri #=> String
    #   resp.agent_runtime_artifact.code_configuration.code.s3.bucket #=> String
    #   resp.agent_runtime_artifact.code_configuration.code.s3.prefix #=> String
    #   resp.agent_runtime_artifact.code_configuration.code.s3.version_id #=> String
    #   resp.agent_runtime_artifact.code_configuration.runtime #=> String, one of "PYTHON_3_10", "PYTHON_3_11", "PYTHON_3_12", "PYTHON_3_13", "PYTHON_3_14", "NODE_22"
    #   resp.agent_runtime_artifact.code_configuration.entry_point #=> Array
    #   resp.agent_runtime_artifact.code_configuration.entry_point[0] #=> String
    #   resp.protocol_configuration.server_protocol #=> String, one of "MCP", "HTTP", "A2A", "AGUI"
    #   resp.environment_variables #=> Hash
    #   resp.environment_variables["EnvironmentVariableKey"] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.discovery_url #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_audience #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_audience[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_clients #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_clients[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_scopes #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_scopes[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.advertised_scope_mapping #=> Hash
    #   resp.authorizer_configuration.custom_jwt_authorizer.advertised_scope_mapping["AllowedScopeType"] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_name #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_value_type #=> String, one of "STRING", "STRING_ARRAY"
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_operator #=> String, one of "EQUALS", "CONTAINS", "CONTAINS_ANY"
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].domain #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.hosting_environments #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.hosting_environments[0].arn #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.workload_identities #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.workload_identities[0] #=> String
    #   resp.request_header_configuration.request_header_allowlist #=> Array
    #   resp.request_header_configuration.request_header_allowlist[0] #=> String
    #   resp.metadata_configuration.require_mmdsv2 #=> Boolean
    #   resp.filesystem_configurations #=> Array
    #   resp.filesystem_configurations[0].session_storage.mount_path #=> String
    #   resp.filesystem_configurations[0].s3_files_access_point.access_point_arn #=> String
    #   resp.filesystem_configurations[0].s3_files_access_point.mount_path #=> String
    #   resp.filesystem_configurations[0].efs_access_point.access_point_arn #=> String
    #   resp.filesystem_configurations[0].efs_access_point.mount_path #=> String
    #   resp.filesystem_configurations[0].capacity_provider_volume.volume_name #=> String
    #   resp.filesystem_configurations[0].capacity_provider_volume.mount_path #=> String
    #   resp.capacity_provider_configuration.capacity_provider_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetAgentRuntime AWS API Documentation
    #
    # @overload get_agent_runtime(params = {})
    # @param [Hash] params ({})
    def get_agent_runtime(params = {}, options = {})
      req = build_request(:get_agent_runtime, params)
      req.send_request(options)
    end

    # Gets information about an Amazon Secure AgentEndpoint.
    #
    # @option params [required, String] :agent_runtime_id
    #   The unique identifier of the AgentCore Runtime associated with the
    #   endpoint.
    #
    # @option params [required, String] :endpoint_name
    #   The name of the AgentCore Runtime endpoint to retrieve.
    #
    # @return [Types::GetAgentRuntimeEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAgentRuntimeEndpointResponse#live_version #live_version} => String
    #   * {Types::GetAgentRuntimeEndpointResponse#target_version #target_version} => String
    #   * {Types::GetAgentRuntimeEndpointResponse#agent_runtime_endpoint_arn #agent_runtime_endpoint_arn} => String
    #   * {Types::GetAgentRuntimeEndpointResponse#agent_runtime_arn #agent_runtime_arn} => String
    #   * {Types::GetAgentRuntimeEndpointResponse#description #description} => String
    #   * {Types::GetAgentRuntimeEndpointResponse#status #status} => String
    #   * {Types::GetAgentRuntimeEndpointResponse#created_at #created_at} => Time
    #   * {Types::GetAgentRuntimeEndpointResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetAgentRuntimeEndpointResponse#failure_reason #failure_reason} => String
    #   * {Types::GetAgentRuntimeEndpointResponse#name #name} => String
    #   * {Types::GetAgentRuntimeEndpointResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_agent_runtime_endpoint({
    #     agent_runtime_id: "AgentRuntimeId", # required
    #     endpoint_name: "EndpointName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.live_version #=> String
    #   resp.target_version #=> String
    #   resp.agent_runtime_endpoint_arn #=> String
    #   resp.agent_runtime_arn #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING"
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.failure_reason #=> String
    #   resp.name #=> String
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetAgentRuntimeEndpoint AWS API Documentation
    #
    # @overload get_agent_runtime_endpoint(params = {})
    # @param [Hash] params ({})
    def get_agent_runtime_endpoint(params = {}, options = {})
      req = build_request(:get_agent_runtime_endpoint, params)
      req.send_request(options)
    end

    # Retrieves information about an API key credential provider.
    #
    # @option params [required, String] :name
    #   The name of the API key credential provider to retrieve.
    #
    # @return [Types::GetApiKeyCredentialProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApiKeyCredentialProviderResponse#api_key_secret_arn #api_key_secret_arn} => Types::Secret
    #   * {Types::GetApiKeyCredentialProviderResponse#api_key_secret_json_key #api_key_secret_json_key} => String
    #   * {Types::GetApiKeyCredentialProviderResponse#api_key_secret_source #api_key_secret_source} => String
    #   * {Types::GetApiKeyCredentialProviderResponse#name #name} => String
    #   * {Types::GetApiKeyCredentialProviderResponse#credential_provider_arn #credential_provider_arn} => String
    #   * {Types::GetApiKeyCredentialProviderResponse#created_time #created_time} => Time
    #   * {Types::GetApiKeyCredentialProviderResponse#last_updated_time #last_updated_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_api_key_credential_provider({
    #     name: "CredentialProviderName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.api_key_secret_arn.secret_arn #=> String
    #   resp.api_key_secret_json_key #=> String
    #   resp.api_key_secret_source #=> String, one of "MANAGED", "EXTERNAL"
    #   resp.name #=> String
    #   resp.credential_provider_arn #=> String
    #   resp.created_time #=> Time
    #   resp.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetApiKeyCredentialProvider AWS API Documentation
    #
    # @overload get_api_key_credential_provider(params = {})
    # @param [Hash] params ({})
    def get_api_key_credential_provider(params = {}, options = {})
      req = build_request(:get_api_key_credential_provider, params)
      req.send_request(options)
    end

    # Gets information about a custom browser.
    #
    # @option params [required, String] :browser_id
    #   The unique identifier of the browser to retrieve.
    #
    # @return [Types::GetBrowserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBrowserResponse#browser_id #browser_id} => String
    #   * {Types::GetBrowserResponse#browser_arn #browser_arn} => String
    #   * {Types::GetBrowserResponse#name #name} => String
    #   * {Types::GetBrowserResponse#description #description} => String
    #   * {Types::GetBrowserResponse#execution_role_arn #execution_role_arn} => String
    #   * {Types::GetBrowserResponse#network_configuration #network_configuration} => Types::BrowserNetworkConfiguration
    #   * {Types::GetBrowserResponse#recording #recording} => Types::RecordingConfig
    #   * {Types::GetBrowserResponse#browser_signing #browser_signing} => Types::BrowserSigningConfigOutput
    #   * {Types::GetBrowserResponse#enterprise_policies #enterprise_policies} => Array&lt;Types::BrowserEnterprisePolicy&gt;
    #   * {Types::GetBrowserResponse#certificates #certificates} => Array&lt;Types::Certificate&gt;
    #   * {Types::GetBrowserResponse#filesystem_configurations #filesystem_configurations} => Array&lt;Types::ToolsFileSystemConfiguration&gt;
    #   * {Types::GetBrowserResponse#status #status} => String
    #   * {Types::GetBrowserResponse#failure_reason #failure_reason} => String
    #   * {Types::GetBrowserResponse#created_at #created_at} => Time
    #   * {Types::GetBrowserResponse#last_updated_at #last_updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_browser({
    #     browser_id: "BrowserId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.browser_id #=> String
    #   resp.browser_arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.execution_role_arn #=> String
    #   resp.network_configuration.network_mode #=> String, one of "PUBLIC", "VPC"
    #   resp.network_configuration.vpc_config.security_groups #=> Array
    #   resp.network_configuration.vpc_config.security_groups[0] #=> String
    #   resp.network_configuration.vpc_config.subnets #=> Array
    #   resp.network_configuration.vpc_config.subnets[0] #=> String
    #   resp.network_configuration.vpc_config.require_service_s3_endpoint #=> Boolean
    #   resp.recording.enabled #=> Boolean
    #   resp.recording.s3_location.bucket #=> String
    #   resp.recording.s3_location.prefix #=> String
    #   resp.recording.s3_location.version_id #=> String
    #   resp.browser_signing.enabled #=> Boolean
    #   resp.enterprise_policies #=> Array
    #   resp.enterprise_policies[0].location.s3.bucket #=> String
    #   resp.enterprise_policies[0].location.s3.prefix #=> String
    #   resp.enterprise_policies[0].location.s3.version_id #=> String
    #   resp.enterprise_policies[0].type #=> String, one of "MANAGED", "RECOMMENDED"
    #   resp.certificates #=> Array
    #   resp.certificates[0].location.secrets_manager.secret_arn #=> String
    #   resp.filesystem_configurations #=> Array
    #   resp.filesystem_configurations[0].s3_files_configuration.access_point_arn #=> String
    #   resp.filesystem_configurations[0].s3_files_configuration.mount_path #=> String
    #   resp.filesystem_configurations[0].s3_files_configuration.file_system_arn #=> String
    #   resp.filesystem_configurations[0].efs_configuration.access_point_arn #=> String
    #   resp.filesystem_configurations[0].efs_configuration.mount_path #=> String
    #   resp.filesystem_configurations[0].efs_configuration.file_system_arn #=> String
    #   resp.status #=> String, one of "CREATING", "CREATE_FAILED", "READY", "DELETING", "DELETE_FAILED", "DELETED"
    #   resp.failure_reason #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetBrowser AWS API Documentation
    #
    # @overload get_browser(params = {})
    # @param [Hash] params ({})
    def get_browser(params = {}, options = {})
      req = build_request(:get_browser, params)
      req.send_request(options)
    end

    # Gets information about a browser profile.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of the browser profile to retrieve.
    #
    # @return [Types::GetBrowserProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBrowserProfileResponse#profile_id #profile_id} => String
    #   * {Types::GetBrowserProfileResponse#profile_arn #profile_arn} => String
    #   * {Types::GetBrowserProfileResponse#name #name} => String
    #   * {Types::GetBrowserProfileResponse#description #description} => String
    #   * {Types::GetBrowserProfileResponse#status #status} => String
    #   * {Types::GetBrowserProfileResponse#created_at #created_at} => Time
    #   * {Types::GetBrowserProfileResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetBrowserProfileResponse#last_saved_at #last_saved_at} => Time
    #   * {Types::GetBrowserProfileResponse#last_saved_browser_session_id #last_saved_browser_session_id} => String
    #   * {Types::GetBrowserProfileResponse#last_saved_browser_id #last_saved_browser_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_browser_profile({
    #     profile_id: "BrowserProfileId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_id #=> String
    #   resp.profile_arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "READY", "DELETING", "DELETED", "SAVING"
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.last_saved_at #=> Time
    #   resp.last_saved_browser_session_id #=> String
    #   resp.last_saved_browser_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetBrowserProfile AWS API Documentation
    #
    # @overload get_browser_profile(params = {})
    # @param [Hash] params ({})
    def get_browser_profile(params = {}, options = {})
      req = build_request(:get_browser_profile, params)
      req.send_request(options)
    end

    # Retrieves information about a capacity provider, including its status,
    # permissions configuration, and compute configuration.
    #
    # @option params [required, String] :capacity_provider_id
    #   The unique identifier of the capacity provider.
    #
    # @return [Types::GetCapacityProviderOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCapacityProviderOutput#capacity_provider_id #capacity_provider_id} => String
    #   * {Types::GetCapacityProviderOutput#capacity_provider_arn #capacity_provider_arn} => String
    #   * {Types::GetCapacityProviderOutput#name #name} => String
    #   * {Types::GetCapacityProviderOutput#status #status} => String
    #   * {Types::GetCapacityProviderOutput#description #description} => String
    #   * {Types::GetCapacityProviderOutput#status_code #status_code} => String
    #   * {Types::GetCapacityProviderOutput#status_reason #status_reason} => String
    #   * {Types::GetCapacityProviderOutput#permissions_configuration #permissions_configuration} => Types::PermissionsConfiguration
    #   * {Types::GetCapacityProviderOutput#compute_configuration #compute_configuration} => Types::ComputeConfiguration
    #   * {Types::GetCapacityProviderOutput#created_at #created_at} => Time
    #   * {Types::GetCapacityProviderOutput#last_updated_at #last_updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_capacity_provider({
    #     capacity_provider_id: "CapacityProviderId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.capacity_provider_id #=> String
    #   resp.capacity_provider_arn #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"
    #   resp.description #=> String
    #   resp.status_code #=> String, one of "VALIDATION_ERROR", "QUOTA_EXCEEDED", "THROTTLED", "INTERNAL_SERVER_EXCEPTION"
    #   resp.status_reason #=> String
    #   resp.permissions_configuration.capacity_provider_operator_role_arn #=> String
    #   resp.compute_configuration.ec2_configuration.launch_template_source.launch_parameters.operating_system #=> String, one of "LINUX_X86_64", "LINUX_ARM64"
    #   resp.compute_configuration.ec2_configuration.launch_template_source.launch_parameters.instance_requirements.allowed_instance_types #=> Array
    #   resp.compute_configuration.ec2_configuration.launch_template_source.launch_parameters.instance_requirements.allowed_instance_types[0] #=> String
    #   resp.compute_configuration.ec2_configuration.launch_template_source.launch_parameters.ephemeral_volumes #=> Array
    #   resp.compute_configuration.ec2_configuration.launch_template_source.launch_parameters.ephemeral_volumes[0].device_name #=> String
    #   resp.compute_configuration.ec2_configuration.launch_template_source.launch_parameters.ephemeral_volumes[0].virtual_name #=> String
    #   resp.compute_configuration.ec2_configuration.launch_template_source.launch_parameters.ephemeral_volumes[0].ebs.volume_type #=> String, one of "standard", "io1", "io2", "gp2", "sc1", "st1", "gp3"
    #   resp.compute_configuration.ec2_configuration.launch_template_source.launch_parameters.ephemeral_volumes[0].ebs.iops #=> Integer
    #   resp.compute_configuration.ec2_configuration.launch_template_source.launch_parameters.ephemeral_volumes[0].ebs.throughput #=> Integer
    #   resp.compute_configuration.ec2_configuration.launch_template_source.launch_parameters.ephemeral_volumes[0].ebs.encrypted #=> Boolean
    #   resp.compute_configuration.ec2_configuration.launch_template_source.launch_parameters.ephemeral_volumes[0].ebs.kms_key_id #=> String
    #   resp.compute_configuration.ec2_configuration.launch_template_source.launch_parameters.ephemeral_volumes[0].ebs.snapshot_id #=> String
    #   resp.compute_configuration.ec2_configuration.launch_template_source.launch_parameters.ephemeral_volumes[0].ebs.volume_size #=> Integer
    #   resp.compute_configuration.ec2_configuration.launch_template_source.launch_parameters.ephemeral_volumes[0].ebs.volume_initialization_rate #=> Integer
    #   resp.compute_configuration.ec2_configuration.launch_template_source.launch_parameters.ephemeral_volumes[0].ebs.ebs_card_index #=> Integer
    #   resp.compute_configuration.ec2_configuration.launch_template_source.launch_parameters.monitoring #=> String, one of "BASIC", "DETAILED"
    #   resp.compute_configuration.ec2_configuration.launch_template_source.launch_parameters.license_specifications #=> Array
    #   resp.compute_configuration.ec2_configuration.launch_template_source.launch_parameters.license_specifications[0].license_configuration_arn #=> String
    #   resp.compute_configuration.ec2_configuration.launch_template_source.launch_parameters.capacity_reservation_specification.capacity_reservation_preference #=> String, one of "capacity-reservations-only", "open", "none"
    #   resp.compute_configuration.ec2_configuration.launch_template_source.launch_parameters.capacity_reservation_specification.capacity_reservation_target.capacity_reservation_id #=> String
    #   resp.compute_configuration.ec2_configuration.launch_template_source.launch_parameters.capacity_reservation_specification.capacity_reservation_target.capacity_reservation_resource_group_arn #=> String
    #   resp.compute_configuration.ec2_configuration.launch_template_source.launch_parameters.ssh_key_name #=> String
    #   resp.compute_configuration.ec2_configuration.launch_template_source.launch_parameters.instance_profile_arn #=> String
    #   resp.compute_configuration.ec2_configuration.launch_template_source.launch_parameters.propagated_tags #=> Hash
    #   resp.compute_configuration.ec2_configuration.launch_template_source.launch_parameters.propagated_tags["TagKey"] #=> String
    #   resp.compute_configuration.ec2_configuration.vpc_configuration.subnets #=> Array
    #   resp.compute_configuration.ec2_configuration.vpc_configuration.subnets[0] #=> String
    #   resp.compute_configuration.ec2_configuration.vpc_configuration.security_groups #=> Array
    #   resp.compute_configuration.ec2_configuration.vpc_configuration.security_groups[0] #=> String
    #   resp.compute_configuration.ec2_configuration.volumes #=> Array
    #   resp.compute_configuration.ec2_configuration.volumes[0].ebs_configuration.name #=> String
    #   resp.compute_configuration.ec2_configuration.volumes[0].ebs_configuration.size_gi_b #=> Integer
    #   resp.compute_configuration.ec2_configuration.volumes[0].ebs_configuration.volume_type #=> String, one of "standard", "io1", "io2", "gp2", "sc1", "st1", "gp3"
    #   resp.compute_configuration.ec2_configuration.volumes[0].ebs_configuration.iops #=> Integer
    #   resp.compute_configuration.ec2_configuration.volumes[0].ebs_configuration.throughput #=> Integer
    #   resp.compute_configuration.ec2_configuration.volumes[0].ebs_configuration.encrypted #=> Boolean
    #   resp.compute_configuration.ec2_configuration.volumes[0].ebs_configuration.kms_key_id #=> String
    #   resp.compute_configuration.ec2_configuration.volumes[0].ebs_configuration.snapshot_id #=> String
    #   resp.compute_configuration.ec2_configuration.lifecycle_configuration.idle_instance_timeout #=> Integer
    #   resp.compute_configuration.ec2_configuration.lifecycle_configuration.max_lifetime #=> Integer
    #   resp.compute_configuration.ec2_configuration.root_volume.volume_type #=> String, one of "standard", "io1", "io2", "gp2", "sc1", "st1", "gp3"
    #   resp.compute_configuration.ec2_configuration.root_volume.iops #=> Integer
    #   resp.compute_configuration.ec2_configuration.root_volume.throughput #=> Integer
    #   resp.compute_configuration.ec2_configuration.root_volume.encrypted #=> Boolean
    #   resp.compute_configuration.ec2_configuration.root_volume.kms_key_id #=> String
    #   resp.compute_configuration.ec2_configuration.root_volume.free_space_gi_b #=> Integer
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetCapacityProvider AWS API Documentation
    #
    # @overload get_capacity_provider(params = {})
    # @param [Hash] params ({})
    def get_capacity_provider(params = {}, options = {})
      req = build_request(:get_capacity_provider, params)
      req.send_request(options)
    end

    # Gets information about a custom code interpreter.
    #
    # @option params [required, String] :code_interpreter_id
    #   The unique identifier of the code interpreter to retrieve.
    #
    # @return [Types::GetCodeInterpreterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCodeInterpreterResponse#code_interpreter_id #code_interpreter_id} => String
    #   * {Types::GetCodeInterpreterResponse#code_interpreter_arn #code_interpreter_arn} => String
    #   * {Types::GetCodeInterpreterResponse#name #name} => String
    #   * {Types::GetCodeInterpreterResponse#description #description} => String
    #   * {Types::GetCodeInterpreterResponse#execution_role_arn #execution_role_arn} => String
    #   * {Types::GetCodeInterpreterResponse#network_configuration #network_configuration} => Types::CodeInterpreterNetworkConfiguration
    #   * {Types::GetCodeInterpreterResponse#status #status} => String
    #   * {Types::GetCodeInterpreterResponse#certificates #certificates} => Array&lt;Types::Certificate&gt;
    #   * {Types::GetCodeInterpreterResponse#filesystem_configurations #filesystem_configurations} => Array&lt;Types::ToolsFileSystemConfiguration&gt;
    #   * {Types::GetCodeInterpreterResponse#failure_reason #failure_reason} => String
    #   * {Types::GetCodeInterpreterResponse#created_at #created_at} => Time
    #   * {Types::GetCodeInterpreterResponse#last_updated_at #last_updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_code_interpreter({
    #     code_interpreter_id: "CodeInterpreterId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.code_interpreter_id #=> String
    #   resp.code_interpreter_arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.execution_role_arn #=> String
    #   resp.network_configuration.network_mode #=> String, one of "PUBLIC", "SANDBOX", "VPC"
    #   resp.network_configuration.vpc_config.security_groups #=> Array
    #   resp.network_configuration.vpc_config.security_groups[0] #=> String
    #   resp.network_configuration.vpc_config.subnets #=> Array
    #   resp.network_configuration.vpc_config.subnets[0] #=> String
    #   resp.network_configuration.vpc_config.require_service_s3_endpoint #=> Boolean
    #   resp.status #=> String, one of "CREATING", "CREATE_FAILED", "READY", "DELETING", "DELETE_FAILED", "DELETED"
    #   resp.certificates #=> Array
    #   resp.certificates[0].location.secrets_manager.secret_arn #=> String
    #   resp.filesystem_configurations #=> Array
    #   resp.filesystem_configurations[0].s3_files_configuration.access_point_arn #=> String
    #   resp.filesystem_configurations[0].s3_files_configuration.mount_path #=> String
    #   resp.filesystem_configurations[0].s3_files_configuration.file_system_arn #=> String
    #   resp.filesystem_configurations[0].efs_configuration.access_point_arn #=> String
    #   resp.filesystem_configurations[0].efs_configuration.mount_path #=> String
    #   resp.filesystem_configurations[0].efs_configuration.file_system_arn #=> String
    #   resp.failure_reason #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetCodeInterpreter AWS API Documentation
    #
    # @overload get_code_interpreter(params = {})
    # @param [Hash] params ({})
    def get_code_interpreter(params = {}, options = {})
      req = build_request(:get_code_interpreter, params)
      req.send_request(options)
    end

    # Gets the latest version of a configuration bundle. By default, returns
    # the latest version on the mainline branch. Use
    # `GetConfigurationBundleVersion` to retrieve a specific historical
    # version.
    #
    # @option params [required, String] :bundle_id
    #   The unique identifier of the configuration bundle to retrieve.
    #
    # @option params [String] :branch_name
    #   The branch name to get the latest version from. If not specified,
    #   returns the latest version on the mainline branch.
    #
    # @return [Types::GetConfigurationBundleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConfigurationBundleResponse#bundle_arn #bundle_arn} => String
    #   * {Types::GetConfigurationBundleResponse#bundle_id #bundle_id} => String
    #   * {Types::GetConfigurationBundleResponse#bundle_name #bundle_name} => String
    #   * {Types::GetConfigurationBundleResponse#description #description} => String
    #   * {Types::GetConfigurationBundleResponse#version_id #version_id} => String
    #   * {Types::GetConfigurationBundleResponse#components #components} => Hash&lt;String,Types::ComponentConfiguration&gt;
    #   * {Types::GetConfigurationBundleResponse#lineage_metadata #lineage_metadata} => Types::VersionLineageMetadata
    #   * {Types::GetConfigurationBundleResponse#created_at #created_at} => Time
    #   * {Types::GetConfigurationBundleResponse#updated_at #updated_at} => Time
    #   * {Types::GetConfigurationBundleResponse#kms_key_arn #kms_key_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_configuration_bundle({
    #     bundle_id: "ConfigurationBundleId", # required
    #     branch_name: "BranchName",
    #   })
    #
    # @example Response structure
    #
    #   resp.bundle_arn #=> String
    #   resp.bundle_id #=> String
    #   resp.bundle_name #=> String
    #   resp.description #=> String
    #   resp.version_id #=> String
    #   resp.components #=> Hash
    #   resp.lineage_metadata.parent_version_ids #=> Array
    #   resp.lineage_metadata.parent_version_ids[0] #=> String
    #   resp.lineage_metadata.branch_name #=> String
    #   resp.lineage_metadata.created_by.name #=> String
    #   resp.lineage_metadata.created_by.arn #=> String
    #   resp.lineage_metadata.commit_message #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetConfigurationBundle AWS API Documentation
    #
    # @overload get_configuration_bundle(params = {})
    # @param [Hash] params ({})
    def get_configuration_bundle(params = {}, options = {})
      req = build_request(:get_configuration_bundle, params)
      req.send_request(options)
    end

    # Gets a specific version of a configuration bundle by its version
    # identifier.
    #
    # @option params [required, String] :bundle_id
    #   The unique identifier of the configuration bundle.
    #
    # @option params [required, String] :version_id
    #   The version identifier of the configuration bundle version to
    #   retrieve.
    #
    # @return [Types::GetConfigurationBundleVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConfigurationBundleVersionResponse#bundle_arn #bundle_arn} => String
    #   * {Types::GetConfigurationBundleVersionResponse#bundle_id #bundle_id} => String
    #   * {Types::GetConfigurationBundleVersionResponse#bundle_name #bundle_name} => String
    #   * {Types::GetConfigurationBundleVersionResponse#description #description} => String
    #   * {Types::GetConfigurationBundleVersionResponse#version_id #version_id} => String
    #   * {Types::GetConfigurationBundleVersionResponse#components #components} => Hash&lt;String,Types::ComponentConfiguration&gt;
    #   * {Types::GetConfigurationBundleVersionResponse#lineage_metadata #lineage_metadata} => Types::VersionLineageMetadata
    #   * {Types::GetConfigurationBundleVersionResponse#created_at #created_at} => Time
    #   * {Types::GetConfigurationBundleVersionResponse#version_created_at #version_created_at} => Time
    #   * {Types::GetConfigurationBundleVersionResponse#kms_key_arn #kms_key_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_configuration_bundle_version({
    #     bundle_id: "ConfigurationBundleId", # required
    #     version_id: "ConfigurationBundleVersion", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bundle_arn #=> String
    #   resp.bundle_id #=> String
    #   resp.bundle_name #=> String
    #   resp.description #=> String
    #   resp.version_id #=> String
    #   resp.components #=> Hash
    #   resp.lineage_metadata.parent_version_ids #=> Array
    #   resp.lineage_metadata.parent_version_ids[0] #=> String
    #   resp.lineage_metadata.branch_name #=> String
    #   resp.lineage_metadata.created_by.name #=> String
    #   resp.lineage_metadata.created_by.arn #=> String
    #   resp.lineage_metadata.commit_message #=> String
    #   resp.created_at #=> Time
    #   resp.version_created_at #=> Time
    #   resp.kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetConfigurationBundleVersion AWS API Documentation
    #
    # @overload get_configuration_bundle_version(params = {})
    # @param [Hash] params ({})
    def get_configuration_bundle_version(params = {}, options = {})
      req = build_request(:get_configuration_bundle_version, params)
      req.send_request(options)
    end

    # Retrieves dataset metadata. Use the `datasetVersion` query parameter
    # to retrieve a specific version's metadata. If absent, defaults to
    # DRAFT. For paginated example content, use `ListDatasetExamples`.
    #
    # @option params [required, String] :dataset_id
    #   The unique identifier of the dataset to retrieve.
    #
    # @option params [String] :dataset_version
    #   Version to retrieve: "DRAFT" or a version number. Defaults to DRAFT
    #   if absent.
    #
    # @return [Types::GetDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDatasetResponse#dataset_arn #dataset_arn} => String
    #   * {Types::GetDatasetResponse#dataset_id #dataset_id} => String
    #   * {Types::GetDatasetResponse#dataset_version #dataset_version} => String
    #   * {Types::GetDatasetResponse#dataset_name #dataset_name} => String
    #   * {Types::GetDatasetResponse#description #description} => String
    #   * {Types::GetDatasetResponse#status #status} => String
    #   * {Types::GetDatasetResponse#draft_status #draft_status} => String
    #   * {Types::GetDatasetResponse#failure_reason #failure_reason} => String
    #   * {Types::GetDatasetResponse#schema_type #schema_type} => String
    #   * {Types::GetDatasetResponse#kms_key_arn #kms_key_arn} => String
    #   * {Types::GetDatasetResponse#example_count #example_count} => Integer
    #   * {Types::GetDatasetResponse#download_url #download_url} => String
    #   * {Types::GetDatasetResponse#download_url_expires_at #download_url_expires_at} => Time
    #   * {Types::GetDatasetResponse#created_at #created_at} => Time
    #   * {Types::GetDatasetResponse#updated_at #updated_at} => Time
    #   * {Types::GetDatasetResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dataset({
    #     dataset_id: "DatasetId", # required
    #     dataset_version: "DatasetVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_arn #=> String
    #   resp.dataset_id #=> String
    #   resp.dataset_version #=> String
    #   resp.dataset_name #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
    #   resp.draft_status #=> String, one of "MODIFIED", "UNMODIFIED"
    #   resp.failure_reason #=> String
    #   resp.schema_type #=> String, one of "AGENTCORE_EVALUATION_PREDEFINED_V1", "AGENTCORE_EVALUATION_SIMULATED_V1", "THIRD_PARTY_EVALUATION_V1"
    #   resp.kms_key_arn #=> String
    #   resp.example_count #=> Integer
    #   resp.download_url #=> String
    #   resp.download_url_expires_at #=> Time
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetDataset AWS API Documentation
    #
    # @overload get_dataset(params = {})
    # @param [Hash] params ({})
    def get_dataset(params = {}, options = {})
      req = build_request(:get_dataset, params)
      req.send_request(options)
    end

    # Retrieves detailed information about an evaluator, including its
    # configuration, status, and metadata. Works with both built-in and
    # custom evaluators.
    #
    # @option params [required, String] :evaluator_id
    #   The unique identifier of the evaluator to retrieve. Can be a built-in
    #   evaluator ID (e.g., Builtin.Helpfulness) or a custom evaluator ID.
    #
    # @option params [String] :included_data
    #   Controls which data is returned in the response. `ALL_DATA` (default)
    #   returns the full evaluator including decrypted instructions and rating
    #   scale. For evaluators encrypted with a customer managed KMS key, this
    #   requires `kms:Decrypt` permission on the key. `METADATA_ONLY` returns
    #   evaluator metadata and model configuration without instructions or
    #   rating scale, and does not require any KMS permissions.
    #
    # @return [Types::GetEvaluatorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEvaluatorResponse#evaluator_arn #evaluator_arn} => String
    #   * {Types::GetEvaluatorResponse#evaluator_id #evaluator_id} => String
    #   * {Types::GetEvaluatorResponse#evaluator_name #evaluator_name} => String
    #   * {Types::GetEvaluatorResponse#description #description} => String
    #   * {Types::GetEvaluatorResponse#evaluator_config #evaluator_config} => Types::EvaluatorConfig
    #   * {Types::GetEvaluatorResponse#evaluator_type #evaluator_type} => String
    #   * {Types::GetEvaluatorResponse#provider #provider} => String
    #   * {Types::GetEvaluatorResponse#level #level} => String
    #   * {Types::GetEvaluatorResponse#status #status} => String
    #   * {Types::GetEvaluatorResponse#created_at #created_at} => Time
    #   * {Types::GetEvaluatorResponse#updated_at #updated_at} => Time
    #   * {Types::GetEvaluatorResponse#locked_for_modification #locked_for_modification} => Boolean
    #   * {Types::GetEvaluatorResponse#kms_key_arn #kms_key_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_evaluator({
    #     evaluator_id: "EvaluatorId", # required
    #     included_data: "ALL_DATA", # accepts ALL_DATA, METADATA_ONLY
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluator_arn #=> String
    #   resp.evaluator_id #=> String
    #   resp.evaluator_name #=> String
    #   resp.description #=> String
    #   resp.evaluator_config.llm_as_a_judge.instructions #=> String
    #   resp.evaluator_config.llm_as_a_judge.rating_scale.numerical #=> Array
    #   resp.evaluator_config.llm_as_a_judge.rating_scale.numerical[0].definition #=> String
    #   resp.evaluator_config.llm_as_a_judge.rating_scale.numerical[0].value #=> Float
    #   resp.evaluator_config.llm_as_a_judge.rating_scale.numerical[0].label #=> String
    #   resp.evaluator_config.llm_as_a_judge.rating_scale.categorical #=> Array
    #   resp.evaluator_config.llm_as_a_judge.rating_scale.categorical[0].definition #=> String
    #   resp.evaluator_config.llm_as_a_judge.rating_scale.categorical[0].label #=> String
    #   resp.evaluator_config.llm_as_a_judge.model_config.bedrock_evaluator_model_config.model_id #=> String
    #   resp.evaluator_config.llm_as_a_judge.model_config.bedrock_evaluator_model_config.inference_config.max_tokens #=> Integer
    #   resp.evaluator_config.llm_as_a_judge.model_config.bedrock_evaluator_model_config.inference_config.temperature #=> Float
    #   resp.evaluator_config.llm_as_a_judge.model_config.bedrock_evaluator_model_config.inference_config.top_p #=> Float
    #   resp.evaluator_config.llm_as_a_judge.model_config.bedrock_evaluator_model_config.inference_config.stop_sequences #=> Array
    #   resp.evaluator_config.llm_as_a_judge.model_config.bedrock_evaluator_model_config.inference_config.stop_sequences[0] #=> String
    #   resp.evaluator_config.llm_as_a_judge.model_config.responses_evaluator_model_config.model_id #=> String
    #   resp.evaluator_config.llm_as_a_judge.model_config.responses_evaluator_model_config.max_output_tokens #=> Integer
    #   resp.evaluator_config.llm_as_a_judge.model_config.responses_evaluator_model_config.temperature #=> Float
    #   resp.evaluator_config.llm_as_a_judge.model_config.responses_evaluator_model_config.top_p #=> Float
    #   resp.evaluator_config.llm_as_a_judge.model_config.responses_evaluator_model_config.reasoning.effort #=> String
    #   resp.evaluator_config.code_based.lambda_config.lambda_arn #=> String
    #   resp.evaluator_config.code_based.lambda_config.lambda_timeout_in_seconds #=> Integer
    #   resp.evaluator_config.derived.base_evaluator_id #=> String
    #   resp.evaluator_config.derived.model_config.bedrock_evaluator_model_config.model_id #=> String
    #   resp.evaluator_config.derived.model_config.bedrock_evaluator_model_config.inference_config.max_tokens #=> Integer
    #   resp.evaluator_config.derived.model_config.bedrock_evaluator_model_config.inference_config.temperature #=> Float
    #   resp.evaluator_config.derived.model_config.bedrock_evaluator_model_config.inference_config.top_p #=> Float
    #   resp.evaluator_config.derived.model_config.bedrock_evaluator_model_config.inference_config.stop_sequences #=> Array
    #   resp.evaluator_config.derived.model_config.bedrock_evaluator_model_config.inference_config.stop_sequences[0] #=> String
    #   resp.evaluator_config.derived.model_config.responses_evaluator_model_config.model_id #=> String
    #   resp.evaluator_config.derived.model_config.responses_evaluator_model_config.max_output_tokens #=> Integer
    #   resp.evaluator_config.derived.model_config.responses_evaluator_model_config.temperature #=> Float
    #   resp.evaluator_config.derived.model_config.responses_evaluator_model_config.top_p #=> Float
    #   resp.evaluator_config.derived.model_config.responses_evaluator_model_config.reasoning.effort #=> String
    #   resp.evaluator_type #=> String, one of "Builtin", "ThirdParty", "Custom", "CustomCode", "CustomDerived"
    #   resp.provider #=> String, one of "AWS", "DeepEval", "AutoEval", "Custom"
    #   resp.level #=> String, one of "TOOL_CALL", "TRACE", "SESSION"
    #   resp.status #=> String, one of "ACTIVE", "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.locked_for_modification #=> Boolean
    #   resp.kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetEvaluator AWS API Documentation
    #
    # @overload get_evaluator(params = {})
    # @param [Hash] params ({})
    def get_evaluator(params = {}, options = {})
      req = build_request(:get_evaluator, params)
      req.send_request(options)
    end

    # Retrieves information about a specific Gateway.
    #
    # @option params [required, String] :gateway_identifier
    #   The identifier of the gateway to retrieve.
    #
    # @return [Types::GetGatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGatewayResponse#gateway_arn #gateway_arn} => String
    #   * {Types::GetGatewayResponse#gateway_id #gateway_id} => String
    #   * {Types::GetGatewayResponse#gateway_url #gateway_url} => String
    #   * {Types::GetGatewayResponse#created_at #created_at} => Time
    #   * {Types::GetGatewayResponse#updated_at #updated_at} => Time
    #   * {Types::GetGatewayResponse#status #status} => String
    #   * {Types::GetGatewayResponse#status_reasons #status_reasons} => Array&lt;String&gt;
    #   * {Types::GetGatewayResponse#name #name} => String
    #   * {Types::GetGatewayResponse#description #description} => String
    #   * {Types::GetGatewayResponse#role_arn #role_arn} => String
    #   * {Types::GetGatewayResponse#protocol_type #protocol_type} => String
    #   * {Types::GetGatewayResponse#protocol_configuration #protocol_configuration} => Types::GatewayProtocolConfiguration
    #   * {Types::GetGatewayResponse#authorizer_type #authorizer_type} => String
    #   * {Types::GetGatewayResponse#authorizer_configuration #authorizer_configuration} => Types::AuthorizerConfiguration
    #   * {Types::GetGatewayResponse#kms_key_arn #kms_key_arn} => String
    #   * {Types::GetGatewayResponse#custom_transform_configuration #custom_transform_configuration} => Types::CustomTransformConfiguration
    #   * {Types::GetGatewayResponse#interceptor_configurations #interceptor_configurations} => Array&lt;Types::GatewayInterceptorConfiguration&gt;
    #   * {Types::GetGatewayResponse#policy_engine_configuration #policy_engine_configuration} => Types::GatewayPolicyEngineConfiguration
    #   * {Types::GetGatewayResponse#workload_identity_details #workload_identity_details} => Types::WorkloadIdentityDetails
    #   * {Types::GetGatewayResponse#exception_level #exception_level} => String
    #   * {Types::GetGatewayResponse#web_acl_arn #web_acl_arn} => String
    #   * {Types::GetGatewayResponse#waf_configuration #waf_configuration} => Types::WafConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_gateway({
    #     gateway_identifier: "GatewayIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.gateway_id #=> String
    #   resp.gateway_url #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED"
    #   resp.status_reasons #=> Array
    #   resp.status_reasons[0] #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.role_arn #=> String
    #   resp.protocol_type #=> String, one of "MCP"
    #   resp.protocol_configuration.mcp.supported_versions #=> Array
    #   resp.protocol_configuration.mcp.supported_versions[0] #=> String
    #   resp.protocol_configuration.mcp.instructions #=> String
    #   resp.protocol_configuration.mcp.search_type #=> String, one of "SEMANTIC"
    #   resp.protocol_configuration.mcp.session_configuration.session_timeout_in_seconds #=> Integer
    #   resp.protocol_configuration.mcp.streaming_configuration.enable_response_streaming #=> Boolean
    #   resp.authorizer_type #=> String, one of "CUSTOM_JWT", "AWS_IAM", "NONE", "AUTHENTICATE_ONLY"
    #   resp.authorizer_configuration.custom_jwt_authorizer.discovery_url #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_audience #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_audience[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_clients #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_clients[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_scopes #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_scopes[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.advertised_scope_mapping #=> Hash
    #   resp.authorizer_configuration.custom_jwt_authorizer.advertised_scope_mapping["AllowedScopeType"] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_name #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_value_type #=> String, one of "STRING", "STRING_ARRAY"
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_operator #=> String, one of "EQUALS", "CONTAINS", "CONTAINS_ANY"
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].domain #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.hosting_environments #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.hosting_environments[0].arn #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.workload_identities #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.workload_identities[0] #=> String
    #   resp.kms_key_arn #=> String
    #   resp.custom_transform_configuration.lambda.arn #=> String
    #   resp.interceptor_configurations #=> Array
    #   resp.interceptor_configurations[0].interceptor.lambda.arn #=> String
    #   resp.interceptor_configurations[0].interception_points #=> Array
    #   resp.interceptor_configurations[0].interception_points[0] #=> String, one of "REQUEST", "RESPONSE"
    #   resp.interceptor_configurations[0].input_configuration.pass_request_headers #=> Boolean
    #   resp.interceptor_configurations[0].input_configuration.payload_filter.exclude #=> Array
    #   resp.interceptor_configurations[0].input_configuration.payload_filter.exclude[0].field #=> String, one of "RESPONSE_BODY"
    #   resp.policy_engine_configuration.arn #=> String
    #   resp.policy_engine_configuration.mode #=> String, one of "LOG_ONLY", "ENFORCE"
    #   resp.workload_identity_details.workload_identity_arn #=> String
    #   resp.exception_level #=> String, one of "DEBUG"
    #   resp.web_acl_arn #=> String
    #   resp.waf_configuration.failure_mode #=> String, one of "FAIL_CLOSE", "FAIL_OPEN"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetGateway AWS API Documentation
    #
    # @overload get_gateway(params = {})
    # @param [Hash] params ({})
    def get_gateway(params = {}, options = {})
      req = build_request(:get_gateway, params)
      req.send_request(options)
    end

    # Retrieves information about a gateway rate limit.
    #
    # @option params [required, String] :gateway_identifier
    #   The unique identifier of the gateway.
    #
    # @option params [required, String] :rate_limit_id
    #   The unique identifier of the rate limit to retrieve.
    #
    # @return [Types::GetGatewayRateLimitResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGatewayRateLimitResponse#rate_limit_id #rate_limit_id} => String
    #   * {Types::GetGatewayRateLimitResponse#gateway_identifier #gateway_identifier} => String
    #   * {Types::GetGatewayRateLimitResponse#description #description} => String
    #   * {Types::GetGatewayRateLimitResponse#dimension_keys #dimension_keys} => Array&lt;String&gt;
    #   * {Types::GetGatewayRateLimitResponse#entries #data.entries} => Array&lt;Types::LimitEntry&gt; (This method conflicts with a method on Response, call it through the data member)
    #   * {Types::GetGatewayRateLimitResponse#status #status} => String
    #   * {Types::GetGatewayRateLimitResponse#created_at #created_at} => Time
    #   * {Types::GetGatewayRateLimitResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_gateway_rate_limit({
    #     gateway_identifier: "GatewayIdentifier", # required
    #     rate_limit_id: "GatewayRateLimitId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rate_limit_id #=> String
    #   resp.gateway_identifier #=> String
    #   resp.description #=> String
    #   resp.dimension_keys #=> Array
    #   resp.dimension_keys[0] #=> String
    #   resp.data.entries #=> Array
    #   resp.data.entries[0].dimensions #=> Hash
    #   resp.data.entries[0].dimensions["DimensionKey"] #=> String
    #   resp.data.entries[0].requests #=> Array
    #   resp.data.entries[0].requests[0].rate #=> Float
    #   resp.data.entries[0].requests[0].period #=> String, one of "second", "minute"
    #   resp.data.entries[0].tokens #=> Array
    #   resp.data.entries[0].tokens[0].rate #=> Float
    #   resp.data.entries[0].tokens[0].period #=> String, one of "second", "minute"
    #   resp.data.entries[0].connections #=> Array
    #   resp.data.entries[0].connections[0].rate #=> Float
    #   resp.data.entries[0].connections[0].period #=> String, one of "second", "minute"
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetGatewayRateLimit AWS API Documentation
    #
    # @overload get_gateway_rate_limit(params = {})
    # @param [Hash] params ({})
    def get_gateway_rate_limit(params = {}, options = {})
      req = build_request(:get_gateway_rate_limit, params)
      req.send_request(options)
    end

    # Retrieves detailed information about a specific gateway rule.
    #
    # @option params [required, String] :gateway_identifier
    #   The identifier of the gateway containing the rule.
    #
    # @option params [required, String] :rule_id
    #   The unique identifier of the rule to retrieve.
    #
    # @return [Types::GetGatewayRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGatewayRuleResponse#rule_id #rule_id} => String
    #   * {Types::GetGatewayRuleResponse#gateway_arn #gateway_arn} => String
    #   * {Types::GetGatewayRuleResponse#priority #priority} => Integer
    #   * {Types::GetGatewayRuleResponse#conditions #conditions} => Array&lt;Types::Condition&gt;
    #   * {Types::GetGatewayRuleResponse#actions #actions} => Array&lt;Types::Action&gt;
    #   * {Types::GetGatewayRuleResponse#description #description} => String
    #   * {Types::GetGatewayRuleResponse#created_at #created_at} => Time
    #   * {Types::GetGatewayRuleResponse#status #status} => String
    #   * {Types::GetGatewayRuleResponse#system #system} => Types::SystemManagedBlock
    #   * {Types::GetGatewayRuleResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_gateway_rule({
    #     gateway_identifier: "GatewayIdentifier", # required
    #     rule_id: "GatewayRuleId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_id #=> String
    #   resp.gateway_arn #=> String
    #   resp.priority #=> Integer
    #   resp.conditions #=> Array
    #   resp.conditions[0].match_principals.any_of #=> Array
    #   resp.conditions[0].match_principals.any_of[0].iam_principal.arn #=> String
    #   resp.conditions[0].match_principals.any_of[0].iam_principal.operator #=> String, one of "StringEquals", "StringLike"
    #   resp.conditions[0].match_paths.any_of #=> Array
    #   resp.conditions[0].match_paths.any_of[0] #=> String
    #   resp.actions #=> Array
    #   resp.actions[0].configuration_bundle.static_override.bundle_arn #=> String
    #   resp.actions[0].configuration_bundle.static_override.bundle_version #=> String
    #   resp.actions[0].configuration_bundle.weighted_override.traffic_split #=> Array
    #   resp.actions[0].configuration_bundle.weighted_override.traffic_split[0].name #=> String
    #   resp.actions[0].configuration_bundle.weighted_override.traffic_split[0].weight #=> Integer
    #   resp.actions[0].configuration_bundle.weighted_override.traffic_split[0].configuration_bundle.bundle_arn #=> String
    #   resp.actions[0].configuration_bundle.weighted_override.traffic_split[0].configuration_bundle.bundle_version #=> String
    #   resp.actions[0].configuration_bundle.weighted_override.traffic_split[0].description #=> String
    #   resp.actions[0].configuration_bundle.weighted_override.traffic_split[0].metadata #=> Hash
    #   resp.actions[0].configuration_bundle.weighted_override.traffic_split[0].metadata["TrafficSplitMetadataKey"] #=> String
    #   resp.actions[0].route_to_target.static_route.target_name #=> String
    #   resp.actions[0].route_to_target.weighted_route.traffic_split #=> Array
    #   resp.actions[0].route_to_target.weighted_route.traffic_split[0].name #=> String
    #   resp.actions[0].route_to_target.weighted_route.traffic_split[0].weight #=> Integer
    #   resp.actions[0].route_to_target.weighted_route.traffic_split[0].target_name #=> String
    #   resp.actions[0].route_to_target.weighted_route.traffic_split[0].description #=> String
    #   resp.actions[0].route_to_target.weighted_route.traffic_split[0].metadata #=> Hash
    #   resp.actions[0].route_to_target.weighted_route.traffic_split[0].metadata["TrafficSplitMetadataKey"] #=> String
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING"
    #   resp.system.managed_by #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetGatewayRule AWS API Documentation
    #
    # @overload get_gateway_rule(params = {})
    # @param [Hash] params ({})
    def get_gateway_rule(params = {}, options = {})
      req = build_request(:get_gateway_rule, params)
      req.send_request(options)
    end

    # Retrieves information about a specific gateway target.
    #
    # @option params [required, String] :gateway_identifier
    #   The identifier of the gateway that contains the target.
    #
    # @option params [required, String] :target_id
    #   The unique identifier of the target to retrieve.
    #
    # @return [Types::GetGatewayTargetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGatewayTargetResponse#gateway_arn #gateway_arn} => String
    #   * {Types::GetGatewayTargetResponse#target_id #target_id} => String
    #   * {Types::GetGatewayTargetResponse#created_at #created_at} => Time
    #   * {Types::GetGatewayTargetResponse#updated_at #updated_at} => Time
    #   * {Types::GetGatewayTargetResponse#status #status} => String
    #   * {Types::GetGatewayTargetResponse#status_reasons #status_reasons} => Array&lt;String&gt;
    #   * {Types::GetGatewayTargetResponse#name #name} => String
    #   * {Types::GetGatewayTargetResponse#description #description} => String
    #   * {Types::GetGatewayTargetResponse#target_configuration #target_configuration} => Types::TargetConfiguration
    #   * {Types::GetGatewayTargetResponse#credential_provider_configurations #credential_provider_configurations} => Array&lt;Types::CredentialProviderConfiguration&gt;
    #   * {Types::GetGatewayTargetResponse#last_synchronized_at #last_synchronized_at} => Time
    #   * {Types::GetGatewayTargetResponse#metadata_configuration #metadata_configuration} => Types::MetadataConfiguration
    #   * {Types::GetGatewayTargetResponse#private_endpoint #private_endpoint} => Types::PrivateEndpoint
    #   * {Types::GetGatewayTargetResponse#private_endpoint_managed_resources #private_endpoint_managed_resources} => Array&lt;Types::ManagedResourceDetails&gt;
    #   * {Types::GetGatewayTargetResponse#authorization_data #authorization_data} => Types::AuthorizationData
    #   * {Types::GetGatewayTargetResponse#protocol_type #protocol_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_gateway_target({
    #     gateway_identifier: "GatewayIdentifier", # required
    #     target_id: "TargetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.target_id #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED", "SYNCHRONIZING", "SYNCHRONIZE_UNSUCCESSFUL", "CREATE_PENDING_AUTH", "UPDATE_PENDING_AUTH", "SYNCHRONIZE_PENDING_AUTH"
    #   resp.status_reasons #=> Array
    #   resp.status_reasons[0] #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.target_configuration.mcp.open_api_schema.s3.uri #=> String
    #   resp.target_configuration.mcp.open_api_schema.s3.bucket_owner_account_id #=> String
    #   resp.target_configuration.mcp.open_api_schema.inline_payload #=> String
    #   resp.target_configuration.mcp.smithy_model.s3.uri #=> String
    #   resp.target_configuration.mcp.smithy_model.s3.bucket_owner_account_id #=> String
    #   resp.target_configuration.mcp.smithy_model.inline_payload #=> String
    #   resp.target_configuration.mcp.lambda.lambda_arn #=> String
    #   resp.target_configuration.mcp.lambda.tool_schema.s3.uri #=> String
    #   resp.target_configuration.mcp.lambda.tool_schema.s3.bucket_owner_account_id #=> String
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload #=> Array
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].name #=> String
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].description #=> String
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].input_schema.type #=> String, one of "string", "number", "object", "array", "boolean", "integer"
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].input_schema.properties #=> Hash
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].input_schema.properties["String"] #=> Types::SchemaDefinition
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].input_schema.required #=> Array
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].input_schema.required[0] #=> String
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].input_schema.items #=> Types::SchemaDefinition
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].input_schema.description #=> String
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].output_schema.type #=> String, one of "string", "number", "object", "array", "boolean", "integer"
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].output_schema.properties #=> Hash
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].output_schema.properties["String"] #=> Types::SchemaDefinition
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].output_schema.required #=> Array
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].output_schema.required[0] #=> String
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].output_schema.items #=> Types::SchemaDefinition
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].output_schema.description #=> String
    #   resp.target_configuration.mcp.mcp_server.endpoint #=> String
    #   resp.target_configuration.mcp.mcp_server.mcp_tool_schema.s3.uri #=> String
    #   resp.target_configuration.mcp.mcp_server.mcp_tool_schema.s3.bucket_owner_account_id #=> String
    #   resp.target_configuration.mcp.mcp_server.mcp_tool_schema.inline_payload #=> String
    #   resp.target_configuration.mcp.mcp_server.listing_mode #=> String, one of "DEFAULT", "DYNAMIC"
    #   resp.target_configuration.mcp.mcp_server.resource_priority #=> Integer
    #   resp.target_configuration.mcp.api_gateway.rest_api_id #=> String
    #   resp.target_configuration.mcp.api_gateway.stage #=> String
    #   resp.target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_overrides #=> Array
    #   resp.target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_overrides[0].name #=> String
    #   resp.target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_overrides[0].description #=> String
    #   resp.target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_overrides[0].path #=> String
    #   resp.target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_overrides[0].method #=> String, one of "GET", "DELETE", "HEAD", "OPTIONS", "PATCH", "PUT", "POST"
    #   resp.target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_filters #=> Array
    #   resp.target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_filters[0].filter_path #=> String
    #   resp.target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_filters[0].methods #=> Array
    #   resp.target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_filters[0].methods[0] #=> String, one of "GET", "DELETE", "HEAD", "OPTIONS", "PATCH", "PUT", "POST"
    #   resp.target_configuration.mcp.connector.source.connector_id #=> String
    #   resp.target_configuration.mcp.connector.source.version #=> String
    #   resp.target_configuration.mcp.connector.enabled #=> Array
    #   resp.target_configuration.mcp.connector.enabled[0] #=> String
    #   resp.target_configuration.mcp.connector.configurations #=> Array
    #   resp.target_configuration.mcp.connector.configurations[0].name #=> String
    #   resp.target_configuration.mcp.connector.configurations[0].description #=> String
    #   resp.target_configuration.mcp.connector.configurations[0].parameter_overrides #=> Array
    #   resp.target_configuration.mcp.connector.configurations[0].parameter_overrides[0].path #=> String
    #   resp.target_configuration.mcp.connector.configurations[0].parameter_overrides[0].description #=> String
    #   resp.target_configuration.mcp.connector.configurations[0].parameter_overrides[0].visible #=> Boolean
    #   resp.target_configuration.http.agentcore_runtime.arn #=> String
    #   resp.target_configuration.http.agentcore_runtime.qualifier #=> String
    #   resp.target_configuration.http.agentcore_runtime.schema.source.s3.uri #=> String
    #   resp.target_configuration.http.agentcore_runtime.schema.source.s3.bucket_owner_account_id #=> String
    #   resp.target_configuration.http.agentcore_runtime.schema.source.inline_payload #=> String
    #   resp.target_configuration.http.passthrough.endpoint #=> String
    #   resp.target_configuration.http.passthrough.protocol_type #=> String, one of "MCP", "A2A", "INFERENCE", "CUSTOM"
    #   resp.target_configuration.http.passthrough.schema.source.s3.uri #=> String
    #   resp.target_configuration.http.passthrough.schema.source.s3.bucket_owner_account_id #=> String
    #   resp.target_configuration.http.passthrough.schema.source.inline_payload #=> String
    #   resp.target_configuration.http.passthrough.stickiness_configuration.identifier #=> String
    #   resp.target_configuration.http.passthrough.stickiness_configuration.timeout #=> Integer
    #   resp.target_configuration.http.passthrough.stickiness_configuration.composite_identifier #=> Array
    #   resp.target_configuration.http.passthrough.stickiness_configuration.composite_identifier[0] #=> String
    #   resp.target_configuration.http.passthrough.static_query_parameters #=> Hash
    #   resp.target_configuration.http.passthrough.static_query_parameters["StaticQueryParameterName"] #=> String
    #   resp.target_configuration.http.passthrough.static_query_parameter_conflict_resolution #=> String, one of "CLIENT_OVERRIDE", "STATIC_OVERRIDE"
    #   resp.target_configuration.http.connector.source.connector_id #=> String
    #   resp.target_configuration.http.connector.parameters #=> Hash
    #   resp.target_configuration.http.connector.parameters["ConnectorParameterName"] #=> String
    #   resp.target_configuration.inference.connector.source.connector_id #=> String
    #   resp.target_configuration.inference.provider.endpoint #=> String
    #   resp.target_configuration.inference.provider.model_mapping.provider_prefix.strip #=> Boolean
    #   resp.target_configuration.inference.provider.model_mapping.provider_prefix.separator #=> String
    #   resp.target_configuration.inference.provider.operations #=> Array
    #   resp.target_configuration.inference.provider.operations[0].path #=> String
    #   resp.target_configuration.inference.provider.operations[0].provider_path #=> String
    #   resp.target_configuration.inference.provider.operations[0].models #=> Array
    #   resp.target_configuration.inference.provider.operations[0].models[0].model #=> String
    #   resp.credential_provider_configurations #=> Array
    #   resp.credential_provider_configurations[0].credential_provider_type #=> String, one of "GATEWAY_IAM_ROLE", "OAUTH", "API_KEY", "CALLER_IAM_CREDENTIALS", "JWT_PASSTHROUGH"
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.provider_arn #=> String
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes #=> Array
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes[0] #=> String
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters #=> Hash
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters["OAuthCustomParametersKey"] #=> String
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.grant_type #=> String, one of "CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "TOKEN_EXCHANGE"
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.default_return_url #=> String
    #   resp.credential_provider_configurations[0].credential_provider.api_key_credential_provider.provider_arn #=> String
    #   resp.credential_provider_configurations[0].credential_provider.api_key_credential_provider.credential_parameter_name #=> String
    #   resp.credential_provider_configurations[0].credential_provider.api_key_credential_provider.credential_prefix #=> String
    #   resp.credential_provider_configurations[0].credential_provider.api_key_credential_provider.credential_location #=> String, one of "HEADER", "QUERY_PARAMETER"
    #   resp.credential_provider_configurations[0].credential_provider.iam_credential_provider.service #=> String
    #   resp.credential_provider_configurations[0].credential_provider.iam_credential_provider.region #=> String
    #   resp.last_synchronized_at #=> Time
    #   resp.metadata_configuration.allowed_request_headers #=> Array
    #   resp.metadata_configuration.allowed_request_headers[0] #=> String
    #   resp.metadata_configuration.allowed_query_parameters #=> Array
    #   resp.metadata_configuration.allowed_query_parameters[0] #=> String
    #   resp.metadata_configuration.allowed_response_headers #=> Array
    #   resp.metadata_configuration.allowed_response_headers[0] #=> String
    #   resp.private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.private_endpoint_managed_resources #=> Array
    #   resp.private_endpoint_managed_resources[0].domain #=> String
    #   resp.private_endpoint_managed_resources[0].resource_gateway_arn #=> String
    #   resp.private_endpoint_managed_resources[0].resource_association_arn #=> String
    #   resp.authorization_data.oauth2.authorization_url #=> String
    #   resp.authorization_data.oauth2.user_id #=> String
    #   resp.protocol_type #=> String, one of "MCP", "HTTP"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetGatewayTarget AWS API Documentation
    #
    # @overload get_gateway_target(params = {})
    # @param [Hash] params ({})
    def get_gateway_target(params = {}, options = {})
      req = build_request(:get_gateway_target, params)
      req.send_request(options)
    end

    # Operation to get a single harness.
    #
    # @option params [required, String] :harness_id
    #   The ID of the harness to retrieve.
    #
    # @option params [String] :harness_version
    #   Specific version of the harness to retrieve. If omitted, returns the
    #   current Harness configuration, including its status.
    #
    # @return [Types::GetHarnessResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetHarnessResponse#harness #harness} => Types::Harness
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_harness({
    #     harness_id: "HarnessId", # required
    #     harness_version: "HarnessVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.harness.harness_id #=> String
    #   resp.harness.harness_name #=> String
    #   resp.harness.arn #=> String
    #   resp.harness.status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"
    #   resp.harness.harness_version #=> String
    #   resp.harness.execution_role_arn #=> String
    #   resp.harness.created_at #=> Time
    #   resp.harness.updated_at #=> Time
    #   resp.harness.model.bedrock_model_config.model_id #=> String
    #   resp.harness.model.bedrock_model_config.max_tokens #=> Integer
    #   resp.harness.model.bedrock_model_config.temperature #=> Float
    #   resp.harness.model.bedrock_model_config.top_p #=> Float
    #   resp.harness.model.bedrock_model_config.api_format #=> String, one of "converse_stream", "responses", "chat_completions"
    #   resp.harness.model.open_ai_model_config.model_id #=> String
    #   resp.harness.model.open_ai_model_config.api_key_arn #=> String
    #   resp.harness.model.open_ai_model_config.max_tokens #=> Integer
    #   resp.harness.model.open_ai_model_config.temperature #=> Float
    #   resp.harness.model.open_ai_model_config.top_p #=> Float
    #   resp.harness.model.open_ai_model_config.api_format #=> String, one of "chat_completions", "responses"
    #   resp.harness.model.gemini_model_config.model_id #=> String
    #   resp.harness.model.gemini_model_config.api_key_arn #=> String
    #   resp.harness.model.gemini_model_config.max_tokens #=> Integer
    #   resp.harness.model.gemini_model_config.temperature #=> Float
    #   resp.harness.model.gemini_model_config.top_p #=> Float
    #   resp.harness.model.gemini_model_config.top_k #=> Integer
    #   resp.harness.model.lite_llm_model_config.model_id #=> String
    #   resp.harness.model.lite_llm_model_config.api_key_arn #=> String
    #   resp.harness.model.lite_llm_model_config.api_base #=> String
    #   resp.harness.model.lite_llm_model_config.max_tokens #=> Integer
    #   resp.harness.model.lite_llm_model_config.temperature #=> Float
    #   resp.harness.model.lite_llm_model_config.top_p #=> Float
    #   resp.harness.system_prompt #=> Array
    #   resp.harness.system_prompt[0].text #=> String
    #   resp.harness.tools #=> Array
    #   resp.harness.tools[0].type #=> String, one of "remote_mcp", "agentcore_browser", "agentcore_gateway", "inline_function", "agentcore_code_interpreter"
    #   resp.harness.tools[0].name #=> String
    #   resp.harness.tools[0].config.remote_mcp.url #=> String
    #   resp.harness.tools[0].config.remote_mcp.headers #=> Hash
    #   resp.harness.tools[0].config.remote_mcp.headers["HttpHeaderKey"] #=> String
    #   resp.harness.tools[0].config.agent_core_browser.browser_arn #=> String
    #   resp.harness.tools[0].config.agent_core_gateway.gateway_arn #=> String
    #   resp.harness.tools[0].config.agent_core_gateway.outbound_auth.oauth.provider_arn #=> String
    #   resp.harness.tools[0].config.agent_core_gateway.outbound_auth.oauth.scopes #=> Array
    #   resp.harness.tools[0].config.agent_core_gateway.outbound_auth.oauth.scopes[0] #=> String
    #   resp.harness.tools[0].config.agent_core_gateway.outbound_auth.oauth.custom_parameters #=> Hash
    #   resp.harness.tools[0].config.agent_core_gateway.outbound_auth.oauth.custom_parameters["OAuthCustomParametersKey"] #=> String
    #   resp.harness.tools[0].config.agent_core_gateway.outbound_auth.oauth.grant_type #=> String, one of "CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "TOKEN_EXCHANGE"
    #   resp.harness.tools[0].config.agent_core_gateway.outbound_auth.oauth.default_return_url #=> String
    #   resp.harness.tools[0].config.inline_function.description #=> String
    #   resp.harness.tools[0].config.agent_core_code_interpreter.code_interpreter_arn #=> String
    #   resp.harness.skills #=> Array
    #   resp.harness.skills[0].path #=> String
    #   resp.harness.skills[0].s3.uri #=> String
    #   resp.harness.skills[0].git.url #=> String
    #   resp.harness.skills[0].git.path #=> String
    #   resp.harness.skills[0].git.auth.credential_arn #=> String
    #   resp.harness.skills[0].git.auth.username #=> String
    #   resp.harness.skills[0].aws_skills.paths #=> Array
    #   resp.harness.skills[0].aws_skills.paths[0] #=> String
    #   resp.harness.allowed_tools #=> Array
    #   resp.harness.allowed_tools[0] #=> String
    #   resp.harness.truncation.strategy #=> String, one of "sliding_window", "summarization", "none"
    #   resp.harness.truncation.config.sliding_window.messages_count #=> Integer
    #   resp.harness.truncation.config.summarization.summary_ratio #=> Float
    #   resp.harness.truncation.config.summarization.preserve_recent_messages #=> Integer
    #   resp.harness.truncation.config.summarization.summarization_system_prompt #=> String
    #   resp.harness.environment.agent_core_runtime_environment.agent_runtime_arn #=> String
    #   resp.harness.environment.agent_core_runtime_environment.agent_runtime_name #=> String
    #   resp.harness.environment.agent_core_runtime_environment.agent_runtime_id #=> String
    #   resp.harness.environment.agent_core_runtime_environment.lifecycle_configuration.idle_runtime_session_timeout #=> Integer
    #   resp.harness.environment.agent_core_runtime_environment.lifecycle_configuration.max_lifetime #=> Integer
    #   resp.harness.environment.agent_core_runtime_environment.network_configuration.network_mode #=> String, one of "PUBLIC", "VPC"
    #   resp.harness.environment.agent_core_runtime_environment.network_configuration.network_mode_config.security_groups #=> Array
    #   resp.harness.environment.agent_core_runtime_environment.network_configuration.network_mode_config.security_groups[0] #=> String
    #   resp.harness.environment.agent_core_runtime_environment.network_configuration.network_mode_config.subnets #=> Array
    #   resp.harness.environment.agent_core_runtime_environment.network_configuration.network_mode_config.subnets[0] #=> String
    #   resp.harness.environment.agent_core_runtime_environment.network_configuration.network_mode_config.require_service_s3_endpoint #=> Boolean
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations #=> Array
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations[0].session_storage.mount_path #=> String
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations[0].s3_files_access_point.access_point_arn #=> String
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations[0].s3_files_access_point.mount_path #=> String
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations[0].efs_access_point.access_point_arn #=> String
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations[0].efs_access_point.mount_path #=> String
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations[0].capacity_provider_volume.volume_name #=> String
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations[0].capacity_provider_volume.mount_path #=> String
    #   resp.harness.environment_artifact.container_configuration.container_uri #=> String
    #   resp.harness.environment_variables #=> Hash
    #   resp.harness.environment_variables["EnvironmentVariableKey"] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.discovery_url #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_audience #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_audience[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_clients #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_clients[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_scopes #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_scopes[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.advertised_scope_mapping #=> Hash
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.advertised_scope_mapping["AllowedScopeType"] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.custom_claims #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_name #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_value_type #=> String, one of "STRING", "STRING_ARRAY"
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_operator #=> String, one of "EQUALS", "CONTAINS", "CONTAINS_ANY"
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].domain #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.hosting_environments #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.hosting_environments[0].arn #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.workload_identities #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.workload_identities[0] #=> String
    #   resp.harness.memory.agent_core_memory_configuration.arn #=> String
    #   resp.harness.memory.agent_core_memory_configuration.actor_id #=> String
    #   resp.harness.memory.agent_core_memory_configuration.messages_count #=> Integer
    #   resp.harness.memory.agent_core_memory_configuration.retrieval_config #=> Hash
    #   resp.harness.memory.agent_core_memory_configuration.retrieval_config["String"].top_k #=> Integer
    #   resp.harness.memory.agent_core_memory_configuration.retrieval_config["String"].relevance_score #=> Float
    #   resp.harness.memory.agent_core_memory_configuration.retrieval_config["String"].strategy_id #=> String
    #   resp.harness.memory.managed_memory_configuration.arn #=> String
    #   resp.harness.memory.managed_memory_configuration.strategies #=> Array
    #   resp.harness.memory.managed_memory_configuration.strategies[0] #=> String, one of "SEMANTIC", "SUMMARIZATION", "USER_PREFERENCE", "EPISODIC"
    #   resp.harness.memory.managed_memory_configuration.event_expiry_duration #=> Integer
    #   resp.harness.memory.managed_memory_configuration.encryption_key_arn #=> String
    #   resp.harness.max_iterations #=> Integer
    #   resp.harness.max_tokens #=> Integer
    #   resp.harness.timeout_seconds #=> Integer
    #   resp.harness.failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetHarness AWS API Documentation
    #
    # @overload get_harness(params = {})
    # @param [Hash] params ({})
    def get_harness(params = {}, options = {})
      req = build_request(:get_harness, params)
      req.send_request(options)
    end

    # Operation to get a single harness endpoint.
    #
    # @option params [required, String] :harness_id
    #   The ID of the harness that the endpoint belongs to.
    #
    # @option params [required, String] :endpoint_name
    #   The name of the endpoint to retrieve.
    #
    # @return [Types::GetHarnessEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetHarnessEndpointResponse#endpoint #endpoint} => Types::HarnessEndpoint
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_harness_endpoint({
    #     harness_id: "HarnessId", # required
    #     endpoint_name: "HarnessEndpointName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint.harness_id #=> String
    #   resp.endpoint.harness_name #=> String
    #   resp.endpoint.endpoint_name #=> String
    #   resp.endpoint.arn #=> String
    #   resp.endpoint.status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"
    #   resp.endpoint.created_at #=> Time
    #   resp.endpoint.updated_at #=> Time
    #   resp.endpoint.live_version #=> String
    #   resp.endpoint.target_version #=> String
    #   resp.endpoint.description #=> String
    #   resp.endpoint.failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetHarnessEndpoint AWS API Documentation
    #
    # @overload get_harness_endpoint(params = {})
    # @param [Hash] params ({})
    def get_harness_endpoint(params = {}, options = {})
      req = build_request(:get_harness_endpoint, params)
      req.send_request(options)
    end

    # Retrieve an existing Amazon Bedrock AgentCore Memory resource.
    #
    # @option params [required, String] :memory_id
    #   The unique identifier of the memory to retrieve.
    #
    # @option params [String] :view
    #   The level of detail to return for the memory.
    #
    # @return [Types::GetMemoryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMemoryOutput#memory #memory} => Types::Memory
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_memory({
    #     memory_id: "MemoryId", # required
    #     view: "full", # accepts full, without_decryption
    #   })
    #
    # @example Response structure
    #
    #   resp.memory.arn #=> String
    #   resp.memory.id #=> String
    #   resp.memory.name #=> String
    #   resp.memory.description #=> String
    #   resp.memory.encryption_key_arn #=> String
    #   resp.memory.memory_execution_role_arn #=> String
    #   resp.memory.event_expiry_duration #=> Integer
    #   resp.memory.status #=> String, one of "CREATING", "ACTIVE", "FAILED", "DELETING", "UPDATING"
    #   resp.memory.failure_reason #=> String
    #   resp.memory.created_at #=> Time
    #   resp.memory.updated_at #=> Time
    #   resp.memory.strategies #=> Array
    #   resp.memory.strategies[0].strategy_id #=> String
    #   resp.memory.strategies[0].name #=> String
    #   resp.memory.strategies[0].description #=> String
    #   resp.memory.strategies[0].configuration.type #=> String, one of "SEMANTIC_OVERRIDE", "SUMMARY_OVERRIDE", "USER_PREFERENCE_OVERRIDE", "SELF_MANAGED", "EPISODIC_OVERRIDE"
    #   resp.memory.strategies[0].configuration.extraction.custom_extraction_configuration.semantic_extraction_override.append_to_prompt #=> String
    #   resp.memory.strategies[0].configuration.extraction.custom_extraction_configuration.semantic_extraction_override.model_id #=> String
    #   resp.memory.strategies[0].configuration.extraction.custom_extraction_configuration.user_preference_extraction_override.append_to_prompt #=> String
    #   resp.memory.strategies[0].configuration.extraction.custom_extraction_configuration.user_preference_extraction_override.model_id #=> String
    #   resp.memory.strategies[0].configuration.extraction.custom_extraction_configuration.episodic_extraction_override.append_to_prompt #=> String
    #   resp.memory.strategies[0].configuration.extraction.custom_extraction_configuration.episodic_extraction_override.model_id #=> String
    #   resp.memory.strategies[0].configuration.consolidation.custom_consolidation_configuration.semantic_consolidation_override.append_to_prompt #=> String
    #   resp.memory.strategies[0].configuration.consolidation.custom_consolidation_configuration.semantic_consolidation_override.model_id #=> String
    #   resp.memory.strategies[0].configuration.consolidation.custom_consolidation_configuration.summary_consolidation_override.append_to_prompt #=> String
    #   resp.memory.strategies[0].configuration.consolidation.custom_consolidation_configuration.summary_consolidation_override.model_id #=> String
    #   resp.memory.strategies[0].configuration.consolidation.custom_consolidation_configuration.user_preference_consolidation_override.append_to_prompt #=> String
    #   resp.memory.strategies[0].configuration.consolidation.custom_consolidation_configuration.user_preference_consolidation_override.model_id #=> String
    #   resp.memory.strategies[0].configuration.consolidation.custom_consolidation_configuration.episodic_consolidation_override.append_to_prompt #=> String
    #   resp.memory.strategies[0].configuration.consolidation.custom_consolidation_configuration.episodic_consolidation_override.model_id #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.append_to_prompt #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.model_id #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.namespaces #=> Array
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.namespaces[0] #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.namespace_templates #=> Array
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.namespace_templates[0] #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema #=> Array
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].key #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].type #=> String, one of "STRING", "STRINGLIST", "NUMBER"
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_type #=> String, one of "LLM_INFERRED", "STRICTLY_CONSISTENT"
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.llm_extraction_instruction #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.definition #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_validation.allowed_values #=> Array
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_validation.allowed_values[0] #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_list_validation.allowed_values #=> Array
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_list_validation.allowed_values[0] #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_list_validation.max_items #=> Integer
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.number_validation.min_value #=> Float
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.number_validation.max_value #=> Float
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.namespaces #=> Array
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.namespaces[0] #=> String
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.namespace_templates #=> Array
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.namespace_templates[0] #=> String
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema #=> Array
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].key #=> String
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].type #=> String, one of "STRING", "STRINGLIST", "NUMBER"
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_type #=> String, one of "LLM_INFERRED", "STRICTLY_CONSISTENT"
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.llm_extraction_instruction #=> String
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.definition #=> String
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_validation.allowed_values #=> Array
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_validation.allowed_values[0] #=> String
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_list_validation.allowed_values #=> Array
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_list_validation.allowed_values[0] #=> String
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_list_validation.max_items #=> Integer
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.number_validation.min_value #=> Float
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.number_validation.max_value #=> Float
    #   resp.memory.strategies[0].configuration.self_managed_configuration.trigger_conditions #=> Array
    #   resp.memory.strategies[0].configuration.self_managed_configuration.trigger_conditions[0].message_based_trigger.message_count #=> Integer
    #   resp.memory.strategies[0].configuration.self_managed_configuration.trigger_conditions[0].token_based_trigger.token_count #=> Integer
    #   resp.memory.strategies[0].configuration.self_managed_configuration.trigger_conditions[0].time_based_trigger.idle_session_timeout #=> Integer
    #   resp.memory.strategies[0].configuration.self_managed_configuration.invocation_configuration.topic_arn #=> String
    #   resp.memory.strategies[0].configuration.self_managed_configuration.invocation_configuration.payload_delivery_bucket_name #=> String
    #   resp.memory.strategies[0].configuration.self_managed_configuration.historical_context_window_size #=> Integer
    #   resp.memory.strategies[0].type #=> String, one of "SEMANTIC", "SUMMARIZATION", "USER_PREFERENCE", "CUSTOM", "EPISODIC"
    #   resp.memory.strategies[0].namespaces #=> Array
    #   resp.memory.strategies[0].namespaces[0] #=> String
    #   resp.memory.strategies[0].namespace_templates #=> Array
    #   resp.memory.strategies[0].namespace_templates[0] #=> String
    #   resp.memory.strategies[0].created_at #=> Time
    #   resp.memory.strategies[0].updated_at #=> Time
    #   resp.memory.strategies[0].status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema #=> Array
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].key #=> String
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].type #=> String, one of "STRING", "STRINGLIST", "NUMBER"
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_type #=> String, one of "LLM_INFERRED", "STRICTLY_CONSISTENT"
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.llm_extraction_instruction #=> String
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.definition #=> String
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_validation.allowed_values #=> Array
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_validation.allowed_values[0] #=> String
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_list_validation.allowed_values #=> Array
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_list_validation.allowed_values[0] #=> String
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_list_validation.max_items #=> Integer
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.number_validation.min_value #=> Float
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.number_validation.max_value #=> Float
    #   resp.memory.indexed_keys #=> Array
    #   resp.memory.indexed_keys[0].key #=> String
    #   resp.memory.indexed_keys[0].type #=> String, one of "STRING", "STRINGLIST", "NUMBER"
    #   resp.memory.namespace_keys #=> Array
    #   resp.memory.namespace_keys[0].key #=> String
    #   resp.memory.namespace_keys[0].validation.allowed_values #=> Array
    #   resp.memory.namespace_keys[0].validation.allowed_values[0] #=> String
    #   resp.memory.namespace_keys[0].validation.regex_pattern #=> String
    #   resp.memory.stream_delivery_resources.resources #=> Array
    #   resp.memory.stream_delivery_resources.resources[0].kinesis.data_stream_arn #=> String
    #   resp.memory.stream_delivery_resources.resources[0].kinesis.content_configurations #=> Array
    #   resp.memory.stream_delivery_resources.resources[0].kinesis.content_configurations[0].type #=> String, one of "MEMORY_RECORDS"
    #   resp.memory.stream_delivery_resources.resources[0].kinesis.content_configurations[0].level #=> String, one of "METADATA_ONLY", "FULL_CONTENT"
    #   resp.memory.managed_by_resource_arn #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * memory_created
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetMemory AWS API Documentation
    #
    # @overload get_memory(params = {})
    # @param [Hash] params ({})
    def get_memory(params = {}, options = {})
      req = build_request(:get_memory, params)
      req.send_request(options)
    end

    # Retrieves information about an OAuth2 credential provider.
    #
    # @option params [required, String] :name
    #   The name of the OAuth2 credential provider to retrieve.
    #
    # @return [Types::GetOauth2CredentialProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOauth2CredentialProviderResponse#client_secret_arn #client_secret_arn} => Types::Secret
    #   * {Types::GetOauth2CredentialProviderResponse#client_secret_json_key #client_secret_json_key} => String
    #   * {Types::GetOauth2CredentialProviderResponse#client_secret_source #client_secret_source} => String
    #   * {Types::GetOauth2CredentialProviderResponse#name #name} => String
    #   * {Types::GetOauth2CredentialProviderResponse#credential_provider_arn #credential_provider_arn} => String
    #   * {Types::GetOauth2CredentialProviderResponse#credential_provider_vendor #credential_provider_vendor} => String
    #   * {Types::GetOauth2CredentialProviderResponse#callback_url #callback_url} => String
    #   * {Types::GetOauth2CredentialProviderResponse#oauth2_provider_config_output #oauth2_provider_config_output} => Types::Oauth2ProviderConfigOutput
    #   * {Types::GetOauth2CredentialProviderResponse#created_time #created_time} => Time
    #   * {Types::GetOauth2CredentialProviderResponse#last_updated_time #last_updated_time} => Time
    #   * {Types::GetOauth2CredentialProviderResponse#status #status} => String
    #   * {Types::GetOauth2CredentialProviderResponse#failure_reason #failure_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_oauth_2_credential_provider({
    #     name: "CredentialProviderName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.client_secret_arn.secret_arn #=> String
    #   resp.client_secret_json_key #=> String
    #   resp.client_secret_source #=> String, one of "MANAGED", "EXTERNAL"
    #   resp.name #=> String
    #   resp.credential_provider_arn #=> String
    #   resp.credential_provider_vendor #=> String, one of "GoogleOauth2", "GithubOauth2", "SlackOauth2", "SalesforceOauth2", "MicrosoftOauth2", "CustomOauth2", "AtlassianOauth2", "LinkedinOauth2", "XOauth2", "OktaOauth2", "OneLoginOauth2", "PingOneOauth2", "FacebookOauth2", "YandexOauth2", "RedditOauth2", "ZoomOauth2", "TwitchOauth2", "SpotifyOauth2", "DropboxOauth2", "NotionOauth2", "HubspotOauth2", "CyberArkOauth2", "FusionAuthOauth2", "Auth0Oauth2", "CognitoOauth2"
    #   resp.callback_url #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.oauth_discovery.discovery_url #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.issuer #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.authorization_endpoint #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types #=> Array
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types[0] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods #=> Array
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods[0] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.client_id #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.on_behalf_of_token_exchange_config.grant_type #=> String, one of "TOKEN_EXCHANGE", "JWT_AUTHORIZATION_GRANT"
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.on_behalf_of_token_exchange_config.token_exchange_grant_type_config.actor_token_content #=> String, one of "NONE", "M2M", "AWS_IAM_ID_TOKEN_JWT"
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.on_behalf_of_token_exchange_config.token_exchange_grant_type_config.actor_token_scopes #=> Array
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.on_behalf_of_token_exchange_config.token_exchange_grant_type_config.actor_token_scopes[0] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.client_authentication_method #=> String, one of "CLIENT_SECRET_BASIC", "CLIENT_SECRET_POST", "AWS_IAM_ID_TOKEN_JWT", "PRIVATE_KEY_JWT"
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides #=> Array
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].domain #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_key_jwt_config.private_key_source.kms_key_source.kms_key_arn #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_key_jwt_config.signing_algorithm #=> String, one of "RS256", "PS256", "ES256"
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_key_jwt_config.additional_header_claims #=> Hash
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_key_jwt_config.additional_header_claims["AdditionalClaimName"] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_key_jwt_config.additional_payload_claims #=> Hash
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_key_jwt_config.additional_payload_claims["AdditionalClaimName"] #=> String
    #   resp.oauth2_provider_config_output.google_oauth_2_provider_config.oauth_discovery.discovery_url #=> String
    #   resp.oauth2_provider_config_output.google_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.issuer #=> String
    #   resp.oauth2_provider_config_output.google_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.authorization_endpoint #=> String
    #   resp.oauth2_provider_config_output.google_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint #=> String
    #   resp.oauth2_provider_config_output.google_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types #=> Array
    #   resp.oauth2_provider_config_output.google_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types[0] #=> String
    #   resp.oauth2_provider_config_output.google_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods #=> Array
    #   resp.oauth2_provider_config_output.google_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods[0] #=> String
    #   resp.oauth2_provider_config_output.google_oauth_2_provider_config.client_id #=> String
    #   resp.oauth2_provider_config_output.github_oauth_2_provider_config.oauth_discovery.discovery_url #=> String
    #   resp.oauth2_provider_config_output.github_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.issuer #=> String
    #   resp.oauth2_provider_config_output.github_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.authorization_endpoint #=> String
    #   resp.oauth2_provider_config_output.github_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint #=> String
    #   resp.oauth2_provider_config_output.github_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types #=> Array
    #   resp.oauth2_provider_config_output.github_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types[0] #=> String
    #   resp.oauth2_provider_config_output.github_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods #=> Array
    #   resp.oauth2_provider_config_output.github_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods[0] #=> String
    #   resp.oauth2_provider_config_output.github_oauth_2_provider_config.client_id #=> String
    #   resp.oauth2_provider_config_output.slack_oauth_2_provider_config.oauth_discovery.discovery_url #=> String
    #   resp.oauth2_provider_config_output.slack_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.issuer #=> String
    #   resp.oauth2_provider_config_output.slack_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.authorization_endpoint #=> String
    #   resp.oauth2_provider_config_output.slack_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint #=> String
    #   resp.oauth2_provider_config_output.slack_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types #=> Array
    #   resp.oauth2_provider_config_output.slack_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types[0] #=> String
    #   resp.oauth2_provider_config_output.slack_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods #=> Array
    #   resp.oauth2_provider_config_output.slack_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods[0] #=> String
    #   resp.oauth2_provider_config_output.slack_oauth_2_provider_config.client_id #=> String
    #   resp.oauth2_provider_config_output.salesforce_oauth_2_provider_config.oauth_discovery.discovery_url #=> String
    #   resp.oauth2_provider_config_output.salesforce_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.issuer #=> String
    #   resp.oauth2_provider_config_output.salesforce_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.authorization_endpoint #=> String
    #   resp.oauth2_provider_config_output.salesforce_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint #=> String
    #   resp.oauth2_provider_config_output.salesforce_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types #=> Array
    #   resp.oauth2_provider_config_output.salesforce_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types[0] #=> String
    #   resp.oauth2_provider_config_output.salesforce_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods #=> Array
    #   resp.oauth2_provider_config_output.salesforce_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods[0] #=> String
    #   resp.oauth2_provider_config_output.salesforce_oauth_2_provider_config.client_id #=> String
    #   resp.oauth2_provider_config_output.microsoft_oauth_2_provider_config.oauth_discovery.discovery_url #=> String
    #   resp.oauth2_provider_config_output.microsoft_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.issuer #=> String
    #   resp.oauth2_provider_config_output.microsoft_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.authorization_endpoint #=> String
    #   resp.oauth2_provider_config_output.microsoft_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint #=> String
    #   resp.oauth2_provider_config_output.microsoft_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types #=> Array
    #   resp.oauth2_provider_config_output.microsoft_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types[0] #=> String
    #   resp.oauth2_provider_config_output.microsoft_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods #=> Array
    #   resp.oauth2_provider_config_output.microsoft_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods[0] #=> String
    #   resp.oauth2_provider_config_output.microsoft_oauth_2_provider_config.client_id #=> String
    #   resp.oauth2_provider_config_output.atlassian_oauth_2_provider_config.oauth_discovery.discovery_url #=> String
    #   resp.oauth2_provider_config_output.atlassian_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.issuer #=> String
    #   resp.oauth2_provider_config_output.atlassian_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.authorization_endpoint #=> String
    #   resp.oauth2_provider_config_output.atlassian_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint #=> String
    #   resp.oauth2_provider_config_output.atlassian_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types #=> Array
    #   resp.oauth2_provider_config_output.atlassian_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types[0] #=> String
    #   resp.oauth2_provider_config_output.atlassian_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods #=> Array
    #   resp.oauth2_provider_config_output.atlassian_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods[0] #=> String
    #   resp.oauth2_provider_config_output.atlassian_oauth_2_provider_config.client_id #=> String
    #   resp.oauth2_provider_config_output.linkedin_oauth_2_provider_config.oauth_discovery.discovery_url #=> String
    #   resp.oauth2_provider_config_output.linkedin_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.issuer #=> String
    #   resp.oauth2_provider_config_output.linkedin_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.authorization_endpoint #=> String
    #   resp.oauth2_provider_config_output.linkedin_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint #=> String
    #   resp.oauth2_provider_config_output.linkedin_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types #=> Array
    #   resp.oauth2_provider_config_output.linkedin_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types[0] #=> String
    #   resp.oauth2_provider_config_output.linkedin_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods #=> Array
    #   resp.oauth2_provider_config_output.linkedin_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods[0] #=> String
    #   resp.oauth2_provider_config_output.linkedin_oauth_2_provider_config.client_id #=> String
    #   resp.oauth2_provider_config_output.included_oauth_2_provider_config.oauth_discovery.discovery_url #=> String
    #   resp.oauth2_provider_config_output.included_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.issuer #=> String
    #   resp.oauth2_provider_config_output.included_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.authorization_endpoint #=> String
    #   resp.oauth2_provider_config_output.included_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint #=> String
    #   resp.oauth2_provider_config_output.included_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types #=> Array
    #   resp.oauth2_provider_config_output.included_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types[0] #=> String
    #   resp.oauth2_provider_config_output.included_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods #=> Array
    #   resp.oauth2_provider_config_output.included_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods[0] #=> String
    #   resp.oauth2_provider_config_output.included_oauth_2_provider_config.client_id #=> String
    #   resp.created_time #=> Time
    #   resp.last_updated_time #=> Time
    #   resp.status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"
    #   resp.failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetOauth2CredentialProvider AWS API Documentation
    #
    # @overload get_oauth_2_credential_provider(params = {})
    # @param [Hash] params ({})
    def get_oauth_2_credential_provider(params = {}, options = {})
      req = build_request(:get_oauth_2_credential_provider, params)
      req.send_request(options)
    end

    # Retrieves detailed information about an online evaluation
    # configuration, including its rules, data sources, evaluators, and
    # execution status.
    #
    # @option params [required, String] :online_evaluation_config_id
    #   The unique identifier of the online evaluation configuration to
    #   retrieve.
    #
    # @return [Types::GetOnlineEvaluationConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOnlineEvaluationConfigResponse#online_evaluation_config_arn #online_evaluation_config_arn} => String
    #   * {Types::GetOnlineEvaluationConfigResponse#online_evaluation_config_id #online_evaluation_config_id} => String
    #   * {Types::GetOnlineEvaluationConfigResponse#online_evaluation_config_name #online_evaluation_config_name} => String
    #   * {Types::GetOnlineEvaluationConfigResponse#description #description} => String
    #   * {Types::GetOnlineEvaluationConfigResponse#rule #rule} => Types::Rule
    #   * {Types::GetOnlineEvaluationConfigResponse#data_source_config #data_source_config} => Types::DataSourceConfig
    #   * {Types::GetOnlineEvaluationConfigResponse#evaluators #evaluators} => Array&lt;Types::EvaluatorReference&gt;
    #   * {Types::GetOnlineEvaluationConfigResponse#insights #insights} => Array&lt;Types::Insight&gt;
    #   * {Types::GetOnlineEvaluationConfigResponse#clustering_config #clustering_config} => Types::ClusteringConfig
    #   * {Types::GetOnlineEvaluationConfigResponse#output_config #output_config} => Types::OutputConfig
    #   * {Types::GetOnlineEvaluationConfigResponse#evaluation_execution_role_arn #evaluation_execution_role_arn} => String
    #   * {Types::GetOnlineEvaluationConfigResponse#status #status} => String
    #   * {Types::GetOnlineEvaluationConfigResponse#execution_status #execution_status} => String
    #   * {Types::GetOnlineEvaluationConfigResponse#created_at #created_at} => Time
    #   * {Types::GetOnlineEvaluationConfigResponse#updated_at #updated_at} => Time
    #   * {Types::GetOnlineEvaluationConfigResponse#failure_reason #failure_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_online_evaluation_config({
    #     online_evaluation_config_id: "OnlineEvaluationConfigId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.online_evaluation_config_arn #=> String
    #   resp.online_evaluation_config_id #=> String
    #   resp.online_evaluation_config_name #=> String
    #   resp.description #=> String
    #   resp.rule.sampling_config.sampling_percentage #=> Float
    #   resp.rule.filters #=> Array
    #   resp.rule.filters[0].key #=> String
    #   resp.rule.filters[0].operator #=> String, one of "Equals", "NotEquals", "GreaterThan", "LessThan", "GreaterThanOrEqual", "LessThanOrEqual", "Contains", "NotContains"
    #   resp.rule.filters[0].value.string_value #=> String
    #   resp.rule.filters[0].value.double_value #=> Float
    #   resp.rule.filters[0].value.boolean_value #=> Boolean
    #   resp.rule.session_config.session_timeout_minutes #=> Integer
    #   resp.data_source_config.cloud_watch_logs.log_group_names #=> Array
    #   resp.data_source_config.cloud_watch_logs.log_group_names[0] #=> String
    #   resp.data_source_config.cloud_watch_logs.service_names #=> Array
    #   resp.data_source_config.cloud_watch_logs.service_names[0] #=> String
    #   resp.evaluators #=> Array
    #   resp.evaluators[0].evaluator_id #=> String
    #   resp.insights #=> Array
    #   resp.insights[0].insight_id #=> String
    #   resp.clustering_config.frequencies #=> Array
    #   resp.clustering_config.frequencies[0] #=> String, one of "DAILY", "WEEKLY", "MONTHLY"
    #   resp.output_config.cloud_watch_config.log_group_name #=> String
    #   resp.evaluation_execution_role_arn #=> String
    #   resp.status #=> String, one of "ACTIVE", "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "ERROR"
    #   resp.execution_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetOnlineEvaluationConfig AWS API Documentation
    #
    # @overload get_online_evaluation_config(params = {})
    # @param [Hash] params ({})
    def get_online_evaluation_config(params = {}, options = {})
      req = build_request(:get_online_evaluation_config, params)
      req.send_request(options)
    end

    # Retrieves information about a specific payment connector.
    #
    # @option params [required, String] :payment_manager_id
    #   The unique identifier of the parent payment manager.
    #
    # @option params [required, String] :payment_connector_id
    #   The unique identifier of the payment connector to retrieve.
    #
    # @return [Types::GetPaymentConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPaymentConnectorResponse#payment_connector_id #payment_connector_id} => String
    #   * {Types::GetPaymentConnectorResponse#name #name} => String
    #   * {Types::GetPaymentConnectorResponse#description #description} => String
    #   * {Types::GetPaymentConnectorResponse#type #type} => String
    #   * {Types::GetPaymentConnectorResponse#credential_provider_configurations #credential_provider_configurations} => Array&lt;Types::CredentialsProviderConfiguration&gt;
    #   * {Types::GetPaymentConnectorResponse#created_at #created_at} => Time
    #   * {Types::GetPaymentConnectorResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetPaymentConnectorResponse#status #status} => String
    #   * {Types::GetPaymentConnectorResponse#authorization_url #authorization_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_payment_connector({
    #     payment_manager_id: "PaymentManagerId", # required
    #     payment_connector_id: "PaymentConnectorId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.payment_connector_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.type #=> String, one of "CoinbaseCDP", "StripePrivy"
    #   resp.credential_provider_configurations #=> Array
    #   resp.credential_provider_configurations[0].coinbase_cdp.credential_provider_arn #=> String
    #   resp.credential_provider_configurations[0].stripe_privy.credential_provider_arn #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "READY", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED", "AWS_MARKETPLACE_SUBSCRIPTION_REQUIRED", "PENDING_AUTHENTICATION", "PROVISIONING", "AUTHENTICATION_EXPIRED", "AUTHENTICATION_FAILED"
    #   resp.authorization_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetPaymentConnector AWS API Documentation
    #
    # @overload get_payment_connector(params = {})
    # @param [Hash] params ({})
    def get_payment_connector(params = {}, options = {})
      req = build_request(:get_payment_connector, params)
      req.send_request(options)
    end

    # Retrieves information about a specific payment credential provider.
    #
    # @option params [required, String] :name
    #   The name of the payment credential provider to retrieve.
    #
    # @return [Types::GetPaymentCredentialProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPaymentCredentialProviderResponse#name #name} => String
    #   * {Types::GetPaymentCredentialProviderResponse#credential_provider_arn #credential_provider_arn} => String
    #   * {Types::GetPaymentCredentialProviderResponse#credential_provider_vendor #credential_provider_vendor} => String
    #   * {Types::GetPaymentCredentialProviderResponse#provider_configuration_output #provider_configuration_output} => Types::PaymentProviderConfigurationOutput
    #   * {Types::GetPaymentCredentialProviderResponse#created_time #created_time} => Time
    #   * {Types::GetPaymentCredentialProviderResponse#last_updated_time #last_updated_time} => Time
    #   * {Types::GetPaymentCredentialProviderResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_payment_credential_provider({
    #     name: "CredentialProviderName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.credential_provider_arn #=> String
    #   resp.credential_provider_vendor #=> String, one of "CoinbaseCDP", "StripePrivy"
    #   resp.provider_configuration_output.coinbase_cdp_configuration.api_key_id #=> String
    #   resp.provider_configuration_output.coinbase_cdp_configuration.api_key_secret_arn.secret_arn #=> String
    #   resp.provider_configuration_output.coinbase_cdp_configuration.api_key_secret_json_key #=> String
    #   resp.provider_configuration_output.coinbase_cdp_configuration.api_key_secret_source #=> String, one of "MANAGED", "EXTERNAL"
    #   resp.provider_configuration_output.coinbase_cdp_configuration.wallet_secret_arn.secret_arn #=> String
    #   resp.provider_configuration_output.coinbase_cdp_configuration.wallet_secret_json_key #=> String
    #   resp.provider_configuration_output.coinbase_cdp_configuration.wallet_secret_source #=> String, one of "MANAGED", "EXTERNAL"
    #   resp.provider_configuration_output.stripe_privy_configuration.app_id #=> String
    #   resp.provider_configuration_output.stripe_privy_configuration.app_secret_arn.secret_arn #=> String
    #   resp.provider_configuration_output.stripe_privy_configuration.app_secret_json_key #=> String
    #   resp.provider_configuration_output.stripe_privy_configuration.app_secret_source #=> String, one of "MANAGED", "EXTERNAL"
    #   resp.provider_configuration_output.stripe_privy_configuration.authorization_private_key_arn.secret_arn #=> String
    #   resp.provider_configuration_output.stripe_privy_configuration.authorization_private_key_json_key #=> String
    #   resp.provider_configuration_output.stripe_privy_configuration.authorization_private_key_source #=> String, one of "MANAGED", "EXTERNAL"
    #   resp.provider_configuration_output.stripe_privy_configuration.authorization_id #=> String
    #   resp.created_time #=> Time
    #   resp.last_updated_time #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetPaymentCredentialProvider AWS API Documentation
    #
    # @overload get_payment_credential_provider(params = {})
    # @param [Hash] params ({})
    def get_payment_credential_provider(params = {}, options = {})
      req = build_request(:get_payment_credential_provider, params)
      req.send_request(options)
    end

    # Retrieves information about a specific payment manager.
    #
    # @option params [required, String] :payment_manager_id
    #   The unique identifier of the payment manager to retrieve.
    #
    # @return [Types::GetPaymentManagerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPaymentManagerResponse#payment_manager_arn #payment_manager_arn} => String
    #   * {Types::GetPaymentManagerResponse#payment_manager_id #payment_manager_id} => String
    #   * {Types::GetPaymentManagerResponse#name #name} => String
    #   * {Types::GetPaymentManagerResponse#description #description} => String
    #   * {Types::GetPaymentManagerResponse#authorizer_type #authorizer_type} => String
    #   * {Types::GetPaymentManagerResponse#authorizer_configuration #authorizer_configuration} => Types::AuthorizerConfiguration
    #   * {Types::GetPaymentManagerResponse#role_arn #role_arn} => String
    #   * {Types::GetPaymentManagerResponse#workload_identity_details #workload_identity_details} => Types::WorkloadIdentityDetails
    #   * {Types::GetPaymentManagerResponse#created_at #created_at} => Time
    #   * {Types::GetPaymentManagerResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetPaymentManagerResponse#status #status} => String
    #   * {Types::GetPaymentManagerResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetPaymentManagerResponse#kms_key_arn #kms_key_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_payment_manager({
    #     payment_manager_id: "PaymentManagerId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.payment_manager_arn #=> String
    #   resp.payment_manager_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.authorizer_type #=> String, one of "CUSTOM_JWT", "AWS_IAM"
    #   resp.authorizer_configuration.custom_jwt_authorizer.discovery_url #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_audience #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_audience[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_clients #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_clients[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_scopes #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_scopes[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.advertised_scope_mapping #=> Hash
    #   resp.authorizer_configuration.custom_jwt_authorizer.advertised_scope_mapping["AllowedScopeType"] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_name #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_value_type #=> String, one of "STRING", "STRING_ARRAY"
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_operator #=> String, one of "EQUALS", "CONTAINS", "CONTAINS_ANY"
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].domain #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.hosting_environments #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.hosting_environments[0].arn #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.workload_identities #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.workload_identities[0] #=> String
    #   resp.role_arn #=> String
    #   resp.workload_identity_details.workload_identity_arn #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "READY", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetPaymentManager AWS API Documentation
    #
    # @overload get_payment_manager(params = {})
    # @param [Hash] params ({})
    def get_payment_manager(params = {}, options = {})
      req = build_request(:get_payment_manager, params)
      req.send_request(options)
    end

    # Retrieves detailed information about a specific policy within the
    # AgentCore Policy system. This operation returns the complete policy
    # definition, metadata, and current status, allowing administrators to
    # review and manage policy configurations.
    #
    # @option params [required, String] :policy_engine_id
    #   The identifier of the policy engine that manages the policy to be
    #   retrieved.
    #
    # @option params [required, String] :policy_id
    #   The unique identifier of the policy to be retrieved. This must be a
    #   valid policy ID that exists within the specified policy engine.
    #
    # @return [Types::GetPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPolicyResponse#policy_id #policy_id} => String
    #   * {Types::GetPolicyResponse#name #name} => String
    #   * {Types::GetPolicyResponse#policy_engine_id #policy_engine_id} => String
    #   * {Types::GetPolicyResponse#created_at #created_at} => Time
    #   * {Types::GetPolicyResponse#updated_at #updated_at} => Time
    #   * {Types::GetPolicyResponse#policy_arn #policy_arn} => String
    #   * {Types::GetPolicyResponse#status #status} => String
    #   * {Types::GetPolicyResponse#enforcement_mode #enforcement_mode} => String
    #   * {Types::GetPolicyResponse#definition #definition} => Types::PolicyDefinition
    #   * {Types::GetPolicyResponse#description #description} => String
    #   * {Types::GetPolicyResponse#status_reasons #status_reasons} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy({
    #     policy_engine_id: "ResourceId", # required
    #     policy_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_id #=> String
    #   resp.name #=> String
    #   resp.policy_engine_id #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.policy_arn #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
    #   resp.enforcement_mode #=> String, one of "ACTIVE", "LOG_ONLY"
    #   resp.definition.cedar.statement #=> String
    #   resp.definition.policy_generation.policy_generation_id #=> String
    #   resp.definition.policy_generation.policy_generation_asset_id #=> String
    #   resp.definition.policy.statement #=> String
    #   resp.description #=> String
    #   resp.status_reasons #=> Array
    #   resp.status_reasons[0] #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * policy_active
    #   * policy_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetPolicy AWS API Documentation
    #
    # @overload get_policy(params = {})
    # @param [Hash] params ({})
    def get_policy(params = {}, options = {})
      req = build_request(:get_policy, params)
      req.send_request(options)
    end

    # Retrieves detailed information about a specific policy engine within
    # the AgentCore Policy system. This operation returns the complete
    # policy engine configuration, metadata, and current status, allowing
    # administrators to review and manage policy engine settings.
    #
    # @option params [required, String] :policy_engine_id
    #   The unique identifier of the policy engine to be retrieved. This must
    #   be a valid policy engine ID that exists within the account.
    #
    # @return [Types::GetPolicyEngineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPolicyEngineResponse#policy_engine_id #policy_engine_id} => String
    #   * {Types::GetPolicyEngineResponse#name #name} => String
    #   * {Types::GetPolicyEngineResponse#created_at #created_at} => Time
    #   * {Types::GetPolicyEngineResponse#updated_at #updated_at} => Time
    #   * {Types::GetPolicyEngineResponse#policy_engine_arn #policy_engine_arn} => String
    #   * {Types::GetPolicyEngineResponse#status #status} => String
    #   * {Types::GetPolicyEngineResponse#encryption_key_arn #encryption_key_arn} => String
    #   * {Types::GetPolicyEngineResponse#description #description} => String
    #   * {Types::GetPolicyEngineResponse#status_reasons #status_reasons} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy_engine({
    #     policy_engine_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_engine_id #=> String
    #   resp.name #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.policy_engine_arn #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
    #   resp.encryption_key_arn #=> String
    #   resp.description #=> String
    #   resp.status_reasons #=> Array
    #   resp.status_reasons[0] #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * policy_engine_active
    #   * policy_engine_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetPolicyEngine AWS API Documentation
    #
    # @overload get_policy_engine(params = {})
    # @param [Hash] params ({})
    def get_policy_engine(params = {}, options = {})
      req = build_request(:get_policy_engine, params)
      req.send_request(options)
    end

    # Retrieves a metadata-only summary of a specific policy engine without
    # decrypting customer content. This lightweight read operation returns
    # resource identifiers, status, timestamps, and the encryption key ARN,
    # but does not include the description or status reasons. Because this
    # operation does not require access to the customer's KMS key, it is
    # suitable for resource discovery, inventory, and integration scenarios
    # where only metadata is needed.
    #
    # @option params [required, String] :policy_engine_id
    #   The unique identifier of the policy engine to retrieve the summary
    #   for. This must be a valid policy engine ID that exists within the
    #   account.
    #
    # @return [Types::GetPolicyEngineSummaryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPolicyEngineSummaryResponse#policy_engine_id #policy_engine_id} => String
    #   * {Types::GetPolicyEngineSummaryResponse#name #name} => String
    #   * {Types::GetPolicyEngineSummaryResponse#created_at #created_at} => Time
    #   * {Types::GetPolicyEngineSummaryResponse#updated_at #updated_at} => Time
    #   * {Types::GetPolicyEngineSummaryResponse#policy_engine_arn #policy_engine_arn} => String
    #   * {Types::GetPolicyEngineSummaryResponse#status #status} => String
    #   * {Types::GetPolicyEngineSummaryResponse#encryption_key_arn #encryption_key_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy_engine_summary({
    #     policy_engine_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_engine_id #=> String
    #   resp.name #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.policy_engine_arn #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
    #   resp.encryption_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetPolicyEngineSummary AWS API Documentation
    #
    # @overload get_policy_engine_summary(params = {})
    # @param [Hash] params ({})
    def get_policy_engine_summary(params = {}, options = {})
      req = build_request(:get_policy_engine_summary, params)
      req.send_request(options)
    end

    # Retrieves information about a policy generation request within the
    # AgentCore Policy system. Policy generation converts natural language
    # descriptions into Cedar policy statements using AI-powered
    # translation, enabling non-technical users to create policies.
    #
    # @option params [required, String] :policy_generation_id
    #   The unique identifier of the policy generation request to be
    #   retrieved. This must be a valid generation ID from a previous
    #   [StartPolicyGeneration][1] call.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_StartPolicyGeneration.html
    #
    # @option params [required, String] :policy_engine_id
    #   The identifier of the policy engine associated with the policy
    #   generation request. This provides the context for the generation
    #   operation and schema validation.
    #
    # @return [Types::GetPolicyGenerationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPolicyGenerationResponse#policy_engine_id #policy_engine_id} => String
    #   * {Types::GetPolicyGenerationResponse#policy_generation_id #policy_generation_id} => String
    #   * {Types::GetPolicyGenerationResponse#name #name} => String
    #   * {Types::GetPolicyGenerationResponse#policy_generation_arn #policy_generation_arn} => String
    #   * {Types::GetPolicyGenerationResponse#resource #resource} => Types::Resource
    #   * {Types::GetPolicyGenerationResponse#created_at #created_at} => Time
    #   * {Types::GetPolicyGenerationResponse#updated_at #updated_at} => Time
    #   * {Types::GetPolicyGenerationResponse#status #status} => String
    #   * {Types::GetPolicyGenerationResponse#findings #findings} => String
    #   * {Types::GetPolicyGenerationResponse#status_reasons #status_reasons} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy_generation({
    #     policy_generation_id: "ResourceId", # required
    #     policy_engine_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_engine_id #=> String
    #   resp.policy_generation_id #=> String
    #   resp.name #=> String
    #   resp.policy_generation_arn #=> String
    #   resp.resource.arn #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "GENERATING", "GENERATED", "GENERATE_FAILED", "DELETE_FAILED"
    #   resp.findings #=> String
    #   resp.status_reasons #=> Array
    #   resp.status_reasons[0] #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * policy_generation_completed
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetPolicyGeneration AWS API Documentation
    #
    # @overload get_policy_generation(params = {})
    # @param [Hash] params ({})
    def get_policy_generation(params = {}, options = {})
      req = build_request(:get_policy_generation, params)
      req.send_request(options)
    end

    # Retrieves a metadata-only summary of a specific policy generation
    # request without decrypting customer content. This lightweight read
    # operation returns resource identifiers, status, timestamps, and
    # findings, but does not include status reasons. Because this operation
    # does not require access to the customer's KMS key, it is suitable for
    # resource discovery, inventory, and integration scenarios where only
    # metadata is needed.
    #
    # @option params [required, String] :policy_generation_id
    #   The unique identifier of the policy generation request to retrieve the
    #   summary for.
    #
    # @option params [required, String] :policy_engine_id
    #   The identifier of the policy engine associated with the policy
    #   generation request.
    #
    # @return [Types::GetPolicyGenerationSummaryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPolicyGenerationSummaryResponse#policy_engine_id #policy_engine_id} => String
    #   * {Types::GetPolicyGenerationSummaryResponse#policy_generation_id #policy_generation_id} => String
    #   * {Types::GetPolicyGenerationSummaryResponse#name #name} => String
    #   * {Types::GetPolicyGenerationSummaryResponse#policy_generation_arn #policy_generation_arn} => String
    #   * {Types::GetPolicyGenerationSummaryResponse#resource #resource} => Types::Resource
    #   * {Types::GetPolicyGenerationSummaryResponse#created_at #created_at} => Time
    #   * {Types::GetPolicyGenerationSummaryResponse#updated_at #updated_at} => Time
    #   * {Types::GetPolicyGenerationSummaryResponse#status #status} => String
    #   * {Types::GetPolicyGenerationSummaryResponse#findings #findings} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy_generation_summary({
    #     policy_generation_id: "ResourceId", # required
    #     policy_engine_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_engine_id #=> String
    #   resp.policy_generation_id #=> String
    #   resp.name #=> String
    #   resp.policy_generation_arn #=> String
    #   resp.resource.arn #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "GENERATING", "GENERATED", "GENERATE_FAILED", "DELETE_FAILED"
    #   resp.findings #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetPolicyGenerationSummary AWS API Documentation
    #
    # @overload get_policy_generation_summary(params = {})
    # @param [Hash] params ({})
    def get_policy_generation_summary(params = {}, options = {})
      req = build_request(:get_policy_generation_summary, params)
      req.send_request(options)
    end

    # Retrieves a metadata-only summary of a specific policy without
    # decrypting customer content. This lightweight read operation returns
    # resource identifiers, status, and timestamps, but does not include the
    # policy definition, description, or status reasons. Because this
    # operation does not require access to the customer's KMS key, it is
    # suitable for resource discovery, inventory, and integration scenarios
    # where only metadata is needed.
    #
    # @option params [required, String] :policy_engine_id
    #   The identifier of the policy engine that manages the policy to
    #   retrieve the summary for.
    #
    # @option params [required, String] :policy_id
    #   The unique identifier of the policy to retrieve the summary for. This
    #   must be a valid policy ID that exists within the specified policy
    #   engine.
    #
    # @return [Types::GetPolicySummaryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPolicySummaryResponse#policy_id #policy_id} => String
    #   * {Types::GetPolicySummaryResponse#name #name} => String
    #   * {Types::GetPolicySummaryResponse#policy_engine_id #policy_engine_id} => String
    #   * {Types::GetPolicySummaryResponse#created_at #created_at} => Time
    #   * {Types::GetPolicySummaryResponse#updated_at #updated_at} => Time
    #   * {Types::GetPolicySummaryResponse#policy_arn #policy_arn} => String
    #   * {Types::GetPolicySummaryResponse#status #status} => String
    #   * {Types::GetPolicySummaryResponse#enforcement_mode #enforcement_mode} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy_summary({
    #     policy_engine_id: "ResourceId", # required
    #     policy_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_id #=> String
    #   resp.name #=> String
    #   resp.policy_engine_id #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.policy_arn #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
    #   resp.enforcement_mode #=> String, one of "ACTIVE", "LOG_ONLY"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetPolicySummary AWS API Documentation
    #
    # @overload get_policy_summary(params = {})
    # @param [Hash] params ({})
    def get_policy_summary(params = {}, options = {})
      req = build_request(:get_policy_summary, params)
      req.send_request(options)
    end

    # Retrieves information about a specific registry.
    #
    # @option params [required, String] :registry_id
    #   The identifier of the registry to retrieve. You can specify either the
    #   Amazon Resource Name (ARN) or the ID of the registry.
    #
    # @return [Types::GetRegistryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRegistryResponse#name #name} => String
    #   * {Types::GetRegistryResponse#description #description} => String
    #   * {Types::GetRegistryResponse#registry_id #registry_id} => String
    #   * {Types::GetRegistryResponse#registry_arn #registry_arn} => String
    #   * {Types::GetRegistryResponse#authorizer_type #authorizer_type} => String
    #   * {Types::GetRegistryResponse#authorizer_configuration #authorizer_configuration} => Types::AuthorizerConfiguration
    #   * {Types::GetRegistryResponse#approval_configuration #approval_configuration} => Types::ApprovalConfiguration
    #   * {Types::GetRegistryResponse#status #status} => String
    #   * {Types::GetRegistryResponse#status_reason #status_reason} => String
    #   * {Types::GetRegistryResponse#created_at #created_at} => Time
    #   * {Types::GetRegistryResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_registry({
    #     registry_id: "RegistryIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.registry_id #=> String
    #   resp.registry_arn #=> String
    #   resp.authorizer_type #=> String, one of "CUSTOM_JWT", "AWS_IAM"
    #   resp.authorizer_configuration.custom_jwt_authorizer.discovery_url #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_audience #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_audience[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_clients #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_clients[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_scopes #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_scopes[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.advertised_scope_mapping #=> Hash
    #   resp.authorizer_configuration.custom_jwt_authorizer.advertised_scope_mapping["AllowedScopeType"] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_name #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_value_type #=> String, one of "STRING", "STRING_ARRAY"
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_operator #=> String, one of "EQUALS", "CONTAINS", "CONTAINS_ANY"
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].domain #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.hosting_environments #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.hosting_environments[0].arn #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.workload_identities #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.workload_identities[0] #=> String
    #   resp.approval_configuration.auto_approval #=> Boolean
    #   resp.status #=> String, one of "CREATING", "READY", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"
    #   resp.status_reason #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetRegistry AWS API Documentation
    #
    # @overload get_registry(params = {})
    # @param [Hash] params ({})
    def get_registry(params = {}, options = {})
      req = build_request(:get_registry, params)
      req.send_request(options)
    end

    # Retrieves information about a specific registry record.
    #
    # @option params [required, String] :registry_id
    #   The identifier of the registry containing the record. You can specify
    #   either the Amazon Resource Name (ARN) or the ID of the registry.
    #
    # @option params [required, String] :record_id
    #   The identifier of the registry record to retrieve. You can specify
    #   either the Amazon Resource Name (ARN) or the ID of the record.
    #
    # @return [Types::GetRegistryRecordResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRegistryRecordResponse#registry_arn #registry_arn} => String
    #   * {Types::GetRegistryRecordResponse#record_arn #record_arn} => String
    #   * {Types::GetRegistryRecordResponse#record_id #record_id} => String
    #   * {Types::GetRegistryRecordResponse#name #name} => String
    #   * {Types::GetRegistryRecordResponse#description #description} => String
    #   * {Types::GetRegistryRecordResponse#descriptor_type #descriptor_type} => String
    #   * {Types::GetRegistryRecordResponse#descriptors #descriptors} => Types::Descriptors
    #   * {Types::GetRegistryRecordResponse#record_version #record_version} => String
    #   * {Types::GetRegistryRecordResponse#status #status} => String
    #   * {Types::GetRegistryRecordResponse#created_at #created_at} => Time
    #   * {Types::GetRegistryRecordResponse#updated_at #updated_at} => Time
    #   * {Types::GetRegistryRecordResponse#status_reason #status_reason} => String
    #   * {Types::GetRegistryRecordResponse#synchronization_type #synchronization_type} => String
    #   * {Types::GetRegistryRecordResponse#synchronization_configuration #synchronization_configuration} => Types::SynchronizationConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_registry_record({
    #     registry_id: "RegistryIdentifier", # required
    #     record_id: "RecordIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_arn #=> String
    #   resp.record_arn #=> String
    #   resp.record_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.descriptor_type #=> String, one of "MCP", "A2A", "CUSTOM", "AGENT_SKILLS"
    #   resp.descriptors.mcp.server.schema_version #=> String
    #   resp.descriptors.mcp.server.inline_content #=> String
    #   resp.descriptors.mcp.tools.protocol_version #=> String
    #   resp.descriptors.mcp.tools.inline_content #=> String
    #   resp.descriptors.a2a.agent_card.schema_version #=> String
    #   resp.descriptors.a2a.agent_card.inline_content #=> String
    #   resp.descriptors.custom.inline_content #=> String
    #   resp.descriptors.agent_skills.skill_md.inline_content #=> String
    #   resp.descriptors.agent_skills.skill_definition.schema_version #=> String
    #   resp.descriptors.agent_skills.skill_definition.inline_content #=> String
    #   resp.record_version #=> String
    #   resp.status #=> String, one of "DRAFT", "PENDING_APPROVAL", "APPROVED", "REJECTED", "DEPRECATED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status_reason #=> String
    #   resp.synchronization_type #=> String, one of "URL"
    #   resp.synchronization_configuration.from_url.url #=> String
    #   resp.synchronization_configuration.from_url.credential_provider_configurations #=> Array
    #   resp.synchronization_configuration.from_url.credential_provider_configurations[0].credential_provider_type #=> String, one of "OAUTH", "IAM"
    #   resp.synchronization_configuration.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.provider_arn #=> String
    #   resp.synchronization_configuration.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.grant_type #=> String, one of "CLIENT_CREDENTIALS"
    #   resp.synchronization_configuration.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes #=> Array
    #   resp.synchronization_configuration.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes[0] #=> String
    #   resp.synchronization_configuration.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters #=> Hash
    #   resp.synchronization_configuration.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters["String"] #=> String
    #   resp.synchronization_configuration.from_url.credential_provider_configurations[0].credential_provider.iam_credential_provider.role_arn #=> String
    #   resp.synchronization_configuration.from_url.credential_provider_configurations[0].credential_provider.iam_credential_provider.service #=> String
    #   resp.synchronization_configuration.from_url.credential_provider_configurations[0].credential_provider.iam_credential_provider.region #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetRegistryRecord AWS API Documentation
    #
    # @overload get_registry_record(params = {})
    # @param [Hash] params ({})
    def get_registry_record(params = {}, options = {})
      req = build_request(:get_registry_record, params)
      req.send_request(options)
    end

    # Retrieves the resource-based policy for a specified resource.
    #
    # <note markdown="1"> This feature is currently available only for AgentCore Runtime and
    # Gateway.
    #
    #  </note>
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which to retrieve
    #   the resource policy.
    #
    # @return [Types::GetResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePolicyResponse#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policy({
    #     resource_arn: "BedrockAgentcoreResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetResourcePolicy AWS API Documentation
    #
    # @overload get_resource_policy(params = {})
    # @param [Hash] params ({})
    def get_resource_policy(params = {}, options = {})
      req = build_request(:get_resource_policy, params)
      req.send_request(options)
    end

    # Retrieves information about a token vault.
    #
    # @option params [String] :token_vault_id
    #   The unique identifier of the token vault to retrieve.
    #
    # @return [Types::GetTokenVaultResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTokenVaultResponse#token_vault_id #token_vault_id} => String
    #   * {Types::GetTokenVaultResponse#kms_configuration #kms_configuration} => Types::KmsConfiguration
    #   * {Types::GetTokenVaultResponse#last_modified_date #last_modified_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_token_vault({
    #     token_vault_id: "TokenVaultIdType",
    #   })
    #
    # @example Response structure
    #
    #   resp.token_vault_id #=> String
    #   resp.kms_configuration.key_type #=> String, one of "CustomerManagedKey", "ServiceManagedKey"
    #   resp.kms_configuration.kms_key_arn #=> String
    #   resp.last_modified_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetTokenVault AWS API Documentation
    #
    # @overload get_token_vault(params = {})
    # @param [Hash] params ({})
    def get_token_vault(params = {}, options = {})
      req = build_request(:get_token_vault, params)
      req.send_request(options)
    end

    # Retrieves information about a workload identity.
    #
    # @option params [required, String] :name
    #   The name of the workload identity to retrieve.
    #
    # @return [Types::GetWorkloadIdentityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkloadIdentityResponse#name #name} => String
    #   * {Types::GetWorkloadIdentityResponse#workload_identity_arn #workload_identity_arn} => String
    #   * {Types::GetWorkloadIdentityResponse#allowed_resource_oauth_2_return_urls #allowed_resource_oauth_2_return_urls} => Array&lt;String&gt;
    #   * {Types::GetWorkloadIdentityResponse#created_time #created_time} => Time
    #   * {Types::GetWorkloadIdentityResponse#last_updated_time #last_updated_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workload_identity({
    #     name: "WorkloadIdentityNameType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.workload_identity_arn #=> String
    #   resp.allowed_resource_oauth_2_return_urls #=> Array
    #   resp.allowed_resource_oauth_2_return_urls[0] #=> String
    #   resp.created_time #=> Time
    #   resp.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetWorkloadIdentity AWS API Documentation
    #
    # @overload get_workload_identity(params = {})
    # @param [Hash] params ({})
    def get_workload_identity(params = {}, options = {})
      req = build_request(:get_workload_identity, params)
      req.send_request(options)
    end

    # Lists all endpoints for a specific Amazon Secure Agent.
    #
    # @option params [required, String] :agent_runtime_id
    #   The unique identifier of the AgentCore Runtime to list endpoints for.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next page of results.
    #
    # @return [Types::ListAgentRuntimeEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAgentRuntimeEndpointsResponse#runtime_endpoints #runtime_endpoints} => Array&lt;Types::AgentRuntimeEndpoint&gt;
    #   * {Types::ListAgentRuntimeEndpointsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_agent_runtime_endpoints({
    #     agent_runtime_id: "AgentRuntimeId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.runtime_endpoints #=> Array
    #   resp.runtime_endpoints[0].name #=> String
    #   resp.runtime_endpoints[0].live_version #=> String
    #   resp.runtime_endpoints[0].target_version #=> String
    #   resp.runtime_endpoints[0].agent_runtime_endpoint_arn #=> String
    #   resp.runtime_endpoints[0].agent_runtime_arn #=> String
    #   resp.runtime_endpoints[0].status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING"
    #   resp.runtime_endpoints[0].id #=> String
    #   resp.runtime_endpoints[0].description #=> String
    #   resp.runtime_endpoints[0].created_at #=> Time
    #   resp.runtime_endpoints[0].last_updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListAgentRuntimeEndpoints AWS API Documentation
    #
    # @overload list_agent_runtime_endpoints(params = {})
    # @param [Hash] params ({})
    def list_agent_runtime_endpoints(params = {}, options = {})
      req = build_request(:list_agent_runtime_endpoints, params)
      req.send_request(options)
    end

    # Lists all versions of a specific Amazon Secure Agent.
    #
    # @option params [required, String] :agent_runtime_id
    #   The unique identifier of the AgentCore Runtime to list versions for.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next page of results.
    #
    # @return [Types::ListAgentRuntimeVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAgentRuntimeVersionsResponse#agent_runtimes #agent_runtimes} => Array&lt;Types::AgentRuntime&gt;
    #   * {Types::ListAgentRuntimeVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_agent_runtime_versions({
    #     agent_runtime_id: "AgentRuntimeId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_runtimes #=> Array
    #   resp.agent_runtimes[0].agent_runtime_arn #=> String
    #   resp.agent_runtimes[0].agent_runtime_id #=> String
    #   resp.agent_runtimes[0].agent_runtime_version #=> String
    #   resp.agent_runtimes[0].agent_runtime_name #=> String
    #   resp.agent_runtimes[0].description #=> String
    #   resp.agent_runtimes[0].last_updated_at #=> Time
    #   resp.agent_runtimes[0].status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListAgentRuntimeVersions AWS API Documentation
    #
    # @overload list_agent_runtime_versions(params = {})
    # @param [Hash] params ({})
    def list_agent_runtime_versions(params = {}, options = {})
      req = build_request(:list_agent_runtime_versions, params)
      req.send_request(options)
    end

    # Lists the agent runtime versions that are associated with a capacity
    # provider. Use this operation to identify the runtimes you must
    # disassociate before you can delete the capacity provider. Results are
    # paginated; use the `nextToken` parameter to retrieve additional
    # results.
    #
    # @option params [required, String] :capacity_provider_id
    #   The unique identifier of the capacity provider.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @option params [String] :next_token
    #   If the total number of results is greater than the `maxResults` value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #
    # @return [Types::ListAgentRuntimeVersionsByCapacityProviderOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAgentRuntimeVersionsByCapacityProviderOutput#agent_runtimes #agent_runtimes} => Array&lt;Types::AgentRuntimeVersionSummary&gt;
    #   * {Types::ListAgentRuntimeVersionsByCapacityProviderOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_agent_runtime_versions_by_capacity_provider({
    #     capacity_provider_id: "CapacityProviderId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_runtimes #=> Array
    #   resp.agent_runtimes[0].agent_runtime_arn #=> String
    #   resp.agent_runtimes[0].agent_runtime_version #=> String
    #   resp.agent_runtimes[0].status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListAgentRuntimeVersionsByCapacityProvider AWS API Documentation
    #
    # @overload list_agent_runtime_versions_by_capacity_provider(params = {})
    # @param [Hash] params ({})
    def list_agent_runtime_versions_by_capacity_provider(params = {}, options = {})
      req = build_request(:list_agent_runtime_versions_by_capacity_provider, params)
      req.send_request(options)
    end

    # Lists all Amazon Secure Agents in your account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next page of results.
    #
    # @return [Types::ListAgentRuntimesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAgentRuntimesResponse#agent_runtimes #agent_runtimes} => Array&lt;Types::AgentRuntime&gt;
    #   * {Types::ListAgentRuntimesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_agent_runtimes({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_runtimes #=> Array
    #   resp.agent_runtimes[0].agent_runtime_arn #=> String
    #   resp.agent_runtimes[0].agent_runtime_id #=> String
    #   resp.agent_runtimes[0].agent_runtime_version #=> String
    #   resp.agent_runtimes[0].agent_runtime_name #=> String
    #   resp.agent_runtimes[0].description #=> String
    #   resp.agent_runtimes[0].last_updated_at #=> Time
    #   resp.agent_runtimes[0].status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListAgentRuntimes AWS API Documentation
    #
    # @overload list_agent_runtimes(params = {})
    # @param [Hash] params ({})
    def list_agent_runtimes(params = {}, options = {})
      req = build_request(:list_agent_runtimes, params)
      req.send_request(options)
    end

    # Lists all API key credential providers in your account.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return.
    #
    # @return [Types::ListApiKeyCredentialProvidersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApiKeyCredentialProvidersResponse#credential_providers #credential_providers} => Array&lt;Types::ApiKeyCredentialProviderItem&gt;
    #   * {Types::ListApiKeyCredentialProvidersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_api_key_credential_providers({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.credential_providers #=> Array
    #   resp.credential_providers[0].name #=> String
    #   resp.credential_providers[0].credential_provider_arn #=> String
    #   resp.credential_providers[0].created_time #=> Time
    #   resp.credential_providers[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListApiKeyCredentialProviders AWS API Documentation
    #
    # @overload list_api_key_credential_providers(params = {})
    # @param [Hash] params ({})
    def list_api_key_credential_providers(params = {}, options = {})
      req = build_request(:list_api_key_credential_providers, params)
      req.send_request(options)
    end

    # Lists all browser profiles in your account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next page of results.
    #
    # @option params [String] :name
    #   The name of the browser profile to filter results by.
    #
    # @return [Types::ListBrowserProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBrowserProfilesResponse#profile_summaries #profile_summaries} => Array&lt;Types::BrowserProfileSummary&gt;
    #   * {Types::ListBrowserProfilesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_browser_profiles({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     name: "BrowserProfileName",
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_summaries #=> Array
    #   resp.profile_summaries[0].profile_id #=> String
    #   resp.profile_summaries[0].profile_arn #=> String
    #   resp.profile_summaries[0].name #=> String
    #   resp.profile_summaries[0].description #=> String
    #   resp.profile_summaries[0].status #=> String, one of "READY", "DELETING", "DELETED", "SAVING"
    #   resp.profile_summaries[0].created_at #=> Time
    #   resp.profile_summaries[0].last_updated_at #=> Time
    #   resp.profile_summaries[0].last_saved_at #=> Time
    #   resp.profile_summaries[0].last_saved_browser_session_id #=> String
    #   resp.profile_summaries[0].last_saved_browser_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListBrowserProfiles AWS API Documentation
    #
    # @overload list_browser_profiles(params = {})
    # @param [Hash] params ({})
    def list_browser_profiles(params = {}, options = {})
      req = build_request(:list_browser_profiles, params)
      req.send_request(options)
    end

    # Lists all custom browsers in your account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. The default
    #   value is 10. The maximum value is 50.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [String] :type
    #   The type of browsers to list. If not specified, all browser types are
    #   returned.
    #
    # @return [Types::ListBrowsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBrowsersResponse#browser_summaries #browser_summaries} => Array&lt;Types::BrowserSummary&gt;
    #   * {Types::ListBrowsersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_browsers({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     type: "SYSTEM", # accepts SYSTEM, CUSTOM
    #   })
    #
    # @example Response structure
    #
    #   resp.browser_summaries #=> Array
    #   resp.browser_summaries[0].browser_id #=> String
    #   resp.browser_summaries[0].browser_arn #=> String
    #   resp.browser_summaries[0].name #=> String
    #   resp.browser_summaries[0].description #=> String
    #   resp.browser_summaries[0].status #=> String, one of "CREATING", "CREATE_FAILED", "READY", "DELETING", "DELETE_FAILED", "DELETED"
    #   resp.browser_summaries[0].created_at #=> Time
    #   resp.browser_summaries[0].last_updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListBrowsers AWS API Documentation
    #
    # @overload list_browsers(params = {})
    # @param [Hash] params ({})
    def list_browsers(params = {}, options = {})
      req = build_request(:list_browsers, params)
      req.send_request(options)
    end

    # Lists the capacity providers in your account and returns summary
    # information for each one. To retrieve the full configuration for a
    # specific capacity provider, use `GetCapacityProvider`. Results are
    # paginated; use the `nextToken` parameter to retrieve additional
    # results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @option params [String] :next_token
    #   If the total number of results is greater than the `maxResults` value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #
    # @return [Types::ListCapacityProvidersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCapacityProvidersOutput#capacity_providers #capacity_providers} => Array&lt;Types::CapacityProviderSummary&gt;
    #   * {Types::ListCapacityProvidersOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_capacity_providers({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.capacity_providers #=> Array
    #   resp.capacity_providers[0].capacity_provider_id #=> String
    #   resp.capacity_providers[0].capacity_provider_arn #=> String
    #   resp.capacity_providers[0].name #=> String
    #   resp.capacity_providers[0].status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"
    #   resp.capacity_providers[0].last_updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListCapacityProviders AWS API Documentation
    #
    # @overload list_capacity_providers(params = {})
    # @param [Hash] params ({})
    def list_capacity_providers(params = {}, options = {})
      req = build_request(:list_capacity_providers, params)
      req.send_request(options)
    end

    # Lists all custom code interpreters in your account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next page of results.
    #
    # @option params [String] :type
    #   The type of code interpreters to list.
    #
    # @return [Types::ListCodeInterpretersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCodeInterpretersResponse#code_interpreter_summaries #code_interpreter_summaries} => Array&lt;Types::CodeInterpreterSummary&gt;
    #   * {Types::ListCodeInterpretersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_code_interpreters({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     type: "SYSTEM", # accepts SYSTEM, CUSTOM
    #   })
    #
    # @example Response structure
    #
    #   resp.code_interpreter_summaries #=> Array
    #   resp.code_interpreter_summaries[0].code_interpreter_id #=> String
    #   resp.code_interpreter_summaries[0].code_interpreter_arn #=> String
    #   resp.code_interpreter_summaries[0].name #=> String
    #   resp.code_interpreter_summaries[0].description #=> String
    #   resp.code_interpreter_summaries[0].status #=> String, one of "CREATING", "CREATE_FAILED", "READY", "DELETING", "DELETE_FAILED", "DELETED"
    #   resp.code_interpreter_summaries[0].created_at #=> Time
    #   resp.code_interpreter_summaries[0].last_updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListCodeInterpreters AWS API Documentation
    #
    # @overload list_code_interpreters(params = {})
    # @param [Hash] params ({})
    def list_code_interpreters(params = {}, options = {})
      req = build_request(:list_code_interpreters, params)
      req.send_request(options)
    end

    # Lists all versions of a configuration bundle, with optional filtering
    # by branch name or creation source.
    #
    # @option params [required, String] :bundle_id
    #   The unique identifier of the configuration bundle to list versions
    #   for.
    #
    # @option params [String] :next_token
    #   If the total number of results is greater than the `maxResults` value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @option params [Types::VersionFilter] :filter
    #   An optional filter for listing versions, including branch name,
    #   creation source, and whether to return only the latest version per
    #   branch.
    #
    # @return [Types::ListConfigurationBundleVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConfigurationBundleVersionsResponse#versions #versions} => Array&lt;Types::ConfigurationBundleVersionSummary&gt;
    #   * {Types::ListConfigurationBundleVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configuration_bundle_versions({
    #     bundle_id: "ConfigurationBundleId", # required
    #     next_token: "String",
    #     max_results: 1,
    #     filter: {
    #       branch_name: "BranchName",
    #       created_by_name: "String",
    #       latest_per_branch: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.versions #=> Array
    #   resp.versions[0].bundle_arn #=> String
    #   resp.versions[0].bundle_id #=> String
    #   resp.versions[0].version_id #=> String
    #   resp.versions[0].lineage_metadata.parent_version_ids #=> Array
    #   resp.versions[0].lineage_metadata.parent_version_ids[0] #=> String
    #   resp.versions[0].lineage_metadata.branch_name #=> String
    #   resp.versions[0].lineage_metadata.created_by.name #=> String
    #   resp.versions[0].lineage_metadata.created_by.arn #=> String
    #   resp.versions[0].lineage_metadata.commit_message #=> String
    #   resp.versions[0].version_created_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListConfigurationBundleVersions AWS API Documentation
    #
    # @overload list_configuration_bundle_versions(params = {})
    # @param [Hash] params ({})
    def list_configuration_bundle_versions(params = {}, options = {})
      req = build_request(:list_configuration_bundle_versions, params)
      req.send_request(options)
    end

    # Lists all configuration bundles in the account.
    #
    # @option params [String] :next_token
    #   If the total number of results is greater than the `maxResults` value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @return [Types::ListConfigurationBundlesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConfigurationBundlesResponse#bundles #bundles} => Array&lt;Types::ConfigurationBundleSummary&gt;
    #   * {Types::ListConfigurationBundlesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configuration_bundles({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.bundles #=> Array
    #   resp.bundles[0].bundle_arn #=> String
    #   resp.bundles[0].bundle_id #=> String
    #   resp.bundles[0].bundle_name #=> String
    #   resp.bundles[0].description #=> String
    #   resp.bundles[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListConfigurationBundles AWS API Documentation
    #
    # @overload list_configuration_bundles(params = {})
    # @param [Hash] params ({})
    def list_configuration_bundles(params = {}, options = {})
      req = build_request(:list_configuration_bundles, params)
      req.send_request(options)
    end

    # Returns paginated examples from the dataset. The server embeds the
    # resolved version in the pagination token. Once pagination begins, all
    # subsequent pages are pinned to that version regardless of concurrent
    # mutations.
    #
    # @option params [required, String] :dataset_id
    #   The unique identifier of the dataset.
    #
    # @option params [String] :dataset_version
    #   Version to paginate: "DRAFT" or a version number. Defaults to DRAFT
    #   if absent. Only used on the first request; for subsequent pages, the
    #   version is extracted from the pagination token.
    #
    # @option params [Integer] :max_results
    #   Maximum number of examples to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::ListDatasetExamplesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDatasetExamplesResponse#dataset_arn #dataset_arn} => String
    #   * {Types::ListDatasetExamplesResponse#dataset_id #dataset_id} => String
    #   * {Types::ListDatasetExamplesResponse#dataset_version #dataset_version} => String
    #   * {Types::ListDatasetExamplesResponse#examples #examples} => Array&lt;Hash,Array,String,Numeric,Boolean&gt;
    #   * {Types::ListDatasetExamplesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dataset_examples({
    #     dataset_id: "DatasetId", # required
    #     dataset_version: "DatasetVersion",
    #     max_results: 1,
    #     next_token: "ListDatasetExamplesRequestNextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_arn #=> String
    #   resp.dataset_id #=> String
    #   resp.dataset_version #=> String
    #   resp.examples #=> Array
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListDatasetExamples AWS API Documentation
    #
    # @overload list_dataset_examples(params = {})
    # @param [Hash] params ({})
    def list_dataset_examples(params = {}, options = {})
      req = build_request(:list_dataset_examples, params)
      req.send_request(options)
    end

    # Lists all published versions of a dataset, sorted by version number
    # descending (newest first). Does not include the DRAFT working copy.
    #
    # @option params [required, String] :dataset_id
    #   The unique identifier of the dataset.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of versions to return per page.
    #
    # @return [Types::ListDatasetVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDatasetVersionsResponse#versions #versions} => Array&lt;Types::DatasetVersionSummary&gt;
    #   * {Types::ListDatasetVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dataset_versions({
    #     dataset_id: "DatasetId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.versions #=> Array
    #   resp.versions[0].dataset_version #=> String
    #   resp.versions[0].example_count #=> Integer
    #   resp.versions[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListDatasetVersions AWS API Documentation
    #
    # @overload list_dataset_versions(params = {})
    # @param [Hash] params ({})
    def list_dataset_versions(params = {}, options = {})
      req = build_request(:list_dataset_versions, params)
      req.send_request(options)
    end

    # Lists all datasets in the caller's account, paginated.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of datasets to return per page.
    #
    # @return [Types::ListDatasetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDatasetsResponse#datasets #datasets} => Array&lt;Types::DatasetSummary&gt;
    #   * {Types::ListDatasetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_datasets({
    #     next_token: "ListDatasetsRequestNextTokenString",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.datasets #=> Array
    #   resp.datasets[0].dataset_arn #=> String
    #   resp.datasets[0].dataset_id #=> String
    #   resp.datasets[0].dataset_name #=> String
    #   resp.datasets[0].description #=> String
    #   resp.datasets[0].status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
    #   resp.datasets[0].draft_status #=> String, one of "MODIFIED", "UNMODIFIED"
    #   resp.datasets[0].schema_type #=> String, one of "AGENTCORE_EVALUATION_PREDEFINED_V1", "AGENTCORE_EVALUATION_SIMULATED_V1", "THIRD_PARTY_EVALUATION_V1"
    #   resp.datasets[0].example_count #=> Integer
    #   resp.datasets[0].created_at #=> Time
    #   resp.datasets[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListDatasets AWS API Documentation
    #
    # @overload list_datasets(params = {})
    # @param [Hash] params ({})
    def list_datasets(params = {}, options = {})
      req = build_request(:list_datasets, params)
      req.send_request(options)
    end

    # Lists all available evaluators, including both builtin evaluators
    # provided by the service and custom evaluators created by the user.
    #
    # @option params [String] :next_token
    #   The pagination token from a previous request to retrieve the next page
    #   of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of evaluators to return in a single response.
    #
    # @return [Types::ListEvaluatorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEvaluatorsResponse#evaluators #evaluators} => Array&lt;Types::EvaluatorSummary&gt;
    #   * {Types::ListEvaluatorsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_evaluators({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluators #=> Array
    #   resp.evaluators[0].evaluator_arn #=> String
    #   resp.evaluators[0].evaluator_id #=> String
    #   resp.evaluators[0].evaluator_name #=> String
    #   resp.evaluators[0].description #=> String
    #   resp.evaluators[0].evaluator_type #=> String, one of "Builtin", "ThirdParty", "Custom", "CustomCode", "CustomDerived"
    #   resp.evaluators[0].provider #=> String, one of "AWS", "DeepEval", "AutoEval", "Custom"
    #   resp.evaluators[0].level #=> String, one of "TOOL_CALL", "TRACE", "SESSION"
    #   resp.evaluators[0].status #=> String, one of "ACTIVE", "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING"
    #   resp.evaluators[0].created_at #=> Time
    #   resp.evaluators[0].updated_at #=> Time
    #   resp.evaluators[0].locked_for_modification #=> Boolean
    #   resp.evaluators[0].kms_key_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListEvaluators AWS API Documentation
    #
    # @overload list_evaluators(params = {})
    # @param [Hash] params ({})
    def list_evaluators(params = {}, options = {})
      req = build_request(:list_evaluators, params)
      req.send_request(options)
    end

    # Lists all rate limits for a gateway. Results are paginated. Use the
    # `nextToken` parameter to retrieve additional results.
    #
    # @option params [required, String] :gateway_identifier
    #   The unique identifier of the gateway.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results. Use the value
    #   returned in a previous `ListGatewayRateLimits` response.
    #
    # @return [Types::ListGatewayRateLimitsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGatewayRateLimitsResponse#rate_limits #rate_limits} => Array&lt;Types::GatewayRateLimitDetail&gt;
    #   * {Types::ListGatewayRateLimitsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_gateway_rate_limits({
    #     gateway_identifier: "GatewayIdentifier", # required
    #     max_results: 1,
    #     next_token: "GatewayRateLimitNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.rate_limits #=> Array
    #   resp.rate_limits[0].rate_limit_id #=> String
    #   resp.rate_limits[0].gateway_identifier #=> String
    #   resp.rate_limits[0].description #=> String
    #   resp.rate_limits[0].dimension_keys #=> Array
    #   resp.rate_limits[0].dimension_keys[0] #=> String
    #   resp.rate_limits[0].entries #=> Array
    #   resp.rate_limits[0].entries[0].dimensions #=> Hash
    #   resp.rate_limits[0].entries[0].dimensions["DimensionKey"] #=> String
    #   resp.rate_limits[0].entries[0].requests #=> Array
    #   resp.rate_limits[0].entries[0].requests[0].rate #=> Float
    #   resp.rate_limits[0].entries[0].requests[0].period #=> String, one of "second", "minute"
    #   resp.rate_limits[0].entries[0].tokens #=> Array
    #   resp.rate_limits[0].entries[0].tokens[0].rate #=> Float
    #   resp.rate_limits[0].entries[0].tokens[0].period #=> String, one of "second", "minute"
    #   resp.rate_limits[0].entries[0].connections #=> Array
    #   resp.rate_limits[0].entries[0].connections[0].rate #=> Float
    #   resp.rate_limits[0].entries[0].connections[0].period #=> String, one of "second", "minute"
    #   resp.rate_limits[0].status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING"
    #   resp.rate_limits[0].created_at #=> Time
    #   resp.rate_limits[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListGatewayRateLimits AWS API Documentation
    #
    # @overload list_gateway_rate_limits(params = {})
    # @param [Hash] params ({})
    def list_gateway_rate_limits(params = {}, options = {})
      req = build_request(:list_gateway_rate_limits, params)
      req.send_request(options)
    end

    # Lists all rules for a gateway.
    #
    # @option params [required, String] :gateway_identifier
    #   The identifier of the gateway to list rules for.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @option params [String] :next_token
    #   The pagination token from a previous request.
    #
    # @return [Types::ListGatewayRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGatewayRulesResponse#gateway_rules #gateway_rules} => Array&lt;Types::GatewayRuleDetail&gt;
    #   * {Types::ListGatewayRulesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_gateway_rules({
    #     gateway_identifier: "GatewayIdentifier", # required
    #     max_results: 1,
    #     next_token: "GatewayRuleNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_rules #=> Array
    #   resp.gateway_rules[0].rule_id #=> String
    #   resp.gateway_rules[0].gateway_arn #=> String
    #   resp.gateway_rules[0].priority #=> Integer
    #   resp.gateway_rules[0].conditions #=> Array
    #   resp.gateway_rules[0].conditions[0].match_principals.any_of #=> Array
    #   resp.gateway_rules[0].conditions[0].match_principals.any_of[0].iam_principal.arn #=> String
    #   resp.gateway_rules[0].conditions[0].match_principals.any_of[0].iam_principal.operator #=> String, one of "StringEquals", "StringLike"
    #   resp.gateway_rules[0].conditions[0].match_paths.any_of #=> Array
    #   resp.gateway_rules[0].conditions[0].match_paths.any_of[0] #=> String
    #   resp.gateway_rules[0].actions #=> Array
    #   resp.gateway_rules[0].actions[0].configuration_bundle.static_override.bundle_arn #=> String
    #   resp.gateway_rules[0].actions[0].configuration_bundle.static_override.bundle_version #=> String
    #   resp.gateway_rules[0].actions[0].configuration_bundle.weighted_override.traffic_split #=> Array
    #   resp.gateway_rules[0].actions[0].configuration_bundle.weighted_override.traffic_split[0].name #=> String
    #   resp.gateway_rules[0].actions[0].configuration_bundle.weighted_override.traffic_split[0].weight #=> Integer
    #   resp.gateway_rules[0].actions[0].configuration_bundle.weighted_override.traffic_split[0].configuration_bundle.bundle_arn #=> String
    #   resp.gateway_rules[0].actions[0].configuration_bundle.weighted_override.traffic_split[0].configuration_bundle.bundle_version #=> String
    #   resp.gateway_rules[0].actions[0].configuration_bundle.weighted_override.traffic_split[0].description #=> String
    #   resp.gateway_rules[0].actions[0].configuration_bundle.weighted_override.traffic_split[0].metadata #=> Hash
    #   resp.gateway_rules[0].actions[0].configuration_bundle.weighted_override.traffic_split[0].metadata["TrafficSplitMetadataKey"] #=> String
    #   resp.gateway_rules[0].actions[0].route_to_target.static_route.target_name #=> String
    #   resp.gateway_rules[0].actions[0].route_to_target.weighted_route.traffic_split #=> Array
    #   resp.gateway_rules[0].actions[0].route_to_target.weighted_route.traffic_split[0].name #=> String
    #   resp.gateway_rules[0].actions[0].route_to_target.weighted_route.traffic_split[0].weight #=> Integer
    #   resp.gateway_rules[0].actions[0].route_to_target.weighted_route.traffic_split[0].target_name #=> String
    #   resp.gateway_rules[0].actions[0].route_to_target.weighted_route.traffic_split[0].description #=> String
    #   resp.gateway_rules[0].actions[0].route_to_target.weighted_route.traffic_split[0].metadata #=> Hash
    #   resp.gateway_rules[0].actions[0].route_to_target.weighted_route.traffic_split[0].metadata["TrafficSplitMetadataKey"] #=> String
    #   resp.gateway_rules[0].description #=> String
    #   resp.gateway_rules[0].created_at #=> Time
    #   resp.gateway_rules[0].status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING"
    #   resp.gateway_rules[0].system.managed_by #=> String
    #   resp.gateway_rules[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListGatewayRules AWS API Documentation
    #
    # @overload list_gateway_rules(params = {})
    # @param [Hash] params ({})
    def list_gateway_rules(params = {}, options = {})
      req = build_request(:list_gateway_rules, params)
      req.send_request(options)
    end

    # Lists all targets for a specific gateway.
    #
    # @option params [required, String] :gateway_identifier
    #   The identifier of the gateway to list targets for.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @option params [String] :next_token
    #   If the total number of results is greater than the `maxResults` value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #
    # @return [Types::ListGatewayTargetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGatewayTargetsResponse#items #items} => Array&lt;Types::TargetSummary&gt;
    #   * {Types::ListGatewayTargetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_gateway_targets({
    #     gateway_identifier: "GatewayIdentifier", # required
    #     max_results: 1,
    #     next_token: "TargetNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].target_id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].status #=> String, one of "CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED", "SYNCHRONIZING", "SYNCHRONIZE_UNSUCCESSFUL", "CREATE_PENDING_AUTH", "UPDATE_PENDING_AUTH", "SYNCHRONIZE_PENDING_AUTH"
    #   resp.items[0].description #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].resource_priority #=> Integer
    #   resp.items[0].last_synchronized_at #=> Time
    #   resp.items[0].authorization_data.oauth2.authorization_url #=> String
    #   resp.items[0].authorization_data.oauth2.user_id #=> String
    #   resp.items[0].target_type #=> String, one of "OPEN_API_SCHEMA", "SMITHY_MODEL", "MCP_SERVER", "LAMBDA", "API_GATEWAY", "CONNECTOR", "AGENTCORE_RUNTIME", "PASSTHROUGH", "PROVIDER", "HTTP_CONNECTOR"
    #   resp.items[0].listing_mode #=> String, one of "DEFAULT", "DYNAMIC"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListGatewayTargets AWS API Documentation
    #
    # @overload list_gateway_targets(params = {})
    # @param [Hash] params ({})
    def list_gateway_targets(params = {}, options = {})
      req = build_request(:list_gateway_targets, params)
      req.send_request(options)
    end

    # Lists all gateways in the account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @option params [String] :next_token
    #   If the total number of results is greater than the `maxResults` value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #
    # @return [Types::ListGatewaysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGatewaysResponse#items #items} => Array&lt;Types::GatewaySummary&gt;
    #   * {Types::ListGatewaysResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_gateways({
    #     max_results: 1,
    #     next_token: "GatewayNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].gateway_id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].status #=> String, one of "CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED"
    #   resp.items[0].description #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].authorizer_type #=> String, one of "CUSTOM_JWT", "AWS_IAM", "NONE", "AUTHENTICATE_ONLY"
    #   resp.items[0].protocol_type #=> String, one of "MCP"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListGateways AWS API Documentation
    #
    # @overload list_gateways(params = {})
    # @param [Hash] params ({})
    def list_gateways(params = {}, options = {})
      req = build_request(:list_gateways, params)
      req.send_request(options)
    end

    # Operation to list the endpoints of a harness.
    #
    # @option params [required, String] :harness_id
    #   The ID of the harness whose endpoints are listed.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @return [Types::ListHarnessEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListHarnessEndpointsResponse#endpoints #endpoints} => Array&lt;Types::HarnessEndpoint&gt;
    #   * {Types::ListHarnessEndpointsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_harness_endpoints({
    #     harness_id: "HarnessId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoints #=> Array
    #   resp.endpoints[0].harness_id #=> String
    #   resp.endpoints[0].harness_name #=> String
    #   resp.endpoints[0].endpoint_name #=> String
    #   resp.endpoints[0].arn #=> String
    #   resp.endpoints[0].status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"
    #   resp.endpoints[0].created_at #=> Time
    #   resp.endpoints[0].updated_at #=> Time
    #   resp.endpoints[0].live_version #=> String
    #   resp.endpoints[0].target_version #=> String
    #   resp.endpoints[0].description #=> String
    #   resp.endpoints[0].failure_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListHarnessEndpoints AWS API Documentation
    #
    # @overload list_harness_endpoints(params = {})
    # @param [Hash] params ({})
    def list_harness_endpoints(params = {}, options = {})
      req = build_request(:list_harness_endpoints, params)
      req.send_request(options)
    end

    # Operation to list the versions of a Harness.
    #
    # @option params [required, String] :harness_id
    #   The ID of the harness whose versions are listed.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @return [Types::ListHarnessVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListHarnessVersionsResponse#harness_versions #harness_versions} => Array&lt;Types::HarnessVersionSummary&gt;
    #   * {Types::ListHarnessVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_harness_versions({
    #     harness_id: "HarnessId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.harness_versions #=> Array
    #   resp.harness_versions[0].harness_id #=> String
    #   resp.harness_versions[0].harness_name #=> String
    #   resp.harness_versions[0].arn #=> String
    #   resp.harness_versions[0].harness_version #=> String
    #   resp.harness_versions[0].status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"
    #   resp.harness_versions[0].created_at #=> Time
    #   resp.harness_versions[0].updated_at #=> Time
    #   resp.harness_versions[0].failure_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListHarnessVersions AWS API Documentation
    #
    # @overload list_harness_versions(params = {})
    # @param [Hash] params ({})
    def list_harness_versions(params = {}, options = {})
      req = build_request(:list_harness_versions, params)
      req.send_request(options)
    end

    # Operation to list harnesses.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @return [Types::ListHarnessesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListHarnessesResponse#harnesses #harnesses} => Array&lt;Types::HarnessSummary&gt;
    #   * {Types::ListHarnessesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_harnesses({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.harnesses #=> Array
    #   resp.harnesses[0].harness_id #=> String
    #   resp.harnesses[0].harness_name #=> String
    #   resp.harnesses[0].arn #=> String
    #   resp.harnesses[0].status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"
    #   resp.harnesses[0].created_at #=> Time
    #   resp.harnesses[0].updated_at #=> Time
    #   resp.harnesses[0].harness_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListHarnesses AWS API Documentation
    #
    # @overload list_harnesses(params = {})
    # @param [Hash] params ({})
    def list_harnesses(params = {}, options = {})
      req = build_request(:list_harnesses, params)
      req.send_request(options)
    end

    # Lists the available Amazon Bedrock AgentCore Memory resources in the
    # current Amazon Web Services Region.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. The default
    #   value is 10. The maximum value is 50.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListMemoriesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMemoriesOutput#memories #memories} => Array&lt;Types::MemorySummary&gt;
    #   * {Types::ListMemoriesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_memories({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.memories #=> Array
    #   resp.memories[0].arn #=> String
    #   resp.memories[0].id #=> String
    #   resp.memories[0].status #=> String, one of "CREATING", "ACTIVE", "FAILED", "DELETING", "UPDATING"
    #   resp.memories[0].created_at #=> Time
    #   resp.memories[0].updated_at #=> Time
    #   resp.memories[0].managed_by_resource_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListMemories AWS API Documentation
    #
    # @overload list_memories(params = {})
    # @param [Hash] params ({})
    def list_memories(params = {}, options = {})
      req = build_request(:list_memories, params)
      req.send_request(options)
    end

    # Lists all OAuth2 credential providers in your account.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return.
    #
    # @return [Types::ListOauth2CredentialProvidersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOauth2CredentialProvidersResponse#credential_providers #credential_providers} => Array&lt;Types::Oauth2CredentialProviderItem&gt;
    #   * {Types::ListOauth2CredentialProvidersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_oauth_2_credential_providers({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.credential_providers #=> Array
    #   resp.credential_providers[0].name #=> String
    #   resp.credential_providers[0].credential_provider_vendor #=> String, one of "GoogleOauth2", "GithubOauth2", "SlackOauth2", "SalesforceOauth2", "MicrosoftOauth2", "CustomOauth2", "AtlassianOauth2", "LinkedinOauth2", "XOauth2", "OktaOauth2", "OneLoginOauth2", "PingOneOauth2", "FacebookOauth2", "YandexOauth2", "RedditOauth2", "ZoomOauth2", "TwitchOauth2", "SpotifyOauth2", "DropboxOauth2", "NotionOauth2", "HubspotOauth2", "CyberArkOauth2", "FusionAuthOauth2", "Auth0Oauth2", "CognitoOauth2"
    #   resp.credential_providers[0].credential_provider_arn #=> String
    #   resp.credential_providers[0].created_time #=> Time
    #   resp.credential_providers[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListOauth2CredentialProviders AWS API Documentation
    #
    # @overload list_oauth_2_credential_providers(params = {})
    # @param [Hash] params ({})
    def list_oauth_2_credential_providers(params = {}, options = {})
      req = build_request(:list_oauth_2_credential_providers, params)
      req.send_request(options)
    end

    # Lists all online evaluation configurations in the account, providing
    # summary information about each configuration's status and settings.
    #
    # @option params [String] :next_token
    #   The pagination token from a previous request to retrieve the next page
    #   of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of online evaluation configurations to return in a
    #   single response.
    #
    # @return [Types::ListOnlineEvaluationConfigsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOnlineEvaluationConfigsResponse#online_evaluation_configs #online_evaluation_configs} => Array&lt;Types::OnlineEvaluationConfigSummary&gt;
    #   * {Types::ListOnlineEvaluationConfigsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_online_evaluation_configs({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.online_evaluation_configs #=> Array
    #   resp.online_evaluation_configs[0].online_evaluation_config_arn #=> String
    #   resp.online_evaluation_configs[0].online_evaluation_config_id #=> String
    #   resp.online_evaluation_configs[0].online_evaluation_config_name #=> String
    #   resp.online_evaluation_configs[0].description #=> String
    #   resp.online_evaluation_configs[0].status #=> String, one of "ACTIVE", "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "ERROR"
    #   resp.online_evaluation_configs[0].execution_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.online_evaluation_configs[0].created_at #=> Time
    #   resp.online_evaluation_configs[0].updated_at #=> Time
    #   resp.online_evaluation_configs[0].failure_reason #=> String
    #   resp.online_evaluation_configs[0].insights #=> Array
    #   resp.online_evaluation_configs[0].insights[0].insight_id #=> String
    #   resp.online_evaluation_configs[0].clustering_config.frequencies #=> Array
    #   resp.online_evaluation_configs[0].clustering_config.frequencies[0] #=> String, one of "DAILY", "WEEKLY", "MONTHLY"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListOnlineEvaluationConfigs AWS API Documentation
    #
    # @overload list_online_evaluation_configs(params = {})
    # @param [Hash] params ({})
    def list_online_evaluation_configs(params = {}, options = {})
      req = build_request(:list_online_evaluation_configs, params)
      req.send_request(options)
    end

    # Lists all payment connectors for a specified payment manager.
    #
    # @option params [required, String] :payment_manager_id
    #   The unique identifier of the payment manager whose connectors to list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @option params [String] :next_token
    #   If the total number of results is greater than the `maxResults` value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #
    # @return [Types::ListPaymentConnectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPaymentConnectorsResponse#payment_connectors #payment_connectors} => Array&lt;Types::PaymentConnectorSummary&gt;
    #   * {Types::ListPaymentConnectorsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_payment_connectors({
    #     payment_manager_id: "PaymentManagerId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.payment_connectors #=> Array
    #   resp.payment_connectors[0].payment_connector_id #=> String
    #   resp.payment_connectors[0].name #=> String
    #   resp.payment_connectors[0].type #=> String, one of "CoinbaseCDP", "StripePrivy"
    #   resp.payment_connectors[0].status #=> String, one of "CREATING", "UPDATING", "DELETING", "READY", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED", "AWS_MARKETPLACE_SUBSCRIPTION_REQUIRED", "PENDING_AUTHENTICATION", "PROVISIONING", "AUTHENTICATION_EXPIRED", "AUTHENTICATION_FAILED"
    #   resp.payment_connectors[0].last_updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPaymentConnectors AWS API Documentation
    #
    # @overload list_payment_connectors(params = {})
    # @param [Hash] params ({})
    def list_payment_connectors(params = {}, options = {})
      req = build_request(:list_payment_connectors, params)
      req.send_request(options)
    end

    # Lists all payment credential providers in the account.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return.
    #
    # @return [Types::ListPaymentCredentialProvidersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPaymentCredentialProvidersResponse#credential_providers #credential_providers} => Array&lt;Types::PaymentCredentialProviderItem&gt;
    #   * {Types::ListPaymentCredentialProvidersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_payment_credential_providers({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.credential_providers #=> Array
    #   resp.credential_providers[0].name #=> String
    #   resp.credential_providers[0].credential_provider_vendor #=> String, one of "CoinbaseCDP", "StripePrivy"
    #   resp.credential_providers[0].credential_provider_arn #=> String
    #   resp.credential_providers[0].created_time #=> Time
    #   resp.credential_providers[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPaymentCredentialProviders AWS API Documentation
    #
    # @overload list_payment_credential_providers(params = {})
    # @param [Hash] params ({})
    def list_payment_credential_providers(params = {}, options = {})
      req = build_request(:list_payment_credential_providers, params)
      req.send_request(options)
    end

    # Lists all payment managers in the account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @option params [String] :next_token
    #   If the total number of results is greater than the `maxResults` value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #
    # @return [Types::ListPaymentManagersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPaymentManagersResponse#payment_managers #payment_managers} => Array&lt;Types::PaymentManagerSummary&gt;
    #   * {Types::ListPaymentManagersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_payment_managers({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.payment_managers #=> Array
    #   resp.payment_managers[0].payment_manager_arn #=> String
    #   resp.payment_managers[0].payment_manager_id #=> String
    #   resp.payment_managers[0].name #=> String
    #   resp.payment_managers[0].description #=> String
    #   resp.payment_managers[0].authorizer_type #=> String, one of "CUSTOM_JWT", "AWS_IAM"
    #   resp.payment_managers[0].role_arn #=> String
    #   resp.payment_managers[0].status #=> String, one of "CREATING", "UPDATING", "DELETING", "READY", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
    #   resp.payment_managers[0].created_at #=> Time
    #   resp.payment_managers[0].last_updated_at #=> Time
    #   resp.payment_managers[0].kms_key_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPaymentManagers AWS API Documentation
    #
    # @overload list_payment_managers(params = {})
    # @param [Hash] params ({})
    def list_payment_managers(params = {}, options = {})
      req = build_request(:list_payment_managers, params)
      req.send_request(options)
    end

    # Retrieves a list of policies within the AgentCore Policy engine. This
    # operation supports pagination and filtering to help administrators
    # manage and discover policies across policy engines. Results can be
    # filtered by policy engine or resource associations.
    #
    # @option params [String] :next_token
    #   A pagination token returned from a previous [ListPolicies][1] call.
    #   Use this token to retrieve the next page of results when the response
    #   is paginated.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicies.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of policies to return in a single response. If not
    #   specified, the default is 10 policies per page, with a maximum of 100
    #   per page.
    #
    # @option params [required, String] :policy_engine_id
    #   The identifier of the policy engine whose policies to retrieve.
    #
    # @option params [String] :target_resource_scope
    #   Optional filter to list policies that apply to a specific resource
    #   scope or resource type. This helps narrow down policy results to those
    #   relevant for particular Amazon Web Services resources, agent tools, or
    #   operational contexts within the policy engine ecosystem.
    #
    # @return [Types::ListPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPoliciesResponse#policies #policies} => Array&lt;Types::Policy&gt;
    #   * {Types::ListPoliciesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policies({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     policy_engine_id: "ResourceId", # required
    #     target_resource_scope: "BedrockAgentcoreResourceArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.policies #=> Array
    #   resp.policies[0].policy_id #=> String
    #   resp.policies[0].name #=> String
    #   resp.policies[0].policy_engine_id #=> String
    #   resp.policies[0].created_at #=> Time
    #   resp.policies[0].updated_at #=> Time
    #   resp.policies[0].policy_arn #=> String
    #   resp.policies[0].status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
    #   resp.policies[0].enforcement_mode #=> String, one of "ACTIVE", "LOG_ONLY"
    #   resp.policies[0].definition.cedar.statement #=> String
    #   resp.policies[0].definition.policy_generation.policy_generation_id #=> String
    #   resp.policies[0].definition.policy_generation.policy_generation_asset_id #=> String
    #   resp.policies[0].definition.policy.statement #=> String
    #   resp.policies[0].description #=> String
    #   resp.policies[0].status_reasons #=> Array
    #   resp.policies[0].status_reasons[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPolicies AWS API Documentation
    #
    # @overload list_policies(params = {})
    # @param [Hash] params ({})
    def list_policies(params = {}, options = {})
      req = build_request(:list_policies, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of metadata-only policy engine summaries
    # without decrypting customer content. This lightweight read operation
    # returns resource identifiers, status, and timestamps for each policy
    # engine, but does not include descriptions or status reasons. Because
    # this operation does not require access to the customer's KMS key, it
    # is suitable for resource discovery, inventory, and integration
    # scenarios where only metadata is needed.
    #
    # @option params [String] :next_token
    #   A pagination token returned from a previous
    #   [ListPolicyEngineSummaries][1] call. Use this token to retrieve the
    #   next page of results when the response is paginated.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicyEngineSummaries.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of policy engine summaries to return in a single
    #   response.
    #
    # @return [Types::ListPolicyEngineSummariesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPolicyEngineSummariesResponse#policy_engines #policy_engines} => Array&lt;Types::PolicyEngineSummary&gt;
    #   * {Types::ListPolicyEngineSummariesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policy_engine_summaries({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_engines #=> Array
    #   resp.policy_engines[0].policy_engine_id #=> String
    #   resp.policy_engines[0].name #=> String
    #   resp.policy_engines[0].created_at #=> Time
    #   resp.policy_engines[0].updated_at #=> Time
    #   resp.policy_engines[0].policy_engine_arn #=> String
    #   resp.policy_engines[0].status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
    #   resp.policy_engines[0].encryption_key_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPolicyEngineSummaries AWS API Documentation
    #
    # @overload list_policy_engine_summaries(params = {})
    # @param [Hash] params ({})
    def list_policy_engine_summaries(params = {}, options = {})
      req = build_request(:list_policy_engine_summaries, params)
      req.send_request(options)
    end

    # Retrieves a list of policy engines within the AgentCore Policy system.
    # This operation supports pagination to help administrators discover and
    # manage policy engines across their account. Each policy engine serves
    # as a container for related policies.
    #
    # @option params [String] :next_token
    #   A pagination token returned from a previous [ListPolicyEngines][1]
    #   call. Use this token to retrieve the next page of results when the
    #   response is paginated.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicyEngines.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of policy engines to return in a single response.
    #   If not specified, the default is 10 policy engines per page, with a
    #   maximum of 100 per page.
    #
    # @return [Types::ListPolicyEnginesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPolicyEnginesResponse#policy_engines #policy_engines} => Array&lt;Types::PolicyEngine&gt;
    #   * {Types::ListPolicyEnginesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policy_engines({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_engines #=> Array
    #   resp.policy_engines[0].policy_engine_id #=> String
    #   resp.policy_engines[0].name #=> String
    #   resp.policy_engines[0].created_at #=> Time
    #   resp.policy_engines[0].updated_at #=> Time
    #   resp.policy_engines[0].policy_engine_arn #=> String
    #   resp.policy_engines[0].status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
    #   resp.policy_engines[0].encryption_key_arn #=> String
    #   resp.policy_engines[0].description #=> String
    #   resp.policy_engines[0].status_reasons #=> Array
    #   resp.policy_engines[0].status_reasons[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPolicyEngines AWS API Documentation
    #
    # @overload list_policy_engines(params = {})
    # @param [Hash] params ({})
    def list_policy_engines(params = {}, options = {})
      req = build_request(:list_policy_engines, params)
      req.send_request(options)
    end

    # Retrieves a list of generated policy assets from a policy generation
    # request within the AgentCore Policy system. This operation returns the
    # actual Cedar policies and related artifacts produced by the AI-powered
    # policy generation process, allowing users to review and select from
    # multiple generated policy options.
    #
    # @option params [required, String] :policy_generation_id
    #   The unique identifier of the policy generation request whose assets
    #   are to be retrieved. This must be a valid generation ID from a
    #   previous [StartPolicyGeneration][1] call that has completed
    #   processing.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_StartPolicyGeneration.html
    #
    # @option params [required, String] :policy_engine_id
    #   The unique identifier of the policy engine associated with the policy
    #   generation request. This provides the context for the generation
    #   operation and ensures assets are retrieved from the correct policy
    #   engine.
    #
    # @option params [String] :next_token
    #   A pagination token returned from a previous
    #   [ListPolicyGenerationAssets][1] call. Use this token to retrieve the
    #   next page of assets when the response is paginated due to large
    #   numbers of generated policy options.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicyGenerationAssets.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of policy generation assets to return in a single
    #   response. If not specified, the default is 10 assets per page, with a
    #   maximum of 100 per page. This helps control response size when dealing
    #   with policy generations that produce many alternative policy options.
    #
    # @return [Types::ListPolicyGenerationAssetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPolicyGenerationAssetsResponse#policy_generation_assets #policy_generation_assets} => Array&lt;Types::PolicyGenerationAsset&gt;
    #   * {Types::ListPolicyGenerationAssetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policy_generation_assets({
    #     policy_generation_id: "ResourceId", # required
    #     policy_engine_id: "ResourceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_generation_assets #=> Array
    #   resp.policy_generation_assets[0].policy_generation_asset_id #=> String
    #   resp.policy_generation_assets[0].definition.cedar.statement #=> String
    #   resp.policy_generation_assets[0].definition.policy_generation.policy_generation_id #=> String
    #   resp.policy_generation_assets[0].definition.policy_generation.policy_generation_asset_id #=> String
    #   resp.policy_generation_assets[0].definition.policy.statement #=> String
    #   resp.policy_generation_assets[0].raw_text_fragment #=> String
    #   resp.policy_generation_assets[0].findings #=> Array
    #   resp.policy_generation_assets[0].findings[0].type #=> String, one of "VALID", "INVALID", "NOT_TRANSLATABLE", "ALLOW_ALL", "ALLOW_NONE", "DENY_ALL", "DENY_NONE"
    #   resp.policy_generation_assets[0].findings[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPolicyGenerationAssets AWS API Documentation
    #
    # @overload list_policy_generation_assets(params = {})
    # @param [Hash] params ({})
    def list_policy_generation_assets(params = {}, options = {})
      req = build_request(:list_policy_generation_assets, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of metadata-only policy generation
    # summaries within a policy engine without decrypting customer content.
    # This lightweight read operation returns resource identifiers, status,
    # timestamps, and findings for each policy generation, but does not
    # include status reasons. Because this operation does not require access
    # to the customer's KMS key, it is suitable for resource discovery,
    # inventory, and integration scenarios where only metadata is needed.
    #
    # @option params [String] :next_token
    #   A pagination token returned from a previous
    #   [ListPolicyGenerationSummaries][1] call. Use this token to retrieve
    #   the next page of results when the response is paginated.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicyGenerationSummaries.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of policy generation summaries to return in a
    #   single response.
    #
    # @option params [required, String] :policy_engine_id
    #   The identifier of the policy engine whose policy generation summaries
    #   to retrieve.
    #
    # @return [Types::ListPolicyGenerationSummariesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPolicyGenerationSummariesResponse#policy_generations #policy_generations} => Array&lt;Types::PolicyGenerationSummary&gt;
    #   * {Types::ListPolicyGenerationSummariesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policy_generation_summaries({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     policy_engine_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_generations #=> Array
    #   resp.policy_generations[0].policy_engine_id #=> String
    #   resp.policy_generations[0].policy_generation_id #=> String
    #   resp.policy_generations[0].name #=> String
    #   resp.policy_generations[0].policy_generation_arn #=> String
    #   resp.policy_generations[0].resource.arn #=> String
    #   resp.policy_generations[0].created_at #=> Time
    #   resp.policy_generations[0].updated_at #=> Time
    #   resp.policy_generations[0].status #=> String, one of "GENERATING", "GENERATED", "GENERATE_FAILED", "DELETE_FAILED"
    #   resp.policy_generations[0].findings #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPolicyGenerationSummaries AWS API Documentation
    #
    # @overload list_policy_generation_summaries(params = {})
    # @param [Hash] params ({})
    def list_policy_generation_summaries(params = {}, options = {})
      req = build_request(:list_policy_generation_summaries, params)
      req.send_request(options)
    end

    # Retrieves a list of policy generation requests within the AgentCore
    # Policy system. This operation supports pagination and filtering to
    # help track and manage AI-powered policy generation operations.
    #
    # @option params [String] :next_token
    #   A pagination token for retrieving additional policy generations when
    #   results are paginated.
    #
    # @option params [Integer] :max_results
    #   The maximum number of policy generations to return in a single
    #   response.
    #
    # @option params [required, String] :policy_engine_id
    #   The identifier of the policy engine whose policy generations to
    #   retrieve.
    #
    # @return [Types::ListPolicyGenerationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPolicyGenerationsResponse#policy_generations #policy_generations} => Array&lt;Types::PolicyGeneration&gt;
    #   * {Types::ListPolicyGenerationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policy_generations({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     policy_engine_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_generations #=> Array
    #   resp.policy_generations[0].policy_engine_id #=> String
    #   resp.policy_generations[0].policy_generation_id #=> String
    #   resp.policy_generations[0].name #=> String
    #   resp.policy_generations[0].policy_generation_arn #=> String
    #   resp.policy_generations[0].resource.arn #=> String
    #   resp.policy_generations[0].created_at #=> Time
    #   resp.policy_generations[0].updated_at #=> Time
    #   resp.policy_generations[0].status #=> String, one of "GENERATING", "GENERATED", "GENERATE_FAILED", "DELETE_FAILED"
    #   resp.policy_generations[0].findings #=> String
    #   resp.policy_generations[0].status_reasons #=> Array
    #   resp.policy_generations[0].status_reasons[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPolicyGenerations AWS API Documentation
    #
    # @overload list_policy_generations(params = {})
    # @param [Hash] params ({})
    def list_policy_generations(params = {}, options = {})
      req = build_request(:list_policy_generations, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of metadata-only policy summaries within a
    # policy engine without decrypting customer content. This lightweight
    # read operation returns resource identifiers, status, and timestamps
    # for each policy, but does not include policy definitions,
    # descriptions, or status reasons. Because this operation does not
    # require access to the customer's KMS key, it is suitable for resource
    # discovery, inventory, and integration scenarios where only metadata is
    # needed.
    #
    # @option params [String] :next_token
    #   A pagination token returned from a previous [ListPolicySummaries][1]
    #   call. Use this token to retrieve the next page of results when the
    #   response is paginated.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicySummaries.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of policy summaries to return in a single response.
    #
    # @option params [required, String] :policy_engine_id
    #   The identifier of the policy engine whose policy summaries to
    #   retrieve.
    #
    # @option params [String] :target_resource_scope
    #   Optional filter to list policy summaries that apply to a specific
    #   resource scope or resource type. This helps narrow down results to
    #   those relevant for particular Amazon Web Services resources, agent
    #   tools, or operational contexts within the policy engine ecosystem.
    #
    # @return [Types::ListPolicySummariesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPolicySummariesResponse#policies #policies} => Array&lt;Types::PolicySummary&gt;
    #   * {Types::ListPolicySummariesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policy_summaries({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     policy_engine_id: "ResourceId", # required
    #     target_resource_scope: "BedrockAgentcoreResourceArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.policies #=> Array
    #   resp.policies[0].policy_id #=> String
    #   resp.policies[0].name #=> String
    #   resp.policies[0].policy_engine_id #=> String
    #   resp.policies[0].created_at #=> Time
    #   resp.policies[0].updated_at #=> Time
    #   resp.policies[0].policy_arn #=> String
    #   resp.policies[0].status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
    #   resp.policies[0].enforcement_mode #=> String, one of "ACTIVE", "LOG_ONLY"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPolicySummaries AWS API Documentation
    #
    # @overload list_policy_summaries(params = {})
    # @param [Hash] params ({})
    def list_policy_summaries(params = {}, options = {})
      req = build_request(:list_policy_summaries, params)
      req.send_request(options)
    end

    # Lists all registries in the account. You can optionally filter results
    # by status using the `status` parameter, or by authorizer type using
    # the `authorizerType` parameter.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @option params [String] :next_token
    #   If the total number of results is greater than the `maxResults` value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #
    # @option params [String] :status
    #   Filter registries by their current status. Possible values include
    #   `CREATING`, `READY`, `UPDATING`, `CREATE_FAILED`, `UPDATE_FAILED`,
    #   `DELETING`, and `DELETE_FAILED`.
    #
    # @option params [String] :authorizer_type
    #   Filter registries by their authorizer type. Possible values are
    #   `CUSTOM_JWT` and `AWS_IAM`. For more information about authorizer
    #   types, see the `RegistryAuthorizerType` enum.
    #
    # @return [Types::ListRegistriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRegistriesResponse#registries #registries} => Array&lt;Types::RegistrySummary&gt;
    #   * {Types::ListRegistriesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_registries({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status: "CREATING", # accepts CREATING, READY, UPDATING, CREATE_FAILED, UPDATE_FAILED, DELETING, DELETE_FAILED
    #     authorizer_type: "CUSTOM_JWT", # accepts CUSTOM_JWT, AWS_IAM
    #   })
    #
    # @example Response structure
    #
    #   resp.registries #=> Array
    #   resp.registries[0].name #=> String
    #   resp.registries[0].description #=> String
    #   resp.registries[0].registry_id #=> String
    #   resp.registries[0].registry_arn #=> String
    #   resp.registries[0].authorizer_type #=> String, one of "CUSTOM_JWT", "AWS_IAM"
    #   resp.registries[0].status #=> String, one of "CREATING", "READY", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"
    #   resp.registries[0].status_reason #=> String
    #   resp.registries[0].created_at #=> Time
    #   resp.registries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListRegistries AWS API Documentation
    #
    # @overload list_registries(params = {})
    # @param [Hash] params ({})
    def list_registries(params = {}, options = {})
      req = build_request(:list_registries, params)
      req.send_request(options)
    end

    # Lists registry records within a registry. You can optionally filter
    # results using the `name`, `status`, and `descriptorType` parameters.
    # When multiple filters are specified, they are combined using AND
    # logic.
    #
    # @option params [required, String] :registry_id
    #   The identifier of the registry to list records from. You can specify
    #   either the Amazon Resource Name (ARN) or the ID of the registry.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @option params [String] :next_token
    #   If the total number of results is greater than the `maxResults` value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #
    # @option params [String] :name
    #   Filter registry records by name.
    #
    # @option params [String] :status
    #   Filter registry records by their current status. Possible values
    #   include `CREATING`, `DRAFT`, `APPROVED`, `PENDING_APPROVAL`,
    #   `REJECTED`, `DEPRECATED`, `UPDATING`, `CREATE_FAILED`, and
    #   `UPDATE_FAILED`.
    #
    # @option params [String] :descriptor_type
    #   Filter registry records by their descriptor type. Possible values are
    #   `MCP`, `A2A`, `CUSTOM`, and `AGENT_SKILLS`.
    #
    # @return [Types::ListRegistryRecordsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRegistryRecordsResponse#registry_records #registry_records} => Array&lt;Types::RegistryRecordSummary&gt;
    #   * {Types::ListRegistryRecordsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_registry_records({
    #     registry_id: "RegistryIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     name: "RegistryRecordName",
    #     status: "DRAFT", # accepts DRAFT, PENDING_APPROVAL, APPROVED, REJECTED, DEPRECATED, CREATING, UPDATING, CREATE_FAILED, UPDATE_FAILED
    #     descriptor_type: "MCP", # accepts MCP, A2A, CUSTOM, AGENT_SKILLS
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_records #=> Array
    #   resp.registry_records[0].registry_arn #=> String
    #   resp.registry_records[0].record_arn #=> String
    #   resp.registry_records[0].record_id #=> String
    #   resp.registry_records[0].name #=> String
    #   resp.registry_records[0].description #=> String
    #   resp.registry_records[0].descriptor_type #=> String, one of "MCP", "A2A", "CUSTOM", "AGENT_SKILLS"
    #   resp.registry_records[0].record_version #=> String
    #   resp.registry_records[0].status #=> String, one of "DRAFT", "PENDING_APPROVAL", "APPROVED", "REJECTED", "DEPRECATED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.registry_records[0].created_at #=> Time
    #   resp.registry_records[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListRegistryRecords AWS API Documentation
    #
    # @overload list_registry_records(params = {})
    # @param [Hash] params ({})
    def list_registry_records(params = {}, options = {})
      req = build_request(:list_registry_records, params)
      req.send_request(options)
    end

    # Lists the tags associated with the specified resource.
    #
    # <note markdown="1"> This feature is currently available only for AgentCore Runtime,
    # Browser, Browser Profile, Code Interpreter tool, and Gateway.
    #
    #  </note>
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which you want to
    #   list tags.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "TaggableResourcesArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists all workload identities in your account.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return.
    #
    # @return [Types::ListWorkloadIdentitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkloadIdentitiesResponse#workload_identities #workload_identities} => Array&lt;Types::WorkloadIdentityType&gt;
    #   * {Types::ListWorkloadIdentitiesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workload_identities({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.workload_identities #=> Array
    #   resp.workload_identities[0].name #=> String
    #   resp.workload_identities[0].workload_identity_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListWorkloadIdentities AWS API Documentation
    #
    # @overload list_workload_identities(params = {})
    # @param [Hash] params ({})
    def list_workload_identities(params = {}, options = {})
      req = build_request(:list_workload_identities, params)
      req.send_request(options)
    end

    # Creates or updates a resource-based policy for a resource with the
    # specified resourceArn.
    #
    # <note markdown="1"> This feature is currently available only for AgentCore Runtime and
    # Gateway.
    #
    #  </note>
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which to create or
    #   update the resource policy.
    #
    # @option params [required, String] :policy
    #   The resource policy to create or update.
    #
    # @return [Types::PutResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutResourcePolicyResponse#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy({
    #     resource_arn: "BedrockAgentcoreResourceArn", # required
    #     policy: "ResourcePolicyBody", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/PutResourcePolicy AWS API Documentation
    #
    # @overload put_resource_policy(params = {})
    # @param [Hash] params ({})
    def put_resource_policy(params = {}, options = {})
      req = build_request(:put_resource_policy, params)
      req.send_request(options)
    end

    # Sets the customer master key (CMK) for a token vault.
    #
    # @option params [String] :token_vault_id
    #   The unique identifier of the token vault to update.
    #
    # @option params [required, Types::KmsConfiguration] :kms_configuration
    #   The KMS configuration for the token vault, including the key type and
    #   KMS key ARN.
    #
    # @return [Types::SetTokenVaultCMKResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetTokenVaultCMKResponse#token_vault_id #token_vault_id} => String
    #   * {Types::SetTokenVaultCMKResponse#kms_configuration #kms_configuration} => Types::KmsConfiguration
    #   * {Types::SetTokenVaultCMKResponse#last_modified_date #last_modified_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_token_vault_cmk({
    #     token_vault_id: "TokenVaultIdType",
    #     kms_configuration: { # required
    #       key_type: "CustomerManagedKey", # required, accepts CustomerManagedKey, ServiceManagedKey
    #       kms_key_arn: "KmsKeyArn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.token_vault_id #=> String
    #   resp.kms_configuration.key_type #=> String, one of "CustomerManagedKey", "ServiceManagedKey"
    #   resp.kms_configuration.kms_key_arn #=> String
    #   resp.last_modified_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SetTokenVaultCMK AWS API Documentation
    #
    # @overload set_token_vault_cmk(params = {})
    # @param [Hash] params ({})
    def set_token_vault_cmk(params = {}, options = {})
      req = build_request(:set_token_vault_cmk, params)
      req.send_request(options)
    end

    # Initiates the AI-powered generation of Cedar policies from natural
    # language descriptions within the AgentCore Policy system. This feature
    # enables both technical and non-technical users to create policies by
    # describing their authorization requirements in plain English, which is
    # then automatically translated into formal Cedar policy statements. The
    # generation process analyzes the natural language input along with the
    # Gateway's tool context to produce validated policy options. Generated
    # policy assets are automatically deleted after 7 days, so you should
    # review and create policies from the generated assets within this
    # timeframe. Once created, policies are permanent and not subject to
    # this expiration. Generated policies should be reviewed and tested in
    # log-only mode before deploying to production. Use this when you want
    # to describe policy intent naturally rather than learning Cedar syntax,
    # though generated policies may require refinement for complex
    # scenarios.
    #
    # @option params [required, String] :policy_engine_id
    #   The identifier of the policy engine that provides the context for
    #   policy generation. This engine's schema and tool context are used to
    #   ensure generated policies are valid and applicable.
    #
    # @option params [required, Types::Resource] :resource
    #   The resource information that provides context for policy generation.
    #   This helps the AI understand the target resources and generate
    #   appropriate access control rules.
    #
    # @option params [required, Types::Content] :content
    #   The natural language description of the desired policy behavior. This
    #   content is processed by AI to generate corresponding Cedar policy
    #   statements that match the described intent.
    #
    # @option params [required, String] :name
    #   A customer-assigned name for the policy generation request. This helps
    #   track and identify generation operations, especially when running
    #   multiple generations simultaneously.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure the idempotency of the
    #   request. The AWS SDK automatically generates this token, so you don't
    #   need to provide it in most cases. If you retry a request with the same
    #   client token, the service returns the same response without starting a
    #   duplicate generation.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartPolicyGenerationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartPolicyGenerationResponse#policy_engine_id #policy_engine_id} => String
    #   * {Types::StartPolicyGenerationResponse#policy_generation_id #policy_generation_id} => String
    #   * {Types::StartPolicyGenerationResponse#name #name} => String
    #   * {Types::StartPolicyGenerationResponse#policy_generation_arn #policy_generation_arn} => String
    #   * {Types::StartPolicyGenerationResponse#resource #resource} => Types::Resource
    #   * {Types::StartPolicyGenerationResponse#created_at #created_at} => Time
    #   * {Types::StartPolicyGenerationResponse#updated_at #updated_at} => Time
    #   * {Types::StartPolicyGenerationResponse#status #status} => String
    #   * {Types::StartPolicyGenerationResponse#findings #findings} => String
    #   * {Types::StartPolicyGenerationResponse#status_reasons #status_reasons} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_policy_generation({
    #     policy_engine_id: "ResourceId", # required
    #     resource: { # required
    #       arn: "BedrockAgentcoreResourceArn",
    #     },
    #     content: { # required
    #       raw_text: "NaturalLanguage",
    #     },
    #     name: "PolicyGenerationName", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_engine_id #=> String
    #   resp.policy_generation_id #=> String
    #   resp.name #=> String
    #   resp.policy_generation_arn #=> String
    #   resp.resource.arn #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "GENERATING", "GENERATED", "GENERATE_FAILED", "DELETE_FAILED"
    #   resp.findings #=> String
    #   resp.status_reasons #=> Array
    #   resp.status_reasons[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/StartPolicyGeneration AWS API Documentation
    #
    # @overload start_policy_generation(params = {})
    # @param [Hash] params ({})
    def start_policy_generation(params = {}, options = {})
      req = build_request(:start_policy_generation, params)
      req.send_request(options)
    end

    # Submits a registry record for approval. This transitions the record
    # from `DRAFT` status to `PENDING_APPROVAL` status. If the registry has
    # auto-approval enabled, the record is automatically approved.
    #
    # @option params [required, String] :registry_id
    #   The identifier of the registry containing the record. You can specify
    #   either the Amazon Resource Name (ARN) or the ID of the registry.
    #
    # @option params [required, String] :record_id
    #   The identifier of the registry record to submit for approval. You can
    #   specify either the Amazon Resource Name (ARN) or the ID of the record.
    #
    # @return [Types::SubmitRegistryRecordForApprovalResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SubmitRegistryRecordForApprovalResponse#registry_arn #registry_arn} => String
    #   * {Types::SubmitRegistryRecordForApprovalResponse#record_arn #record_arn} => String
    #   * {Types::SubmitRegistryRecordForApprovalResponse#record_id #record_id} => String
    #   * {Types::SubmitRegistryRecordForApprovalResponse#status #status} => String
    #   * {Types::SubmitRegistryRecordForApprovalResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.submit_registry_record_for_approval({
    #     registry_id: "RegistryIdentifier", # required
    #     record_id: "RecordIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_arn #=> String
    #   resp.record_arn #=> String
    #   resp.record_id #=> String
    #   resp.status #=> String, one of "DRAFT", "PENDING_APPROVAL", "APPROVED", "REJECTED", "DEPRECATED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SubmitRegistryRecordForApproval AWS API Documentation
    #
    # @overload submit_registry_record_for_approval(params = {})
    # @param [Hash] params ({})
    def submit_registry_record_for_approval(params = {}, options = {})
      req = build_request(:submit_registry_record_for_approval, params)
      req.send_request(options)
    end

    # Synchronizes the gateway targets by fetching the latest tool
    # definitions from the target endpoints.
    #
    # You cannot synchronize a target that is in a pending authorization
    # state (`CREATE_PENDING_AUTH`, `UPDATE_PENDING_AUTH`, or
    # `SYNCHRONIZE_PENDING_AUTH`). Wait for the authorization to complete or
    # fail before synchronizing.
    #
    # You cannot synchronize a target that has a static tool schema
    # (`mcpToolSchema`) configured. Remove the static schema through an
    # `UpdateGatewayTarget` call to enable dynamic tool synchronization.
    #
    # @option params [required, String] :gateway_identifier
    #   The gateway Identifier.
    #
    # @option params [required, Array<String>] :target_id_list
    #   The target ID list.
    #
    # @return [Types::SynchronizeGatewayTargetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SynchronizeGatewayTargetsResponse#targets #targets} => Array&lt;Types::GatewayTarget&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.synchronize_gateway_targets({
    #     gateway_identifier: "GatewayIdentifier", # required
    #     target_id_list: ["TargetId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.targets #=> Array
    #   resp.targets[0].gateway_arn #=> String
    #   resp.targets[0].target_id #=> String
    #   resp.targets[0].created_at #=> Time
    #   resp.targets[0].updated_at #=> Time
    #   resp.targets[0].status #=> String, one of "CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED", "SYNCHRONIZING", "SYNCHRONIZE_UNSUCCESSFUL", "CREATE_PENDING_AUTH", "UPDATE_PENDING_AUTH", "SYNCHRONIZE_PENDING_AUTH"
    #   resp.targets[0].status_reasons #=> Array
    #   resp.targets[0].status_reasons[0] #=> String
    #   resp.targets[0].name #=> String
    #   resp.targets[0].description #=> String
    #   resp.targets[0].target_configuration.mcp.open_api_schema.s3.uri #=> String
    #   resp.targets[0].target_configuration.mcp.open_api_schema.s3.bucket_owner_account_id #=> String
    #   resp.targets[0].target_configuration.mcp.open_api_schema.inline_payload #=> String
    #   resp.targets[0].target_configuration.mcp.smithy_model.s3.uri #=> String
    #   resp.targets[0].target_configuration.mcp.smithy_model.s3.bucket_owner_account_id #=> String
    #   resp.targets[0].target_configuration.mcp.smithy_model.inline_payload #=> String
    #   resp.targets[0].target_configuration.mcp.lambda.lambda_arn #=> String
    #   resp.targets[0].target_configuration.mcp.lambda.tool_schema.s3.uri #=> String
    #   resp.targets[0].target_configuration.mcp.lambda.tool_schema.s3.bucket_owner_account_id #=> String
    #   resp.targets[0].target_configuration.mcp.lambda.tool_schema.inline_payload #=> Array
    #   resp.targets[0].target_configuration.mcp.lambda.tool_schema.inline_payload[0].name #=> String
    #   resp.targets[0].target_configuration.mcp.lambda.tool_schema.inline_payload[0].description #=> String
    #   resp.targets[0].target_configuration.mcp.lambda.tool_schema.inline_payload[0].input_schema.type #=> String, one of "string", "number", "object", "array", "boolean", "integer"
    #   resp.targets[0].target_configuration.mcp.lambda.tool_schema.inline_payload[0].input_schema.properties #=> Hash
    #   resp.targets[0].target_configuration.mcp.lambda.tool_schema.inline_payload[0].input_schema.properties["String"] #=> Types::SchemaDefinition
    #   resp.targets[0].target_configuration.mcp.lambda.tool_schema.inline_payload[0].input_schema.required #=> Array
    #   resp.targets[0].target_configuration.mcp.lambda.tool_schema.inline_payload[0].input_schema.required[0] #=> String
    #   resp.targets[0].target_configuration.mcp.lambda.tool_schema.inline_payload[0].input_schema.items #=> Types::SchemaDefinition
    #   resp.targets[0].target_configuration.mcp.lambda.tool_schema.inline_payload[0].input_schema.description #=> String
    #   resp.targets[0].target_configuration.mcp.lambda.tool_schema.inline_payload[0].output_schema.type #=> String, one of "string", "number", "object", "array", "boolean", "integer"
    #   resp.targets[0].target_configuration.mcp.lambda.tool_schema.inline_payload[0].output_schema.properties #=> Hash
    #   resp.targets[0].target_configuration.mcp.lambda.tool_schema.inline_payload[0].output_schema.properties["String"] #=> Types::SchemaDefinition
    #   resp.targets[0].target_configuration.mcp.lambda.tool_schema.inline_payload[0].output_schema.required #=> Array
    #   resp.targets[0].target_configuration.mcp.lambda.tool_schema.inline_payload[0].output_schema.required[0] #=> String
    #   resp.targets[0].target_configuration.mcp.lambda.tool_schema.inline_payload[0].output_schema.items #=> Types::SchemaDefinition
    #   resp.targets[0].target_configuration.mcp.lambda.tool_schema.inline_payload[0].output_schema.description #=> String
    #   resp.targets[0].target_configuration.mcp.mcp_server.endpoint #=> String
    #   resp.targets[0].target_configuration.mcp.mcp_server.mcp_tool_schema.s3.uri #=> String
    #   resp.targets[0].target_configuration.mcp.mcp_server.mcp_tool_schema.s3.bucket_owner_account_id #=> String
    #   resp.targets[0].target_configuration.mcp.mcp_server.mcp_tool_schema.inline_payload #=> String
    #   resp.targets[0].target_configuration.mcp.mcp_server.listing_mode #=> String, one of "DEFAULT", "DYNAMIC"
    #   resp.targets[0].target_configuration.mcp.mcp_server.resource_priority #=> Integer
    #   resp.targets[0].target_configuration.mcp.api_gateway.rest_api_id #=> String
    #   resp.targets[0].target_configuration.mcp.api_gateway.stage #=> String
    #   resp.targets[0].target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_overrides #=> Array
    #   resp.targets[0].target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_overrides[0].name #=> String
    #   resp.targets[0].target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_overrides[0].description #=> String
    #   resp.targets[0].target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_overrides[0].path #=> String
    #   resp.targets[0].target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_overrides[0].method #=> String, one of "GET", "DELETE", "HEAD", "OPTIONS", "PATCH", "PUT", "POST"
    #   resp.targets[0].target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_filters #=> Array
    #   resp.targets[0].target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_filters[0].filter_path #=> String
    #   resp.targets[0].target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_filters[0].methods #=> Array
    #   resp.targets[0].target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_filters[0].methods[0] #=> String, one of "GET", "DELETE", "HEAD", "OPTIONS", "PATCH", "PUT", "POST"
    #   resp.targets[0].target_configuration.mcp.connector.source.connector_id #=> String
    #   resp.targets[0].target_configuration.mcp.connector.source.version #=> String
    #   resp.targets[0].target_configuration.mcp.connector.enabled #=> Array
    #   resp.targets[0].target_configuration.mcp.connector.enabled[0] #=> String
    #   resp.targets[0].target_configuration.mcp.connector.configurations #=> Array
    #   resp.targets[0].target_configuration.mcp.connector.configurations[0].name #=> String
    #   resp.targets[0].target_configuration.mcp.connector.configurations[0].description #=> String
    #   resp.targets[0].target_configuration.mcp.connector.configurations[0].parameter_overrides #=> Array
    #   resp.targets[0].target_configuration.mcp.connector.configurations[0].parameter_overrides[0].path #=> String
    #   resp.targets[0].target_configuration.mcp.connector.configurations[0].parameter_overrides[0].description #=> String
    #   resp.targets[0].target_configuration.mcp.connector.configurations[0].parameter_overrides[0].visible #=> Boolean
    #   resp.targets[0].target_configuration.http.agentcore_runtime.arn #=> String
    #   resp.targets[0].target_configuration.http.agentcore_runtime.qualifier #=> String
    #   resp.targets[0].target_configuration.http.agentcore_runtime.schema.source.s3.uri #=> String
    #   resp.targets[0].target_configuration.http.agentcore_runtime.schema.source.s3.bucket_owner_account_id #=> String
    #   resp.targets[0].target_configuration.http.agentcore_runtime.schema.source.inline_payload #=> String
    #   resp.targets[0].target_configuration.http.passthrough.endpoint #=> String
    #   resp.targets[0].target_configuration.http.passthrough.protocol_type #=> String, one of "MCP", "A2A", "INFERENCE", "CUSTOM"
    #   resp.targets[0].target_configuration.http.passthrough.schema.source.s3.uri #=> String
    #   resp.targets[0].target_configuration.http.passthrough.schema.source.s3.bucket_owner_account_id #=> String
    #   resp.targets[0].target_configuration.http.passthrough.schema.source.inline_payload #=> String
    #   resp.targets[0].target_configuration.http.passthrough.stickiness_configuration.identifier #=> String
    #   resp.targets[0].target_configuration.http.passthrough.stickiness_configuration.timeout #=> Integer
    #   resp.targets[0].target_configuration.http.passthrough.stickiness_configuration.composite_identifier #=> Array
    #   resp.targets[0].target_configuration.http.passthrough.stickiness_configuration.composite_identifier[0] #=> String
    #   resp.targets[0].target_configuration.http.passthrough.static_query_parameters #=> Hash
    #   resp.targets[0].target_configuration.http.passthrough.static_query_parameters["StaticQueryParameterName"] #=> String
    #   resp.targets[0].target_configuration.http.passthrough.static_query_parameter_conflict_resolution #=> String, one of "CLIENT_OVERRIDE", "STATIC_OVERRIDE"
    #   resp.targets[0].target_configuration.http.connector.source.connector_id #=> String
    #   resp.targets[0].target_configuration.http.connector.parameters #=> Hash
    #   resp.targets[0].target_configuration.http.connector.parameters["ConnectorParameterName"] #=> String
    #   resp.targets[0].target_configuration.inference.connector.source.connector_id #=> String
    #   resp.targets[0].target_configuration.inference.provider.endpoint #=> String
    #   resp.targets[0].target_configuration.inference.provider.model_mapping.provider_prefix.strip #=> Boolean
    #   resp.targets[0].target_configuration.inference.provider.model_mapping.provider_prefix.separator #=> String
    #   resp.targets[0].target_configuration.inference.provider.operations #=> Array
    #   resp.targets[0].target_configuration.inference.provider.operations[0].path #=> String
    #   resp.targets[0].target_configuration.inference.provider.operations[0].provider_path #=> String
    #   resp.targets[0].target_configuration.inference.provider.operations[0].models #=> Array
    #   resp.targets[0].target_configuration.inference.provider.operations[0].models[0].model #=> String
    #   resp.targets[0].credential_provider_configurations #=> Array
    #   resp.targets[0].credential_provider_configurations[0].credential_provider_type #=> String, one of "GATEWAY_IAM_ROLE", "OAUTH", "API_KEY", "CALLER_IAM_CREDENTIALS", "JWT_PASSTHROUGH"
    #   resp.targets[0].credential_provider_configurations[0].credential_provider.oauth_credential_provider.provider_arn #=> String
    #   resp.targets[0].credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes #=> Array
    #   resp.targets[0].credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes[0] #=> String
    #   resp.targets[0].credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters #=> Hash
    #   resp.targets[0].credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters["OAuthCustomParametersKey"] #=> String
    #   resp.targets[0].credential_provider_configurations[0].credential_provider.oauth_credential_provider.grant_type #=> String, one of "CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "TOKEN_EXCHANGE"
    #   resp.targets[0].credential_provider_configurations[0].credential_provider.oauth_credential_provider.default_return_url #=> String
    #   resp.targets[0].credential_provider_configurations[0].credential_provider.api_key_credential_provider.provider_arn #=> String
    #   resp.targets[0].credential_provider_configurations[0].credential_provider.api_key_credential_provider.credential_parameter_name #=> String
    #   resp.targets[0].credential_provider_configurations[0].credential_provider.api_key_credential_provider.credential_prefix #=> String
    #   resp.targets[0].credential_provider_configurations[0].credential_provider.api_key_credential_provider.credential_location #=> String, one of "HEADER", "QUERY_PARAMETER"
    #   resp.targets[0].credential_provider_configurations[0].credential_provider.iam_credential_provider.service #=> String
    #   resp.targets[0].credential_provider_configurations[0].credential_provider.iam_credential_provider.region #=> String
    #   resp.targets[0].last_synchronized_at #=> Time
    #   resp.targets[0].metadata_configuration.allowed_request_headers #=> Array
    #   resp.targets[0].metadata_configuration.allowed_request_headers[0] #=> String
    #   resp.targets[0].metadata_configuration.allowed_query_parameters #=> Array
    #   resp.targets[0].metadata_configuration.allowed_query_parameters[0] #=> String
    #   resp.targets[0].metadata_configuration.allowed_response_headers #=> Array
    #   resp.targets[0].metadata_configuration.allowed_response_headers[0] #=> String
    #   resp.targets[0].private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.targets[0].private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.targets[0].private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.targets[0].private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.targets[0].private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.targets[0].private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.targets[0].private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.targets[0].private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.targets[0].private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.targets[0].private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.targets[0].private_endpoint_managed_resources #=> Array
    #   resp.targets[0].private_endpoint_managed_resources[0].domain #=> String
    #   resp.targets[0].private_endpoint_managed_resources[0].resource_gateway_arn #=> String
    #   resp.targets[0].private_endpoint_managed_resources[0].resource_association_arn #=> String
    #   resp.targets[0].authorization_data.oauth2.authorization_url #=> String
    #   resp.targets[0].authorization_data.oauth2.user_id #=> String
    #   resp.targets[0].protocol_type #=> String, one of "MCP", "HTTP"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SynchronizeGatewayTargets AWS API Documentation
    #
    # @overload synchronize_gateway_targets(params = {})
    # @param [Hash] params ({})
    def synchronize_gateway_targets(params = {}, options = {})
      req = build_request(:synchronize_gateway_targets, params)
      req.send_request(options)
    end

    # Associates the specified tags to a resource with the specified
    # resourceArn. If existing tags on a resource are not specified in the
    # request parameters, they are not changed. When a resource is deleted,
    # the tags associated with that resource are also deleted.
    #
    # <note markdown="1"> This feature is currently available only for AgentCore Runtime,
    # Browser, Browser Profile, Code Interpreter tool, and Gateway.
    #
    #  </note>
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to tag.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to add to the resource. A tag is a key-value pair.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "TaggableResourcesArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the specified tags from the specified resource.
    #
    # <note markdown="1"> This feature is currently available only for AgentCore Runtime,
    # Browser, Browser Profile, Code Interpreter tool, and Gateway.
    #
    #  </note>
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to untag.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys of the tags to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "TaggableResourcesArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing Amazon Secure Agent.
    #
    # @option params [required, String] :agent_runtime_id
    #   The unique identifier of the AgentCore Runtime to update.
    #
    # @option params [required, Types::AgentRuntimeArtifact] :agent_runtime_artifact
    #   The updated artifact of the AgentCore Runtime.
    #
    # @option params [required, String] :role_arn
    #   The updated IAM role ARN that provides permissions for the AgentCore
    #   Runtime.
    #
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   The updated network configuration for the AgentCore Runtime.
    #
    # @option params [String] :description
    #   The updated description of the AgentCore Runtime.
    #
    # @option params [Types::AuthorizerConfiguration] :authorizer_configuration
    #   The updated authorizer configuration for the AgentCore Runtime.
    #
    # @option params [Types::RequestHeaderConfiguration] :request_header_configuration
    #   The updated configuration for HTTP request headers that will be passed
    #   through to the runtime.
    #
    # @option params [Types::ProtocolConfiguration] :protocol_configuration
    #   The protocol configuration for an agent runtime. This structure
    #   defines how the agent runtime communicates with clients.
    #
    # @option params [Types::LifecycleConfiguration] :lifecycle_configuration
    #   The updated life cycle configuration for the AgentCore Runtime.
    #
    # @option params [Types::RuntimeMetadataConfiguration] :metadata_configuration
    #   The updated configuration for microVM Metadata Service (MMDS) settings
    #   for the AgentCore Runtime.
    #
    # @option params [Hash<String,String>] :environment_variables
    #   Updated environment variables to set in the AgentCore Runtime
    #   environment.
    #
    # @option params [Array<Types::FilesystemConfiguration>] :filesystem_configurations
    #   The updated filesystem configurations to mount into the AgentCore
    #   Runtime.
    #
    # @option params [Types::CapacityProviderConfiguration] :capacity_provider_configuration
    #   The updated capacity provider configuration for the AgentCore Runtime.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateAgentRuntimeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAgentRuntimeResponse#agent_runtime_arn #agent_runtime_arn} => String
    #   * {Types::UpdateAgentRuntimeResponse#agent_runtime_id #agent_runtime_id} => String
    #   * {Types::UpdateAgentRuntimeResponse#workload_identity_details #workload_identity_details} => Types::WorkloadIdentityDetails
    #   * {Types::UpdateAgentRuntimeResponse#agent_runtime_version #agent_runtime_version} => String
    #   * {Types::UpdateAgentRuntimeResponse#created_at #created_at} => Time
    #   * {Types::UpdateAgentRuntimeResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::UpdateAgentRuntimeResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_agent_runtime({
    #     agent_runtime_id: "AgentRuntimeId", # required
    #     agent_runtime_artifact: { # required
    #       container_configuration: {
    #         container_uri: "RuntimeContainerUri", # required
    #       },
    #       code_configuration: {
    #         code: { # required
    #           s3: {
    #             bucket: "S3LocationBucketString", # required
    #             prefix: "S3LocationPrefixString", # required
    #             version_id: "S3LocationVersionIdString",
    #           },
    #         },
    #         runtime: "PYTHON_3_10", # required, accepts PYTHON_3_10, PYTHON_3_11, PYTHON_3_12, PYTHON_3_13, PYTHON_3_14, NODE_22
    #         entry_point: ["entryPoint"], # required
    #       },
    #     },
    #     role_arn: "RoleArn", # required
    #     network_configuration: {
    #       network_mode: "PUBLIC", # required, accepts PUBLIC, VPC
    #       network_mode_config: {
    #         security_groups: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #         require_service_s3_endpoint: false,
    #       },
    #     },
    #     description: "Description",
    #     authorizer_configuration: {
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"],
    #         allowed_scopes: ["AllowedScopeType"],
    #         advertised_scope_mapping: {
    #           "AllowedScopeType" => "AllowedScopeType",
    #         },
    #         custom_claims: [
    #           {
    #             inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #             inbound_token_claim_value_type: "STRING", # required, accepts STRING, STRING_ARRAY
    #             authorizing_claim_match_value: { # required
    #               claim_match_value: { # required
    #                 match_value_string: "MatchValueString",
    #                 match_value_string_list: ["MatchValueString"],
    #               },
    #               claim_match_operator: "EQUALS", # required, accepts EQUALS, CONTAINS, CONTAINS_ANY
    #             },
    #           },
    #         ],
    #         private_endpoint: {
    #           self_managed_lattice_resource: {
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier",
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4", # required, accepts IPV4, IPV6
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue",
    #             },
    #             routing_domain: "RoutingDomain",
    #           },
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               self_managed_lattice_resource: {
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier",
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4", # required, accepts IPV4, IPV6
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue",
    #                 },
    #                 routing_domain: "RoutingDomain",
    #               },
    #             },
    #           },
    #         ],
    #         allowed_workload_configuration: {
    #           hosting_environments: [
    #             {
    #               arn: "BedrockAgentcoreResourceArn", # required
    #             },
    #           ],
    #           workload_identities: ["WorkloadIdentityNameType"],
    #         },
    #       },
    #     },
    #     request_header_configuration: {
    #       request_header_allowlist: ["HeaderName"],
    #     },
    #     protocol_configuration: {
    #       server_protocol: "MCP", # required, accepts MCP, HTTP, A2A, AGUI
    #     },
    #     lifecycle_configuration: {
    #       idle_runtime_session_timeout: 1,
    #       max_lifetime: 1,
    #     },
    #     metadata_configuration: {
    #       require_mmdsv2: false, # required
    #     },
    #     environment_variables: {
    #       "EnvironmentVariableKey" => "EnvironmentVariableValue",
    #     },
    #     filesystem_configurations: [
    #       {
    #         session_storage: {
    #           mount_path: "MountPath", # required
    #         },
    #         s3_files_access_point: {
    #           access_point_arn: "S3FilesAccessPointArn", # required
    #           mount_path: "MountPath", # required
    #         },
    #         efs_access_point: {
    #           access_point_arn: "EfsAccessPointArn", # required
    #           mount_path: "MountPath", # required
    #         },
    #         capacity_provider_volume: {
    #           volume_name: "CapacityProviderVolumeName", # required
    #           mount_path: "MountPath", # required
    #         },
    #       },
    #     ],
    #     capacity_provider_configuration: {
    #       capacity_provider_arn: "CapacityProviderArn", # required
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_runtime_arn #=> String
    #   resp.agent_runtime_id #=> String
    #   resp.workload_identity_details.workload_identity_arn #=> String
    #   resp.agent_runtime_version #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateAgentRuntime AWS API Documentation
    #
    # @overload update_agent_runtime(params = {})
    # @param [Hash] params ({})
    def update_agent_runtime(params = {}, options = {})
      req = build_request(:update_agent_runtime, params)
      req.send_request(options)
    end

    # Updates an existing Amazon Bedrock AgentCore Runtime endpoint.
    #
    # @option params [required, String] :agent_runtime_id
    #   The unique identifier of the AgentCore Runtime associated with the
    #   endpoint.
    #
    # @option params [required, String] :endpoint_name
    #   The name of the AgentCore Runtime endpoint to update.
    #
    # @option params [String] :agent_runtime_version
    #   The updated version of the AgentCore Runtime for the endpoint.
    #
    # @option params [String] :description
    #   The updated description of the AgentCore Runtime endpoint.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateAgentRuntimeEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAgentRuntimeEndpointResponse#live_version #live_version} => String
    #   * {Types::UpdateAgentRuntimeEndpointResponse#target_version #target_version} => String
    #   * {Types::UpdateAgentRuntimeEndpointResponse#agent_runtime_endpoint_arn #agent_runtime_endpoint_arn} => String
    #   * {Types::UpdateAgentRuntimeEndpointResponse#agent_runtime_arn #agent_runtime_arn} => String
    #   * {Types::UpdateAgentRuntimeEndpointResponse#status #status} => String
    #   * {Types::UpdateAgentRuntimeEndpointResponse#created_at #created_at} => Time
    #   * {Types::UpdateAgentRuntimeEndpointResponse#last_updated_at #last_updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_agent_runtime_endpoint({
    #     agent_runtime_id: "AgentRuntimeId", # required
    #     endpoint_name: "EndpointName", # required
    #     agent_runtime_version: "AgentRuntimeVersion",
    #     description: "AgentEndpointDescription",
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.live_version #=> String
    #   resp.target_version #=> String
    #   resp.agent_runtime_endpoint_arn #=> String
    #   resp.agent_runtime_arn #=> String
    #   resp.status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING"
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateAgentRuntimeEndpoint AWS API Documentation
    #
    # @overload update_agent_runtime_endpoint(params = {})
    # @param [Hash] params ({})
    def update_agent_runtime_endpoint(params = {}, options = {})
      req = build_request(:update_agent_runtime_endpoint, params)
      req.send_request(options)
    end

    # Updates an existing API key credential provider.
    #
    # @option params [required, String] :name
    #   The name of the API key credential provider to update.
    #
    # @option params [String] :api_key
    #   The new API key to use for authentication. This value replaces the
    #   existing API key and is encrypted and stored securely.
    #
    # @option params [Types::SecretReference] :api_key_secret_config
    #   A reference to the Amazon Web Services Secrets Manager secret that
    #   stores the API key. This includes the secret ID and the JSON key used
    #   to extract the API key value from the secret. Required when
    #   `apiKeySecretSource` is set to `EXTERNAL`.
    #
    # @option params [String] :api_key_secret_source
    #   The source type of the API key secret. Use `MANAGED` if the secret is
    #   managed by the service, or `EXTERNAL` if you manage the secret
    #   yourself in Amazon Web Services Secrets Manager.
    #
    # @return [Types::UpdateApiKeyCredentialProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApiKeyCredentialProviderResponse#api_key_secret_arn #api_key_secret_arn} => Types::Secret
    #   * {Types::UpdateApiKeyCredentialProviderResponse#api_key_secret_json_key #api_key_secret_json_key} => String
    #   * {Types::UpdateApiKeyCredentialProviderResponse#api_key_secret_source #api_key_secret_source} => String
    #   * {Types::UpdateApiKeyCredentialProviderResponse#name #name} => String
    #   * {Types::UpdateApiKeyCredentialProviderResponse#credential_provider_arn #credential_provider_arn} => String
    #   * {Types::UpdateApiKeyCredentialProviderResponse#created_time #created_time} => Time
    #   * {Types::UpdateApiKeyCredentialProviderResponse#last_updated_time #last_updated_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_api_key_credential_provider({
    #     name: "CredentialProviderName", # required
    #     api_key: "DefaultApiKeyType",
    #     api_key_secret_config: {
    #       secret_id: "SecretIdType", # required
    #       json_key: "SecretJsonKeyType", # required
    #     },
    #     api_key_secret_source: "MANAGED", # accepts MANAGED, EXTERNAL
    #   })
    #
    # @example Response structure
    #
    #   resp.api_key_secret_arn.secret_arn #=> String
    #   resp.api_key_secret_json_key #=> String
    #   resp.api_key_secret_source #=> String, one of "MANAGED", "EXTERNAL"
    #   resp.name #=> String
    #   resp.credential_provider_arn #=> String
    #   resp.created_time #=> Time
    #   resp.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateApiKeyCredentialProvider AWS API Documentation
    #
    # @overload update_api_key_credential_provider(params = {})
    # @param [Hash] params ({})
    def update_api_key_credential_provider(params = {}, options = {})
      req = build_request(:update_api_key_credential_provider, params)
      req.send_request(options)
    end

    # Updates a capacity provider. Only the description can be changed. To
    # change other configuration, such as instance types, networking, or
    # storage, create a new capacity provider.
    #
    # @option params [required, String] :capacity_provider_id
    #   The unique identifier of the capacity provider to update.
    #
    # @option params [Types::UpdatedDescription] :description
    #   The updated description of the capacity provider.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a previous
    #   request, the service ignores the request, but doesn't return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @return [Types::UpdateCapacityProviderOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCapacityProviderOutput#capacity_provider_id #capacity_provider_id} => String
    #   * {Types::UpdateCapacityProviderOutput#capacity_provider_arn #capacity_provider_arn} => String
    #   * {Types::UpdateCapacityProviderOutput#name #name} => String
    #   * {Types::UpdateCapacityProviderOutput#status #status} => String
    #   * {Types::UpdateCapacityProviderOutput#created_at #created_at} => Time
    #   * {Types::UpdateCapacityProviderOutput#last_updated_at #last_updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_capacity_provider({
    #     capacity_provider_id: "CapacityProviderId", # required
    #     description: {
    #       optional_value: "Description",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.capacity_provider_id #=> String
    #   resp.capacity_provider_arn #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateCapacityProvider AWS API Documentation
    #
    # @overload update_capacity_provider(params = {})
    # @param [Hash] params ({})
    def update_capacity_provider(params = {}, options = {})
      req = build_request(:update_capacity_provider, params)
      req.send_request(options)
    end

    # Updates a configuration bundle by creating a new version with the
    # specified changes. Each update creates a new version in the version
    # history.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a previous
    #   request, the service ignores the request, but doesn't return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, String] :bundle_id
    #   The unique identifier of the configuration bundle to update.
    #
    # @option params [String] :bundle_name
    #   The updated name for the configuration bundle.
    #
    # @option params [String] :description
    #   The updated description for the configuration bundle.
    #
    # @option params [Hash<String,Types::ComponentConfiguration>] :components
    #   The updated component configurations. Creates a new version of the
    #   bundle.
    #
    # @option params [Array<String>] :parent_version_ids
    #   A list of parent version identifiers for lineage tracking. Regular
    #   commits have a single parent. Merge commits have two parents: the
    #   target branch parent and the source branch parent. If the branch
    #   already exists, the first parent must be the latest version on that
    #   branch.
    #
    # @option params [String] :branch_name
    #   The branch name for this version. If not specified, inherits the
    #   parent's branch or defaults to `mainline`.
    #
    # @option params [String] :commit_message
    #   A commit message describing the changes in this version.
    #
    # @option params [Types::VersionCreatedBySource] :created_by
    #   The source that created this version, including the source name and
    #   optional ARN.
    #
    # @option params [String] :kms_key_arn
    #   Optional KMS key ARN for encrypting component configurations. If
    #   provided, components will be encrypted with this key. If the bundle
    #   already has a KMS key, this rotates to the new key.
    #
    # @return [Types::UpdateConfigurationBundleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateConfigurationBundleResponse#bundle_arn #bundle_arn} => String
    #   * {Types::UpdateConfigurationBundleResponse#bundle_id #bundle_id} => String
    #   * {Types::UpdateConfigurationBundleResponse#version_id #version_id} => String
    #   * {Types::UpdateConfigurationBundleResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configuration_bundle({
    #     client_token: "ClientToken",
    #     bundle_id: "ConfigurationBundleId", # required
    #     bundle_name: "ConfigurationBundleName",
    #     description: "ConfigurationBundleDescription",
    #     components: {
    #       "ComponentIdentifier" => {
    #         configuration: { # required
    #         },
    #       },
    #     },
    #     parent_version_ids: ["ConfigurationBundleVersion"],
    #     branch_name: "BranchName",
    #     commit_message: "UpdateConfigurationBundleRequestCommitMessageString",
    #     created_by: {
    #       name: "String", # required
    #       arn: "String",
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.bundle_arn #=> String
    #   resp.bundle_id #=> String
    #   resp.version_id #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateConfigurationBundle AWS API Documentation
    #
    # @overload update_configuration_bundle(params = {})
    # @param [Hash] params ({})
    def update_configuration_bundle(params = {}, options = {})
      req = build_request(:update_configuration_bundle, params)
      req.send_request(options)
    end

    # Updates a dataset's metadata. Synchronous operation. Only provided
    # fields are updated; omitted fields remain unchanged. To modify dataset
    # content, use `AddDatasetExamples`, `UpdateDatasetExamples`, or
    # `DeleteDatasetExamples`.
    #
    # @option params [required, String] :dataset_id
    #   The unique identifier of the dataset to update.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a previous
    #   request, the service ignores the request, but doesn't return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [String] :description
    #   The updated description for the dataset.
    #
    # @return [Types::UpdateDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDatasetResponse#dataset_arn #dataset_arn} => String
    #   * {Types::UpdateDatasetResponse#dataset_id #dataset_id} => String
    #   * {Types::UpdateDatasetResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dataset({
    #     dataset_id: "DatasetId", # required
    #     client_token: "ClientToken",
    #     description: "UpdateDatasetRequestDescriptionString",
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_arn #=> String
    #   resp.dataset_id #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateDataset AWS API Documentation
    #
    # @overload update_dataset(params = {})
    # @param [Hash] params ({})
    def update_dataset(params = {}, options = {})
      req = build_request(:update_dataset, params)
      req.send_request(options)
    end

    # Updates multiple existing examples in-place on DRAFT. All examples are
    # validated against the dataset's schema type before any writes occur.
    # If any example fails validation, the entire batch is rejected
    # (all-or-nothing semantics).
    #
    # @option params [required, String] :dataset_id
    #   The unique identifier of the dataset.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a previous
    #   request, the service ignores the request, but doesn't return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, Array<Hash,Array,String,Numeric,Boolean>] :examples
    #   Examples to update. Each element is a JSON object containing a
    #   required `exampleId` field identifying the existing example, plus the
    #   replacement fields. Maximum 1000 examples per call.
    #
    # @return [Types::UpdateDatasetExamplesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDatasetExamplesResponse#dataset_arn #dataset_arn} => String
    #   * {Types::UpdateDatasetExamplesResponse#dataset_id #dataset_id} => String
    #   * {Types::UpdateDatasetExamplesResponse#status #status} => String
    #   * {Types::UpdateDatasetExamplesResponse#updated_count #updated_count} => Integer
    #   * {Types::UpdateDatasetExamplesResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dataset_examples({
    #     dataset_id: "DatasetId", # required
    #     client_token: "ClientToken",
    #     examples: [ # required
    #       {
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_arn #=> String
    #   resp.dataset_id #=> String
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
    #   resp.updated_count #=> Integer
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateDatasetExamples AWS API Documentation
    #
    # @overload update_dataset_examples(params = {})
    # @param [Hash] params ({})
    def update_dataset_examples(params = {}, options = {})
      req = build_request(:update_dataset_examples, params)
      req.send_request(options)
    end

    # Updates a custom evaluator's configuration, description, or
    # evaluation level. Built-in evaluators cannot be updated. The evaluator
    # must not be locked for modification.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a previous
    #   request, the service ignores the request, but doesn't return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, String] :evaluator_id
    #   The unique identifier of the evaluator to update.
    #
    # @option params [String] :description
    #   The updated description of the evaluator.
    #
    # @option params [Types::EvaluatorConfig] :evaluator_config
    #   The updated configuration for the evaluator. Specify either
    #   LLM-as-a-Judge settings with instructions, rating scale, and model
    #   configuration, or code-based settings with a customer-managed Lambda
    #   function.
    #
    # @option params [String] :level
    #   The updated evaluation level (`TOOL_CALL`, `TRACE`, or `SESSION`) that
    #   determines the scope of evaluation.
    #
    # @option params [String] :kms_key_arn
    #   The Amazon Resource Name (ARN) of a customer managed KMS key to use
    #   for encrypting sensitive evaluator data. Specify a new key ARN to
    #   rotate the encryption key, or specify a key ARN to add encryption to
    #   an evaluator that was previously created without one. When you rotate
    #   to a new key, the service decrypts the existing data with the old key
    #   and re-encrypts it with the new key. Only symmetric encryption KMS
    #   keys are supported. For more information, see [Encryption at rest for
    #   AgentCore Evaluations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/evaluations-encryption.html
    #
    # @return [Types::UpdateEvaluatorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEvaluatorResponse#evaluator_arn #evaluator_arn} => String
    #   * {Types::UpdateEvaluatorResponse#evaluator_id #evaluator_id} => String
    #   * {Types::UpdateEvaluatorResponse#updated_at #updated_at} => Time
    #   * {Types::UpdateEvaluatorResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_evaluator({
    #     client_token: "ClientToken",
    #     evaluator_id: "EvaluatorId", # required
    #     description: "EvaluatorDescription",
    #     evaluator_config: {
    #       llm_as_a_judge: {
    #         instructions: "EvaluatorInstructions", # required
    #         rating_scale: { # required
    #           numerical: [
    #             {
    #               definition: "String", # required
    #               value: 1.0, # required
    #               label: "NumericalScaleDefinitionLabelString", # required
    #             },
    #           ],
    #           categorical: [
    #             {
    #               definition: "String", # required
    #               label: "CategoricalScaleDefinitionLabelString", # required
    #             },
    #           ],
    #         },
    #         model_config: { # required
    #           bedrock_evaluator_model_config: {
    #             model_id: "ModelId", # required
    #             inference_config: {
    #               max_tokens: 1,
    #               temperature: 1.0,
    #               top_p: 1.0,
    #               stop_sequences: ["NonEmptyString"],
    #             },
    #             additional_model_request_fields: {
    #             },
    #           },
    #           responses_evaluator_model_config: {
    #             model_id: "ModelId", # required
    #             max_output_tokens: 1,
    #             temperature: 1.0,
    #             top_p: 1.0,
    #             reasoning: {
    #               effort: "ReasoningConfigurationEffortString",
    #             },
    #           },
    #         },
    #       },
    #       code_based: {
    #         lambda_config: {
    #           lambda_arn: "LambdaArn", # required
    #           lambda_timeout_in_seconds: 1,
    #         },
    #       },
    #       derived: {
    #         base_evaluator_id: "EvaluatorId", # required
    #         model_config: { # required
    #           bedrock_evaluator_model_config: {
    #             model_id: "ModelId", # required
    #             inference_config: {
    #               max_tokens: 1,
    #               temperature: 1.0,
    #               top_p: 1.0,
    #               stop_sequences: ["NonEmptyString"],
    #             },
    #             additional_model_request_fields: {
    #             },
    #           },
    #           responses_evaluator_model_config: {
    #             model_id: "ModelId", # required
    #             max_output_tokens: 1,
    #             temperature: 1.0,
    #             top_p: 1.0,
    #             reasoning: {
    #               effort: "ReasoningConfigurationEffortString",
    #             },
    #           },
    #         },
    #       },
    #     },
    #     level: "TOOL_CALL", # accepts TOOL_CALL, TRACE, SESSION
    #     kms_key_arn: "KmsKeyArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluator_arn #=> String
    #   resp.evaluator_id #=> String
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "ACTIVE", "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateEvaluator AWS API Documentation
    #
    # @overload update_evaluator(params = {})
    # @param [Hash] params ({})
    def update_evaluator(params = {}, options = {})
      req = build_request(:update_evaluator, params)
      req.send_request(options)
    end

    # Updates an existing gateway.
    #
    # @option params [required, String] :gateway_identifier
    #   The identifier of the gateway to update.
    #
    # @option params [required, String] :name
    #   The name of the gateway. This name must be the same as the one when
    #   the gateway was created.
    #
    # @option params [String] :description
    #   The updated description for the gateway.
    #
    # @option params [required, String] :role_arn
    #   The updated IAM role ARN that provides permissions for the gateway.
    #
    # @option params [String] :protocol_type
    #   The updated protocol type for the gateway.
    #
    # @option params [Types::GatewayProtocolConfiguration] :protocol_configuration
    #   The configuration for a gateway protocol. This structure defines how
    #   the gateway communicates with external services.
    #
    # @option params [required, String] :authorizer_type
    #   The updated authorizer type for the gateway.
    #
    # @option params [Types::AuthorizerConfiguration] :authorizer_configuration
    #   The updated authorizer configuration for the gateway.
    #
    # @option params [String] :kms_key_arn
    #   The updated ARN of the KMS key used to encrypt the gateway.
    #
    # @option params [Types::CustomTransformConfiguration] :custom_transform_configuration
    #   The updated custom transformation configuration for the gateway. This
    #   configuration defines how the gateway transforms requests and
    #   responses.
    #
    # @option params [Array<Types::GatewayInterceptorConfiguration>] :interceptor_configurations
    #   The updated interceptor configurations for the gateway.
    #
    # @option params [Types::GatewayPolicyEngineConfiguration] :policy_engine_configuration
    #   The updated policy engine configuration for the gateway. A policy
    #   engine is a collection of policies that evaluates and authorizes agent
    #   tool calls. When associated with a gateway, the policy engine
    #   intercepts all agent requests and determines whether to allow or deny
    #   each action based on the defined policies.
    #
    # @option params [String] :exception_level
    #   The level of detail in error messages returned when invoking the
    #   gateway.
    #
    #   * If the value is `DEBUG`, granular exception messages are returned to
    #     help a user debug the gateway.
    #
    #   * If the value is omitted, a generic error message is returned to the
    #     end user.
    #
    # @option params [Types::WafConfiguration] :waf_configuration
    #   The updated Amazon Web Services WAF configuration for the gateway.
    #
    # @return [Types::UpdateGatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGatewayResponse#gateway_arn #gateway_arn} => String
    #   * {Types::UpdateGatewayResponse#gateway_id #gateway_id} => String
    #   * {Types::UpdateGatewayResponse#gateway_url #gateway_url} => String
    #   * {Types::UpdateGatewayResponse#created_at #created_at} => Time
    #   * {Types::UpdateGatewayResponse#updated_at #updated_at} => Time
    #   * {Types::UpdateGatewayResponse#status #status} => String
    #   * {Types::UpdateGatewayResponse#status_reasons #status_reasons} => Array&lt;String&gt;
    #   * {Types::UpdateGatewayResponse#name #name} => String
    #   * {Types::UpdateGatewayResponse#description #description} => String
    #   * {Types::UpdateGatewayResponse#role_arn #role_arn} => String
    #   * {Types::UpdateGatewayResponse#protocol_type #protocol_type} => String
    #   * {Types::UpdateGatewayResponse#protocol_configuration #protocol_configuration} => Types::GatewayProtocolConfiguration
    #   * {Types::UpdateGatewayResponse#authorizer_type #authorizer_type} => String
    #   * {Types::UpdateGatewayResponse#authorizer_configuration #authorizer_configuration} => Types::AuthorizerConfiguration
    #   * {Types::UpdateGatewayResponse#kms_key_arn #kms_key_arn} => String
    #   * {Types::UpdateGatewayResponse#custom_transform_configuration #custom_transform_configuration} => Types::CustomTransformConfiguration
    #   * {Types::UpdateGatewayResponse#interceptor_configurations #interceptor_configurations} => Array&lt;Types::GatewayInterceptorConfiguration&gt;
    #   * {Types::UpdateGatewayResponse#policy_engine_configuration #policy_engine_configuration} => Types::GatewayPolicyEngineConfiguration
    #   * {Types::UpdateGatewayResponse#workload_identity_details #workload_identity_details} => Types::WorkloadIdentityDetails
    #   * {Types::UpdateGatewayResponse#exception_level #exception_level} => String
    #   * {Types::UpdateGatewayResponse#web_acl_arn #web_acl_arn} => String
    #   * {Types::UpdateGatewayResponse#waf_configuration #waf_configuration} => Types::WafConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway({
    #     gateway_identifier: "GatewayIdentifier", # required
    #     name: "GatewayName", # required
    #     description: "GatewayDescription",
    #     role_arn: "RoleArn", # required
    #     protocol_type: "MCP", # accepts MCP
    #     protocol_configuration: {
    #       mcp: {
    #         supported_versions: ["McpVersion"],
    #         instructions: "McpInstructions",
    #         search_type: "SEMANTIC", # accepts SEMANTIC
    #         session_configuration: {
    #           session_timeout_in_seconds: 1,
    #         },
    #         streaming_configuration: {
    #           enable_response_streaming: false,
    #         },
    #       },
    #     },
    #     authorizer_type: "CUSTOM_JWT", # required, accepts CUSTOM_JWT, AWS_IAM, NONE, AUTHENTICATE_ONLY
    #     authorizer_configuration: {
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"],
    #         allowed_scopes: ["AllowedScopeType"],
    #         advertised_scope_mapping: {
    #           "AllowedScopeType" => "AllowedScopeType",
    #         },
    #         custom_claims: [
    #           {
    #             inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #             inbound_token_claim_value_type: "STRING", # required, accepts STRING, STRING_ARRAY
    #             authorizing_claim_match_value: { # required
    #               claim_match_value: { # required
    #                 match_value_string: "MatchValueString",
    #                 match_value_string_list: ["MatchValueString"],
    #               },
    #               claim_match_operator: "EQUALS", # required, accepts EQUALS, CONTAINS, CONTAINS_ANY
    #             },
    #           },
    #         ],
    #         private_endpoint: {
    #           self_managed_lattice_resource: {
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier",
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4", # required, accepts IPV4, IPV6
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue",
    #             },
    #             routing_domain: "RoutingDomain",
    #           },
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               self_managed_lattice_resource: {
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier",
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4", # required, accepts IPV4, IPV6
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue",
    #                 },
    #                 routing_domain: "RoutingDomain",
    #               },
    #             },
    #           },
    #         ],
    #         allowed_workload_configuration: {
    #           hosting_environments: [
    #             {
    #               arn: "BedrockAgentcoreResourceArn", # required
    #             },
    #           ],
    #           workload_identities: ["WorkloadIdentityNameType"],
    #         },
    #       },
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #     custom_transform_configuration: {
    #       lambda: {
    #         arn: "LambdaFunctionArn",
    #       },
    #     },
    #     interceptor_configurations: [
    #       {
    #         interceptor: { # required
    #           lambda: {
    #             arn: "LambdaFunctionArn", # required
    #           },
    #         },
    #         interception_points: ["REQUEST"], # required, accepts REQUEST, RESPONSE
    #         input_configuration: {
    #           pass_request_headers: false, # required
    #           payload_filter: {
    #             exclude: [ # required
    #               {
    #                 field: "RESPONSE_BODY", # accepts RESPONSE_BODY
    #               },
    #             ],
    #           },
    #         },
    #       },
    #     ],
    #     policy_engine_configuration: {
    #       arn: "GatewayPolicyEngineArn", # required
    #       mode: "LOG_ONLY", # required, accepts LOG_ONLY, ENFORCE
    #     },
    #     exception_level: "DEBUG", # accepts DEBUG
    #     waf_configuration: {
    #       failure_mode: "FAIL_CLOSE", # accepts FAIL_CLOSE, FAIL_OPEN
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.gateway_id #=> String
    #   resp.gateway_url #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED"
    #   resp.status_reasons #=> Array
    #   resp.status_reasons[0] #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.role_arn #=> String
    #   resp.protocol_type #=> String, one of "MCP"
    #   resp.protocol_configuration.mcp.supported_versions #=> Array
    #   resp.protocol_configuration.mcp.supported_versions[0] #=> String
    #   resp.protocol_configuration.mcp.instructions #=> String
    #   resp.protocol_configuration.mcp.search_type #=> String, one of "SEMANTIC"
    #   resp.protocol_configuration.mcp.session_configuration.session_timeout_in_seconds #=> Integer
    #   resp.protocol_configuration.mcp.streaming_configuration.enable_response_streaming #=> Boolean
    #   resp.authorizer_type #=> String, one of "CUSTOM_JWT", "AWS_IAM", "NONE", "AUTHENTICATE_ONLY"
    #   resp.authorizer_configuration.custom_jwt_authorizer.discovery_url #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_audience #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_audience[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_clients #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_clients[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_scopes #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_scopes[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.advertised_scope_mapping #=> Hash
    #   resp.authorizer_configuration.custom_jwt_authorizer.advertised_scope_mapping["AllowedScopeType"] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_name #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_value_type #=> String, one of "STRING", "STRING_ARRAY"
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_operator #=> String, one of "EQUALS", "CONTAINS", "CONTAINS_ANY"
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].domain #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.hosting_environments #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.hosting_environments[0].arn #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.workload_identities #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.workload_identities[0] #=> String
    #   resp.kms_key_arn #=> String
    #   resp.custom_transform_configuration.lambda.arn #=> String
    #   resp.interceptor_configurations #=> Array
    #   resp.interceptor_configurations[0].interceptor.lambda.arn #=> String
    #   resp.interceptor_configurations[0].interception_points #=> Array
    #   resp.interceptor_configurations[0].interception_points[0] #=> String, one of "REQUEST", "RESPONSE"
    #   resp.interceptor_configurations[0].input_configuration.pass_request_headers #=> Boolean
    #   resp.interceptor_configurations[0].input_configuration.payload_filter.exclude #=> Array
    #   resp.interceptor_configurations[0].input_configuration.payload_filter.exclude[0].field #=> String, one of "RESPONSE_BODY"
    #   resp.policy_engine_configuration.arn #=> String
    #   resp.policy_engine_configuration.mode #=> String, one of "LOG_ONLY", "ENFORCE"
    #   resp.workload_identity_details.workload_identity_arn #=> String
    #   resp.exception_level #=> String, one of "DEBUG"
    #   resp.web_acl_arn #=> String
    #   resp.waf_configuration.failure_mode #=> String, one of "FAIL_CLOSE", "FAIL_OPEN"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateGateway AWS API Documentation
    #
    # @overload update_gateway(params = {})
    # @param [Hash] params ({})
    def update_gateway(params = {}, options = {})
      req = build_request(:update_gateway, params)
      req.send_request(options)
    end

    # Updates the entries of a gateway rate limit. The dimension keys are
    # immutable after creation.
    #
    # @option params [required, String] :gateway_identifier
    #   The unique identifier of the gateway.
    #
    # @option params [required, String] :rate_limit_id
    #   The unique identifier of the rate limit to update.
    #
    # @option params [String] :description
    #   The updated human-readable description for this rate limit.
    #
    # @option params [required, Array<Types::LimitEntry>] :entries
    #   The updated rule entries. The dimension keys are immutable after
    #   creation and cannot be changed.
    #
    # @return [Types::UpdateGatewayRateLimitResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGatewayRateLimitResponse#rate_limit_id #rate_limit_id} => String
    #   * {Types::UpdateGatewayRateLimitResponse#gateway_identifier #gateway_identifier} => String
    #   * {Types::UpdateGatewayRateLimitResponse#description #description} => String
    #   * {Types::UpdateGatewayRateLimitResponse#dimension_keys #dimension_keys} => Array&lt;String&gt;
    #   * {Types::UpdateGatewayRateLimitResponse#entries #data.entries} => Array&lt;Types::LimitEntry&gt; (This method conflicts with a method on Response, call it through the data member)
    #   * {Types::UpdateGatewayRateLimitResponse#status #status} => String
    #   * {Types::UpdateGatewayRateLimitResponse#created_at #created_at} => Time
    #   * {Types::UpdateGatewayRateLimitResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway_rate_limit({
    #     gateway_identifier: "GatewayIdentifier", # required
    #     rate_limit_id: "GatewayRateLimitId", # required
    #     description: "GatewayRateLimitDescription",
    #     entries: [ # required
    #       {
    #         dimensions: { # required
    #           "DimensionKey" => "DimensionValue",
    #         },
    #         requests: [
    #           {
    #             rate: 1.0, # required
    #             period: "second", # required, accepts second, minute
    #           },
    #         ],
    #         tokens: [
    #           {
    #             rate: 1.0, # required
    #             period: "second", # required, accepts second, minute
    #           },
    #         ],
    #         connections: [
    #           {
    #             rate: 1.0, # required
    #             period: "second", # required, accepts second, minute
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.rate_limit_id #=> String
    #   resp.gateway_identifier #=> String
    #   resp.description #=> String
    #   resp.dimension_keys #=> Array
    #   resp.dimension_keys[0] #=> String
    #   resp.data.entries #=> Array
    #   resp.data.entries[0].dimensions #=> Hash
    #   resp.data.entries[0].dimensions["DimensionKey"] #=> String
    #   resp.data.entries[0].requests #=> Array
    #   resp.data.entries[0].requests[0].rate #=> Float
    #   resp.data.entries[0].requests[0].period #=> String, one of "second", "minute"
    #   resp.data.entries[0].tokens #=> Array
    #   resp.data.entries[0].tokens[0].rate #=> Float
    #   resp.data.entries[0].tokens[0].period #=> String, one of "second", "minute"
    #   resp.data.entries[0].connections #=> Array
    #   resp.data.entries[0].connections[0].rate #=> Float
    #   resp.data.entries[0].connections[0].period #=> String, one of "second", "minute"
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateGatewayRateLimit AWS API Documentation
    #
    # @overload update_gateway_rate_limit(params = {})
    # @param [Hash] params ({})
    def update_gateway_rate_limit(params = {}, options = {})
      req = build_request(:update_gateway_rate_limit, params)
      req.send_request(options)
    end

    # Updates a gateway rule's priority, conditions, actions, or
    # description.
    #
    # @option params [required, String] :gateway_identifier
    #   The identifier of the gateway containing the rule.
    #
    # @option params [required, String] :rule_id
    #   The unique identifier of the rule to update.
    #
    # @option params [Integer] :priority
    #   The updated priority of the rule.
    #
    # @option params [Array<Types::Condition>] :conditions
    #   The updated conditions for the rule.
    #
    # @option params [Array<Types::Action>] :actions
    #   The updated actions for the rule.
    #
    # @option params [String] :description
    #   The updated description of the rule.
    #
    # @return [Types::UpdateGatewayRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGatewayRuleResponse#rule_id #rule_id} => String
    #   * {Types::UpdateGatewayRuleResponse#gateway_arn #gateway_arn} => String
    #   * {Types::UpdateGatewayRuleResponse#priority #priority} => Integer
    #   * {Types::UpdateGatewayRuleResponse#conditions #conditions} => Array&lt;Types::Condition&gt;
    #   * {Types::UpdateGatewayRuleResponse#actions #actions} => Array&lt;Types::Action&gt;
    #   * {Types::UpdateGatewayRuleResponse#description #description} => String
    #   * {Types::UpdateGatewayRuleResponse#created_at #created_at} => Time
    #   * {Types::UpdateGatewayRuleResponse#status #status} => String
    #   * {Types::UpdateGatewayRuleResponse#system #system} => Types::SystemManagedBlock
    #   * {Types::UpdateGatewayRuleResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway_rule({
    #     gateway_identifier: "GatewayIdentifier", # required
    #     rule_id: "GatewayRuleId", # required
    #     priority: 1,
    #     conditions: [
    #       {
    #         match_principals: {
    #           any_of: [ # required
    #             {
    #               iam_principal: {
    #                 arn: "IamPrincipalArn", # required
    #                 operator: "StringEquals", # accepts StringEquals, StringLike
    #               },
    #             },
    #           ],
    #         },
    #         match_paths: {
    #           any_of: ["MatchPathPattern"], # required
    #         },
    #       },
    #     ],
    #     actions: [
    #       {
    #         configuration_bundle: {
    #           static_override: {
    #             bundle_arn: "GatewayConfigurationBundleArn", # required
    #             bundle_version: "StaticOverrideBundleVersionString", # required
    #           },
    #           weighted_override: {
    #             traffic_split: [ # required
    #               {
    #                 name: "TrafficSplitEntryNameString", # required
    #                 weight: 1, # required
    #                 configuration_bundle: { # required
    #                   bundle_arn: "GatewayConfigurationBundleArn", # required
    #                   bundle_version: "ConfigurationBundleReferenceBundleVersionString", # required
    #                 },
    #                 description: "TrafficSplitEntryDescriptionString",
    #                 metadata: {
    #                   "TrafficSplitMetadataKey" => "TrafficSplitMetadataValue",
    #                 },
    #               },
    #             ],
    #           },
    #         },
    #         route_to_target: {
    #           static_route: {
    #             target_name: "TargetName", # required
    #           },
    #           weighted_route: {
    #             traffic_split: [ # required
    #               {
    #                 name: "TargetTrafficSplitEntryNameString", # required
    #                 weight: 1, # required
    #                 target_name: "TargetName", # required
    #                 description: "TargetTrafficSplitEntryDescriptionString",
    #                 metadata: {
    #                   "TrafficSplitMetadataKey" => "TrafficSplitMetadataValue",
    #                 },
    #               },
    #             ],
    #           },
    #         },
    #       },
    #     ],
    #     description: "GatewayRuleDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_id #=> String
    #   resp.gateway_arn #=> String
    #   resp.priority #=> Integer
    #   resp.conditions #=> Array
    #   resp.conditions[0].match_principals.any_of #=> Array
    #   resp.conditions[0].match_principals.any_of[0].iam_principal.arn #=> String
    #   resp.conditions[0].match_principals.any_of[0].iam_principal.operator #=> String, one of "StringEquals", "StringLike"
    #   resp.conditions[0].match_paths.any_of #=> Array
    #   resp.conditions[0].match_paths.any_of[0] #=> String
    #   resp.actions #=> Array
    #   resp.actions[0].configuration_bundle.static_override.bundle_arn #=> String
    #   resp.actions[0].configuration_bundle.static_override.bundle_version #=> String
    #   resp.actions[0].configuration_bundle.weighted_override.traffic_split #=> Array
    #   resp.actions[0].configuration_bundle.weighted_override.traffic_split[0].name #=> String
    #   resp.actions[0].configuration_bundle.weighted_override.traffic_split[0].weight #=> Integer
    #   resp.actions[0].configuration_bundle.weighted_override.traffic_split[0].configuration_bundle.bundle_arn #=> String
    #   resp.actions[0].configuration_bundle.weighted_override.traffic_split[0].configuration_bundle.bundle_version #=> String
    #   resp.actions[0].configuration_bundle.weighted_override.traffic_split[0].description #=> String
    #   resp.actions[0].configuration_bundle.weighted_override.traffic_split[0].metadata #=> Hash
    #   resp.actions[0].configuration_bundle.weighted_override.traffic_split[0].metadata["TrafficSplitMetadataKey"] #=> String
    #   resp.actions[0].route_to_target.static_route.target_name #=> String
    #   resp.actions[0].route_to_target.weighted_route.traffic_split #=> Array
    #   resp.actions[0].route_to_target.weighted_route.traffic_split[0].name #=> String
    #   resp.actions[0].route_to_target.weighted_route.traffic_split[0].weight #=> Integer
    #   resp.actions[0].route_to_target.weighted_route.traffic_split[0].target_name #=> String
    #   resp.actions[0].route_to_target.weighted_route.traffic_split[0].description #=> String
    #   resp.actions[0].route_to_target.weighted_route.traffic_split[0].metadata #=> Hash
    #   resp.actions[0].route_to_target.weighted_route.traffic_split[0].metadata["TrafficSplitMetadataKey"] #=> String
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING"
    #   resp.system.managed_by #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateGatewayRule AWS API Documentation
    #
    # @overload update_gateway_rule(params = {})
    # @param [Hash] params ({})
    def update_gateway_rule(params = {}, options = {})
      req = build_request(:update_gateway_rule, params)
      req.send_request(options)
    end

    # Updates an existing gateway target.
    #
    # You cannot update a target that is in a pending authorization state
    # (`CREATE_PENDING_AUTH`, `UPDATE_PENDING_AUTH`, or
    # `SYNCHRONIZE_PENDING_AUTH`). Wait for the authorization to complete or
    # fail before updating the target.
    #
    # @option params [required, String] :gateway_identifier
    #   The unique identifier of the gateway associated with the target.
    #
    # @option params [required, String] :target_id
    #   The unique identifier of the gateway target to update.
    #
    # @option params [String] :name
    #   The updated name for the gateway target.
    #
    # @option params [String] :description
    #   The updated description for the gateway target.
    #
    # @option params [required, Types::TargetConfiguration] :target_configuration
    #   The configuration for a gateway target. This structure defines how the
    #   gateway connects to and interacts with the target endpoint.
    #
    # @option params [Array<Types::CredentialProviderConfiguration>] :credential_provider_configurations
    #   The updated credential provider configurations for the gateway target.
    #
    # @option params [Types::MetadataConfiguration] :metadata_configuration
    #   Configuration for HTTP header and query parameter propagation to the
    #   gateway target.
    #
    # @option params [Types::PrivateEndpoint] :private_endpoint
    #   The private endpoint configuration for the gateway target. Use this to
    #   connect the gateway to private resources in your VPC.
    #
    # @return [Types::UpdateGatewayTargetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGatewayTargetResponse#gateway_arn #gateway_arn} => String
    #   * {Types::UpdateGatewayTargetResponse#target_id #target_id} => String
    #   * {Types::UpdateGatewayTargetResponse#created_at #created_at} => Time
    #   * {Types::UpdateGatewayTargetResponse#updated_at #updated_at} => Time
    #   * {Types::UpdateGatewayTargetResponse#status #status} => String
    #   * {Types::UpdateGatewayTargetResponse#status_reasons #status_reasons} => Array&lt;String&gt;
    #   * {Types::UpdateGatewayTargetResponse#name #name} => String
    #   * {Types::UpdateGatewayTargetResponse#description #description} => String
    #   * {Types::UpdateGatewayTargetResponse#target_configuration #target_configuration} => Types::TargetConfiguration
    #   * {Types::UpdateGatewayTargetResponse#credential_provider_configurations #credential_provider_configurations} => Array&lt;Types::CredentialProviderConfiguration&gt;
    #   * {Types::UpdateGatewayTargetResponse#last_synchronized_at #last_synchronized_at} => Time
    #   * {Types::UpdateGatewayTargetResponse#metadata_configuration #metadata_configuration} => Types::MetadataConfiguration
    #   * {Types::UpdateGatewayTargetResponse#private_endpoint #private_endpoint} => Types::PrivateEndpoint
    #   * {Types::UpdateGatewayTargetResponse#private_endpoint_managed_resources #private_endpoint_managed_resources} => Array&lt;Types::ManagedResourceDetails&gt;
    #   * {Types::UpdateGatewayTargetResponse#authorization_data #authorization_data} => Types::AuthorizationData
    #   * {Types::UpdateGatewayTargetResponse#protocol_type #protocol_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway_target({
    #     gateway_identifier: "GatewayIdentifier", # required
    #     target_id: "TargetId", # required
    #     name: "TargetName",
    #     description: "TargetDescription",
    #     target_configuration: { # required
    #       mcp: {
    #         open_api_schema: {
    #           s3: {
    #             uri: "S3BucketUri",
    #             bucket_owner_account_id: "AwsAccountId",
    #           },
    #           inline_payload: "InlinePayload",
    #         },
    #         smithy_model: {
    #           s3: {
    #             uri: "S3BucketUri",
    #             bucket_owner_account_id: "AwsAccountId",
    #           },
    #           inline_payload: "InlinePayload",
    #         },
    #         lambda: {
    #           lambda_arn: "LambdaFunctionArn", # required
    #           tool_schema: { # required
    #             s3: {
    #               uri: "S3BucketUri",
    #               bucket_owner_account_id: "AwsAccountId",
    #             },
    #             inline_payload: [
    #               {
    #                 name: "String", # required
    #                 description: "String", # required
    #                 input_schema: { # required
    #                   type: "string", # required, accepts string, number, object, array, boolean, integer
    #                   properties: {
    #                     "String" => {
    #                       # recursive SchemaDefinition
    #                     },
    #                   },
    #                   required: ["String"],
    #                   items: {
    #                     # recursive SchemaDefinition
    #                   },
    #                   description: "String",
    #                 },
    #                 output_schema: {
    #                   type: "string", # required, accepts string, number, object, array, boolean, integer
    #                   properties: {
    #                     "String" => {
    #                       # recursive SchemaDefinition
    #                     },
    #                   },
    #                   required: ["String"],
    #                   items: {
    #                     # recursive SchemaDefinition
    #                   },
    #                   description: "String",
    #                 },
    #               },
    #             ],
    #           },
    #         },
    #         mcp_server: {
    #           endpoint: "McpServerTargetConfigurationEndpointString", # required
    #           mcp_tool_schema: {
    #             s3: {
    #               uri: "S3BucketUri",
    #               bucket_owner_account_id: "AwsAccountId",
    #             },
    #             inline_payload: "InlinePayload",
    #           },
    #           listing_mode: "DEFAULT", # accepts DEFAULT, DYNAMIC
    #           resource_priority: 1,
    #         },
    #         api_gateway: {
    #           rest_api_id: "String", # required
    #           stage: "String", # required
    #           api_gateway_tool_configuration: { # required
    #             tool_overrides: [
    #               {
    #                 name: "String", # required
    #                 description: "String",
    #                 path: "String", # required
    #                 method: "GET", # required, accepts GET, DELETE, HEAD, OPTIONS, PATCH, PUT, POST
    #               },
    #             ],
    #             tool_filters: [ # required
    #               {
    #                 filter_path: "String", # required
    #                 methods: ["GET"], # required, accepts GET, DELETE, HEAD, OPTIONS, PATCH, PUT, POST
    #               },
    #             ],
    #           },
    #         },
    #         connector: {
    #           source: { # required
    #             connector_id: "ConnectorId", # required
    #             version: "ConnectorVersion",
    #           },
    #           enabled: ["String"],
    #           configurations: [
    #             {
    #               name: "ConnectorConfigurationNameString", # required
    #               description: "ConnectorConfigurationDescriptionString",
    #               parameter_values: {
    #               },
    #               parameter_overrides: [
    #                 {
    #                   path: "String", # required
    #                   description: "String",
    #                   visible: false,
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #       },
    #       http: {
    #         agentcore_runtime: {
    #           arn: "RuntimeArn", # required
    #           qualifier: "RuntimeQualifier",
    #           schema: {
    #             source: { # required
    #               s3: {
    #                 uri: "S3BucketUri",
    #                 bucket_owner_account_id: "AwsAccountId",
    #               },
    #               inline_payload: "InlinePayload",
    #             },
    #           },
    #         },
    #         passthrough: {
    #           endpoint: "PassthroughEndpoint", # required
    #           protocol_type: "MCP", # required, accepts MCP, A2A, INFERENCE, CUSTOM
    #           schema: {
    #             source: { # required
    #               s3: {
    #                 uri: "S3BucketUri",
    #                 bucket_owner_account_id: "AwsAccountId",
    #               },
    #               inline_payload: "InlinePayload",
    #             },
    #           },
    #           stickiness_configuration: {
    #             identifier: "StickinessConfigurationIdentifierString", # required
    #             timeout: 1,
    #             composite_identifier: ["CompositeIdentifierEntry"],
    #           },
    #           static_query_parameters: {
    #             "StaticQueryParameterName" => "StaticQueryParameterValue",
    #           },
    #           static_query_parameter_conflict_resolution: "CLIENT_OVERRIDE", # accepts CLIENT_OVERRIDE, STATIC_OVERRIDE
    #         },
    #         connector: {
    #           source: { # required
    #             connector_id: "ConnectorId", # required
    #           },
    #           parameters: {
    #             "ConnectorParameterName" => "ConnectorParameterValue",
    #           },
    #         },
    #       },
    #       inference: {
    #         connector: {
    #           source: { # required
    #             connector_id: "InferenceConnectorId", # required
    #           },
    #         },
    #         provider: {
    #           endpoint: "PassthroughEndpoint", # required
    #           model_mapping: {
    #             provider_prefix: {
    #               strip: false,
    #               separator: "ProviderPrefixSeparatorString",
    #             },
    #           },
    #           operations: [
    #             {
    #               path: "InferenceOperationPath", # required
    #               provider_path: "InferenceOperationPath",
    #               models: [
    #                 {
    #                   model: "ModelPattern", # required
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #       },
    #     },
    #     credential_provider_configurations: [
    #       {
    #         credential_provider_type: "GATEWAY_IAM_ROLE", # required, accepts GATEWAY_IAM_ROLE, OAUTH, API_KEY, CALLER_IAM_CREDENTIALS, JWT_PASSTHROUGH
    #         credential_provider: {
    #           oauth_credential_provider: {
    #             provider_arn: "OAuthCredentialProviderArn", # required
    #             scopes: ["OAuthScope"], # required
    #             custom_parameters: {
    #               "OAuthCustomParametersKey" => "OAuthCustomParametersValue",
    #             },
    #             grant_type: "CLIENT_CREDENTIALS", # accepts CLIENT_CREDENTIALS, AUTHORIZATION_CODE, TOKEN_EXCHANGE
    #             default_return_url: "OAuthDefaultReturnUrl",
    #           },
    #           api_key_credential_provider: {
    #             provider_arn: "ApiKeyCredentialProviderArn", # required
    #             credential_parameter_name: "ApiKeyCredentialParameterName",
    #             credential_prefix: "ApiKeyCredentialPrefix",
    #             credential_location: "HEADER", # accepts HEADER, QUERY_PARAMETER
    #           },
    #           iam_credential_provider: {
    #             service: "IamCredentialProviderServiceString", # required
    #             region: "IamCredentialProviderRegionString",
    #           },
    #         },
    #       },
    #     ],
    #     metadata_configuration: {
    #       allowed_request_headers: ["HttpHeaderName"],
    #       allowed_query_parameters: ["HttpQueryParameterName"],
    #       allowed_response_headers: ["HttpHeaderName"],
    #     },
    #     private_endpoint: {
    #       self_managed_lattice_resource: {
    #         resource_configuration_identifier: "ResourceConfigurationIdentifier",
    #       },
    #       managed_vpc_resource: {
    #         vpc_identifier: "VpcIdentifier", # required
    #         subnet_ids: ["SubnetId"], # required
    #         endpoint_ip_address_type: "IPV4", # required, accepts IPV4, IPV6
    #         security_group_ids: ["SecurityGroupIdentifier"],
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         routing_domain: "RoutingDomain",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.target_id #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED", "SYNCHRONIZING", "SYNCHRONIZE_UNSUCCESSFUL", "CREATE_PENDING_AUTH", "UPDATE_PENDING_AUTH", "SYNCHRONIZE_PENDING_AUTH"
    #   resp.status_reasons #=> Array
    #   resp.status_reasons[0] #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.target_configuration.mcp.open_api_schema.s3.uri #=> String
    #   resp.target_configuration.mcp.open_api_schema.s3.bucket_owner_account_id #=> String
    #   resp.target_configuration.mcp.open_api_schema.inline_payload #=> String
    #   resp.target_configuration.mcp.smithy_model.s3.uri #=> String
    #   resp.target_configuration.mcp.smithy_model.s3.bucket_owner_account_id #=> String
    #   resp.target_configuration.mcp.smithy_model.inline_payload #=> String
    #   resp.target_configuration.mcp.lambda.lambda_arn #=> String
    #   resp.target_configuration.mcp.lambda.tool_schema.s3.uri #=> String
    #   resp.target_configuration.mcp.lambda.tool_schema.s3.bucket_owner_account_id #=> String
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload #=> Array
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].name #=> String
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].description #=> String
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].input_schema.type #=> String, one of "string", "number", "object", "array", "boolean", "integer"
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].input_schema.properties #=> Hash
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].input_schema.properties["String"] #=> Types::SchemaDefinition
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].input_schema.required #=> Array
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].input_schema.required[0] #=> String
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].input_schema.items #=> Types::SchemaDefinition
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].input_schema.description #=> String
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].output_schema.type #=> String, one of "string", "number", "object", "array", "boolean", "integer"
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].output_schema.properties #=> Hash
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].output_schema.properties["String"] #=> Types::SchemaDefinition
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].output_schema.required #=> Array
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].output_schema.required[0] #=> String
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].output_schema.items #=> Types::SchemaDefinition
    #   resp.target_configuration.mcp.lambda.tool_schema.inline_payload[0].output_schema.description #=> String
    #   resp.target_configuration.mcp.mcp_server.endpoint #=> String
    #   resp.target_configuration.mcp.mcp_server.mcp_tool_schema.s3.uri #=> String
    #   resp.target_configuration.mcp.mcp_server.mcp_tool_schema.s3.bucket_owner_account_id #=> String
    #   resp.target_configuration.mcp.mcp_server.mcp_tool_schema.inline_payload #=> String
    #   resp.target_configuration.mcp.mcp_server.listing_mode #=> String, one of "DEFAULT", "DYNAMIC"
    #   resp.target_configuration.mcp.mcp_server.resource_priority #=> Integer
    #   resp.target_configuration.mcp.api_gateway.rest_api_id #=> String
    #   resp.target_configuration.mcp.api_gateway.stage #=> String
    #   resp.target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_overrides #=> Array
    #   resp.target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_overrides[0].name #=> String
    #   resp.target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_overrides[0].description #=> String
    #   resp.target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_overrides[0].path #=> String
    #   resp.target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_overrides[0].method #=> String, one of "GET", "DELETE", "HEAD", "OPTIONS", "PATCH", "PUT", "POST"
    #   resp.target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_filters #=> Array
    #   resp.target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_filters[0].filter_path #=> String
    #   resp.target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_filters[0].methods #=> Array
    #   resp.target_configuration.mcp.api_gateway.api_gateway_tool_configuration.tool_filters[0].methods[0] #=> String, one of "GET", "DELETE", "HEAD", "OPTIONS", "PATCH", "PUT", "POST"
    #   resp.target_configuration.mcp.connector.source.connector_id #=> String
    #   resp.target_configuration.mcp.connector.source.version #=> String
    #   resp.target_configuration.mcp.connector.enabled #=> Array
    #   resp.target_configuration.mcp.connector.enabled[0] #=> String
    #   resp.target_configuration.mcp.connector.configurations #=> Array
    #   resp.target_configuration.mcp.connector.configurations[0].name #=> String
    #   resp.target_configuration.mcp.connector.configurations[0].description #=> String
    #   resp.target_configuration.mcp.connector.configurations[0].parameter_overrides #=> Array
    #   resp.target_configuration.mcp.connector.configurations[0].parameter_overrides[0].path #=> String
    #   resp.target_configuration.mcp.connector.configurations[0].parameter_overrides[0].description #=> String
    #   resp.target_configuration.mcp.connector.configurations[0].parameter_overrides[0].visible #=> Boolean
    #   resp.target_configuration.http.agentcore_runtime.arn #=> String
    #   resp.target_configuration.http.agentcore_runtime.qualifier #=> String
    #   resp.target_configuration.http.agentcore_runtime.schema.source.s3.uri #=> String
    #   resp.target_configuration.http.agentcore_runtime.schema.source.s3.bucket_owner_account_id #=> String
    #   resp.target_configuration.http.agentcore_runtime.schema.source.inline_payload #=> String
    #   resp.target_configuration.http.passthrough.endpoint #=> String
    #   resp.target_configuration.http.passthrough.protocol_type #=> String, one of "MCP", "A2A", "INFERENCE", "CUSTOM"
    #   resp.target_configuration.http.passthrough.schema.source.s3.uri #=> String
    #   resp.target_configuration.http.passthrough.schema.source.s3.bucket_owner_account_id #=> String
    #   resp.target_configuration.http.passthrough.schema.source.inline_payload #=> String
    #   resp.target_configuration.http.passthrough.stickiness_configuration.identifier #=> String
    #   resp.target_configuration.http.passthrough.stickiness_configuration.timeout #=> Integer
    #   resp.target_configuration.http.passthrough.stickiness_configuration.composite_identifier #=> Array
    #   resp.target_configuration.http.passthrough.stickiness_configuration.composite_identifier[0] #=> String
    #   resp.target_configuration.http.passthrough.static_query_parameters #=> Hash
    #   resp.target_configuration.http.passthrough.static_query_parameters["StaticQueryParameterName"] #=> String
    #   resp.target_configuration.http.passthrough.static_query_parameter_conflict_resolution #=> String, one of "CLIENT_OVERRIDE", "STATIC_OVERRIDE"
    #   resp.target_configuration.http.connector.source.connector_id #=> String
    #   resp.target_configuration.http.connector.parameters #=> Hash
    #   resp.target_configuration.http.connector.parameters["ConnectorParameterName"] #=> String
    #   resp.target_configuration.inference.connector.source.connector_id #=> String
    #   resp.target_configuration.inference.provider.endpoint #=> String
    #   resp.target_configuration.inference.provider.model_mapping.provider_prefix.strip #=> Boolean
    #   resp.target_configuration.inference.provider.model_mapping.provider_prefix.separator #=> String
    #   resp.target_configuration.inference.provider.operations #=> Array
    #   resp.target_configuration.inference.provider.operations[0].path #=> String
    #   resp.target_configuration.inference.provider.operations[0].provider_path #=> String
    #   resp.target_configuration.inference.provider.operations[0].models #=> Array
    #   resp.target_configuration.inference.provider.operations[0].models[0].model #=> String
    #   resp.credential_provider_configurations #=> Array
    #   resp.credential_provider_configurations[0].credential_provider_type #=> String, one of "GATEWAY_IAM_ROLE", "OAUTH", "API_KEY", "CALLER_IAM_CREDENTIALS", "JWT_PASSTHROUGH"
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.provider_arn #=> String
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes #=> Array
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes[0] #=> String
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters #=> Hash
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters["OAuthCustomParametersKey"] #=> String
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.grant_type #=> String, one of "CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "TOKEN_EXCHANGE"
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.default_return_url #=> String
    #   resp.credential_provider_configurations[0].credential_provider.api_key_credential_provider.provider_arn #=> String
    #   resp.credential_provider_configurations[0].credential_provider.api_key_credential_provider.credential_parameter_name #=> String
    #   resp.credential_provider_configurations[0].credential_provider.api_key_credential_provider.credential_prefix #=> String
    #   resp.credential_provider_configurations[0].credential_provider.api_key_credential_provider.credential_location #=> String, one of "HEADER", "QUERY_PARAMETER"
    #   resp.credential_provider_configurations[0].credential_provider.iam_credential_provider.service #=> String
    #   resp.credential_provider_configurations[0].credential_provider.iam_credential_provider.region #=> String
    #   resp.last_synchronized_at #=> Time
    #   resp.metadata_configuration.allowed_request_headers #=> Array
    #   resp.metadata_configuration.allowed_request_headers[0] #=> String
    #   resp.metadata_configuration.allowed_query_parameters #=> Array
    #   resp.metadata_configuration.allowed_query_parameters[0] #=> String
    #   resp.metadata_configuration.allowed_response_headers #=> Array
    #   resp.metadata_configuration.allowed_response_headers[0] #=> String
    #   resp.private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.private_endpoint_managed_resources #=> Array
    #   resp.private_endpoint_managed_resources[0].domain #=> String
    #   resp.private_endpoint_managed_resources[0].resource_gateway_arn #=> String
    #   resp.private_endpoint_managed_resources[0].resource_association_arn #=> String
    #   resp.authorization_data.oauth2.authorization_url #=> String
    #   resp.authorization_data.oauth2.user_id #=> String
    #   resp.protocol_type #=> String, one of "MCP", "HTTP"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateGatewayTarget AWS API Documentation
    #
    # @overload update_gateway_target(params = {})
    # @param [Hash] params ({})
    def update_gateway_target(params = {}, options = {})
      req = build_request(:update_gateway_target, params)
      req.send_request(options)
    end

    # Operation to update a harness.
    #
    # @option params [required, String] :harness_id
    #   The ID of the harness to update.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :execution_role_arn
    #   The ARN of the IAM role that the harness assumes when running. If not
    #   specified, the existing value is retained.
    #
    # @option params [Types::HarnessEnvironmentProviderRequest] :environment
    #   The compute environment configuration for the harness. If not
    #   specified, the existing value is retained.
    #
    # @option params [Types::UpdatedHarnessEnvironmentArtifact] :environment_artifact
    #   The environment artifact for the harness. Use the optionalValue
    #   wrapper to set a new value, or set it to null to clear the existing
    #   configuration.
    #
    # @option params [Hash<String,String>] :environment_variables
    #   Environment variables to set in the harness runtime environment. If
    #   specified, this replaces all existing environment variables. If not
    #   specified, the existing value is retained.
    #
    # @option params [Types::UpdatedAuthorizerConfiguration] :authorizer_configuration
    #   Wrapper for updating an optional AuthorizerConfiguration field with
    #   PATCH semantics. When present in an update request, the authorizer
    #   configuration is replaced with optionalValue. When absent, the
    #   authorizer configuration is left unchanged. To unset, include the
    #   wrapper with optionalValue not specified.
    #
    # @option params [Types::HarnessModelConfiguration] :model
    #   The model configuration for the harness. If not specified, the
    #   existing value is retained.
    #
    # @option params [Array<Types::HarnessSystemContentBlock>] :system_prompt
    #   The system prompt that defines the agent's behavior. If not
    #   specified, the existing value is retained.
    #
    # @option params [Array<Types::HarnessTool>] :tools
    #   The tools available to the agent. If specified, this replaces all
    #   existing tools. If not specified, the existing value is retained.
    #
    # @option params [Array<Types::HarnessSkill>] :skills
    #   The skills available to the agent. If specified, this replaces all
    #   existing skills. If not specified, the existing value is retained.
    #
    # @option params [Array<String>] :allowed_tools
    #   The tools that the agent is allowed to use. If specified, this
    #   replaces all existing allowed tools. If not specified, the existing
    #   value is retained.
    #
    # @option params [Types::UpdatedHarnessMemoryConfiguration] :memory
    #   The AgentCore Memory configuration. Use the optionalValue wrapper to
    #   set a new value, or set it to null to clear the existing
    #   configuration.
    #
    # @option params [Types::HarnessTruncationConfiguration] :truncation
    #   The truncation configuration for managing conversation context. If not
    #   specified, the existing value is retained.
    #
    # @option params [Integer] :max_iterations
    #   The maximum number of iterations the agent loop can execute per
    #   invocation. If not specified, the existing value is retained.
    #
    # @option params [Integer] :max_tokens
    #   The maximum total number of output tokens the agent can generate
    #   across all model calls within a single invocation. If not specified,
    #   the existing value is retained.
    #
    # @option params [Integer] :timeout_seconds
    #   The maximum duration in seconds for the agent loop execution per
    #   invocation. If not specified, the existing value is retained.
    #
    # @return [Types::UpdateHarnessResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateHarnessResponse#harness #harness} => Types::Harness
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_harness({
    #     harness_id: "HarnessId", # required
    #     client_token: "ClientToken",
    #     execution_role_arn: "RoleArn",
    #     environment: {
    #       agent_core_runtime_environment: {
    #         lifecycle_configuration: {
    #           idle_runtime_session_timeout: 1,
    #           max_lifetime: 1,
    #         },
    #         network_configuration: {
    #           network_mode: "PUBLIC", # required, accepts PUBLIC, VPC
    #           network_mode_config: {
    #             security_groups: ["SecurityGroupId"], # required
    #             subnets: ["SubnetId"], # required
    #             require_service_s3_endpoint: false,
    #           },
    #         },
    #         filesystem_configurations: [
    #           {
    #             session_storage: {
    #               mount_path: "MountPath", # required
    #             },
    #             s3_files_access_point: {
    #               access_point_arn: "S3FilesAccessPointArn", # required
    #               mount_path: "MountPath", # required
    #             },
    #             efs_access_point: {
    #               access_point_arn: "EfsAccessPointArn", # required
    #               mount_path: "MountPath", # required
    #             },
    #             capacity_provider_volume: {
    #               volume_name: "CapacityProviderVolumeName", # required
    #               mount_path: "MountPath", # required
    #             },
    #           },
    #         ],
    #       },
    #     },
    #     environment_artifact: {
    #       optional_value: {
    #         container_configuration: {
    #           container_uri: "RuntimeContainerUri", # required
    #         },
    #       },
    #     },
    #     environment_variables: {
    #       "EnvironmentVariableKey" => "EnvironmentVariableValue",
    #     },
    #     authorizer_configuration: {
    #       optional_value: {
    #         custom_jwt_authorizer: {
    #           discovery_url: "DiscoveryUrl", # required
    #           allowed_audience: ["AllowedAudience"],
    #           allowed_clients: ["AllowedClient"],
    #           allowed_scopes: ["AllowedScopeType"],
    #           advertised_scope_mapping: {
    #             "AllowedScopeType" => "AllowedScopeType",
    #           },
    #           custom_claims: [
    #             {
    #               inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #               inbound_token_claim_value_type: "STRING", # required, accepts STRING, STRING_ARRAY
    #               authorizing_claim_match_value: { # required
    #                 claim_match_value: { # required
    #                   match_value_string: "MatchValueString",
    #                   match_value_string_list: ["MatchValueString"],
    #                 },
    #                 claim_match_operator: "EQUALS", # required, accepts EQUALS, CONTAINS, CONTAINS_ANY
    #               },
    #             },
    #           ],
    #           private_endpoint: {
    #             self_managed_lattice_resource: {
    #               resource_configuration_identifier: "ResourceConfigurationIdentifier",
    #             },
    #             managed_vpc_resource: {
    #               vpc_identifier: "VpcIdentifier", # required
    #               subnet_ids: ["SubnetId"], # required
    #               endpoint_ip_address_type: "IPV4", # required, accepts IPV4, IPV6
    #               security_group_ids: ["SecurityGroupIdentifier"],
    #               tags: {
    #                 "TagKey" => "TagValue",
    #               },
    #               routing_domain: "RoutingDomain",
    #             },
    #           },
    #           private_endpoint_overrides: [
    #             {
    #               domain: "PrivateEndpointOverrideDomain", # required
    #               private_endpoint: { # required
    #                 self_managed_lattice_resource: {
    #                   resource_configuration_identifier: "ResourceConfigurationIdentifier",
    #                 },
    #                 managed_vpc_resource: {
    #                   vpc_identifier: "VpcIdentifier", # required
    #                   subnet_ids: ["SubnetId"], # required
    #                   endpoint_ip_address_type: "IPV4", # required, accepts IPV4, IPV6
    #                   security_group_ids: ["SecurityGroupIdentifier"],
    #                   tags: {
    #                     "TagKey" => "TagValue",
    #                   },
    #                   routing_domain: "RoutingDomain",
    #                 },
    #               },
    #             },
    #           ],
    #           allowed_workload_configuration: {
    #             hosting_environments: [
    #               {
    #                 arn: "BedrockAgentcoreResourceArn", # required
    #               },
    #             ],
    #             workload_identities: ["WorkloadIdentityNameType"],
    #           },
    #         },
    #       },
    #     },
    #     model: {
    #       bedrock_model_config: {
    #         model_id: "ModelId", # required
    #         max_tokens: 1,
    #         temperature: 1.0,
    #         top_p: 1.0,
    #         api_format: "converse_stream", # accepts converse_stream, responses, chat_completions
    #         additional_params: {
    #         },
    #       },
    #       open_ai_model_config: {
    #         model_id: "ModelId", # required
    #         api_key_arn: "ApiKeyArn", # required
    #         max_tokens: 1,
    #         temperature: 1.0,
    #         top_p: 1.0,
    #         api_format: "chat_completions", # accepts chat_completions, responses
    #         additional_params: {
    #         },
    #       },
    #       gemini_model_config: {
    #         model_id: "ModelId", # required
    #         api_key_arn: "ApiKeyArn", # required
    #         max_tokens: 1,
    #         temperature: 1.0,
    #         top_p: 1.0,
    #         top_k: 1,
    #         additional_params: {
    #         },
    #       },
    #       lite_llm_model_config: {
    #         model_id: "ModelId", # required
    #         api_key_arn: "ApiKeyArn",
    #         api_base: "HarnessLiteLlmApiBase",
    #         max_tokens: 1,
    #         temperature: 1.0,
    #         top_p: 1.0,
    #         additional_params: {
    #         },
    #       },
    #     },
    #     system_prompt: [
    #       {
    #         text: "SensitiveText",
    #       },
    #     ],
    #     tools: [
    #       {
    #         type: "remote_mcp", # required, accepts remote_mcp, agentcore_browser, agentcore_gateway, inline_function, agentcore_code_interpreter
    #         name: "HarnessToolName",
    #         config: {
    #           remote_mcp: {
    #             url: "HarnessRemoteMcpUrl", # required
    #             headers: {
    #               "HttpHeaderKey" => "HttpHeaderValue",
    #             },
    #           },
    #           agent_core_browser: {
    #             browser_arn: "HarnessBrowserArn",
    #           },
    #           agent_core_gateway: {
    #             gateway_arn: "GatewayArn", # required
    #             outbound_auth: {
    #               aws_iam: {
    #               },
    #               none: {
    #               },
    #               oauth: {
    #                 provider_arn: "OAuthCredentialProviderArn", # required
    #                 scopes: ["OAuthScope"], # required
    #                 custom_parameters: {
    #                   "OAuthCustomParametersKey" => "OAuthCustomParametersValue",
    #                 },
    #                 grant_type: "CLIENT_CREDENTIALS", # accepts CLIENT_CREDENTIALS, AUTHORIZATION_CODE, TOKEN_EXCHANGE
    #                 default_return_url: "OAuthDefaultReturnUrl",
    #               },
    #             },
    #           },
    #           inline_function: {
    #             description: "HarnessInlineFunctionDescription", # required
    #             input_schema: { # required
    #             },
    #           },
    #           agent_core_code_interpreter: {
    #             code_interpreter_arn: "HarnessCodeInterpreterArn",
    #           },
    #         },
    #       },
    #     ],
    #     skills: [
    #       {
    #         path: "HarnessSkillPath",
    #         s3: {
    #           uri: "HarnessSkillS3Uri", # required
    #         },
    #         git: {
    #           url: "HarnessSkillGitUrl", # required
    #           path: "String",
    #           auth: {
    #             credential_arn: "ApiKeyArn", # required
    #             username: "String",
    #           },
    #         },
    #         aws_skills: {
    #           paths: ["HarnessAwsSkillPath"],
    #         },
    #       },
    #     ],
    #     allowed_tools: ["HarnessAllowedTool"],
    #     memory: {
    #       optional_value: {
    #         agent_core_memory_configuration: {
    #           arn: "MemoryArn", # required
    #           actor_id: "String",
    #           messages_count: 1,
    #           retrieval_config: {
    #             "String" => {
    #               top_k: 1,
    #               relevance_score: 1.0,
    #               strategy_id: "String",
    #             },
    #           },
    #         },
    #         managed_memory_configuration: {
    #           arn: "MemoryArn",
    #           strategies: ["SEMANTIC"], # accepts SEMANTIC, SUMMARIZATION, USER_PREFERENCE, EPISODIC
    #           event_expiry_duration: 1,
    #           encryption_key_arn: "KmsKeyArn",
    #         },
    #         disabled: {
    #         },
    #       },
    #     },
    #     truncation: {
    #       strategy: "sliding_window", # required, accepts sliding_window, summarization, none
    #       config: {
    #         sliding_window: {
    #           messages_count: 1,
    #         },
    #         summarization: {
    #           summary_ratio: 1.0,
    #           preserve_recent_messages: 1,
    #           summarization_system_prompt: "String",
    #         },
    #       },
    #     },
    #     max_iterations: 1,
    #     max_tokens: 1,
    #     timeout_seconds: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.harness.harness_id #=> String
    #   resp.harness.harness_name #=> String
    #   resp.harness.arn #=> String
    #   resp.harness.status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"
    #   resp.harness.harness_version #=> String
    #   resp.harness.execution_role_arn #=> String
    #   resp.harness.created_at #=> Time
    #   resp.harness.updated_at #=> Time
    #   resp.harness.model.bedrock_model_config.model_id #=> String
    #   resp.harness.model.bedrock_model_config.max_tokens #=> Integer
    #   resp.harness.model.bedrock_model_config.temperature #=> Float
    #   resp.harness.model.bedrock_model_config.top_p #=> Float
    #   resp.harness.model.bedrock_model_config.api_format #=> String, one of "converse_stream", "responses", "chat_completions"
    #   resp.harness.model.open_ai_model_config.model_id #=> String
    #   resp.harness.model.open_ai_model_config.api_key_arn #=> String
    #   resp.harness.model.open_ai_model_config.max_tokens #=> Integer
    #   resp.harness.model.open_ai_model_config.temperature #=> Float
    #   resp.harness.model.open_ai_model_config.top_p #=> Float
    #   resp.harness.model.open_ai_model_config.api_format #=> String, one of "chat_completions", "responses"
    #   resp.harness.model.gemini_model_config.model_id #=> String
    #   resp.harness.model.gemini_model_config.api_key_arn #=> String
    #   resp.harness.model.gemini_model_config.max_tokens #=> Integer
    #   resp.harness.model.gemini_model_config.temperature #=> Float
    #   resp.harness.model.gemini_model_config.top_p #=> Float
    #   resp.harness.model.gemini_model_config.top_k #=> Integer
    #   resp.harness.model.lite_llm_model_config.model_id #=> String
    #   resp.harness.model.lite_llm_model_config.api_key_arn #=> String
    #   resp.harness.model.lite_llm_model_config.api_base #=> String
    #   resp.harness.model.lite_llm_model_config.max_tokens #=> Integer
    #   resp.harness.model.lite_llm_model_config.temperature #=> Float
    #   resp.harness.model.lite_llm_model_config.top_p #=> Float
    #   resp.harness.system_prompt #=> Array
    #   resp.harness.system_prompt[0].text #=> String
    #   resp.harness.tools #=> Array
    #   resp.harness.tools[0].type #=> String, one of "remote_mcp", "agentcore_browser", "agentcore_gateway", "inline_function", "agentcore_code_interpreter"
    #   resp.harness.tools[0].name #=> String
    #   resp.harness.tools[0].config.remote_mcp.url #=> String
    #   resp.harness.tools[0].config.remote_mcp.headers #=> Hash
    #   resp.harness.tools[0].config.remote_mcp.headers["HttpHeaderKey"] #=> String
    #   resp.harness.tools[0].config.agent_core_browser.browser_arn #=> String
    #   resp.harness.tools[0].config.agent_core_gateway.gateway_arn #=> String
    #   resp.harness.tools[0].config.agent_core_gateway.outbound_auth.oauth.provider_arn #=> String
    #   resp.harness.tools[0].config.agent_core_gateway.outbound_auth.oauth.scopes #=> Array
    #   resp.harness.tools[0].config.agent_core_gateway.outbound_auth.oauth.scopes[0] #=> String
    #   resp.harness.tools[0].config.agent_core_gateway.outbound_auth.oauth.custom_parameters #=> Hash
    #   resp.harness.tools[0].config.agent_core_gateway.outbound_auth.oauth.custom_parameters["OAuthCustomParametersKey"] #=> String
    #   resp.harness.tools[0].config.agent_core_gateway.outbound_auth.oauth.grant_type #=> String, one of "CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "TOKEN_EXCHANGE"
    #   resp.harness.tools[0].config.agent_core_gateway.outbound_auth.oauth.default_return_url #=> String
    #   resp.harness.tools[0].config.inline_function.description #=> String
    #   resp.harness.tools[0].config.agent_core_code_interpreter.code_interpreter_arn #=> String
    #   resp.harness.skills #=> Array
    #   resp.harness.skills[0].path #=> String
    #   resp.harness.skills[0].s3.uri #=> String
    #   resp.harness.skills[0].git.url #=> String
    #   resp.harness.skills[0].git.path #=> String
    #   resp.harness.skills[0].git.auth.credential_arn #=> String
    #   resp.harness.skills[0].git.auth.username #=> String
    #   resp.harness.skills[0].aws_skills.paths #=> Array
    #   resp.harness.skills[0].aws_skills.paths[0] #=> String
    #   resp.harness.allowed_tools #=> Array
    #   resp.harness.allowed_tools[0] #=> String
    #   resp.harness.truncation.strategy #=> String, one of "sliding_window", "summarization", "none"
    #   resp.harness.truncation.config.sliding_window.messages_count #=> Integer
    #   resp.harness.truncation.config.summarization.summary_ratio #=> Float
    #   resp.harness.truncation.config.summarization.preserve_recent_messages #=> Integer
    #   resp.harness.truncation.config.summarization.summarization_system_prompt #=> String
    #   resp.harness.environment.agent_core_runtime_environment.agent_runtime_arn #=> String
    #   resp.harness.environment.agent_core_runtime_environment.agent_runtime_name #=> String
    #   resp.harness.environment.agent_core_runtime_environment.agent_runtime_id #=> String
    #   resp.harness.environment.agent_core_runtime_environment.lifecycle_configuration.idle_runtime_session_timeout #=> Integer
    #   resp.harness.environment.agent_core_runtime_environment.lifecycle_configuration.max_lifetime #=> Integer
    #   resp.harness.environment.agent_core_runtime_environment.network_configuration.network_mode #=> String, one of "PUBLIC", "VPC"
    #   resp.harness.environment.agent_core_runtime_environment.network_configuration.network_mode_config.security_groups #=> Array
    #   resp.harness.environment.agent_core_runtime_environment.network_configuration.network_mode_config.security_groups[0] #=> String
    #   resp.harness.environment.agent_core_runtime_environment.network_configuration.network_mode_config.subnets #=> Array
    #   resp.harness.environment.agent_core_runtime_environment.network_configuration.network_mode_config.subnets[0] #=> String
    #   resp.harness.environment.agent_core_runtime_environment.network_configuration.network_mode_config.require_service_s3_endpoint #=> Boolean
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations #=> Array
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations[0].session_storage.mount_path #=> String
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations[0].s3_files_access_point.access_point_arn #=> String
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations[0].s3_files_access_point.mount_path #=> String
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations[0].efs_access_point.access_point_arn #=> String
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations[0].efs_access_point.mount_path #=> String
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations[0].capacity_provider_volume.volume_name #=> String
    #   resp.harness.environment.agent_core_runtime_environment.filesystem_configurations[0].capacity_provider_volume.mount_path #=> String
    #   resp.harness.environment_artifact.container_configuration.container_uri #=> String
    #   resp.harness.environment_variables #=> Hash
    #   resp.harness.environment_variables["EnvironmentVariableKey"] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.discovery_url #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_audience #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_audience[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_clients #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_clients[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_scopes #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_scopes[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.advertised_scope_mapping #=> Hash
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.advertised_scope_mapping["AllowedScopeType"] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.custom_claims #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_name #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_value_type #=> String, one of "STRING", "STRING_ARRAY"
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_operator #=> String, one of "EQUALS", "CONTAINS", "CONTAINS_ANY"
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].domain #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.hosting_environments #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.hosting_environments[0].arn #=> String
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.workload_identities #=> Array
    #   resp.harness.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.workload_identities[0] #=> String
    #   resp.harness.memory.agent_core_memory_configuration.arn #=> String
    #   resp.harness.memory.agent_core_memory_configuration.actor_id #=> String
    #   resp.harness.memory.agent_core_memory_configuration.messages_count #=> Integer
    #   resp.harness.memory.agent_core_memory_configuration.retrieval_config #=> Hash
    #   resp.harness.memory.agent_core_memory_configuration.retrieval_config["String"].top_k #=> Integer
    #   resp.harness.memory.agent_core_memory_configuration.retrieval_config["String"].relevance_score #=> Float
    #   resp.harness.memory.agent_core_memory_configuration.retrieval_config["String"].strategy_id #=> String
    #   resp.harness.memory.managed_memory_configuration.arn #=> String
    #   resp.harness.memory.managed_memory_configuration.strategies #=> Array
    #   resp.harness.memory.managed_memory_configuration.strategies[0] #=> String, one of "SEMANTIC", "SUMMARIZATION", "USER_PREFERENCE", "EPISODIC"
    #   resp.harness.memory.managed_memory_configuration.event_expiry_duration #=> Integer
    #   resp.harness.memory.managed_memory_configuration.encryption_key_arn #=> String
    #   resp.harness.max_iterations #=> Integer
    #   resp.harness.max_tokens #=> Integer
    #   resp.harness.timeout_seconds #=> Integer
    #   resp.harness.failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateHarness AWS API Documentation
    #
    # @overload update_harness(params = {})
    # @param [Hash] params ({})
    def update_harness(params = {}, options = {})
      req = build_request(:update_harness, params)
      req.send_request(options)
    end

    # Operation to update a harness endpoint.
    #
    # @option params [required, String] :harness_id
    #   The ID of the harness that the endpoint belongs to.
    #
    # @option params [required, String] :endpoint_name
    #   The name of the endpoint to update.
    #
    # @option params [String] :target_version
    #   The harness version that the endpoint points to. If not specified, the
    #   existing value is retained.
    #
    # @option params [String] :description
    #   A description of the endpoint. If not specified, the existing value is
    #   retained.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateHarnessEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateHarnessEndpointResponse#endpoint #endpoint} => Types::HarnessEndpoint
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_harness_endpoint({
    #     harness_id: "HarnessId", # required
    #     endpoint_name: "HarnessEndpointName", # required
    #     target_version: "HarnessVersion",
    #     description: "HarnessEndpointDescription",
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint.harness_id #=> String
    #   resp.endpoint.harness_name #=> String
    #   resp.endpoint.endpoint_name #=> String
    #   resp.endpoint.arn #=> String
    #   resp.endpoint.status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"
    #   resp.endpoint.created_at #=> Time
    #   resp.endpoint.updated_at #=> Time
    #   resp.endpoint.live_version #=> String
    #   resp.endpoint.target_version #=> String
    #   resp.endpoint.description #=> String
    #   resp.endpoint.failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateHarnessEndpoint AWS API Documentation
    #
    # @overload update_harness_endpoint(params = {})
    # @param [Hash] params ({})
    def update_harness_endpoint(params = {}, options = {})
      req = build_request(:update_harness_endpoint, params)
      req.send_request(options)
    end

    # Update an Amazon Bedrock AgentCore Memory resource memory.
    #
    # @option params [String] :client_token
    #   A client token is used for keeping track of idempotent requests. It
    #   can contain a session id which can be around 250 chars, combined with
    #   a unique AWS identifier.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :memory_id
    #   The unique identifier of the memory to update.
    #
    # @option params [String] :description
    #   The updated description of the AgentCore Memory resource.
    #
    # @option params [Integer] :event_expiry_duration
    #   The number of days after which memory events will expire, between 7
    #   and 365 days.
    #
    # @option params [String] :memory_execution_role_arn
    #   The ARN of the IAM role that provides permissions for the AgentCore
    #   Memory resource.
    #
    # @option params [Types::ModifyMemoryStrategies] :memory_strategies
    #   The memory strategies to add, modify, or delete.
    #
    # @option params [Array<Types::IndexedKey>] :add_indexed_keys
    #   Additional metadata keys to index. Previously indexed keys cannot be
    #   removed.
    #
    # @option params [Array<Types::NamespaceKeyEntry>] :namespace_keys
    #   The namespace variable key definitions with validation rules for this
    #   memory. This value fully replaces the existing set — any key you omit
    #   is removed. Any referenced `namespaceKey` omission will throw
    #   ValidationException.
    #
    # @option params [Types::StreamDeliveryResources] :stream_delivery_resources
    #   Configuration for streaming memory record data to external resources.
    #
    # @return [Types::UpdateMemoryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMemoryOutput#memory #memory} => Types::Memory
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_memory({
    #     client_token: "UpdateMemoryInputClientTokenString",
    #     memory_id: "MemoryId", # required
    #     description: "Description",
    #     event_expiry_duration: 1,
    #     memory_execution_role_arn: "Arn",
    #     memory_strategies: {
    #       add_memory_strategies: [
    #         {
    #           semantic_memory_strategy: {
    #             name: "Name", # required
    #             description: "Description",
    #             namespaces: ["Namespace"],
    #             namespace_templates: ["Namespace"],
    #             memory_record_schema: {
    #               metadata_schema: [
    #                 {
    #                   key: "MetadataKey", # required
    #                   type: "STRING", # accepts STRING, STRINGLIST, NUMBER
    #                   extraction_type: "LLM_INFERRED", # accepts LLM_INFERRED, STRICTLY_CONSISTENT
    #                   extraction_config: {
    #                     llm_extraction_config: {
    #                       llm_extraction_instruction: "LlmExtractionInstruction",
    #                       definition: "Definition", # required
    #                       validation: {
    #                         string_validation: {
    #                           allowed_values: ["AllowedStringValue"], # required
    #                         },
    #                         string_list_validation: {
    #                           allowed_values: ["AllowedStringListValue"],
    #                           max_items: 1,
    #                         },
    #                         number_validation: {
    #                           min_value: 1.0,
    #                           max_value: 1.0,
    #                         },
    #                       },
    #                     },
    #                   },
    #                 },
    #               ],
    #             },
    #           },
    #           summary_memory_strategy: {
    #             name: "Name", # required
    #             description: "Description",
    #             namespaces: ["Namespace"],
    #             namespace_templates: ["Namespace"],
    #             memory_record_schema: {
    #               metadata_schema: [
    #                 {
    #                   key: "MetadataKey", # required
    #                   type: "STRING", # accepts STRING, STRINGLIST, NUMBER
    #                   extraction_type: "LLM_INFERRED", # accepts LLM_INFERRED, STRICTLY_CONSISTENT
    #                   extraction_config: {
    #                     llm_extraction_config: {
    #                       llm_extraction_instruction: "LlmExtractionInstruction",
    #                       definition: "Definition", # required
    #                       validation: {
    #                         string_validation: {
    #                           allowed_values: ["AllowedStringValue"], # required
    #                         },
    #                         string_list_validation: {
    #                           allowed_values: ["AllowedStringListValue"],
    #                           max_items: 1,
    #                         },
    #                         number_validation: {
    #                           min_value: 1.0,
    #                           max_value: 1.0,
    #                         },
    #                       },
    #                     },
    #                   },
    #                 },
    #               ],
    #             },
    #           },
    #           user_preference_memory_strategy: {
    #             name: "Name", # required
    #             description: "Description",
    #             namespaces: ["Namespace"],
    #             namespace_templates: ["Namespace"],
    #             memory_record_schema: {
    #               metadata_schema: [
    #                 {
    #                   key: "MetadataKey", # required
    #                   type: "STRING", # accepts STRING, STRINGLIST, NUMBER
    #                   extraction_type: "LLM_INFERRED", # accepts LLM_INFERRED, STRICTLY_CONSISTENT
    #                   extraction_config: {
    #                     llm_extraction_config: {
    #                       llm_extraction_instruction: "LlmExtractionInstruction",
    #                       definition: "Definition", # required
    #                       validation: {
    #                         string_validation: {
    #                           allowed_values: ["AllowedStringValue"], # required
    #                         },
    #                         string_list_validation: {
    #                           allowed_values: ["AllowedStringListValue"],
    #                           max_items: 1,
    #                         },
    #                         number_validation: {
    #                           min_value: 1.0,
    #                           max_value: 1.0,
    #                         },
    #                       },
    #                     },
    #                   },
    #                 },
    #               ],
    #             },
    #           },
    #           custom_memory_strategy: {
    #             name: "Name", # required
    #             description: "Description",
    #             namespaces: ["Namespace"],
    #             namespace_templates: ["Namespace"],
    #             configuration: {
    #               semantic_override: {
    #                 extraction: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 },
    #                 consolidation: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 },
    #               },
    #               summary_override: {
    #                 consolidation: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 },
    #               },
    #               user_preference_override: {
    #                 extraction: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 },
    #                 consolidation: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 },
    #               },
    #               episodic_override: {
    #                 extraction: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 },
    #                 consolidation: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 },
    #                 reflection: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                   namespaces: ["Namespace"],
    #                   namespace_templates: ["Namespace"],
    #                   memory_record_schema: {
    #                     metadata_schema: [
    #                       {
    #                         key: "MetadataKey", # required
    #                         type: "STRING", # accepts STRING, STRINGLIST, NUMBER
    #                         extraction_type: "LLM_INFERRED", # accepts LLM_INFERRED, STRICTLY_CONSISTENT
    #                         extraction_config: {
    #                           llm_extraction_config: {
    #                             llm_extraction_instruction: "LlmExtractionInstruction",
    #                             definition: "Definition", # required
    #                             validation: {
    #                               string_validation: {
    #                                 allowed_values: ["AllowedStringValue"], # required
    #                               },
    #                               string_list_validation: {
    #                                 allowed_values: ["AllowedStringListValue"],
    #                                 max_items: 1,
    #                               },
    #                               number_validation: {
    #                                 min_value: 1.0,
    #                                 max_value: 1.0,
    #                               },
    #                             },
    #                           },
    #                         },
    #                       },
    #                     ],
    #                   },
    #                 },
    #               },
    #               self_managed_configuration: {
    #                 trigger_conditions: [
    #                   {
    #                     message_based_trigger: {
    #                       message_count: 1,
    #                     },
    #                     token_based_trigger: {
    #                       token_count: 1,
    #                     },
    #                     time_based_trigger: {
    #                       idle_session_timeout: 1,
    #                     },
    #                   },
    #                 ],
    #                 invocation_configuration: { # required
    #                   topic_arn: "Arn", # required
    #                   payload_delivery_bucket_name: "InvocationConfigurationInputPayloadDeliveryBucketNameString", # required
    #                 },
    #                 historical_context_window_size: 1,
    #               },
    #             },
    #             memory_record_schema: {
    #               metadata_schema: [
    #                 {
    #                   key: "MetadataKey", # required
    #                   type: "STRING", # accepts STRING, STRINGLIST, NUMBER
    #                   extraction_type: "LLM_INFERRED", # accepts LLM_INFERRED, STRICTLY_CONSISTENT
    #                   extraction_config: {
    #                     llm_extraction_config: {
    #                       llm_extraction_instruction: "LlmExtractionInstruction",
    #                       definition: "Definition", # required
    #                       validation: {
    #                         string_validation: {
    #                           allowed_values: ["AllowedStringValue"], # required
    #                         },
    #                         string_list_validation: {
    #                           allowed_values: ["AllowedStringListValue"],
    #                           max_items: 1,
    #                         },
    #                         number_validation: {
    #                           min_value: 1.0,
    #                           max_value: 1.0,
    #                         },
    #                       },
    #                     },
    #                   },
    #                 },
    #               ],
    #             },
    #           },
    #           episodic_memory_strategy: {
    #             name: "Name", # required
    #             description: "Description",
    #             namespaces: ["Namespace"],
    #             namespace_templates: ["Namespace"],
    #             reflection_configuration: {
    #               namespaces: ["Namespace"],
    #               namespace_templates: ["Namespace"],
    #               memory_record_schema: {
    #                 metadata_schema: [
    #                   {
    #                     key: "MetadataKey", # required
    #                     type: "STRING", # accepts STRING, STRINGLIST, NUMBER
    #                     extraction_type: "LLM_INFERRED", # accepts LLM_INFERRED, STRICTLY_CONSISTENT
    #                     extraction_config: {
    #                       llm_extraction_config: {
    #                         llm_extraction_instruction: "LlmExtractionInstruction",
    #                         definition: "Definition", # required
    #                         validation: {
    #                           string_validation: {
    #                             allowed_values: ["AllowedStringValue"], # required
    #                           },
    #                           string_list_validation: {
    #                             allowed_values: ["AllowedStringListValue"],
    #                             max_items: 1,
    #                           },
    #                           number_validation: {
    #                             min_value: 1.0,
    #                             max_value: 1.0,
    #                           },
    #                         },
    #                       },
    #                     },
    #                   },
    #                 ],
    #               },
    #             },
    #             memory_record_schema: {
    #               metadata_schema: [
    #                 {
    #                   key: "MetadataKey", # required
    #                   type: "STRING", # accepts STRING, STRINGLIST, NUMBER
    #                   extraction_type: "LLM_INFERRED", # accepts LLM_INFERRED, STRICTLY_CONSISTENT
    #                   extraction_config: {
    #                     llm_extraction_config: {
    #                       llm_extraction_instruction: "LlmExtractionInstruction",
    #                       definition: "Definition", # required
    #                       validation: {
    #                         string_validation: {
    #                           allowed_values: ["AllowedStringValue"], # required
    #                         },
    #                         string_list_validation: {
    #                           allowed_values: ["AllowedStringListValue"],
    #                           max_items: 1,
    #                         },
    #                         number_validation: {
    #                           min_value: 1.0,
    #                           max_value: 1.0,
    #                         },
    #                       },
    #                     },
    #                   },
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #       ],
    #       modify_memory_strategies: [
    #         {
    #           memory_strategy_id: "String", # required
    #           description: "Description",
    #           namespaces: ["Namespace"],
    #           namespace_templates: ["Namespace"],
    #           configuration: {
    #             extraction: {
    #               custom_extraction_configuration: {
    #                 semantic_extraction_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 },
    #                 user_preference_extraction_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 },
    #                 episodic_extraction_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 },
    #               },
    #             },
    #             consolidation: {
    #               custom_consolidation_configuration: {
    #                 semantic_consolidation_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 },
    #                 summary_consolidation_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 },
    #                 user_preference_consolidation_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 },
    #                 episodic_consolidation_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 },
    #               },
    #             },
    #             reflection: {
    #               episodic_reflection_configuration: {
    #                 namespaces: ["Namespace"],
    #                 namespace_templates: ["Namespace"],
    #                 memory_record_schema: {
    #                   metadata_schema: [
    #                     {
    #                       key: "MetadataKey", # required
    #                       type: "STRING", # accepts STRING, STRINGLIST, NUMBER
    #                       extraction_type: "LLM_INFERRED", # accepts LLM_INFERRED, STRICTLY_CONSISTENT
    #                       extraction_config: {
    #                         llm_extraction_config: {
    #                           llm_extraction_instruction: "LlmExtractionInstruction",
    #                           definition: "Definition", # required
    #                           validation: {
    #                             string_validation: {
    #                               allowed_values: ["AllowedStringValue"], # required
    #                             },
    #                             string_list_validation: {
    #                               allowed_values: ["AllowedStringListValue"],
    #                               max_items: 1,
    #                             },
    #                             number_validation: {
    #                               min_value: 1.0,
    #                               max_value: 1.0,
    #                             },
    #                           },
    #                         },
    #                       },
    #                     },
    #                   ],
    #                 },
    #               },
    #               custom_reflection_configuration: {
    #                 episodic_reflection_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                   namespaces: ["Namespace"],
    #                   namespace_templates: ["Namespace"],
    #                   memory_record_schema: {
    #                     metadata_schema: [
    #                       {
    #                         key: "MetadataKey", # required
    #                         type: "STRING", # accepts STRING, STRINGLIST, NUMBER
    #                         extraction_type: "LLM_INFERRED", # accepts LLM_INFERRED, STRICTLY_CONSISTENT
    #                         extraction_config: {
    #                           llm_extraction_config: {
    #                             llm_extraction_instruction: "LlmExtractionInstruction",
    #                             definition: "Definition", # required
    #                             validation: {
    #                               string_validation: {
    #                                 allowed_values: ["AllowedStringValue"], # required
    #                               },
    #                               string_list_validation: {
    #                                 allowed_values: ["AllowedStringListValue"],
    #                                 max_items: 1,
    #                               },
    #                               number_validation: {
    #                                 min_value: 1.0,
    #                                 max_value: 1.0,
    #                               },
    #                             },
    #                           },
    #                         },
    #                       },
    #                     ],
    #                   },
    #                 },
    #               },
    #             },
    #             self_managed_configuration: {
    #               trigger_conditions: [
    #                 {
    #                   message_based_trigger: {
    #                     message_count: 1,
    #                   },
    #                   token_based_trigger: {
    #                     token_count: 1,
    #                   },
    #                   time_based_trigger: {
    #                     idle_session_timeout: 1,
    #                   },
    #                 },
    #               ],
    #               invocation_configuration: {
    #                 topic_arn: "Arn",
    #                 payload_delivery_bucket_name: "ModifyInvocationConfigurationInputPayloadDeliveryBucketNameString",
    #               },
    #               historical_context_window_size: 1,
    #             },
    #           },
    #           memory_record_schema: {
    #             metadata_schema: [
    #               {
    #                 key: "MetadataKey", # required
    #                 type: "STRING", # accepts STRING, STRINGLIST, NUMBER
    #                 extraction_type: "LLM_INFERRED", # accepts LLM_INFERRED, STRICTLY_CONSISTENT
    #                 extraction_config: {
    #                   llm_extraction_config: {
    #                     llm_extraction_instruction: "LlmExtractionInstruction",
    #                     definition: "Definition", # required
    #                     validation: {
    #                       string_validation: {
    #                         allowed_values: ["AllowedStringValue"], # required
    #                       },
    #                       string_list_validation: {
    #                         allowed_values: ["AllowedStringListValue"],
    #                         max_items: 1,
    #                       },
    #                       number_validation: {
    #                         min_value: 1.0,
    #                         max_value: 1.0,
    #                       },
    #                     },
    #                   },
    #                 },
    #               },
    #             ],
    #           },
    #         },
    #       ],
    #       delete_memory_strategies: [
    #         {
    #           memory_strategy_id: "String", # required
    #         },
    #       ],
    #     },
    #     add_indexed_keys: [
    #       {
    #         key: "MetadataKey", # required
    #         type: "STRING", # required, accepts STRING, STRINGLIST, NUMBER
    #       },
    #     ],
    #     namespace_keys: [
    #       {
    #         key: "NamespaceVariableKey", # required
    #         validation: {
    #           allowed_values: ["NamespaceAllowedValue"],
    #           regex_pattern: "NamespaceRegexPattern",
    #         },
    #       },
    #     ],
    #     stream_delivery_resources: {
    #       resources: [ # required
    #         {
    #           kinesis: {
    #             data_stream_arn: "Arn", # required
    #             content_configurations: [ # required
    #               {
    #                 type: "MEMORY_RECORDS", # required, accepts MEMORY_RECORDS
    #                 level: "METADATA_ONLY", # accepts METADATA_ONLY, FULL_CONTENT
    #               },
    #             ],
    #           },
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.memory.arn #=> String
    #   resp.memory.id #=> String
    #   resp.memory.name #=> String
    #   resp.memory.description #=> String
    #   resp.memory.encryption_key_arn #=> String
    #   resp.memory.memory_execution_role_arn #=> String
    #   resp.memory.event_expiry_duration #=> Integer
    #   resp.memory.status #=> String, one of "CREATING", "ACTIVE", "FAILED", "DELETING", "UPDATING"
    #   resp.memory.failure_reason #=> String
    #   resp.memory.created_at #=> Time
    #   resp.memory.updated_at #=> Time
    #   resp.memory.strategies #=> Array
    #   resp.memory.strategies[0].strategy_id #=> String
    #   resp.memory.strategies[0].name #=> String
    #   resp.memory.strategies[0].description #=> String
    #   resp.memory.strategies[0].configuration.type #=> String, one of "SEMANTIC_OVERRIDE", "SUMMARY_OVERRIDE", "USER_PREFERENCE_OVERRIDE", "SELF_MANAGED", "EPISODIC_OVERRIDE"
    #   resp.memory.strategies[0].configuration.extraction.custom_extraction_configuration.semantic_extraction_override.append_to_prompt #=> String
    #   resp.memory.strategies[0].configuration.extraction.custom_extraction_configuration.semantic_extraction_override.model_id #=> String
    #   resp.memory.strategies[0].configuration.extraction.custom_extraction_configuration.user_preference_extraction_override.append_to_prompt #=> String
    #   resp.memory.strategies[0].configuration.extraction.custom_extraction_configuration.user_preference_extraction_override.model_id #=> String
    #   resp.memory.strategies[0].configuration.extraction.custom_extraction_configuration.episodic_extraction_override.append_to_prompt #=> String
    #   resp.memory.strategies[0].configuration.extraction.custom_extraction_configuration.episodic_extraction_override.model_id #=> String
    #   resp.memory.strategies[0].configuration.consolidation.custom_consolidation_configuration.semantic_consolidation_override.append_to_prompt #=> String
    #   resp.memory.strategies[0].configuration.consolidation.custom_consolidation_configuration.semantic_consolidation_override.model_id #=> String
    #   resp.memory.strategies[0].configuration.consolidation.custom_consolidation_configuration.summary_consolidation_override.append_to_prompt #=> String
    #   resp.memory.strategies[0].configuration.consolidation.custom_consolidation_configuration.summary_consolidation_override.model_id #=> String
    #   resp.memory.strategies[0].configuration.consolidation.custom_consolidation_configuration.user_preference_consolidation_override.append_to_prompt #=> String
    #   resp.memory.strategies[0].configuration.consolidation.custom_consolidation_configuration.user_preference_consolidation_override.model_id #=> String
    #   resp.memory.strategies[0].configuration.consolidation.custom_consolidation_configuration.episodic_consolidation_override.append_to_prompt #=> String
    #   resp.memory.strategies[0].configuration.consolidation.custom_consolidation_configuration.episodic_consolidation_override.model_id #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.append_to_prompt #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.model_id #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.namespaces #=> Array
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.namespaces[0] #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.namespace_templates #=> Array
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.namespace_templates[0] #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema #=> Array
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].key #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].type #=> String, one of "STRING", "STRINGLIST", "NUMBER"
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_type #=> String, one of "LLM_INFERRED", "STRICTLY_CONSISTENT"
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.llm_extraction_instruction #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.definition #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_validation.allowed_values #=> Array
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_validation.allowed_values[0] #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_list_validation.allowed_values #=> Array
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_list_validation.allowed_values[0] #=> String
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_list_validation.max_items #=> Integer
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.number_validation.min_value #=> Float
    #   resp.memory.strategies[0].configuration.reflection.custom_reflection_configuration.episodic_reflection_override.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.number_validation.max_value #=> Float
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.namespaces #=> Array
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.namespaces[0] #=> String
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.namespace_templates #=> Array
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.namespace_templates[0] #=> String
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema #=> Array
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].key #=> String
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].type #=> String, one of "STRING", "STRINGLIST", "NUMBER"
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_type #=> String, one of "LLM_INFERRED", "STRICTLY_CONSISTENT"
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.llm_extraction_instruction #=> String
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.definition #=> String
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_validation.allowed_values #=> Array
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_validation.allowed_values[0] #=> String
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_list_validation.allowed_values #=> Array
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_list_validation.allowed_values[0] #=> String
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_list_validation.max_items #=> Integer
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.number_validation.min_value #=> Float
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.number_validation.max_value #=> Float
    #   resp.memory.strategies[0].configuration.self_managed_configuration.trigger_conditions #=> Array
    #   resp.memory.strategies[0].configuration.self_managed_configuration.trigger_conditions[0].message_based_trigger.message_count #=> Integer
    #   resp.memory.strategies[0].configuration.self_managed_configuration.trigger_conditions[0].token_based_trigger.token_count #=> Integer
    #   resp.memory.strategies[0].configuration.self_managed_configuration.trigger_conditions[0].time_based_trigger.idle_session_timeout #=> Integer
    #   resp.memory.strategies[0].configuration.self_managed_configuration.invocation_configuration.topic_arn #=> String
    #   resp.memory.strategies[0].configuration.self_managed_configuration.invocation_configuration.payload_delivery_bucket_name #=> String
    #   resp.memory.strategies[0].configuration.self_managed_configuration.historical_context_window_size #=> Integer
    #   resp.memory.strategies[0].type #=> String, one of "SEMANTIC", "SUMMARIZATION", "USER_PREFERENCE", "CUSTOM", "EPISODIC"
    #   resp.memory.strategies[0].namespaces #=> Array
    #   resp.memory.strategies[0].namespaces[0] #=> String
    #   resp.memory.strategies[0].namespace_templates #=> Array
    #   resp.memory.strategies[0].namespace_templates[0] #=> String
    #   resp.memory.strategies[0].created_at #=> Time
    #   resp.memory.strategies[0].updated_at #=> Time
    #   resp.memory.strategies[0].status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema #=> Array
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].key #=> String
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].type #=> String, one of "STRING", "STRINGLIST", "NUMBER"
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_type #=> String, one of "LLM_INFERRED", "STRICTLY_CONSISTENT"
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.llm_extraction_instruction #=> String
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.definition #=> String
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_validation.allowed_values #=> Array
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_validation.allowed_values[0] #=> String
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_list_validation.allowed_values #=> Array
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_list_validation.allowed_values[0] #=> String
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.string_list_validation.max_items #=> Integer
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.number_validation.min_value #=> Float
    #   resp.memory.strategies[0].memory_record_schema.metadata_schema[0].extraction_config.llm_extraction_config.validation.number_validation.max_value #=> Float
    #   resp.memory.indexed_keys #=> Array
    #   resp.memory.indexed_keys[0].key #=> String
    #   resp.memory.indexed_keys[0].type #=> String, one of "STRING", "STRINGLIST", "NUMBER"
    #   resp.memory.namespace_keys #=> Array
    #   resp.memory.namespace_keys[0].key #=> String
    #   resp.memory.namespace_keys[0].validation.allowed_values #=> Array
    #   resp.memory.namespace_keys[0].validation.allowed_values[0] #=> String
    #   resp.memory.namespace_keys[0].validation.regex_pattern #=> String
    #   resp.memory.stream_delivery_resources.resources #=> Array
    #   resp.memory.stream_delivery_resources.resources[0].kinesis.data_stream_arn #=> String
    #   resp.memory.stream_delivery_resources.resources[0].kinesis.content_configurations #=> Array
    #   resp.memory.stream_delivery_resources.resources[0].kinesis.content_configurations[0].type #=> String, one of "MEMORY_RECORDS"
    #   resp.memory.stream_delivery_resources.resources[0].kinesis.content_configurations[0].level #=> String, one of "METADATA_ONLY", "FULL_CONTENT"
    #   resp.memory.managed_by_resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateMemory AWS API Documentation
    #
    # @overload update_memory(params = {})
    # @param [Hash] params ({})
    def update_memory(params = {}, options = {})
      req = build_request(:update_memory, params)
      req.send_request(options)
    end

    # Updates an existing OAuth2 credential provider.
    #
    # @option params [required, String] :name
    #   The name of the OAuth2 credential provider to update.
    #
    # @option params [required, String] :credential_provider_vendor
    #   The vendor of the OAuth2 credential provider.
    #
    # @option params [required, Types::Oauth2ProviderConfigInput] :oauth2_provider_config_input
    #   The configuration input for the OAuth2 provider.
    #
    # @return [Types::UpdateOauth2CredentialProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateOauth2CredentialProviderResponse#client_secret_arn #client_secret_arn} => Types::Secret
    #   * {Types::UpdateOauth2CredentialProviderResponse#client_secret_json_key #client_secret_json_key} => String
    #   * {Types::UpdateOauth2CredentialProviderResponse#client_secret_source #client_secret_source} => String
    #   * {Types::UpdateOauth2CredentialProviderResponse#name #name} => String
    #   * {Types::UpdateOauth2CredentialProviderResponse#credential_provider_vendor #credential_provider_vendor} => String
    #   * {Types::UpdateOauth2CredentialProviderResponse#credential_provider_arn #credential_provider_arn} => String
    #   * {Types::UpdateOauth2CredentialProviderResponse#callback_url #callback_url} => String
    #   * {Types::UpdateOauth2CredentialProviderResponse#oauth2_provider_config_output #oauth2_provider_config_output} => Types::Oauth2ProviderConfigOutput
    #   * {Types::UpdateOauth2CredentialProviderResponse#created_time #created_time} => Time
    #   * {Types::UpdateOauth2CredentialProviderResponse#last_updated_time #last_updated_time} => Time
    #   * {Types::UpdateOauth2CredentialProviderResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_oauth_2_credential_provider({
    #     name: "CredentialProviderName", # required
    #     credential_provider_vendor: "GoogleOauth2", # required, accepts GoogleOauth2, GithubOauth2, SlackOauth2, SalesforceOauth2, MicrosoftOauth2, CustomOauth2, AtlassianOauth2, LinkedinOauth2, XOauth2, OktaOauth2, OneLoginOauth2, PingOneOauth2, FacebookOauth2, YandexOauth2, RedditOauth2, ZoomOauth2, TwitchOauth2, SpotifyOauth2, DropboxOauth2, NotionOauth2, HubspotOauth2, CyberArkOauth2, FusionAuthOauth2, Auth0Oauth2, CognitoOauth2
    #     oauth2_provider_config_input: { # required
    #       custom_oauth_2_provider_config: {
    #         oauth_discovery: { # required
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"],
    #           },
    #         },
    #         client_id: "DefaultClientIdType",
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED", # accepts MANAGED, EXTERNAL
    #         on_behalf_of_token_exchange_config: {
    #           grant_type: "TOKEN_EXCHANGE", # required, accepts TOKEN_EXCHANGE, JWT_AUTHORIZATION_GRANT
    #           token_exchange_grant_type_config: {
    #             actor_token_content: "NONE", # required, accepts NONE, M2M, AWS_IAM_ID_TOKEN_JWT
    #             actor_token_scopes: ["ScopeType"],
    #           },
    #         },
    #         client_authentication_method: "CLIENT_SECRET_BASIC", # accepts CLIENT_SECRET_BASIC, CLIENT_SECRET_POST, AWS_IAM_ID_TOKEN_JWT, PRIVATE_KEY_JWT
    #         private_key_jwt_config: {
    #           private_key_source: {
    #             kms_key_source: {
    #               kms_key_arn: "KmsKeyArn", # required
    #             },
    #           },
    #           signing_algorithm: "RS256", # accepts RS256, PS256, ES256
    #           additional_header_claims: {
    #             "AdditionalClaimName" => "AdditionalClaimValue",
    #           },
    #           additional_payload_claims: {
    #             "AdditionalClaimName" => "AdditionalClaimValue",
    #           },
    #         },
    #         private_endpoint: {
    #           self_managed_lattice_resource: {
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier",
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4", # required, accepts IPV4, IPV6
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue",
    #             },
    #             routing_domain: "RoutingDomain",
    #           },
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               self_managed_lattice_resource: {
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier",
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4", # required, accepts IPV4, IPV6
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue",
    #                 },
    #                 routing_domain: "RoutingDomain",
    #               },
    #             },
    #           },
    #         ],
    #       },
    #       google_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED", # accepts MANAGED, EXTERNAL
    #       },
    #       github_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED", # accepts MANAGED, EXTERNAL
    #       },
    #       slack_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED", # accepts MANAGED, EXTERNAL
    #       },
    #       salesforce_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED", # accepts MANAGED, EXTERNAL
    #       },
    #       microsoft_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED", # accepts MANAGED, EXTERNAL
    #         tenant_id: "TenantIdType",
    #       },
    #       atlassian_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED", # accepts MANAGED, EXTERNAL
    #       },
    #       linkedin_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED", # accepts MANAGED, EXTERNAL
    #       },
    #       included_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED", # accepts MANAGED, EXTERNAL
    #         issuer: "IssuerUrlType",
    #         authorization_endpoint: "AuthorizationEndpointType",
    #         token_endpoint: "TokenEndpointType",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.client_secret_arn.secret_arn #=> String
    #   resp.client_secret_json_key #=> String
    #   resp.client_secret_source #=> String, one of "MANAGED", "EXTERNAL"
    #   resp.name #=> String
    #   resp.credential_provider_vendor #=> String, one of "GoogleOauth2", "GithubOauth2", "SlackOauth2", "SalesforceOauth2", "MicrosoftOauth2", "CustomOauth2", "AtlassianOauth2", "LinkedinOauth2", "XOauth2", "OktaOauth2", "OneLoginOauth2", "PingOneOauth2", "FacebookOauth2", "YandexOauth2", "RedditOauth2", "ZoomOauth2", "TwitchOauth2", "SpotifyOauth2", "DropboxOauth2", "NotionOauth2", "HubspotOauth2", "CyberArkOauth2", "FusionAuthOauth2", "Auth0Oauth2", "CognitoOauth2"
    #   resp.credential_provider_arn #=> String
    #   resp.callback_url #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.oauth_discovery.discovery_url #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.issuer #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.authorization_endpoint #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types #=> Array
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types[0] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods #=> Array
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods[0] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.client_id #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.on_behalf_of_token_exchange_config.grant_type #=> String, one of "TOKEN_EXCHANGE", "JWT_AUTHORIZATION_GRANT"
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.on_behalf_of_token_exchange_config.token_exchange_grant_type_config.actor_token_content #=> String, one of "NONE", "M2M", "AWS_IAM_ID_TOKEN_JWT"
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.on_behalf_of_token_exchange_config.token_exchange_grant_type_config.actor_token_scopes #=> Array
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.on_behalf_of_token_exchange_config.token_exchange_grant_type_config.actor_token_scopes[0] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.client_authentication_method #=> String, one of "CLIENT_SECRET_BASIC", "CLIENT_SECRET_POST", "AWS_IAM_ID_TOKEN_JWT", "PRIVATE_KEY_JWT"
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides #=> Array
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].domain #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_key_jwt_config.private_key_source.kms_key_source.kms_key_arn #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_key_jwt_config.signing_algorithm #=> String, one of "RS256", "PS256", "ES256"
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_key_jwt_config.additional_header_claims #=> Hash
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_key_jwt_config.additional_header_claims["AdditionalClaimName"] #=> String
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_key_jwt_config.additional_payload_claims #=> Hash
    #   resp.oauth2_provider_config_output.custom_oauth_2_provider_config.private_key_jwt_config.additional_payload_claims["AdditionalClaimName"] #=> String
    #   resp.oauth2_provider_config_output.google_oauth_2_provider_config.oauth_discovery.discovery_url #=> String
    #   resp.oauth2_provider_config_output.google_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.issuer #=> String
    #   resp.oauth2_provider_config_output.google_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.authorization_endpoint #=> String
    #   resp.oauth2_provider_config_output.google_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint #=> String
    #   resp.oauth2_provider_config_output.google_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types #=> Array
    #   resp.oauth2_provider_config_output.google_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types[0] #=> String
    #   resp.oauth2_provider_config_output.google_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods #=> Array
    #   resp.oauth2_provider_config_output.google_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods[0] #=> String
    #   resp.oauth2_provider_config_output.google_oauth_2_provider_config.client_id #=> String
    #   resp.oauth2_provider_config_output.github_oauth_2_provider_config.oauth_discovery.discovery_url #=> String
    #   resp.oauth2_provider_config_output.github_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.issuer #=> String
    #   resp.oauth2_provider_config_output.github_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.authorization_endpoint #=> String
    #   resp.oauth2_provider_config_output.github_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint #=> String
    #   resp.oauth2_provider_config_output.github_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types #=> Array
    #   resp.oauth2_provider_config_output.github_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types[0] #=> String
    #   resp.oauth2_provider_config_output.github_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods #=> Array
    #   resp.oauth2_provider_config_output.github_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods[0] #=> String
    #   resp.oauth2_provider_config_output.github_oauth_2_provider_config.client_id #=> String
    #   resp.oauth2_provider_config_output.slack_oauth_2_provider_config.oauth_discovery.discovery_url #=> String
    #   resp.oauth2_provider_config_output.slack_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.issuer #=> String
    #   resp.oauth2_provider_config_output.slack_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.authorization_endpoint #=> String
    #   resp.oauth2_provider_config_output.slack_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint #=> String
    #   resp.oauth2_provider_config_output.slack_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types #=> Array
    #   resp.oauth2_provider_config_output.slack_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types[0] #=> String
    #   resp.oauth2_provider_config_output.slack_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods #=> Array
    #   resp.oauth2_provider_config_output.slack_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods[0] #=> String
    #   resp.oauth2_provider_config_output.slack_oauth_2_provider_config.client_id #=> String
    #   resp.oauth2_provider_config_output.salesforce_oauth_2_provider_config.oauth_discovery.discovery_url #=> String
    #   resp.oauth2_provider_config_output.salesforce_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.issuer #=> String
    #   resp.oauth2_provider_config_output.salesforce_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.authorization_endpoint #=> String
    #   resp.oauth2_provider_config_output.salesforce_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint #=> String
    #   resp.oauth2_provider_config_output.salesforce_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types #=> Array
    #   resp.oauth2_provider_config_output.salesforce_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types[0] #=> String
    #   resp.oauth2_provider_config_output.salesforce_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods #=> Array
    #   resp.oauth2_provider_config_output.salesforce_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods[0] #=> String
    #   resp.oauth2_provider_config_output.salesforce_oauth_2_provider_config.client_id #=> String
    #   resp.oauth2_provider_config_output.microsoft_oauth_2_provider_config.oauth_discovery.discovery_url #=> String
    #   resp.oauth2_provider_config_output.microsoft_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.issuer #=> String
    #   resp.oauth2_provider_config_output.microsoft_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.authorization_endpoint #=> String
    #   resp.oauth2_provider_config_output.microsoft_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint #=> String
    #   resp.oauth2_provider_config_output.microsoft_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types #=> Array
    #   resp.oauth2_provider_config_output.microsoft_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types[0] #=> String
    #   resp.oauth2_provider_config_output.microsoft_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods #=> Array
    #   resp.oauth2_provider_config_output.microsoft_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods[0] #=> String
    #   resp.oauth2_provider_config_output.microsoft_oauth_2_provider_config.client_id #=> String
    #   resp.oauth2_provider_config_output.atlassian_oauth_2_provider_config.oauth_discovery.discovery_url #=> String
    #   resp.oauth2_provider_config_output.atlassian_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.issuer #=> String
    #   resp.oauth2_provider_config_output.atlassian_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.authorization_endpoint #=> String
    #   resp.oauth2_provider_config_output.atlassian_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint #=> String
    #   resp.oauth2_provider_config_output.atlassian_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types #=> Array
    #   resp.oauth2_provider_config_output.atlassian_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types[0] #=> String
    #   resp.oauth2_provider_config_output.atlassian_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods #=> Array
    #   resp.oauth2_provider_config_output.atlassian_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods[0] #=> String
    #   resp.oauth2_provider_config_output.atlassian_oauth_2_provider_config.client_id #=> String
    #   resp.oauth2_provider_config_output.linkedin_oauth_2_provider_config.oauth_discovery.discovery_url #=> String
    #   resp.oauth2_provider_config_output.linkedin_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.issuer #=> String
    #   resp.oauth2_provider_config_output.linkedin_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.authorization_endpoint #=> String
    #   resp.oauth2_provider_config_output.linkedin_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint #=> String
    #   resp.oauth2_provider_config_output.linkedin_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types #=> Array
    #   resp.oauth2_provider_config_output.linkedin_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types[0] #=> String
    #   resp.oauth2_provider_config_output.linkedin_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods #=> Array
    #   resp.oauth2_provider_config_output.linkedin_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods[0] #=> String
    #   resp.oauth2_provider_config_output.linkedin_oauth_2_provider_config.client_id #=> String
    #   resp.oauth2_provider_config_output.included_oauth_2_provider_config.oauth_discovery.discovery_url #=> String
    #   resp.oauth2_provider_config_output.included_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.issuer #=> String
    #   resp.oauth2_provider_config_output.included_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.authorization_endpoint #=> String
    #   resp.oauth2_provider_config_output.included_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint #=> String
    #   resp.oauth2_provider_config_output.included_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types #=> Array
    #   resp.oauth2_provider_config_output.included_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.response_types[0] #=> String
    #   resp.oauth2_provider_config_output.included_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods #=> Array
    #   resp.oauth2_provider_config_output.included_oauth_2_provider_config.oauth_discovery.authorization_server_metadata.token_endpoint_auth_methods[0] #=> String
    #   resp.oauth2_provider_config_output.included_oauth_2_provider_config.client_id #=> String
    #   resp.created_time #=> Time
    #   resp.last_updated_time #=> Time
    #   resp.status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateOauth2CredentialProvider AWS API Documentation
    #
    # @overload update_oauth_2_credential_provider(params = {})
    # @param [Hash] params ({})
    def update_oauth_2_credential_provider(params = {}, options = {})
      req = build_request(:update_oauth_2_credential_provider, params)
      req.send_request(options)
    end

    # Updates an online evaluation configuration's settings, including
    # rules, data sources, evaluators, and execution status. Changes take
    # effect immediately for ongoing evaluations.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a previous
    #   request, the service ignores the request, but doesn't return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, String] :online_evaluation_config_id
    #   The unique identifier of the online evaluation configuration to
    #   update.
    #
    # @option params [String] :description
    #   The updated description of the online evaluation configuration.
    #
    # @option params [Types::Rule] :rule
    #   The updated evaluation rule containing sampling configuration,
    #   filters, and session settings.
    #
    # @option params [Types::DataSourceConfig] :data_source_config
    #   The updated data source configuration specifying CloudWatch log groups
    #   and service names to monitor.
    #
    # @option params [Array<Types::EvaluatorReference>] :evaluators
    #   The updated list of evaluators to apply during online evaluation.
    #
    # @option params [Array<Types::Insight>] :insights
    #   The updated list of insight types to run against agent sessions.
    #
    # @option params [Types::ClusteringConfig] :clustering_config
    #   The updated clustering configuration for periodic batch evaluation.
    #
    # @option params [String] :evaluation_execution_role_arn
    #   The updated Amazon Resource Name (ARN) of the IAM role used for
    #   evaluation execution.
    #
    # @option params [String] :execution_status
    #   The updated execution status to enable or disable the online
    #   evaluation.
    #
    # @return [Types::UpdateOnlineEvaluationConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateOnlineEvaluationConfigResponse#online_evaluation_config_arn #online_evaluation_config_arn} => String
    #   * {Types::UpdateOnlineEvaluationConfigResponse#online_evaluation_config_id #online_evaluation_config_id} => String
    #   * {Types::UpdateOnlineEvaluationConfigResponse#updated_at #updated_at} => Time
    #   * {Types::UpdateOnlineEvaluationConfigResponse#status #status} => String
    #   * {Types::UpdateOnlineEvaluationConfigResponse#execution_status #execution_status} => String
    #   * {Types::UpdateOnlineEvaluationConfigResponse#failure_reason #failure_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_online_evaluation_config({
    #     client_token: "ClientToken",
    #     online_evaluation_config_id: "OnlineEvaluationConfigId", # required
    #     description: "EvaluationConfigDescription",
    #     rule: {
    #       sampling_config: { # required
    #         sampling_percentage: 1.0, # required
    #       },
    #       filters: [
    #         {
    #           key: "FilterKeyString", # required
    #           operator: "Equals", # required, accepts Equals, NotEquals, GreaterThan, LessThan, GreaterThanOrEqual, LessThanOrEqual, Contains, NotContains
    #           value: { # required
    #             string_value: "FilterValueStringValueString",
    #             double_value: 1.0,
    #             boolean_value: false,
    #           },
    #         },
    #       ],
    #       session_config: {
    #         session_timeout_minutes: 1, # required
    #       },
    #     },
    #     data_source_config: {
    #       cloud_watch_logs: {
    #         log_group_names: ["LogGroupName"], # required
    #         service_names: ["ServiceName"], # required
    #       },
    #     },
    #     evaluators: [
    #       {
    #         evaluator_id: "EvaluatorId",
    #       },
    #     ],
    #     insights: [
    #       {
    #         insight_id: "InsightId", # required
    #       },
    #     ],
    #     clustering_config: {
    #       frequencies: ["DAILY"], # required, accepts DAILY, WEEKLY, MONTHLY
    #     },
    #     evaluation_execution_role_arn: "RoleArn",
    #     execution_status: "ENABLED", # accepts ENABLED, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.online_evaluation_config_arn #=> String
    #   resp.online_evaluation_config_id #=> String
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "ACTIVE", "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "ERROR"
    #   resp.execution_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateOnlineEvaluationConfig AWS API Documentation
    #
    # @overload update_online_evaluation_config(params = {})
    # @param [Hash] params ({})
    def update_online_evaluation_config(params = {}, options = {})
      req = build_request(:update_online_evaluation_config, params)
      req.send_request(options)
    end

    # Updates an existing payment connector. This operation uses PATCH
    # semantics, so you only need to specify the fields you want to change.
    #
    # @option params [required, String] :payment_manager_id
    #   The unique identifier of the parent payment manager.
    #
    # @option params [required, String] :payment_connector_id
    #   The unique identifier of the payment connector to update.
    #
    # @option params [String] :description
    #   The updated description of the payment connector.
    #
    # @option params [String] :type
    #   The updated type of the payment connector.
    #
    # @option params [Array<Types::CredentialsProviderConfiguration>] :credential_provider_configurations
    #   The updated credential provider configurations for the payment
    #   connector.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a previous
    #   request, the service ignores the request, but doesn't return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @return [Types::UpdatePaymentConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePaymentConnectorResponse#payment_connector_id #payment_connector_id} => String
    #   * {Types::UpdatePaymentConnectorResponse#payment_manager_id #payment_manager_id} => String
    #   * {Types::UpdatePaymentConnectorResponse#name #name} => String
    #   * {Types::UpdatePaymentConnectorResponse#type #type} => String
    #   * {Types::UpdatePaymentConnectorResponse#credential_provider_configurations #credential_provider_configurations} => Array&lt;Types::CredentialsProviderConfiguration&gt;
    #   * {Types::UpdatePaymentConnectorResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::UpdatePaymentConnectorResponse#status #status} => String
    #   * {Types::UpdatePaymentConnectorResponse#authorization_url #authorization_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_payment_connector({
    #     payment_manager_id: "PaymentManagerId", # required
    #     payment_connector_id: "PaymentConnectorId", # required
    #     description: "PaymentsDescription",
    #     type: "CoinbaseCDP", # accepts CoinbaseCDP, StripePrivy
    #     credential_provider_configurations: [
    #       {
    #         coinbase_cdp: {
    #           credential_provider_arn: "PaymentCredentialProviderArn", # required
    #         },
    #         stripe_privy: {
    #           credential_provider_arn: "PaymentCredentialProviderArn", # required
    #         },
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.payment_connector_id #=> String
    #   resp.payment_manager_id #=> String
    #   resp.name #=> String
    #   resp.type #=> String, one of "CoinbaseCDP", "StripePrivy"
    #   resp.credential_provider_configurations #=> Array
    #   resp.credential_provider_configurations[0].coinbase_cdp.credential_provider_arn #=> String
    #   resp.credential_provider_configurations[0].stripe_privy.credential_provider_arn #=> String
    #   resp.last_updated_at #=> Time
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "READY", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED", "AWS_MARKETPLACE_SUBSCRIPTION_REQUIRED", "PENDING_AUTHENTICATION", "PROVISIONING", "AUTHENTICATION_EXPIRED", "AUTHENTICATION_FAILED"
    #   resp.authorization_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatePaymentConnector AWS API Documentation
    #
    # @overload update_payment_connector(params = {})
    # @param [Hash] params ({})
    def update_payment_connector(params = {}, options = {})
      req = build_request(:update_payment_connector, params)
      req.send_request(options)
    end

    # Updates an existing payment credential provider with new
    # authentication credentials.
    #
    # @option params [required, String] :name
    #   The name of the payment credential provider to update.
    #
    # @option params [required, String] :credential_provider_vendor
    #   The vendor type for the payment credential provider (e.g.,
    #   CoinbaseCDP, StripePrivy).
    #
    # @option params [required, Types::PaymentProviderConfigurationInput] :provider_configuration_input
    #   Configuration specific to the vendor, including API credentials.
    #
    # @return [Types::UpdatePaymentCredentialProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePaymentCredentialProviderResponse#name #name} => String
    #   * {Types::UpdatePaymentCredentialProviderResponse#credential_provider_vendor #credential_provider_vendor} => String
    #   * {Types::UpdatePaymentCredentialProviderResponse#credential_provider_arn #credential_provider_arn} => String
    #   * {Types::UpdatePaymentCredentialProviderResponse#provider_configuration_output #provider_configuration_output} => Types::PaymentProviderConfigurationOutput
    #   * {Types::UpdatePaymentCredentialProviderResponse#created_time #created_time} => Time
    #   * {Types::UpdatePaymentCredentialProviderResponse#last_updated_time #last_updated_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_payment_credential_provider({
    #     name: "CredentialProviderName", # required
    #     credential_provider_vendor: "CoinbaseCDP", # required, accepts CoinbaseCDP, StripePrivy
    #     provider_configuration_input: { # required
    #       coinbase_cdp_configuration: {
    #         api_key_id: "CoinbaseCdpApiKeyIdType", # required
    #         api_key_secret: "DefaultCoinbaseCdpApiKeySecretType",
    #         api_key_secret_source: "MANAGED", # accepts MANAGED, EXTERNAL
    #         api_key_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         wallet_secret: "DefaultCoinbaseCdpWalletSecretType",
    #         wallet_secret_source: "MANAGED", # accepts MANAGED, EXTERNAL
    #         wallet_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #       },
    #       stripe_privy_configuration: {
    #         app_id: "StripePrivyAppIdType", # required
    #         app_secret: "DefaultStripePrivyAppSecretType",
    #         app_secret_source: "MANAGED", # accepts MANAGED, EXTERNAL
    #         app_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         authorization_private_key: "DefaultStripePrivyAuthorizationPrivateKeyType",
    #         authorization_private_key_source: "MANAGED", # accepts MANAGED, EXTERNAL
    #         authorization_private_key_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         authorization_id: "StripePrivyAuthorizationIdType", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.credential_provider_vendor #=> String, one of "CoinbaseCDP", "StripePrivy"
    #   resp.credential_provider_arn #=> String
    #   resp.provider_configuration_output.coinbase_cdp_configuration.api_key_id #=> String
    #   resp.provider_configuration_output.coinbase_cdp_configuration.api_key_secret_arn.secret_arn #=> String
    #   resp.provider_configuration_output.coinbase_cdp_configuration.api_key_secret_json_key #=> String
    #   resp.provider_configuration_output.coinbase_cdp_configuration.api_key_secret_source #=> String, one of "MANAGED", "EXTERNAL"
    #   resp.provider_configuration_output.coinbase_cdp_configuration.wallet_secret_arn.secret_arn #=> String
    #   resp.provider_configuration_output.coinbase_cdp_configuration.wallet_secret_json_key #=> String
    #   resp.provider_configuration_output.coinbase_cdp_configuration.wallet_secret_source #=> String, one of "MANAGED", "EXTERNAL"
    #   resp.provider_configuration_output.stripe_privy_configuration.app_id #=> String
    #   resp.provider_configuration_output.stripe_privy_configuration.app_secret_arn.secret_arn #=> String
    #   resp.provider_configuration_output.stripe_privy_configuration.app_secret_json_key #=> String
    #   resp.provider_configuration_output.stripe_privy_configuration.app_secret_source #=> String, one of "MANAGED", "EXTERNAL"
    #   resp.provider_configuration_output.stripe_privy_configuration.authorization_private_key_arn.secret_arn #=> String
    #   resp.provider_configuration_output.stripe_privy_configuration.authorization_private_key_json_key #=> String
    #   resp.provider_configuration_output.stripe_privy_configuration.authorization_private_key_source #=> String, one of "MANAGED", "EXTERNAL"
    #   resp.provider_configuration_output.stripe_privy_configuration.authorization_id #=> String
    #   resp.created_time #=> Time
    #   resp.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatePaymentCredentialProvider AWS API Documentation
    #
    # @overload update_payment_credential_provider(params = {})
    # @param [Hash] params ({})
    def update_payment_credential_provider(params = {}, options = {})
      req = build_request(:update_payment_credential_provider, params)
      req.send_request(options)
    end

    # Updates an existing payment manager. This operation uses PATCH
    # semantics, so you only need to specify the fields you want to change.
    #
    # @option params [required, String] :payment_manager_id
    #   The unique identifier of the payment manager to update.
    #
    # @option params [String] :description
    #   The updated description of the payment manager.
    #
    # @option params [String] :authorizer_type
    #   The updated authorizer type for the payment manager.
    #
    # @option params [Types::AuthorizerConfiguration] :authorizer_configuration
    #   The updated authorizer configuration for the payment manager.
    #
    # @option params [String] :role_arn
    #   The updated Amazon Resource Name (ARN) of the IAM role for the payment
    #   manager.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a previous
    #   request, the service ignores the request, but doesn't return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [String] :kms_key_arn
    #   The updated Amazon Resource Name (ARN) of the customer managed KMS key
    #   used to encrypt sensitive payment manager data at rest.
    #
    # @return [Types::UpdatePaymentManagerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePaymentManagerResponse#payment_manager_arn #payment_manager_arn} => String
    #   * {Types::UpdatePaymentManagerResponse#payment_manager_id #payment_manager_id} => String
    #   * {Types::UpdatePaymentManagerResponse#name #name} => String
    #   * {Types::UpdatePaymentManagerResponse#authorizer_type #authorizer_type} => String
    #   * {Types::UpdatePaymentManagerResponse#role_arn #role_arn} => String
    #   * {Types::UpdatePaymentManagerResponse#workload_identity_details #workload_identity_details} => Types::WorkloadIdentityDetails
    #   * {Types::UpdatePaymentManagerResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::UpdatePaymentManagerResponse#status #status} => String
    #   * {Types::UpdatePaymentManagerResponse#kms_key_arn #kms_key_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_payment_manager({
    #     payment_manager_id: "PaymentManagerId", # required
    #     description: "PaymentsDescription",
    #     authorizer_type: "CUSTOM_JWT", # accepts CUSTOM_JWT, AWS_IAM
    #     authorizer_configuration: {
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"],
    #         allowed_scopes: ["AllowedScopeType"],
    #         advertised_scope_mapping: {
    #           "AllowedScopeType" => "AllowedScopeType",
    #         },
    #         custom_claims: [
    #           {
    #             inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #             inbound_token_claim_value_type: "STRING", # required, accepts STRING, STRING_ARRAY
    #             authorizing_claim_match_value: { # required
    #               claim_match_value: { # required
    #                 match_value_string: "MatchValueString",
    #                 match_value_string_list: ["MatchValueString"],
    #               },
    #               claim_match_operator: "EQUALS", # required, accepts EQUALS, CONTAINS, CONTAINS_ANY
    #             },
    #           },
    #         ],
    #         private_endpoint: {
    #           self_managed_lattice_resource: {
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier",
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4", # required, accepts IPV4, IPV6
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue",
    #             },
    #             routing_domain: "RoutingDomain",
    #           },
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               self_managed_lattice_resource: {
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier",
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4", # required, accepts IPV4, IPV6
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue",
    #                 },
    #                 routing_domain: "RoutingDomain",
    #               },
    #             },
    #           },
    #         ],
    #         allowed_workload_configuration: {
    #           hosting_environments: [
    #             {
    #               arn: "BedrockAgentcoreResourceArn", # required
    #             },
    #           ],
    #           workload_identities: ["WorkloadIdentityNameType"],
    #         },
    #       },
    #     },
    #     role_arn: "RoleArn",
    #     client_token: "ClientToken",
    #     kms_key_arn: "KmsKeyArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.payment_manager_arn #=> String
    #   resp.payment_manager_id #=> String
    #   resp.name #=> String
    #   resp.authorizer_type #=> String, one of "CUSTOM_JWT", "AWS_IAM"
    #   resp.role_arn #=> String
    #   resp.workload_identity_details.workload_identity_arn #=> String
    #   resp.last_updated_at #=> Time
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "READY", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
    #   resp.kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatePaymentManager AWS API Documentation
    #
    # @overload update_payment_manager(params = {})
    # @param [Hash] params ({})
    def update_payment_manager(params = {}, options = {})
      req = build_request(:update_payment_manager, params)
      req.send_request(options)
    end

    # Updates an existing policy within the AgentCore Policy system. This
    # operation allows modification of the policy description and definition
    # while maintaining the policy's identity. The updated policy is
    # validated against the Cedar schema before being applied. This is an
    # asynchronous operation. Use the `GetPolicy` operation to poll the
    # `status` field to track completion.
    #
    # If the updated policy is a temporal policy, the policy engine
    # invalidates all active temporal sessions. If the update adds or
    # removes temporal operators, the policy engine also invalidates active
    # temporal sessions. For more information about temporal policy
    # sessions, see [session-based temporal policies][1]. The policy engine
    # returns an HTTP 409 `ConflictException` to in-flight sessions. To
    # resume, you must start a new session with a new session ID.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/policy-session-based-temporal.html
    #
    # @option params [required, String] :policy_engine_id
    #   The identifier of the policy engine that manages the policy to be
    #   updated. This ensures the policy is updated within the correct policy
    #   engine context.
    #
    # @option params [required, String] :policy_id
    #   The unique identifier of the policy to be updated. This must be a
    #   valid policy ID that exists within the specified policy engine.
    #
    # @option params [Types::UpdatedDescription] :description
    #   The new human-readable description for the policy. This optional field
    #   allows updating the policy's documentation while keeping the same
    #   policy logic.
    #
    # @option params [Types::PolicyDefinition] :definition
    #   The new Cedar policy statement that defines the access control rules.
    #   This replaces the existing policy definition with new logic while
    #   maintaining the policy's identity.
    #
    # @option params [String] :validation_mode
    #   The validation mode for the policy update. Determines how Cedar
    #   analyzer validation results are handled during policy updates.
    #   FAIL\_ON\_ANY\_FINDINGS runs the Cedar analyzer and fails the update
    #   if validation issues are detected, ensuring the policy conforms to the
    #   Cedar schema and tool context. IGNORE\_ALL\_FINDINGS runs the Cedar
    #   analyzer but allows updates despite validation warnings. Use
    #   FAIL\_ON\_ANY\_FINDINGS to ensure policy correctness during updates,
    #   especially when modifying policy logic or conditions.
    #
    # @option params [String] :enforcement_mode
    #   The enforcement mode for the policy. Run this policy in `LOG_ONLY`
    #   mode to collect data on how it affects your application. Once you are
    #   satisfied with the data gathered, switch the policy to `ACTIVE`. If
    #   you omit this field, the policy's existing enforcement mode is
    #   unchanged.
    #
    # @return [Types::UpdatePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePolicyResponse#policy_id #policy_id} => String
    #   * {Types::UpdatePolicyResponse#name #name} => String
    #   * {Types::UpdatePolicyResponse#policy_engine_id #policy_engine_id} => String
    #   * {Types::UpdatePolicyResponse#created_at #created_at} => Time
    #   * {Types::UpdatePolicyResponse#updated_at #updated_at} => Time
    #   * {Types::UpdatePolicyResponse#policy_arn #policy_arn} => String
    #   * {Types::UpdatePolicyResponse#status #status} => String
    #   * {Types::UpdatePolicyResponse#enforcement_mode #enforcement_mode} => String
    #   * {Types::UpdatePolicyResponse#definition #definition} => Types::PolicyDefinition
    #   * {Types::UpdatePolicyResponse#description #description} => String
    #   * {Types::UpdatePolicyResponse#status_reasons #status_reasons} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_policy({
    #     policy_engine_id: "ResourceId", # required
    #     policy_id: "ResourceId", # required
    #     description: {
    #       optional_value: "Description",
    #     },
    #     definition: {
    #       cedar: {
    #         statement: "Statement", # required
    #       },
    #       policy_generation: {
    #         policy_generation_id: "ResourceId", # required
    #         policy_generation_asset_id: "ResourceId", # required
    #       },
    #       policy: {
    #         statement: "Statement", # required
    #       },
    #     },
    #     validation_mode: "FAIL_ON_ANY_FINDINGS", # accepts FAIL_ON_ANY_FINDINGS, IGNORE_ALL_FINDINGS
    #     enforcement_mode: "ACTIVE", # accepts ACTIVE, LOG_ONLY
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_id #=> String
    #   resp.name #=> String
    #   resp.policy_engine_id #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.policy_arn #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
    #   resp.enforcement_mode #=> String, one of "ACTIVE", "LOG_ONLY"
    #   resp.definition.cedar.statement #=> String
    #   resp.definition.policy_generation.policy_generation_id #=> String
    #   resp.definition.policy_generation.policy_generation_asset_id #=> String
    #   resp.definition.policy.statement #=> String
    #   resp.description #=> String
    #   resp.status_reasons #=> Array
    #   resp.status_reasons[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatePolicy AWS API Documentation
    #
    # @overload update_policy(params = {})
    # @param [Hash] params ({})
    def update_policy(params = {}, options = {})
      req = build_request(:update_policy, params)
      req.send_request(options)
    end

    # Updates an existing policy engine within the AgentCore Policy system.
    # This operation allows modification of the policy engine description
    # while maintaining its identity. This is an asynchronous operation. Use
    # the `GetPolicyEngine` operation to poll the `status` field to track
    # completion.
    #
    # @option params [required, String] :policy_engine_id
    #   The unique identifier of the policy engine to be updated.
    #
    # @option params [Types::UpdatedDescription] :description
    #   The new description for the policy engine.
    #
    # @return [Types::UpdatePolicyEngineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePolicyEngineResponse#policy_engine_id #policy_engine_id} => String
    #   * {Types::UpdatePolicyEngineResponse#name #name} => String
    #   * {Types::UpdatePolicyEngineResponse#created_at #created_at} => Time
    #   * {Types::UpdatePolicyEngineResponse#updated_at #updated_at} => Time
    #   * {Types::UpdatePolicyEngineResponse#policy_engine_arn #policy_engine_arn} => String
    #   * {Types::UpdatePolicyEngineResponse#status #status} => String
    #   * {Types::UpdatePolicyEngineResponse#encryption_key_arn #encryption_key_arn} => String
    #   * {Types::UpdatePolicyEngineResponse#description #description} => String
    #   * {Types::UpdatePolicyEngineResponse#status_reasons #status_reasons} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_policy_engine({
    #     policy_engine_id: "ResourceId", # required
    #     description: {
    #       optional_value: "Description",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_engine_id #=> String
    #   resp.name #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.policy_engine_arn #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
    #   resp.encryption_key_arn #=> String
    #   resp.description #=> String
    #   resp.status_reasons #=> Array
    #   resp.status_reasons[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatePolicyEngine AWS API Documentation
    #
    # @overload update_policy_engine(params = {})
    # @param [Hash] params ({})
    def update_policy_engine(params = {}, options = {})
      req = build_request(:update_policy_engine, params)
      req.send_request(options)
    end

    # Updates an existing registry. This operation uses PATCH semantics, so
    # you only need to specify the fields you want to change.
    #
    # @option params [required, String] :registry_id
    #   The identifier of the registry to update. You can specify either the
    #   Amazon Resource Name (ARN) or the ID of the registry.
    #
    # @option params [String] :name
    #   The updated name of the registry.
    #
    # @option params [Types::UpdatedDescription] :description
    #   The updated description of the registry. To clear the description,
    #   include the `UpdatedDescription` wrapper with `optionalValue` not
    #   specified.
    #
    # @option params [Types::UpdatedAuthorizerConfiguration] :authorizer_configuration
    #   The updated authorizer configuration for the registry. Changing the
    #   authorizer configuration can break existing consumers of the registry
    #   who are using the authorization type prior to the update.
    #
    # @option params [Types::UpdatedApprovalConfiguration] :approval_configuration
    #   The updated approval configuration for registry records. The updated
    #   configuration only affects new records that move to `PENDING_APPROVAL`
    #   status after the change. Existing records already in
    #   `PENDING_APPROVAL` status are not affected.
    #
    # @return [Types::UpdateRegistryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRegistryResponse#name #name} => String
    #   * {Types::UpdateRegistryResponse#description #description} => String
    #   * {Types::UpdateRegistryResponse#registry_id #registry_id} => String
    #   * {Types::UpdateRegistryResponse#registry_arn #registry_arn} => String
    #   * {Types::UpdateRegistryResponse#authorizer_type #authorizer_type} => String
    #   * {Types::UpdateRegistryResponse#authorizer_configuration #authorizer_configuration} => Types::AuthorizerConfiguration
    #   * {Types::UpdateRegistryResponse#approval_configuration #approval_configuration} => Types::ApprovalConfiguration
    #   * {Types::UpdateRegistryResponse#status #status} => String
    #   * {Types::UpdateRegistryResponse#status_reason #status_reason} => String
    #   * {Types::UpdateRegistryResponse#created_at #created_at} => Time
    #   * {Types::UpdateRegistryResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_registry({
    #     registry_id: "RegistryIdentifier", # required
    #     name: "RegistryName",
    #     description: {
    #       optional_value: "Description",
    #     },
    #     authorizer_configuration: {
    #       optional_value: {
    #         custom_jwt_authorizer: {
    #           discovery_url: "DiscoveryUrl", # required
    #           allowed_audience: ["AllowedAudience"],
    #           allowed_clients: ["AllowedClient"],
    #           allowed_scopes: ["AllowedScopeType"],
    #           advertised_scope_mapping: {
    #             "AllowedScopeType" => "AllowedScopeType",
    #           },
    #           custom_claims: [
    #             {
    #               inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #               inbound_token_claim_value_type: "STRING", # required, accepts STRING, STRING_ARRAY
    #               authorizing_claim_match_value: { # required
    #                 claim_match_value: { # required
    #                   match_value_string: "MatchValueString",
    #                   match_value_string_list: ["MatchValueString"],
    #                 },
    #                 claim_match_operator: "EQUALS", # required, accepts EQUALS, CONTAINS, CONTAINS_ANY
    #               },
    #             },
    #           ],
    #           private_endpoint: {
    #             self_managed_lattice_resource: {
    #               resource_configuration_identifier: "ResourceConfigurationIdentifier",
    #             },
    #             managed_vpc_resource: {
    #               vpc_identifier: "VpcIdentifier", # required
    #               subnet_ids: ["SubnetId"], # required
    #               endpoint_ip_address_type: "IPV4", # required, accepts IPV4, IPV6
    #               security_group_ids: ["SecurityGroupIdentifier"],
    #               tags: {
    #                 "TagKey" => "TagValue",
    #               },
    #               routing_domain: "RoutingDomain",
    #             },
    #           },
    #           private_endpoint_overrides: [
    #             {
    #               domain: "PrivateEndpointOverrideDomain", # required
    #               private_endpoint: { # required
    #                 self_managed_lattice_resource: {
    #                   resource_configuration_identifier: "ResourceConfigurationIdentifier",
    #                 },
    #                 managed_vpc_resource: {
    #                   vpc_identifier: "VpcIdentifier", # required
    #                   subnet_ids: ["SubnetId"], # required
    #                   endpoint_ip_address_type: "IPV4", # required, accepts IPV4, IPV6
    #                   security_group_ids: ["SecurityGroupIdentifier"],
    #                   tags: {
    #                     "TagKey" => "TagValue",
    #                   },
    #                   routing_domain: "RoutingDomain",
    #                 },
    #               },
    #             },
    #           ],
    #           allowed_workload_configuration: {
    #             hosting_environments: [
    #               {
    #                 arn: "BedrockAgentcoreResourceArn", # required
    #               },
    #             ],
    #             workload_identities: ["WorkloadIdentityNameType"],
    #           },
    #         },
    #       },
    #     },
    #     approval_configuration: {
    #       optional_value: {
    #         auto_approval: false,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.registry_id #=> String
    #   resp.registry_arn #=> String
    #   resp.authorizer_type #=> String, one of "CUSTOM_JWT", "AWS_IAM"
    #   resp.authorizer_configuration.custom_jwt_authorizer.discovery_url #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_audience #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_audience[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_clients #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_clients[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_scopes #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_scopes[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.advertised_scope_mapping #=> Hash
    #   resp.authorizer_configuration.custom_jwt_authorizer.advertised_scope_mapping["AllowedScopeType"] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_name #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_value_type #=> String, one of "STRING", "STRING_ARRAY"
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_operator #=> String, one of "EQUALS", "CONTAINS", "CONTAINS_ANY"
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].domain #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.hosting_environments #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.hosting_environments[0].arn #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.workload_identities #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_workload_configuration.workload_identities[0] #=> String
    #   resp.approval_configuration.auto_approval #=> Boolean
    #   resp.status #=> String, one of "CREATING", "READY", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"
    #   resp.status_reason #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateRegistry AWS API Documentation
    #
    # @overload update_registry(params = {})
    # @param [Hash] params ({})
    def update_registry(params = {}, options = {})
      req = build_request(:update_registry, params)
      req.send_request(options)
    end

    # Updates an existing registry record. This operation uses PATCH
    # semantics, so you only need to specify the fields you want to change.
    # The update is processed asynchronously and returns HTTP 202 Accepted.
    #
    # @option params [required, String] :registry_id
    #   The identifier of the registry containing the record. You can specify
    #   either the Amazon Resource Name (ARN) or the ID of the registry.
    #
    # @option params [required, String] :record_id
    #   The identifier of the registry record to update. You can specify
    #   either the Amazon Resource Name (ARN) or the ID of the record.
    #
    # @option params [String] :name
    #   The updated name for the registry record.
    #
    # @option params [Types::UpdatedDescription] :description
    #   The updated description for the registry record. To clear the
    #   description, include the `UpdatedDescription` wrapper with
    #   `optionalValue` not specified.
    #
    # @option params [String] :descriptor_type
    #   The updated descriptor type for the registry record. Changing the
    #   descriptor type may require updating the `descriptors` field to match
    #   the new type's schema requirements.
    #
    # @option params [Types::UpdatedDescriptors] :descriptors
    #   The updated descriptor-type-specific configuration containing the
    #   resource schema and metadata. Uses PATCH semantics where individual
    #   descriptor fields can be updated independently.
    #
    # @option params [String] :record_version
    #   The version of the registry record for optimistic locking. If
    #   provided, it must match the current version of the record. The service
    #   automatically increments the version after a successful update.
    #
    # @option params [Types::UpdatedSynchronizationType] :synchronization_type
    #   The updated synchronization type for the registry record.
    #
    # @option params [Types::UpdatedSynchronizationConfiguration] :synchronization_configuration
    #   The updated synchronization configuration for the registry record.
    #
    # @option params [Boolean] :trigger_synchronization
    #   Whether to trigger synchronization using the stored or provided
    #   configuration. When set to `true`, the service will synchronize the
    #   record metadata from the configured external source.
    #
    # @return [Types::UpdateRegistryRecordResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRegistryRecordResponse#registry_arn #registry_arn} => String
    #   * {Types::UpdateRegistryRecordResponse#record_arn #record_arn} => String
    #   * {Types::UpdateRegistryRecordResponse#record_id #record_id} => String
    #   * {Types::UpdateRegistryRecordResponse#name #name} => String
    #   * {Types::UpdateRegistryRecordResponse#description #description} => String
    #   * {Types::UpdateRegistryRecordResponse#descriptor_type #descriptor_type} => String
    #   * {Types::UpdateRegistryRecordResponse#descriptors #descriptors} => Types::Descriptors
    #   * {Types::UpdateRegistryRecordResponse#record_version #record_version} => String
    #   * {Types::UpdateRegistryRecordResponse#status #status} => String
    #   * {Types::UpdateRegistryRecordResponse#created_at #created_at} => Time
    #   * {Types::UpdateRegistryRecordResponse#updated_at #updated_at} => Time
    #   * {Types::UpdateRegistryRecordResponse#status_reason #status_reason} => String
    #   * {Types::UpdateRegistryRecordResponse#synchronization_type #synchronization_type} => String
    #   * {Types::UpdateRegistryRecordResponse#synchronization_configuration #synchronization_configuration} => Types::SynchronizationConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_registry_record({
    #     registry_id: "RegistryIdentifier", # required
    #     record_id: "RecordIdentifier", # required
    #     name: "RegistryRecordName",
    #     description: {
    #       optional_value: "Description",
    #     },
    #     descriptor_type: "MCP", # accepts MCP, A2A, CUSTOM, AGENT_SKILLS
    #     descriptors: {
    #       optional_value: {
    #         mcp: {
    #           optional_value: {
    #             server: {
    #               optional_value: {
    #                 schema_version: "SchemaVersion",
    #                 inline_content: "InlineContent",
    #               },
    #             },
    #             tools: {
    #               optional_value: {
    #                 protocol_version: "SchemaVersion",
    #                 inline_content: "InlineContent",
    #               },
    #             },
    #           },
    #         },
    #         a2a: {
    #           optional_value: {
    #             agent_card: {
    #               schema_version: "SchemaVersion",
    #               inline_content: "InlineContent",
    #             },
    #           },
    #         },
    #         custom: {
    #           optional_value: {
    #             inline_content: "InlineContent",
    #           },
    #         },
    #         agent_skills: {
    #           optional_value: {
    #             skill_md: {
    #               optional_value: {
    #                 inline_content: "InlineContent",
    #               },
    #             },
    #             skill_definition: {
    #               optional_value: {
    #                 schema_version: "SchemaVersion",
    #                 inline_content: "InlineContent",
    #               },
    #             },
    #           },
    #         },
    #       },
    #     },
    #     record_version: "RegistryRecordVersion",
    #     synchronization_type: {
    #       optional_value: "URL", # accepts URL
    #     },
    #     synchronization_configuration: {
    #       optional_value: {
    #         from_url: {
    #           url: "McpServerUrl", # required
    #           credential_provider_configurations: [
    #             {
    #               credential_provider_type: "OAUTH", # required, accepts OAUTH, IAM
    #               credential_provider: { # required
    #                 oauth_credential_provider: {
    #                   provider_arn: "CredentialProviderArn", # required
    #                   grant_type: "CLIENT_CREDENTIALS", # accepts CLIENT_CREDENTIALS
    #                   scopes: ["String"],
    #                   custom_parameters: {
    #                     "String" => "String",
    #                   },
    #                 },
    #                 iam_credential_provider: {
    #                   role_arn: "IamRoleArn",
    #                   service: "IamSigningServiceName",
    #                   region: "IamSigningRegion",
    #                 },
    #               },
    #             },
    #           ],
    #         },
    #       },
    #     },
    #     trigger_synchronization: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_arn #=> String
    #   resp.record_arn #=> String
    #   resp.record_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.descriptor_type #=> String, one of "MCP", "A2A", "CUSTOM", "AGENT_SKILLS"
    #   resp.descriptors.mcp.server.schema_version #=> String
    #   resp.descriptors.mcp.server.inline_content #=> String
    #   resp.descriptors.mcp.tools.protocol_version #=> String
    #   resp.descriptors.mcp.tools.inline_content #=> String
    #   resp.descriptors.a2a.agent_card.schema_version #=> String
    #   resp.descriptors.a2a.agent_card.inline_content #=> String
    #   resp.descriptors.custom.inline_content #=> String
    #   resp.descriptors.agent_skills.skill_md.inline_content #=> String
    #   resp.descriptors.agent_skills.skill_definition.schema_version #=> String
    #   resp.descriptors.agent_skills.skill_definition.inline_content #=> String
    #   resp.record_version #=> String
    #   resp.status #=> String, one of "DRAFT", "PENDING_APPROVAL", "APPROVED", "REJECTED", "DEPRECATED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status_reason #=> String
    #   resp.synchronization_type #=> String, one of "URL"
    #   resp.synchronization_configuration.from_url.url #=> String
    #   resp.synchronization_configuration.from_url.credential_provider_configurations #=> Array
    #   resp.synchronization_configuration.from_url.credential_provider_configurations[0].credential_provider_type #=> String, one of "OAUTH", "IAM"
    #   resp.synchronization_configuration.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.provider_arn #=> String
    #   resp.synchronization_configuration.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.grant_type #=> String, one of "CLIENT_CREDENTIALS"
    #   resp.synchronization_configuration.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes #=> Array
    #   resp.synchronization_configuration.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes[0] #=> String
    #   resp.synchronization_configuration.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters #=> Hash
    #   resp.synchronization_configuration.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters["String"] #=> String
    #   resp.synchronization_configuration.from_url.credential_provider_configurations[0].credential_provider.iam_credential_provider.role_arn #=> String
    #   resp.synchronization_configuration.from_url.credential_provider_configurations[0].credential_provider.iam_credential_provider.service #=> String
    #   resp.synchronization_configuration.from_url.credential_provider_configurations[0].credential_provider.iam_credential_provider.region #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateRegistryRecord AWS API Documentation
    #
    # @overload update_registry_record(params = {})
    # @param [Hash] params ({})
    def update_registry_record(params = {}, options = {})
      req = build_request(:update_registry_record, params)
      req.send_request(options)
    end

    # Updates the status of a registry record. Use this operation to
    # approve, reject, or deprecate a registry record.
    #
    # @option params [required, String] :registry_id
    #   The identifier of the registry containing the record. You can specify
    #   either the Amazon Resource Name (ARN) or the ID of the registry.
    #
    # @option params [required, String] :record_id
    #   The identifier of the registry record to update the status for. You
    #   can specify either the Amazon Resource Name (ARN) or the ID of the
    #   record.
    #
    # @option params [required, String] :status
    #   The target status for the registry record.
    #
    # @option params [required, String] :status_reason
    #   The reason for the status change, such as why the record was approved
    #   or rejected.
    #
    # @return [Types::UpdateRegistryRecordStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRegistryRecordStatusResponse#registry_arn #registry_arn} => String
    #   * {Types::UpdateRegistryRecordStatusResponse#record_arn #record_arn} => String
    #   * {Types::UpdateRegistryRecordStatusResponse#record_id #record_id} => String
    #   * {Types::UpdateRegistryRecordStatusResponse#status #status} => String
    #   * {Types::UpdateRegistryRecordStatusResponse#status_reason #status_reason} => String
    #   * {Types::UpdateRegistryRecordStatusResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_registry_record_status({
    #     registry_id: "RegistryIdentifier", # required
    #     record_id: "RecordIdentifier", # required
    #     status: "DRAFT", # required, accepts DRAFT, PENDING_APPROVAL, APPROVED, REJECTED, DEPRECATED, CREATING, UPDATING, CREATE_FAILED, UPDATE_FAILED
    #     status_reason: "UpdateRegistryRecordStatusRequestStatusReasonString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_arn #=> String
    #   resp.record_arn #=> String
    #   resp.record_id #=> String
    #   resp.status #=> String, one of "DRAFT", "PENDING_APPROVAL", "APPROVED", "REJECTED", "DEPRECATED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.status_reason #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateRegistryRecordStatus AWS API Documentation
    #
    # @overload update_registry_record_status(params = {})
    # @param [Hash] params ({})
    def update_registry_record_status(params = {}, options = {})
      req = build_request(:update_registry_record_status, params)
      req.send_request(options)
    end

    # Updates an existing workload identity.
    #
    # @option params [required, String] :name
    #   The name of the workload identity to update.
    #
    # @option params [Array<String>] :allowed_resource_oauth_2_return_urls
    #   The new list of allowed OAuth2 return URLs for resources associated
    #   with this workload identity. This list replaces the existing list.
    #
    # @return [Types::UpdateWorkloadIdentityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateWorkloadIdentityResponse#name #name} => String
    #   * {Types::UpdateWorkloadIdentityResponse#workload_identity_arn #workload_identity_arn} => String
    #   * {Types::UpdateWorkloadIdentityResponse#allowed_resource_oauth_2_return_urls #allowed_resource_oauth_2_return_urls} => Array&lt;String&gt;
    #   * {Types::UpdateWorkloadIdentityResponse#created_time #created_time} => Time
    #   * {Types::UpdateWorkloadIdentityResponse#last_updated_time #last_updated_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workload_identity({
    #     name: "WorkloadIdentityNameType", # required
    #     allowed_resource_oauth_2_return_urls: ["ResourceOauth2ReturnUrlType"],
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.workload_identity_arn #=> String
    #   resp.allowed_resource_oauth_2_return_urls #=> Array
    #   resp.allowed_resource_oauth_2_return_urls[0] #=> String
    #   resp.created_time #=> Time
    #   resp.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateWorkloadIdentity AWS API Documentation
    #
    # @overload update_workload_identity(params = {})
    # @param [Hash] params ({})
    def update_workload_identity(params = {}, options = {})
      req = build_request(:update_workload_identity, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::BedrockAgentCoreControl')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-bedrockagentcorecontrol'
      context[:gem_version] = '1.67.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name                 | params                         | :delay   | :max_attempts |
    # | --------------------------- | ------------------------------ | -------- | ------------- |
    # | memory_created              | {Client#get_memory}            | 2        | 60            |
    # | policy_active               | {Client#get_policy}            | 5        | 24            |
    # | policy_deleted              | {Client#get_policy}            | 2        | 60            |
    # | policy_engine_active        | {Client#get_policy_engine}     | 5        | 24            |
    # | policy_engine_deleted       | {Client#get_policy_engine}     | 2        | 60            |
    # | policy_generation_completed | {Client#get_policy_generation} | 5        | 24            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts
    # @option options [Integer] :delay
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    def wait_until(waiter_name, params = {}, options = {})
      w = waiter(waiter_name, options)
      yield(w.waiter) if block_given? # deprecated
      w.wait(params)
    end

    # @api private
    # @deprecated
    def waiter_names
      waiters.keys
    end

    private

    # @param [Symbol] waiter_name
    # @param [Hash] options ({})
    def waiter(waiter_name, options = {})
      waiter_class = waiters[waiter_name]
      if waiter_class
        waiter_class.new(options.merge(client: self))
      else
        raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
      end
    end

    def waiters
      {
        memory_created: Waiters::MemoryCreated,
        policy_active: Waiters::PolicyActive,
        policy_deleted: Waiters::PolicyDeleted,
        policy_engine_active: Waiters::PolicyEngineActive,
        policy_engine_deleted: Waiters::PolicyEngineDeleted,
        policy_generation_completed: Waiters::PolicyGenerationCompleted
      }
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
