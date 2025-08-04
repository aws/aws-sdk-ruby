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

module Aws::XRay
  # An API client for XRay.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::XRay::Client.new(
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

    @identifier = :xray

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
    add_plugin(Aws::XRay::Plugins::Endpoints)

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
    #   @option options [Aws::XRay::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::XRay::EndpointParameters`.
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

    # <note markdown="1"> You cannot find traces through this API if Transaction Search is
    # enabled since trace is not indexed in X-Ray.
    #
    #  </note>
    #
    # Retrieves a list of traces specified by ID. Each trace is a collection
    # of segment documents that originates from a single request. Use
    # `GetTraceSummaries` to get a list of trace IDs.
    #
    # @option params [required, Array<String>] :trace_ids
    #   Specify the trace IDs of requests for which to retrieve segments.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::BatchGetTracesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetTracesResult#traces #traces} => Array&lt;Types::Trace&gt;
    #   * {Types::BatchGetTracesResult#unprocessed_trace_ids #unprocessed_trace_ids} => Array&lt;String&gt;
    #   * {Types::BatchGetTracesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_traces({
    #     trace_ids: ["TraceId"], # required
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.traces #=> Array
    #   resp.traces[0].id #=> String
    #   resp.traces[0].duration #=> Float
    #   resp.traces[0].limit_exceeded #=> Boolean
    #   resp.traces[0].segments #=> Array
    #   resp.traces[0].segments[0].id #=> String
    #   resp.traces[0].segments[0].document #=> String
    #   resp.unprocessed_trace_ids #=> Array
    #   resp.unprocessed_trace_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/BatchGetTraces AWS API Documentation
    #
    # @overload batch_get_traces(params = {})
    # @param [Hash] params ({})
    def batch_get_traces(params = {}, options = {})
      req = build_request(:batch_get_traces, params)
      req.send_request(options)
    end

    # Cancels an ongoing trace retrieval job initiated by
    # `StartTraceRetrieval` using the provided `RetrievalToken`. A
    # successful cancellation will return an HTTP 200 response.
    #
    # @option params [required, String] :retrieval_token
    #   Retrieval token.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_trace_retrieval({
    #     retrieval_token: "RetrievalToken", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/CancelTraceRetrieval AWS API Documentation
    #
    # @overload cancel_trace_retrieval(params = {})
    # @param [Hash] params ({})
    def cancel_trace_retrieval(params = {}, options = {})
      req = build_request(:cancel_trace_retrieval, params)
      req.send_request(options)
    end

    # Creates a group resource with a name and a filter expression.
    #
    # @option params [required, String] :group_name
    #   The case-sensitive name of the new group. Default is a reserved name
    #   and names must be unique.
    #
    # @option params [String] :filter_expression
    #   The filter expression defining criteria by which to group traces.
    #
    # @option params [Types::InsightsConfiguration] :insights_configuration
    #   The structure containing configurations related to insights.
    #
    #   * The InsightsEnabled boolean can be set to true to enable insights
    #     for the new group or false to disable insights for the new group.
    #
    #   * The NotificationsEnabled boolean can be set to true to enable
    #     insights notifications for the new group. Notifications may only be
    #     enabled on a group with InsightsEnabled set to true.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A map that contains one or more tag keys and tag values to attach to
    #   an X-Ray group. For more information about ways to use tags, see
    #   [Tagging Amazon Web Services resources][1] in the *Amazon Web Services
    #   General Reference*.
    #
    #   The following restrictions apply to tags:
    #
    #   * Maximum number of user-applied tags per resource: 50
    #
    #   * Maximum tag key length: 128 Unicode characters
    #
    #   * Maximum tag value length: 256 Unicode characters
    #
    #   * Valid values for key and value: a-z, A-Z, 0-9, space, and the
    #     following characters: \_ . : / = + - and @
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Don't use `aws:` as a prefix for keys; it's reserved for Amazon
    #     Web Services use.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGroupResult#group #group} => Types::Group
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group({
    #     group_name: "GroupName", # required
    #     filter_expression: "FilterExpression",
    #     insights_configuration: {
    #       insights_enabled: false,
    #       notifications_enabled: false,
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
    #   resp.group.group_name #=> String
    #   resp.group.group_arn #=> String
    #   resp.group.filter_expression #=> String
    #   resp.group.insights_configuration.insights_enabled #=> Boolean
    #   resp.group.insights_configuration.notifications_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/CreateGroup AWS API Documentation
    #
    # @overload create_group(params = {})
    # @param [Hash] params ({})
    def create_group(params = {}, options = {})
      req = build_request(:create_group, params)
      req.send_request(options)
    end

    # Creates a rule to control sampling behavior for instrumented
    # applications. Services retrieve rules with [GetSamplingRules][1], and
    # evaluate each rule in ascending order of *priority* for each request.
    # If a rule matches, the service records a trace, borrowing it from the
    # reservoir size. After 10 seconds, the service reports back to X-Ray
    # with [GetSamplingTargets][2] to get updated versions of each in-use
    # rule. The updated rule contains a trace quota that the service can use
    # instead of borrowing from the reservoir.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/xray/latest/api/API_GetSamplingRules.html
    # [2]: https://docs.aws.amazon.com/xray/latest/api/API_GetSamplingTargets.html
    #
    # @option params [required, Types::SamplingRule] :sampling_rule
    #   The rule definition.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A map that contains one or more tag keys and tag values to attach to
    #   an X-Ray sampling rule. For more information about ways to use tags,
    #   see [Tagging Amazon Web Services resources][1] in the *Amazon Web
    #   Services General Reference*.
    #
    #   The following restrictions apply to tags:
    #
    #   * Maximum number of user-applied tags per resource: 50
    #
    #   * Maximum tag key length: 128 Unicode characters
    #
    #   * Maximum tag value length: 256 Unicode characters
    #
    #   * Valid values for key and value: a-z, A-Z, 0-9, space, and the
    #     following characters: \_ . : / = + - and @
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Don't use `aws:` as a prefix for keys; it's reserved for Amazon
    #     Web Services use.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateSamplingRuleResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSamplingRuleResult#sampling_rule_record #sampling_rule_record} => Types::SamplingRuleRecord
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_sampling_rule({
    #     sampling_rule: { # required
    #       rule_name: "RuleName",
    #       rule_arn: "String",
    #       resource_arn: "ResourceARN", # required
    #       priority: 1, # required
    #       fixed_rate: 1.0, # required
    #       reservoir_size: 1, # required
    #       service_name: "ServiceName", # required
    #       service_type: "ServiceType", # required
    #       host: "Host", # required
    #       http_method: "HTTPMethod", # required
    #       url_path: "URLPath", # required
    #       version: 1, # required
    #       attributes: {
    #         "AttributeKey" => "AttributeValue",
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
    #   resp.sampling_rule_record.sampling_rule.rule_name #=> String
    #   resp.sampling_rule_record.sampling_rule.rule_arn #=> String
    #   resp.sampling_rule_record.sampling_rule.resource_arn #=> String
    #   resp.sampling_rule_record.sampling_rule.priority #=> Integer
    #   resp.sampling_rule_record.sampling_rule.fixed_rate #=> Float
    #   resp.sampling_rule_record.sampling_rule.reservoir_size #=> Integer
    #   resp.sampling_rule_record.sampling_rule.service_name #=> String
    #   resp.sampling_rule_record.sampling_rule.service_type #=> String
    #   resp.sampling_rule_record.sampling_rule.host #=> String
    #   resp.sampling_rule_record.sampling_rule.http_method #=> String
    #   resp.sampling_rule_record.sampling_rule.url_path #=> String
    #   resp.sampling_rule_record.sampling_rule.version #=> Integer
    #   resp.sampling_rule_record.sampling_rule.attributes #=> Hash
    #   resp.sampling_rule_record.sampling_rule.attributes["AttributeKey"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.sampling_rule_record.created_at #=> Time
    #   resp.sampling_rule_record.modified_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/CreateSamplingRule AWS API Documentation
    #
    # @overload create_sampling_rule(params = {})
    # @param [Hash] params ({})
    def create_sampling_rule(params = {}, options = {})
      req = build_request(:create_sampling_rule, params)
      req.send_request(options)
    end

    # Deletes a group resource.
    #
    # @option params [String] :group_name
    #   The case-sensitive name of the group.
    #
    # @option params [String] :group_arn
    #   The ARN of the group that was generated on creation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group({
    #     group_name: "GroupName",
    #     group_arn: "GroupARN",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/DeleteGroup AWS API Documentation
    #
    # @overload delete_group(params = {})
    # @param [Hash] params ({})
    def delete_group(params = {}, options = {})
      req = build_request(:delete_group, params)
      req.send_request(options)
    end

    # Deletes a resource policy from the target Amazon Web Services account.
    #
    # @option params [required, String] :policy_name
    #   The name of the resource policy to delete.
    #
    # @option params [String] :policy_revision_id
    #   Specifies a specific policy revision to delete. Provide a
    #   `PolicyRevisionId` to ensure an atomic delete operation. If the
    #   provided revision id does not match the latest policy revision id, an
    #   `InvalidPolicyRevisionIdException` exception is returned.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy({
    #     policy_name: "PolicyName", # required
    #     policy_revision_id: "PolicyRevisionId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/DeleteResourcePolicy AWS API Documentation
    #
    # @overload delete_resource_policy(params = {})
    # @param [Hash] params ({})
    def delete_resource_policy(params = {}, options = {})
      req = build_request(:delete_resource_policy, params)
      req.send_request(options)
    end

    # Deletes a sampling rule.
    #
    # @option params [String] :rule_name
    #   The name of the sampling rule. Specify a rule by either name or ARN,
    #   but not both.
    #
    # @option params [String] :rule_arn
    #   The ARN of the sampling rule. Specify a rule by either name or ARN,
    #   but not both.
    #
    # @return [Types::DeleteSamplingRuleResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSamplingRuleResult#sampling_rule_record #sampling_rule_record} => Types::SamplingRuleRecord
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_sampling_rule({
    #     rule_name: "String",
    #     rule_arn: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.sampling_rule_record.sampling_rule.rule_name #=> String
    #   resp.sampling_rule_record.sampling_rule.rule_arn #=> String
    #   resp.sampling_rule_record.sampling_rule.resource_arn #=> String
    #   resp.sampling_rule_record.sampling_rule.priority #=> Integer
    #   resp.sampling_rule_record.sampling_rule.fixed_rate #=> Float
    #   resp.sampling_rule_record.sampling_rule.reservoir_size #=> Integer
    #   resp.sampling_rule_record.sampling_rule.service_name #=> String
    #   resp.sampling_rule_record.sampling_rule.service_type #=> String
    #   resp.sampling_rule_record.sampling_rule.host #=> String
    #   resp.sampling_rule_record.sampling_rule.http_method #=> String
    #   resp.sampling_rule_record.sampling_rule.url_path #=> String
    #   resp.sampling_rule_record.sampling_rule.version #=> Integer
    #   resp.sampling_rule_record.sampling_rule.attributes #=> Hash
    #   resp.sampling_rule_record.sampling_rule.attributes["AttributeKey"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.sampling_rule_record.created_at #=> Time
    #   resp.sampling_rule_record.modified_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/DeleteSamplingRule AWS API Documentation
    #
    # @overload delete_sampling_rule(params = {})
    # @param [Hash] params ({})
    def delete_sampling_rule(params = {}, options = {})
      req = build_request(:delete_sampling_rule, params)
      req.send_request(options)
    end

    # Retrieves the current encryption configuration for X-Ray data.
    #
    # @return [Types::GetEncryptionConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEncryptionConfigResult#encryption_config #encryption_config} => Types::EncryptionConfig
    #
    # @example Response structure
    #
    #   resp.encryption_config.key_id #=> String
    #   resp.encryption_config.status #=> String, one of "UPDATING", "ACTIVE"
    #   resp.encryption_config.type #=> String, one of "NONE", "KMS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetEncryptionConfig AWS API Documentation
    #
    # @overload get_encryption_config(params = {})
    # @param [Hash] params ({})
    def get_encryption_config(params = {}, options = {})
      req = build_request(:get_encryption_config, params)
      req.send_request(options)
    end

    # Retrieves group resource details.
    #
    # @option params [String] :group_name
    #   The case-sensitive name of the group.
    #
    # @option params [String] :group_arn
    #   The ARN of the group that was generated on creation.
    #
    # @return [Types::GetGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGroupResult#group #group} => Types::Group
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group({
    #     group_name: "GroupName",
    #     group_arn: "GroupARN",
    #   })
    #
    # @example Response structure
    #
    #   resp.group.group_name #=> String
    #   resp.group.group_arn #=> String
    #   resp.group.filter_expression #=> String
    #   resp.group.insights_configuration.insights_enabled #=> Boolean
    #   resp.group.insights_configuration.notifications_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetGroup AWS API Documentation
    #
    # @overload get_group(params = {})
    # @param [Hash] params ({})
    def get_group(params = {}, options = {})
      req = build_request(:get_group, params)
      req.send_request(options)
    end

    # Retrieves all active group details.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::GetGroupsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGroupsResult#groups #groups} => Array&lt;Types::GroupSummary&gt;
    #   * {Types::GetGroupsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_groups({
    #     next_token: "GetGroupsNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.groups #=> Array
    #   resp.groups[0].group_name #=> String
    #   resp.groups[0].group_arn #=> String
    #   resp.groups[0].filter_expression #=> String
    #   resp.groups[0].insights_configuration.insights_enabled #=> Boolean
    #   resp.groups[0].insights_configuration.notifications_enabled #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetGroups AWS API Documentation
    #
    # @overload get_groups(params = {})
    # @param [Hash] params ({})
    def get_groups(params = {}, options = {})
      req = build_request(:get_groups, params)
      req.send_request(options)
    end

    # Retrieves all indexing rules.
    #
    # Indexing rules are used to determine the server-side sampling rate for
    # spans ingested through the CloudWatchLogs destination and indexed by
    # X-Ray. For more information, see [Transaction Search][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Transaction-Search.html
    #
    # @option params [String] :next_token
    #   Specify the pagination token returned by a previous request to
    #   retrieve the next page of indexes.
    #
    # @return [Types::GetIndexingRulesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIndexingRulesResult#indexing_rules #indexing_rules} => Array&lt;Types::IndexingRule&gt;
    #   * {Types::GetIndexingRulesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_indexing_rules({
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.indexing_rules #=> Array
    #   resp.indexing_rules[0].name #=> String
    #   resp.indexing_rules[0].modified_at #=> Time
    #   resp.indexing_rules[0].rule.probabilistic.desired_sampling_percentage #=> Float
    #   resp.indexing_rules[0].rule.probabilistic.actual_sampling_percentage #=> Float
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetIndexingRules AWS API Documentation
    #
    # @overload get_indexing_rules(params = {})
    # @param [Hash] params ({})
    def get_indexing_rules(params = {}, options = {})
      req = build_request(:get_indexing_rules, params)
      req.send_request(options)
    end

    # Retrieves the summary information of an insight. This includes impact
    # to clients and root cause services, the top anomalous services, the
    # category, the state of the insight, and the start and end time of the
    # insight.
    #
    # @option params [required, String] :insight_id
    #   The insight's unique identifier. Use the GetInsightSummaries action
    #   to retrieve an InsightId.
    #
    # @return [Types::GetInsightResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInsightResult#insight #insight} => Types::Insight
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_insight({
    #     insight_id: "InsightId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.insight.insight_id #=> String
    #   resp.insight.group_arn #=> String
    #   resp.insight.group_name #=> String
    #   resp.insight.root_cause_service_id.name #=> String
    #   resp.insight.root_cause_service_id.names #=> Array
    #   resp.insight.root_cause_service_id.names[0] #=> String
    #   resp.insight.root_cause_service_id.account_id #=> String
    #   resp.insight.root_cause_service_id.type #=> String
    #   resp.insight.categories #=> Array
    #   resp.insight.categories[0] #=> String, one of "FAULT"
    #   resp.insight.state #=> String, one of "ACTIVE", "CLOSED"
    #   resp.insight.start_time #=> Time
    #   resp.insight.end_time #=> Time
    #   resp.insight.summary #=> String
    #   resp.insight.client_request_impact_statistics.fault_count #=> Integer
    #   resp.insight.client_request_impact_statistics.ok_count #=> Integer
    #   resp.insight.client_request_impact_statistics.total_count #=> Integer
    #   resp.insight.root_cause_service_request_impact_statistics.fault_count #=> Integer
    #   resp.insight.root_cause_service_request_impact_statistics.ok_count #=> Integer
    #   resp.insight.root_cause_service_request_impact_statistics.total_count #=> Integer
    #   resp.insight.top_anomalous_services #=> Array
    #   resp.insight.top_anomalous_services[0].service_id.name #=> String
    #   resp.insight.top_anomalous_services[0].service_id.names #=> Array
    #   resp.insight.top_anomalous_services[0].service_id.names[0] #=> String
    #   resp.insight.top_anomalous_services[0].service_id.account_id #=> String
    #   resp.insight.top_anomalous_services[0].service_id.type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetInsight AWS API Documentation
    #
    # @overload get_insight(params = {})
    # @param [Hash] params ({})
    def get_insight(params = {}, options = {})
      req = build_request(:get_insight, params)
      req.send_request(options)
    end

    # X-Ray reevaluates insights periodically until they're resolved, and
    # records each intermediate state as an event. You can review an
    # insight's events in the Impact Timeline on the Inspect page in the
    # X-Ray console.
    #
    # @option params [required, String] :insight_id
    #   The insight's unique identifier. Use the GetInsightSummaries action
    #   to retrieve an InsightId.
    #
    # @option params [Integer] :max_results
    #   Used to retrieve at most the specified value of events.
    #
    # @option params [String] :next_token
    #   Specify the pagination token returned by a previous request to
    #   retrieve the next page of events.
    #
    # @return [Types::GetInsightEventsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInsightEventsResult#insight_events #insight_events} => Array&lt;Types::InsightEvent&gt;
    #   * {Types::GetInsightEventsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_insight_events({
    #     insight_id: "InsightId", # required
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.insight_events #=> Array
    #   resp.insight_events[0].summary #=> String
    #   resp.insight_events[0].event_time #=> Time
    #   resp.insight_events[0].client_request_impact_statistics.fault_count #=> Integer
    #   resp.insight_events[0].client_request_impact_statistics.ok_count #=> Integer
    #   resp.insight_events[0].client_request_impact_statistics.total_count #=> Integer
    #   resp.insight_events[0].root_cause_service_request_impact_statistics.fault_count #=> Integer
    #   resp.insight_events[0].root_cause_service_request_impact_statistics.ok_count #=> Integer
    #   resp.insight_events[0].root_cause_service_request_impact_statistics.total_count #=> Integer
    #   resp.insight_events[0].top_anomalous_services #=> Array
    #   resp.insight_events[0].top_anomalous_services[0].service_id.name #=> String
    #   resp.insight_events[0].top_anomalous_services[0].service_id.names #=> Array
    #   resp.insight_events[0].top_anomalous_services[0].service_id.names[0] #=> String
    #   resp.insight_events[0].top_anomalous_services[0].service_id.account_id #=> String
    #   resp.insight_events[0].top_anomalous_services[0].service_id.type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetInsightEvents AWS API Documentation
    #
    # @overload get_insight_events(params = {})
    # @param [Hash] params ({})
    def get_insight_events(params = {}, options = {})
      req = build_request(:get_insight_events, params)
      req.send_request(options)
    end

    # Retrieves a service graph structure filtered by the specified insight.
    # The service graph is limited to only structural information. For a
    # complete service graph, use this API with the GetServiceGraph API.
    #
    # @option params [required, String] :insight_id
    #   The insight's unique identifier. Use the GetInsightSummaries action
    #   to retrieve an InsightId.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The estimated start time of the insight, in Unix time seconds. The
    #   StartTime is inclusive of the value provided and can't be more than
    #   30 days old.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The estimated end time of the insight, in Unix time seconds. The
    #   EndTime is exclusive of the value provided. The time range between the
    #   start time and end time can't be more than six hours.
    #
    # @option params [String] :next_token
    #   Specify the pagination token returned by a previous request to
    #   retrieve the next page of results.
    #
    # @return [Types::GetInsightImpactGraphResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInsightImpactGraphResult#insight_id #insight_id} => String
    #   * {Types::GetInsightImpactGraphResult#start_time #start_time} => Time
    #   * {Types::GetInsightImpactGraphResult#end_time #end_time} => Time
    #   * {Types::GetInsightImpactGraphResult#service_graph_start_time #service_graph_start_time} => Time
    #   * {Types::GetInsightImpactGraphResult#service_graph_end_time #service_graph_end_time} => Time
    #   * {Types::GetInsightImpactGraphResult#services #services} => Array&lt;Types::InsightImpactGraphService&gt;
    #   * {Types::GetInsightImpactGraphResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_insight_impact_graph({
    #     insight_id: "InsightId", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.insight_id #=> String
    #   resp.start_time #=> Time
    #   resp.end_time #=> Time
    #   resp.service_graph_start_time #=> Time
    #   resp.service_graph_end_time #=> Time
    #   resp.services #=> Array
    #   resp.services[0].reference_id #=> Integer
    #   resp.services[0].type #=> String
    #   resp.services[0].name #=> String
    #   resp.services[0].names #=> Array
    #   resp.services[0].names[0] #=> String
    #   resp.services[0].account_id #=> String
    #   resp.services[0].edges #=> Array
    #   resp.services[0].edges[0].reference_id #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetInsightImpactGraph AWS API Documentation
    #
    # @overload get_insight_impact_graph(params = {})
    # @param [Hash] params ({})
    def get_insight_impact_graph(params = {}, options = {})
      req = build_request(:get_insight_impact_graph, params)
      req.send_request(options)
    end

    # Retrieves the summaries of all insights in the specified group
    # matching the provided filter values.
    #
    # @option params [Array<String>] :states
    #   The list of insight states.
    #
    # @option params [String] :group_arn
    #   The Amazon Resource Name (ARN) of the group. Required if the GroupName
    #   isn't provided.
    #
    # @option params [String] :group_name
    #   The name of the group. Required if the GroupARN isn't provided.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The beginning of the time frame in which the insights started. The
    #   start time can't be more than 30 days old.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time frame in which the insights ended. The end time
    #   can't be more than 30 days old.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to display.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::GetInsightSummariesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInsightSummariesResult#insight_summaries #insight_summaries} => Array&lt;Types::InsightSummary&gt;
    #   * {Types::GetInsightSummariesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_insight_summaries({
    #     states: ["ACTIVE"], # accepts ACTIVE, CLOSED
    #     group_arn: "GroupARN",
    #     group_name: "GroupName",
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.insight_summaries #=> Array
    #   resp.insight_summaries[0].insight_id #=> String
    #   resp.insight_summaries[0].group_arn #=> String
    #   resp.insight_summaries[0].group_name #=> String
    #   resp.insight_summaries[0].root_cause_service_id.name #=> String
    #   resp.insight_summaries[0].root_cause_service_id.names #=> Array
    #   resp.insight_summaries[0].root_cause_service_id.names[0] #=> String
    #   resp.insight_summaries[0].root_cause_service_id.account_id #=> String
    #   resp.insight_summaries[0].root_cause_service_id.type #=> String
    #   resp.insight_summaries[0].categories #=> Array
    #   resp.insight_summaries[0].categories[0] #=> String, one of "FAULT"
    #   resp.insight_summaries[0].state #=> String, one of "ACTIVE", "CLOSED"
    #   resp.insight_summaries[0].start_time #=> Time
    #   resp.insight_summaries[0].end_time #=> Time
    #   resp.insight_summaries[0].summary #=> String
    #   resp.insight_summaries[0].client_request_impact_statistics.fault_count #=> Integer
    #   resp.insight_summaries[0].client_request_impact_statistics.ok_count #=> Integer
    #   resp.insight_summaries[0].client_request_impact_statistics.total_count #=> Integer
    #   resp.insight_summaries[0].root_cause_service_request_impact_statistics.fault_count #=> Integer
    #   resp.insight_summaries[0].root_cause_service_request_impact_statistics.ok_count #=> Integer
    #   resp.insight_summaries[0].root_cause_service_request_impact_statistics.total_count #=> Integer
    #   resp.insight_summaries[0].top_anomalous_services #=> Array
    #   resp.insight_summaries[0].top_anomalous_services[0].service_id.name #=> String
    #   resp.insight_summaries[0].top_anomalous_services[0].service_id.names #=> Array
    #   resp.insight_summaries[0].top_anomalous_services[0].service_id.names[0] #=> String
    #   resp.insight_summaries[0].top_anomalous_services[0].service_id.account_id #=> String
    #   resp.insight_summaries[0].top_anomalous_services[0].service_id.type #=> String
    #   resp.insight_summaries[0].last_update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetInsightSummaries AWS API Documentation
    #
    # @overload get_insight_summaries(params = {})
    # @param [Hash] params ({})
    def get_insight_summaries(params = {}, options = {})
      req = build_request(:get_insight_summaries, params)
      req.send_request(options)
    end

    # Retrieves a service graph for traces based on the specified
    # `RetrievalToken` from the CloudWatch log group generated by
    # Transaction Search. This API does not initiate a retrieval job. You
    # must first execute `StartTraceRetrieval` to obtain the required
    # `RetrievalToken`.
    #
    # The trace graph describes services that process incoming requests and
    # any downstream services they call, which may include Amazon Web
    # Services resources, external APIs, or databases.
    #
    # The response is empty until the `RetrievalStatus` is *COMPLETE*. Retry
    # the request after the status changes from *RUNNING* or *SCHEDULED* to
    # *COMPLETE* to access the full service graph.
    #
    # When CloudWatch log is the destination, this API can support
    # cross-account observability and service graph retrieval across linked
    # accounts.
    #
    # For retrieving graphs from X-Ray directly as opposed to the
    # Transaction-Search Log group, see [GetTraceGraph][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/xray/latest/api/API_GetTraceGraph.html
    #
    # @option params [required, String] :retrieval_token
    #   Retrieval token.
    #
    # @option params [String] :next_token
    #   Specify the pagination token returned by a previous request to
    #   retrieve the next page of indexes.
    #
    # @return [Types::GetRetrievedTracesGraphResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRetrievedTracesGraphResult#retrieval_status #retrieval_status} => String
    #   * {Types::GetRetrievedTracesGraphResult#services #services} => Array&lt;Types::RetrievedService&gt;
    #   * {Types::GetRetrievedTracesGraphResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_retrieved_traces_graph({
    #     retrieval_token: "RetrievalToken", # required
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.retrieval_status #=> String, one of "SCHEDULED", "RUNNING", "COMPLETE", "FAILED", "CANCELLED", "TIMEOUT"
    #   resp.services #=> Array
    #   resp.services[0].service.reference_id #=> Integer
    #   resp.services[0].service.name #=> String
    #   resp.services[0].service.names #=> Array
    #   resp.services[0].service.names[0] #=> String
    #   resp.services[0].service.root #=> Boolean
    #   resp.services[0].service.account_id #=> String
    #   resp.services[0].service.type #=> String
    #   resp.services[0].service.state #=> String
    #   resp.services[0].service.start_time #=> Time
    #   resp.services[0].service.end_time #=> Time
    #   resp.services[0].service.edges #=> Array
    #   resp.services[0].service.edges[0].reference_id #=> Integer
    #   resp.services[0].service.edges[0].start_time #=> Time
    #   resp.services[0].service.edges[0].end_time #=> Time
    #   resp.services[0].service.edges[0].summary_statistics.ok_count #=> Integer
    #   resp.services[0].service.edges[0].summary_statistics.error_statistics.throttle_count #=> Integer
    #   resp.services[0].service.edges[0].summary_statistics.error_statistics.other_count #=> Integer
    #   resp.services[0].service.edges[0].summary_statistics.error_statistics.total_count #=> Integer
    #   resp.services[0].service.edges[0].summary_statistics.fault_statistics.other_count #=> Integer
    #   resp.services[0].service.edges[0].summary_statistics.fault_statistics.total_count #=> Integer
    #   resp.services[0].service.edges[0].summary_statistics.total_count #=> Integer
    #   resp.services[0].service.edges[0].summary_statistics.total_response_time #=> Float
    #   resp.services[0].service.edges[0].response_time_histogram #=> Array
    #   resp.services[0].service.edges[0].response_time_histogram[0].value #=> Float
    #   resp.services[0].service.edges[0].response_time_histogram[0].count #=> Integer
    #   resp.services[0].service.edges[0].aliases #=> Array
    #   resp.services[0].service.edges[0].aliases[0].name #=> String
    #   resp.services[0].service.edges[0].aliases[0].names #=> Array
    #   resp.services[0].service.edges[0].aliases[0].names[0] #=> String
    #   resp.services[0].service.edges[0].aliases[0].type #=> String
    #   resp.services[0].service.edges[0].edge_type #=> String
    #   resp.services[0].service.edges[0].received_event_age_histogram #=> Array
    #   resp.services[0].service.edges[0].received_event_age_histogram[0].value #=> Float
    #   resp.services[0].service.edges[0].received_event_age_histogram[0].count #=> Integer
    #   resp.services[0].service.summary_statistics.ok_count #=> Integer
    #   resp.services[0].service.summary_statistics.error_statistics.throttle_count #=> Integer
    #   resp.services[0].service.summary_statistics.error_statistics.other_count #=> Integer
    #   resp.services[0].service.summary_statistics.error_statistics.total_count #=> Integer
    #   resp.services[0].service.summary_statistics.fault_statistics.other_count #=> Integer
    #   resp.services[0].service.summary_statistics.fault_statistics.total_count #=> Integer
    #   resp.services[0].service.summary_statistics.total_count #=> Integer
    #   resp.services[0].service.summary_statistics.total_response_time #=> Float
    #   resp.services[0].service.duration_histogram #=> Array
    #   resp.services[0].service.duration_histogram[0].value #=> Float
    #   resp.services[0].service.duration_histogram[0].count #=> Integer
    #   resp.services[0].service.response_time_histogram #=> Array
    #   resp.services[0].service.response_time_histogram[0].value #=> Float
    #   resp.services[0].service.response_time_histogram[0].count #=> Integer
    #   resp.services[0].links #=> Array
    #   resp.services[0].links[0].reference_type #=> String
    #   resp.services[0].links[0].source_trace_id #=> String
    #   resp.services[0].links[0].destination_trace_ids #=> Array
    #   resp.services[0].links[0].destination_trace_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetRetrievedTracesGraph AWS API Documentation
    #
    # @overload get_retrieved_traces_graph(params = {})
    # @param [Hash] params ({})
    def get_retrieved_traces_graph(params = {}, options = {})
      req = build_request(:get_retrieved_traces_graph, params)
      req.send_request(options)
    end

    # Retrieves all sampling rules.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::GetSamplingRulesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSamplingRulesResult#sampling_rule_records #sampling_rule_records} => Array&lt;Types::SamplingRuleRecord&gt;
    #   * {Types::GetSamplingRulesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sampling_rules({
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.sampling_rule_records #=> Array
    #   resp.sampling_rule_records[0].sampling_rule.rule_name #=> String
    #   resp.sampling_rule_records[0].sampling_rule.rule_arn #=> String
    #   resp.sampling_rule_records[0].sampling_rule.resource_arn #=> String
    #   resp.sampling_rule_records[0].sampling_rule.priority #=> Integer
    #   resp.sampling_rule_records[0].sampling_rule.fixed_rate #=> Float
    #   resp.sampling_rule_records[0].sampling_rule.reservoir_size #=> Integer
    #   resp.sampling_rule_records[0].sampling_rule.service_name #=> String
    #   resp.sampling_rule_records[0].sampling_rule.service_type #=> String
    #   resp.sampling_rule_records[0].sampling_rule.host #=> String
    #   resp.sampling_rule_records[0].sampling_rule.http_method #=> String
    #   resp.sampling_rule_records[0].sampling_rule.url_path #=> String
    #   resp.sampling_rule_records[0].sampling_rule.version #=> Integer
    #   resp.sampling_rule_records[0].sampling_rule.attributes #=> Hash
    #   resp.sampling_rule_records[0].sampling_rule.attributes["AttributeKey"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.sampling_rule_records[0].created_at #=> Time
    #   resp.sampling_rule_records[0].modified_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetSamplingRules AWS API Documentation
    #
    # @overload get_sampling_rules(params = {})
    # @param [Hash] params ({})
    def get_sampling_rules(params = {}, options = {})
      req = build_request(:get_sampling_rules, params)
      req.send_request(options)
    end

    # Retrieves information about recent sampling results for all sampling
    # rules.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::GetSamplingStatisticSummariesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSamplingStatisticSummariesResult#sampling_statistic_summaries #sampling_statistic_summaries} => Array&lt;Types::SamplingStatisticSummary&gt;
    #   * {Types::GetSamplingStatisticSummariesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sampling_statistic_summaries({
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.sampling_statistic_summaries #=> Array
    #   resp.sampling_statistic_summaries[0].rule_name #=> String
    #   resp.sampling_statistic_summaries[0].timestamp #=> Time
    #   resp.sampling_statistic_summaries[0].request_count #=> Integer
    #   resp.sampling_statistic_summaries[0].borrow_count #=> Integer
    #   resp.sampling_statistic_summaries[0].sampled_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetSamplingStatisticSummaries AWS API Documentation
    #
    # @overload get_sampling_statistic_summaries(params = {})
    # @param [Hash] params ({})
    def get_sampling_statistic_summaries(params = {}, options = {})
      req = build_request(:get_sampling_statistic_summaries, params)
      req.send_request(options)
    end

    # Requests a sampling quota for rules that the service is using to
    # sample requests.
    #
    # @option params [required, Array<Types::SamplingStatisticsDocument>] :sampling_statistics_documents
    #   Information about rules that the service is using to sample requests.
    #
    # @return [Types::GetSamplingTargetsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSamplingTargetsResult#sampling_target_documents #sampling_target_documents} => Array&lt;Types::SamplingTargetDocument&gt;
    #   * {Types::GetSamplingTargetsResult#last_rule_modification #last_rule_modification} => Time
    #   * {Types::GetSamplingTargetsResult#unprocessed_statistics #unprocessed_statistics} => Array&lt;Types::UnprocessedStatistics&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sampling_targets({
    #     sampling_statistics_documents: [ # required
    #       {
    #         rule_name: "RuleName", # required
    #         client_id: "ClientID", # required
    #         timestamp: Time.now, # required
    #         request_count: 1, # required
    #         sampled_count: 1, # required
    #         borrow_count: 1,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.sampling_target_documents #=> Array
    #   resp.sampling_target_documents[0].rule_name #=> String
    #   resp.sampling_target_documents[0].fixed_rate #=> Float
    #   resp.sampling_target_documents[0].reservoir_quota #=> Integer
    #   resp.sampling_target_documents[0].reservoir_quota_ttl #=> Time
    #   resp.sampling_target_documents[0].interval #=> Integer
    #   resp.last_rule_modification #=> Time
    #   resp.unprocessed_statistics #=> Array
    #   resp.unprocessed_statistics[0].rule_name #=> String
    #   resp.unprocessed_statistics[0].error_code #=> String
    #   resp.unprocessed_statistics[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetSamplingTargets AWS API Documentation
    #
    # @overload get_sampling_targets(params = {})
    # @param [Hash] params ({})
    def get_sampling_targets(params = {}, options = {})
      req = build_request(:get_sampling_targets, params)
      req.send_request(options)
    end

    # Retrieves a document that describes services that process incoming
    # requests, and downstream services that they call as a result. Root
    # services process incoming requests and make calls to downstream
    # services. Root services are applications that use the [Amazon Web
    # Services X-Ray SDK][1]. Downstream services can be other applications,
    # Amazon Web Services resources, HTTP web APIs, or SQL databases.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/xray/index.html
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The start of the time frame for which to generate a graph.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The end of the timeframe for which to generate a graph.
    #
    # @option params [String] :group_name
    #   The name of a group based on which you want to generate a graph.
    #
    # @option params [String] :group_arn
    #   The Amazon Resource Name (ARN) of a group based on which you want to
    #   generate a graph.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::GetServiceGraphResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceGraphResult#start_time #start_time} => Time
    #   * {Types::GetServiceGraphResult#end_time #end_time} => Time
    #   * {Types::GetServiceGraphResult#services #services} => Array&lt;Types::Service&gt;
    #   * {Types::GetServiceGraphResult#contains_old_group_versions #contains_old_group_versions} => Boolean
    #   * {Types::GetServiceGraphResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_graph({
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     group_name: "GroupName",
    #     group_arn: "GroupARN",
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.start_time #=> Time
    #   resp.end_time #=> Time
    #   resp.services #=> Array
    #   resp.services[0].reference_id #=> Integer
    #   resp.services[0].name #=> String
    #   resp.services[0].names #=> Array
    #   resp.services[0].names[0] #=> String
    #   resp.services[0].root #=> Boolean
    #   resp.services[0].account_id #=> String
    #   resp.services[0].type #=> String
    #   resp.services[0].state #=> String
    #   resp.services[0].start_time #=> Time
    #   resp.services[0].end_time #=> Time
    #   resp.services[0].edges #=> Array
    #   resp.services[0].edges[0].reference_id #=> Integer
    #   resp.services[0].edges[0].start_time #=> Time
    #   resp.services[0].edges[0].end_time #=> Time
    #   resp.services[0].edges[0].summary_statistics.ok_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.error_statistics.throttle_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.error_statistics.other_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.error_statistics.total_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.fault_statistics.other_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.fault_statistics.total_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.total_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.total_response_time #=> Float
    #   resp.services[0].edges[0].response_time_histogram #=> Array
    #   resp.services[0].edges[0].response_time_histogram[0].value #=> Float
    #   resp.services[0].edges[0].response_time_histogram[0].count #=> Integer
    #   resp.services[0].edges[0].aliases #=> Array
    #   resp.services[0].edges[0].aliases[0].name #=> String
    #   resp.services[0].edges[0].aliases[0].names #=> Array
    #   resp.services[0].edges[0].aliases[0].names[0] #=> String
    #   resp.services[0].edges[0].aliases[0].type #=> String
    #   resp.services[0].edges[0].edge_type #=> String
    #   resp.services[0].edges[0].received_event_age_histogram #=> Array
    #   resp.services[0].edges[0].received_event_age_histogram[0].value #=> Float
    #   resp.services[0].edges[0].received_event_age_histogram[0].count #=> Integer
    #   resp.services[0].summary_statistics.ok_count #=> Integer
    #   resp.services[0].summary_statistics.error_statistics.throttle_count #=> Integer
    #   resp.services[0].summary_statistics.error_statistics.other_count #=> Integer
    #   resp.services[0].summary_statistics.error_statistics.total_count #=> Integer
    #   resp.services[0].summary_statistics.fault_statistics.other_count #=> Integer
    #   resp.services[0].summary_statistics.fault_statistics.total_count #=> Integer
    #   resp.services[0].summary_statistics.total_count #=> Integer
    #   resp.services[0].summary_statistics.total_response_time #=> Float
    #   resp.services[0].duration_histogram #=> Array
    #   resp.services[0].duration_histogram[0].value #=> Float
    #   resp.services[0].duration_histogram[0].count #=> Integer
    #   resp.services[0].response_time_histogram #=> Array
    #   resp.services[0].response_time_histogram[0].value #=> Float
    #   resp.services[0].response_time_histogram[0].count #=> Integer
    #   resp.contains_old_group_versions #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetServiceGraph AWS API Documentation
    #
    # @overload get_service_graph(params = {})
    # @param [Hash] params ({})
    def get_service_graph(params = {}, options = {})
      req = build_request(:get_service_graph, params)
      req.send_request(options)
    end

    # Get an aggregation of service statistics defined by a specific time
    # range.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The start of the time frame for which to aggregate statistics.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time frame for which to aggregate statistics.
    #
    # @option params [String] :group_name
    #   The case-sensitive name of the group for which to pull statistics
    #   from.
    #
    # @option params [String] :group_arn
    #   The Amazon Resource Name (ARN) of the group for which to pull
    #   statistics from.
    #
    # @option params [String] :entity_selector_expression
    #   A filter expression defining entities that will be aggregated for
    #   statistics. Supports ID, service, and edge functions. If no selector
    #   expression is specified, edge statistics are returned.
    #
    # @option params [Integer] :period
    #   Aggregation period in seconds.
    #
    # @option params [Boolean] :forecast_statistics
    #   The forecasted high and low fault count values. Forecast enabled
    #   requests require the EntitySelectorExpression ID be provided.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::GetTimeSeriesServiceStatisticsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTimeSeriesServiceStatisticsResult#time_series_service_statistics #time_series_service_statistics} => Array&lt;Types::TimeSeriesServiceStatistics&gt;
    #   * {Types::GetTimeSeriesServiceStatisticsResult#contains_old_group_versions #contains_old_group_versions} => Boolean
    #   * {Types::GetTimeSeriesServiceStatisticsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_time_series_service_statistics({
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     group_name: "GroupName",
    #     group_arn: "GroupARN",
    #     entity_selector_expression: "EntitySelectorExpression",
    #     period: 1,
    #     forecast_statistics: false,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.time_series_service_statistics #=> Array
    #   resp.time_series_service_statistics[0].timestamp #=> Time
    #   resp.time_series_service_statistics[0].edge_summary_statistics.ok_count #=> Integer
    #   resp.time_series_service_statistics[0].edge_summary_statistics.error_statistics.throttle_count #=> Integer
    #   resp.time_series_service_statistics[0].edge_summary_statistics.error_statistics.other_count #=> Integer
    #   resp.time_series_service_statistics[0].edge_summary_statistics.error_statistics.total_count #=> Integer
    #   resp.time_series_service_statistics[0].edge_summary_statistics.fault_statistics.other_count #=> Integer
    #   resp.time_series_service_statistics[0].edge_summary_statistics.fault_statistics.total_count #=> Integer
    #   resp.time_series_service_statistics[0].edge_summary_statistics.total_count #=> Integer
    #   resp.time_series_service_statistics[0].edge_summary_statistics.total_response_time #=> Float
    #   resp.time_series_service_statistics[0].service_summary_statistics.ok_count #=> Integer
    #   resp.time_series_service_statistics[0].service_summary_statistics.error_statistics.throttle_count #=> Integer
    #   resp.time_series_service_statistics[0].service_summary_statistics.error_statistics.other_count #=> Integer
    #   resp.time_series_service_statistics[0].service_summary_statistics.error_statistics.total_count #=> Integer
    #   resp.time_series_service_statistics[0].service_summary_statistics.fault_statistics.other_count #=> Integer
    #   resp.time_series_service_statistics[0].service_summary_statistics.fault_statistics.total_count #=> Integer
    #   resp.time_series_service_statistics[0].service_summary_statistics.total_count #=> Integer
    #   resp.time_series_service_statistics[0].service_summary_statistics.total_response_time #=> Float
    #   resp.time_series_service_statistics[0].service_forecast_statistics.fault_count_high #=> Integer
    #   resp.time_series_service_statistics[0].service_forecast_statistics.fault_count_low #=> Integer
    #   resp.time_series_service_statistics[0].response_time_histogram #=> Array
    #   resp.time_series_service_statistics[0].response_time_histogram[0].value #=> Float
    #   resp.time_series_service_statistics[0].response_time_histogram[0].count #=> Integer
    #   resp.contains_old_group_versions #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetTimeSeriesServiceStatistics AWS API Documentation
    #
    # @overload get_time_series_service_statistics(params = {})
    # @param [Hash] params ({})
    def get_time_series_service_statistics(params = {}, options = {})
      req = build_request(:get_time_series_service_statistics, params)
      req.send_request(options)
    end

    # Retrieves a service graph for one or more specific trace IDs.
    #
    # @option params [required, Array<String>] :trace_ids
    #   Trace IDs of requests for which to generate a service graph.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::GetTraceGraphResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTraceGraphResult#services #services} => Array&lt;Types::Service&gt;
    #   * {Types::GetTraceGraphResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_trace_graph({
    #     trace_ids: ["TraceId"], # required
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.services #=> Array
    #   resp.services[0].reference_id #=> Integer
    #   resp.services[0].name #=> String
    #   resp.services[0].names #=> Array
    #   resp.services[0].names[0] #=> String
    #   resp.services[0].root #=> Boolean
    #   resp.services[0].account_id #=> String
    #   resp.services[0].type #=> String
    #   resp.services[0].state #=> String
    #   resp.services[0].start_time #=> Time
    #   resp.services[0].end_time #=> Time
    #   resp.services[0].edges #=> Array
    #   resp.services[0].edges[0].reference_id #=> Integer
    #   resp.services[0].edges[0].start_time #=> Time
    #   resp.services[0].edges[0].end_time #=> Time
    #   resp.services[0].edges[0].summary_statistics.ok_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.error_statistics.throttle_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.error_statistics.other_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.error_statistics.total_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.fault_statistics.other_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.fault_statistics.total_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.total_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.total_response_time #=> Float
    #   resp.services[0].edges[0].response_time_histogram #=> Array
    #   resp.services[0].edges[0].response_time_histogram[0].value #=> Float
    #   resp.services[0].edges[0].response_time_histogram[0].count #=> Integer
    #   resp.services[0].edges[0].aliases #=> Array
    #   resp.services[0].edges[0].aliases[0].name #=> String
    #   resp.services[0].edges[0].aliases[0].names #=> Array
    #   resp.services[0].edges[0].aliases[0].names[0] #=> String
    #   resp.services[0].edges[0].aliases[0].type #=> String
    #   resp.services[0].edges[0].edge_type #=> String
    #   resp.services[0].edges[0].received_event_age_histogram #=> Array
    #   resp.services[0].edges[0].received_event_age_histogram[0].value #=> Float
    #   resp.services[0].edges[0].received_event_age_histogram[0].count #=> Integer
    #   resp.services[0].summary_statistics.ok_count #=> Integer
    #   resp.services[0].summary_statistics.error_statistics.throttle_count #=> Integer
    #   resp.services[0].summary_statistics.error_statistics.other_count #=> Integer
    #   resp.services[0].summary_statistics.error_statistics.total_count #=> Integer
    #   resp.services[0].summary_statistics.fault_statistics.other_count #=> Integer
    #   resp.services[0].summary_statistics.fault_statistics.total_count #=> Integer
    #   resp.services[0].summary_statistics.total_count #=> Integer
    #   resp.services[0].summary_statistics.total_response_time #=> Float
    #   resp.services[0].duration_histogram #=> Array
    #   resp.services[0].duration_histogram[0].value #=> Float
    #   resp.services[0].duration_histogram[0].count #=> Integer
    #   resp.services[0].response_time_histogram #=> Array
    #   resp.services[0].response_time_histogram[0].value #=> Float
    #   resp.services[0].response_time_histogram[0].count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetTraceGraph AWS API Documentation
    #
    # @overload get_trace_graph(params = {})
    # @param [Hash] params ({})
    def get_trace_graph(params = {}, options = {})
      req = build_request(:get_trace_graph, params)
      req.send_request(options)
    end

    # Retrieves the current destination of data sent to `PutTraceSegments`
    # and *OpenTelemetry* API. The Transaction Search feature requires a
    # CloudWatchLogs destination. For more information, see [Transaction
    # Search][1] and [OpenTelemetry][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Transaction-Search.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-OpenTelemetry-Sections.html
    #
    # @return [Types::GetTraceSegmentDestinationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTraceSegmentDestinationResult#destination #destination} => String
    #   * {Types::GetTraceSegmentDestinationResult#status #status} => String
    #
    # @example Response structure
    #
    #   resp.destination #=> String, one of "XRay", "CloudWatchLogs"
    #   resp.status #=> String, one of "PENDING", "ACTIVE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetTraceSegmentDestination AWS API Documentation
    #
    # @overload get_trace_segment_destination(params = {})
    # @param [Hash] params ({})
    def get_trace_segment_destination(params = {}, options = {})
      req = build_request(:get_trace_segment_destination, params)
      req.send_request(options)
    end

    # Retrieves IDs and annotations for traces available for a specified
    # time frame using an optional filter. To get the full traces, pass the
    # trace IDs to `BatchGetTraces`.
    #
    # A filter expression can target traced requests that hit specific
    # service nodes or edges, have errors, or come from a known user. For
    # example, the following filter expression targets traces that pass
    # through `api.example.com`:
    #
    # `service("api.example.com")`
    #
    # This filter expression finds traces that have an annotation named
    # `account` with the value `12345`:
    #
    # `annotation.account = "12345"`
    #
    # For a full list of indexed fields and keywords that you can use in
    # filter expressions, see [Use filter expressions][1] in the *Amazon Web
    # Services X-Ray Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/xray/latest/devguide/aws-xray-interface-console.html#xray-console-filters
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The start of the time frame for which to retrieve traces.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time frame for which to retrieve traces.
    #
    # @option params [String] :time_range_type
    #   Query trace summaries by TraceId (trace start time), Event (trace
    #   update time), or Service (trace segment end time).
    #
    # @option params [Boolean] :sampling
    #   Set to `true` to get summaries for only a subset of available traces.
    #
    # @option params [Types::SamplingStrategy] :sampling_strategy
    #   A parameter to indicate whether to enable sampling on trace summaries.
    #   Input parameters are Name and Value.
    #
    # @option params [String] :filter_expression
    #   Specify a filter expression to retrieve trace summaries for services
    #   or requests that meet certain requirements.
    #
    # @option params [String] :next_token
    #   Specify the pagination token returned by a previous request to
    #   retrieve the next page of results.
    #
    # @return [Types::GetTraceSummariesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTraceSummariesResult#trace_summaries #trace_summaries} => Array&lt;Types::TraceSummary&gt;
    #   * {Types::GetTraceSummariesResult#approximate_time #approximate_time} => Time
    #   * {Types::GetTraceSummariesResult#traces_processed_count #traces_processed_count} => Integer
    #   * {Types::GetTraceSummariesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_trace_summaries({
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     time_range_type: "TraceId", # accepts TraceId, Event, Service
    #     sampling: false,
    #     sampling_strategy: {
    #       name: "PartialScan", # accepts PartialScan, FixedRate
    #       value: 1.0,
    #     },
    #     filter_expression: "FilterExpression",
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.trace_summaries #=> Array
    #   resp.trace_summaries[0].id #=> String
    #   resp.trace_summaries[0].start_time #=> Time
    #   resp.trace_summaries[0].duration #=> Float
    #   resp.trace_summaries[0].response_time #=> Float
    #   resp.trace_summaries[0].has_fault #=> Boolean
    #   resp.trace_summaries[0].has_error #=> Boolean
    #   resp.trace_summaries[0].has_throttle #=> Boolean
    #   resp.trace_summaries[0].is_partial #=> Boolean
    #   resp.trace_summaries[0].http.http_url #=> String
    #   resp.trace_summaries[0].http.http_status #=> Integer
    #   resp.trace_summaries[0].http.http_method #=> String
    #   resp.trace_summaries[0].http.user_agent #=> String
    #   resp.trace_summaries[0].http.client_ip #=> String
    #   resp.trace_summaries[0].annotations #=> Hash
    #   resp.trace_summaries[0].annotations["AnnotationKey"] #=> Array
    #   resp.trace_summaries[0].annotations["AnnotationKey"][0].annotation_value.number_value #=> Float
    #   resp.trace_summaries[0].annotations["AnnotationKey"][0].annotation_value.boolean_value #=> Boolean
    #   resp.trace_summaries[0].annotations["AnnotationKey"][0].annotation_value.string_value #=> String
    #   resp.trace_summaries[0].annotations["AnnotationKey"][0].service_ids #=> Array
    #   resp.trace_summaries[0].annotations["AnnotationKey"][0].service_ids[0].name #=> String
    #   resp.trace_summaries[0].annotations["AnnotationKey"][0].service_ids[0].names #=> Array
    #   resp.trace_summaries[0].annotations["AnnotationKey"][0].service_ids[0].names[0] #=> String
    #   resp.trace_summaries[0].annotations["AnnotationKey"][0].service_ids[0].account_id #=> String
    #   resp.trace_summaries[0].annotations["AnnotationKey"][0].service_ids[0].type #=> String
    #   resp.trace_summaries[0].users #=> Array
    #   resp.trace_summaries[0].users[0].user_name #=> String
    #   resp.trace_summaries[0].users[0].service_ids #=> Array
    #   resp.trace_summaries[0].users[0].service_ids[0].name #=> String
    #   resp.trace_summaries[0].users[0].service_ids[0].names #=> Array
    #   resp.trace_summaries[0].users[0].service_ids[0].names[0] #=> String
    #   resp.trace_summaries[0].users[0].service_ids[0].account_id #=> String
    #   resp.trace_summaries[0].users[0].service_ids[0].type #=> String
    #   resp.trace_summaries[0].service_ids #=> Array
    #   resp.trace_summaries[0].service_ids[0].name #=> String
    #   resp.trace_summaries[0].service_ids[0].names #=> Array
    #   resp.trace_summaries[0].service_ids[0].names[0] #=> String
    #   resp.trace_summaries[0].service_ids[0].account_id #=> String
    #   resp.trace_summaries[0].service_ids[0].type #=> String
    #   resp.trace_summaries[0].resource_arns #=> Array
    #   resp.trace_summaries[0].resource_arns[0].arn #=> String
    #   resp.trace_summaries[0].instance_ids #=> Array
    #   resp.trace_summaries[0].instance_ids[0].id #=> String
    #   resp.trace_summaries[0].availability_zones #=> Array
    #   resp.trace_summaries[0].availability_zones[0].name #=> String
    #   resp.trace_summaries[0].entry_point.name #=> String
    #   resp.trace_summaries[0].entry_point.names #=> Array
    #   resp.trace_summaries[0].entry_point.names[0] #=> String
    #   resp.trace_summaries[0].entry_point.account_id #=> String
    #   resp.trace_summaries[0].entry_point.type #=> String
    #   resp.trace_summaries[0].fault_root_causes #=> Array
    #   resp.trace_summaries[0].fault_root_causes[0].services #=> Array
    #   resp.trace_summaries[0].fault_root_causes[0].services[0].name #=> String
    #   resp.trace_summaries[0].fault_root_causes[0].services[0].names #=> Array
    #   resp.trace_summaries[0].fault_root_causes[0].services[0].names[0] #=> String
    #   resp.trace_summaries[0].fault_root_causes[0].services[0].type #=> String
    #   resp.trace_summaries[0].fault_root_causes[0].services[0].account_id #=> String
    #   resp.trace_summaries[0].fault_root_causes[0].services[0].entity_path #=> Array
    #   resp.trace_summaries[0].fault_root_causes[0].services[0].entity_path[0].name #=> String
    #   resp.trace_summaries[0].fault_root_causes[0].services[0].entity_path[0].exceptions #=> Array
    #   resp.trace_summaries[0].fault_root_causes[0].services[0].entity_path[0].exceptions[0].name #=> String
    #   resp.trace_summaries[0].fault_root_causes[0].services[0].entity_path[0].exceptions[0].message #=> String
    #   resp.trace_summaries[0].fault_root_causes[0].services[0].entity_path[0].remote #=> Boolean
    #   resp.trace_summaries[0].fault_root_causes[0].services[0].inferred #=> Boolean
    #   resp.trace_summaries[0].fault_root_causes[0].client_impacting #=> Boolean
    #   resp.trace_summaries[0].error_root_causes #=> Array
    #   resp.trace_summaries[0].error_root_causes[0].services #=> Array
    #   resp.trace_summaries[0].error_root_causes[0].services[0].name #=> String
    #   resp.trace_summaries[0].error_root_causes[0].services[0].names #=> Array
    #   resp.trace_summaries[0].error_root_causes[0].services[0].names[0] #=> String
    #   resp.trace_summaries[0].error_root_causes[0].services[0].type #=> String
    #   resp.trace_summaries[0].error_root_causes[0].services[0].account_id #=> String
    #   resp.trace_summaries[0].error_root_causes[0].services[0].entity_path #=> Array
    #   resp.trace_summaries[0].error_root_causes[0].services[0].entity_path[0].name #=> String
    #   resp.trace_summaries[0].error_root_causes[0].services[0].entity_path[0].exceptions #=> Array
    #   resp.trace_summaries[0].error_root_causes[0].services[0].entity_path[0].exceptions[0].name #=> String
    #   resp.trace_summaries[0].error_root_causes[0].services[0].entity_path[0].exceptions[0].message #=> String
    #   resp.trace_summaries[0].error_root_causes[0].services[0].entity_path[0].remote #=> Boolean
    #   resp.trace_summaries[0].error_root_causes[0].services[0].inferred #=> Boolean
    #   resp.trace_summaries[0].error_root_causes[0].client_impacting #=> Boolean
    #   resp.trace_summaries[0].response_time_root_causes #=> Array
    #   resp.trace_summaries[0].response_time_root_causes[0].services #=> Array
    #   resp.trace_summaries[0].response_time_root_causes[0].services[0].name #=> String
    #   resp.trace_summaries[0].response_time_root_causes[0].services[0].names #=> Array
    #   resp.trace_summaries[0].response_time_root_causes[0].services[0].names[0] #=> String
    #   resp.trace_summaries[0].response_time_root_causes[0].services[0].type #=> String
    #   resp.trace_summaries[0].response_time_root_causes[0].services[0].account_id #=> String
    #   resp.trace_summaries[0].response_time_root_causes[0].services[0].entity_path #=> Array
    #   resp.trace_summaries[0].response_time_root_causes[0].services[0].entity_path[0].name #=> String
    #   resp.trace_summaries[0].response_time_root_causes[0].services[0].entity_path[0].coverage #=> Float
    #   resp.trace_summaries[0].response_time_root_causes[0].services[0].entity_path[0].remote #=> Boolean
    #   resp.trace_summaries[0].response_time_root_causes[0].services[0].inferred #=> Boolean
    #   resp.trace_summaries[0].response_time_root_causes[0].client_impacting #=> Boolean
    #   resp.trace_summaries[0].revision #=> Integer
    #   resp.trace_summaries[0].matched_event_time #=> Time
    #   resp.approximate_time #=> Time
    #   resp.traces_processed_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetTraceSummaries AWS API Documentation
    #
    # @overload get_trace_summaries(params = {})
    # @param [Hash] params ({})
    def get_trace_summaries(params = {}, options = {})
      req = build_request(:get_trace_summaries, params)
      req.send_request(options)
    end

    # Returns the list of resource policies in the target Amazon Web
    # Services account.
    #
    # @option params [String] :next_token
    #   Not currently supported.
    #
    # @return [Types::ListResourcePoliciesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourcePoliciesResult#resource_policies #resource_policies} => Array&lt;Types::ResourcePolicy&gt;
    #   * {Types::ListResourcePoliciesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_policies({
    #     next_token: "ResourcePolicyNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_policies #=> Array
    #   resp.resource_policies[0].policy_name #=> String
    #   resp.resource_policies[0].policy_document #=> String
    #   resp.resource_policies[0].policy_revision_id #=> String
    #   resp.resource_policies[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/ListResourcePolicies AWS API Documentation
    #
    # @overload list_resource_policies(params = {})
    # @param [Hash] params ({})
    def list_resource_policies(params = {}, options = {})
      req = build_request(:list_resource_policies, params)
      req.send_request(options)
    end

    # Retrieves a list of traces for a given `RetrievalToken` from the
    # CloudWatch log group generated by Transaction Search. For information
    # on what each trace returns, see [BatchGetTraces][1].
    #
    # This API does not initiate a retrieval job. To start a trace
    # retrieval, use `StartTraceRetrieval`, which generates the required
    # `RetrievalToken`.
    #
    # When the `RetrievalStatus` is not *COMPLETE*, the API will return an
    # empty response. Retry the request once the retrieval has completed to
    # access the full list of traces.
    #
    # For cross-account observability, this API can retrieve traces from
    # linked accounts when CloudWatch log is the destination across relevant
    # accounts. For more details, see [CloudWatch cross-account
    # observability][2].
    #
    # For retrieving data from X-Ray directly as opposed to the
    # Transaction-Search Log group, see [BatchGetTraces][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/xray/latest/api/API_BatchGetTraces.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html
    #
    # @option params [required, String] :retrieval_token
    #   Retrieval token.
    #
    # @option params [String] :trace_format
    #   Format of the requested traces.
    #
    # @option params [String] :next_token
    #   Specify the pagination token returned by a previous request to
    #   retrieve the next page of indexes.
    #
    # @return [Types::ListRetrievedTracesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRetrievedTracesResult#retrieval_status #retrieval_status} => String
    #   * {Types::ListRetrievedTracesResult#trace_format #trace_format} => String
    #   * {Types::ListRetrievedTracesResult#traces #traces} => Array&lt;Types::RetrievedTrace&gt;
    #   * {Types::ListRetrievedTracesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_retrieved_traces({
    #     retrieval_token: "RetrievalToken", # required
    #     trace_format: "XRAY", # accepts XRAY, OTEL
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.retrieval_status #=> String, one of "SCHEDULED", "RUNNING", "COMPLETE", "FAILED", "CANCELLED", "TIMEOUT"
    #   resp.trace_format #=> String, one of "XRAY", "OTEL"
    #   resp.traces #=> Array
    #   resp.traces[0].id #=> String
    #   resp.traces[0].duration #=> Float
    #   resp.traces[0].spans #=> Array
    #   resp.traces[0].spans[0].id #=> String
    #   resp.traces[0].spans[0].document #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/ListRetrievedTraces AWS API Documentation
    #
    # @overload list_retrieved_traces(params = {})
    # @param [Hash] params ({})
    def list_retrieved_traces(params = {}, options = {})
      req = build_request(:list_retrieved_traces, params)
      req.send_request(options)
    end

    # Returns a list of tags that are applied to the specified Amazon Web
    # Services X-Ray group or sampling rule.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.
    #
    # @option params [String] :next_token
    #   A pagination token. If multiple pages of results are returned, use the
    #   `NextToken` value returned with the current page of results as the
    #   value of this parameter to get the next page of results.
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
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Updates the encryption configuration for X-Ray data.
    #
    # @option params [String] :key_id
    #   An Amazon Web Services KMS key in one of the following formats:
    #
    #   * **Alias** - The name of the key. For example, `alias/MyKey`.
    #
    #   * **Key ID** - The KMS key ID of the key. For example,
    #     `ae4aa6d49-a4d8-9df9-a475-4ff6d7898456`. Amazon Web Services X-Ray
    #     does not support asymmetric KMS keys.
    #
    #   * **ARN** - The full Amazon Resource Name of the key ID or alias. For
    #     example,
    #     `arn:aws:kms:us-east-2:123456789012:key/ae4aa6d49-a4d8-9df9-a475-4ff6d7898456`.
    #     Use this format to specify a key in a different account.
    #
    #   Omit this key if you set `Type` to `NONE`.
    #
    # @option params [required, String] :type
    #   The type of encryption. Set to `KMS` to use your own key for
    #   encryption. Set to `NONE` for default encryption.
    #
    # @return [Types::PutEncryptionConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutEncryptionConfigResult#encryption_config #encryption_config} => Types::EncryptionConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_encryption_config({
    #     key_id: "EncryptionKeyId",
    #     type: "NONE", # required, accepts NONE, KMS
    #   })
    #
    # @example Response structure
    #
    #   resp.encryption_config.key_id #=> String
    #   resp.encryption_config.status #=> String, one of "UPDATING", "ACTIVE"
    #   resp.encryption_config.type #=> String, one of "NONE", "KMS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/PutEncryptionConfig AWS API Documentation
    #
    # @overload put_encryption_config(params = {})
    # @param [Hash] params ({})
    def put_encryption_config(params = {}, options = {})
      req = build_request(:put_encryption_config, params)
      req.send_request(options)
    end

    # Sets the resource policy to grant one or more Amazon Web Services
    # services and accounts permissions to access X-Ray. Each resource
    # policy will be associated with a specific Amazon Web Services account.
    # Each Amazon Web Services account can have a maximum of 5 resource
    # policies, and each policy name must be unique within that account. The
    # maximum size of each resource policy is 5KB.
    #
    # @option params [required, String] :policy_name
    #   The name of the resource policy. Must be unique within a specific
    #   Amazon Web Services account.
    #
    # @option params [required, String] :policy_document
    #   The resource policy document, which can be up to 5kb in size.
    #
    # @option params [String] :policy_revision_id
    #   Specifies a specific policy revision, to ensure an atomic create
    #   operation. By default the resource policy is created if it does not
    #   exist, or updated with an incremented revision id. The revision id is
    #   unique to each policy in the account.
    #
    #   If the policy revision id does not match the latest revision id, the
    #   operation will fail with an `InvalidPolicyRevisionIdException`
    #   exception. You can also provide a `PolicyRevisionId` of 0. In this
    #   case, the operation will fail with an
    #   `InvalidPolicyRevisionIdException` exception if a resource policy with
    #   the same name already exists.
    #
    # @option params [Boolean] :bypass_policy_lockout_check
    #   A flag to indicate whether to bypass the resource policy lockout
    #   safety check.
    #
    #   Setting this value to true increases the risk that the policy becomes
    #   unmanageable. Do not set this value to true indiscriminately.
    #
    #   Use this parameter only when you include a policy in the request and
    #   you intend to prevent the principal that is making the request from
    #   making a subsequent `PutResourcePolicy` request.
    #
    #   The default value is false.
    #
    # @return [Types::PutResourcePolicyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutResourcePolicyResult#resource_policy #resource_policy} => Types::ResourcePolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy({
    #     policy_name: "PolicyName", # required
    #     policy_document: "PolicyDocument", # required
    #     policy_revision_id: "PolicyRevisionId",
    #     bypass_policy_lockout_check: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_policy.policy_name #=> String
    #   resp.resource_policy.policy_document #=> String
    #   resp.resource_policy.policy_revision_id #=> String
    #   resp.resource_policy.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/PutResourcePolicy AWS API Documentation
    #
    # @overload put_resource_policy(params = {})
    # @param [Hash] params ({})
    def put_resource_policy(params = {}, options = {})
      req = build_request(:put_resource_policy, params)
      req.send_request(options)
    end

    # Used by the Amazon Web Services X-Ray daemon to upload telemetry.
    #
    # @option params [required, Array<Types::TelemetryRecord>] :telemetry_records
    #
    # @option params [String] :ec2_instance_id
    #
    # @option params [String] :hostname
    #
    # @option params [String] :resource_arn
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_telemetry_records({
    #     telemetry_records: [ # required
    #       {
    #         timestamp: Time.now, # required
    #         segments_received_count: 1,
    #         segments_sent_count: 1,
    #         segments_spillover_count: 1,
    #         segments_rejected_count: 1,
    #         backend_connection_errors: {
    #           timeout_count: 1,
    #           connection_refused_count: 1,
    #           http_code_4_xx_count: 1,
    #           http_code_5_xx_count: 1,
    #           unknown_host_count: 1,
    #           other_count: 1,
    #         },
    #       },
    #     ],
    #     ec2_instance_id: "EC2InstanceId",
    #     hostname: "Hostname",
    #     resource_arn: "ResourceARN",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/PutTelemetryRecords AWS API Documentation
    #
    # @overload put_telemetry_records(params = {})
    # @param [Hash] params ({})
    def put_telemetry_records(params = {}, options = {})
      req = build_request(:put_telemetry_records, params)
      req.send_request(options)
    end

    # Uploads segment documents to Amazon Web Services X-Ray. A segment
    # document can be a completed segment, an in-progress segment, or an
    # array of subsegments.
    #
    # Segments must include the following fields. For the full segment
    # document schema, see [Amazon Web Services X-Ray Segment Documents][1]
    # in the *Amazon Web Services X-Ray Developer Guide*.
    #
    # **Required segment document fields**
    #
    # * `name` - The name of the service that handled the request.
    #
    # * `id` - A 64-bit identifier for the segment, unique among segments in
    #   the same trace, in 16 hexadecimal digits.
    #
    # * `trace_id` - A unique identifier that connects all segments and
    #   subsegments originating from a single client request.
    #
    # * `start_time` - Time the segment or subsegment was created, in
    #   floating point seconds in epoch time, accurate to milliseconds. For
    #   example, `1480615200.010` or `1.480615200010E9`.
    #
    # * `end_time` - Time the segment or subsegment was closed. For example,
    #   `1480615200.090` or `1.480615200090E9`. Specify either an `end_time`
    #   or `in_progress`.
    #
    # * `in_progress` - Set to `true` instead of specifying an `end_time` to
    #   record that a segment has been started, but is not complete. Send an
    #   in-progress segment when your application receives a request that
    #   will take a long time to serve, to trace that the request was
    #   received. When the response is sent, send the complete segment to
    #   overwrite the in-progress segment.
    #
    # A `trace_id` consists of three numbers separated by hyphens. For
    # example, 1-58406520-a006649127e371903a2de979. For trace IDs created by
    # an X-Ray SDK, or by Amazon Web Services services integrated with
    # X-Ray, a trace ID includes:
    #
    # **Trace ID Format**
    #
    # * The version number, for instance, `1`.
    #
    # * The time of the original request, in Unix epoch time, in 8
    #   hexadecimal digits. For example, 10:00AM December 2nd, 2016 PST in
    #   epoch time is `1480615200` seconds, or `58406520` in hexadecimal.
    #
    # * A 96-bit identifier for the trace, globally unique, in 24
    #   hexadecimal digits.
    #
    # <note markdown="1"> Trace IDs created via OpenTelemetry have a different format based on
    # the [W3C Trace Context specification][2]. A W3C trace ID must be
    # formatted in the X-Ray trace ID format when sending to X-Ray. For
    # example, a W3C trace ID `4efaaf4d1e8720b39541901950019ee5` should be
    # formatted as `1-4efaaf4d-1e8720b39541901950019ee5` when sending to
    # X-Ray. While X-Ray trace IDs include the original request timestamp in
    # Unix epoch time, this is not required or validated.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/xray/latest/devguide/aws-xray-interface-api.html#xray-api-segmentdocuments.html
    # [2]: https://www.w3.org/TR/trace-context/
    #
    # @option params [required, Array<String>] :trace_segment_documents
    #   A string containing a JSON document defining one or more segments or
    #   subsegments.
    #
    # @return [Types::PutTraceSegmentsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutTraceSegmentsResult#unprocessed_trace_segments #unprocessed_trace_segments} => Array&lt;Types::UnprocessedTraceSegment&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_trace_segments({
    #     trace_segment_documents: ["TraceSegmentDocument"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_trace_segments #=> Array
    #   resp.unprocessed_trace_segments[0].id #=> String
    #   resp.unprocessed_trace_segments[0].error_code #=> String
    #   resp.unprocessed_trace_segments[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/PutTraceSegments AWS API Documentation
    #
    # @overload put_trace_segments(params = {})
    # @param [Hash] params ({})
    def put_trace_segments(params = {}, options = {})
      req = build_request(:put_trace_segments, params)
      req.send_request(options)
    end

    # Initiates a trace retrieval process using the specified time range and
    # for the give trace IDs on Transaction Search generated by the
    # CloudWatch log group. For more information, see [Transaction
    # Search][1].
    #
    # API returns a `RetrievalToken`, which can be used with
    # `ListRetrievedTraces` or `GetRetrievedTracesGraph` to fetch results.
    # Retrievals will time out after 60 minutes. To execute long time
    # ranges, consider segmenting into multiple retrievals.
    #
    # If you are using [CloudWatch cross-account observability][2], you can
    # use this operation in a monitoring account to retrieve data from a
    # linked source account, as long as both accounts have transaction
    # search enabled.
    #
    # For retrieving data from X-Ray directly as opposed to the
    # Transaction-Search Log group, see [BatchGetTraces][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Transaction-Search.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html
    # [3]: https://docs.aws.amazon.com/xray/latest/api/API_BatchGetTraces.html
    #
    # @option params [required, Array<String>] :trace_ids
    #   Specify the trace IDs of the traces to be retrieved.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The start of the time range to retrieve traces. The range is
    #   inclusive, so the specified start time is included in the query.
    #   Specified as epoch time, the number of seconds since January 1, 1970,
    #   00:00:00 UTC.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time range to retrieve traces. The range is inclusive,
    #   so the specified end time is included in the query. Specified as epoch
    #   time, the number of seconds since January 1, 1970, 00:00:00 UTC.
    #
    # @return [Types::StartTraceRetrievalResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartTraceRetrievalResult#retrieval_token #retrieval_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_trace_retrieval({
    #     trace_ids: ["TraceId"], # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.retrieval_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/StartTraceRetrieval AWS API Documentation
    #
    # @overload start_trace_retrieval(params = {})
    # @param [Hash] params ({})
    def start_trace_retrieval(params = {}, options = {})
      req = build_request(:start_trace_retrieval, params)
      req.send_request(options)
    end

    # Applies tags to an existing Amazon Web Services X-Ray group or
    # sampling rule.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A map that contains one or more tag keys and tag values to attach to
    #   an X-Ray group or sampling rule. For more information about ways to
    #   use tags, see [Tagging Amazon Web Services resources][1] in the
    #   *Amazon Web Services General Reference*.
    #
    #   The following restrictions apply to tags:
    #
    #   * Maximum number of user-applied tags per resource: 50
    #
    #   * Maximum tag key length: 128 Unicode characters
    #
    #   * Maximum tag value length: 256 Unicode characters
    #
    #   * Valid values for key and value: a-z, A-Z, 0-9, space, and the
    #     following characters: \_ . : / = + - and @
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Don't use `aws:` as a prefix for keys; it's reserved for Amazon
    #     Web Services use. You cannot edit or delete system tags.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from an Amazon Web Services X-Ray group or sampling rule.
    # You cannot edit or delete system tags (those with an `aws:` prefix).
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Keys for one or more tags that you want to remove from an X-Ray group
    #   or sampling rule.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a group resource.
    #
    # @option params [String] :group_name
    #   The case-sensitive name of the group.
    #
    # @option params [String] :group_arn
    #   The ARN that was generated upon creation.
    #
    # @option params [String] :filter_expression
    #   The updated filter expression defining criteria by which to group
    #   traces.
    #
    # @option params [Types::InsightsConfiguration] :insights_configuration
    #   The structure containing configurations related to insights.
    #
    #   * The InsightsEnabled boolean can be set to true to enable insights
    #     for the group or false to disable insights for the group.
    #
    #   * The NotificationsEnabled boolean can be set to true to enable
    #     insights notifications for the group. Notifications can only be
    #     enabled on a group with InsightsEnabled set to true.
    #
    # @return [Types::UpdateGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGroupResult#group #group} => Types::Group
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group({
    #     group_name: "GroupName",
    #     group_arn: "GroupARN",
    #     filter_expression: "FilterExpression",
    #     insights_configuration: {
    #       insights_enabled: false,
    #       notifications_enabled: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.group.group_name #=> String
    #   resp.group.group_arn #=> String
    #   resp.group.filter_expression #=> String
    #   resp.group.insights_configuration.insights_enabled #=> Boolean
    #   resp.group.insights_configuration.notifications_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/UpdateGroup AWS API Documentation
    #
    # @overload update_group(params = {})
    # @param [Hash] params ({})
    def update_group(params = {}, options = {})
      req = build_request(:update_group, params)
      req.send_request(options)
    end

    # Modifies an indexing rule’s configuration.
    #
    # Indexing rules are used for determining the sampling rate for spans
    # indexed from CloudWatch Logs. For more information, see [Transaction
    # Search][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Transaction-Search.html
    #
    # @option params [required, String] :name
    #   Name of the indexing rule to be updated.
    #
    # @option params [required, Types::IndexingRuleValueUpdate] :rule
    #   Rule configuration to be updated.
    #
    # @return [Types::UpdateIndexingRuleResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIndexingRuleResult#indexing_rule #indexing_rule} => Types::IndexingRule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_indexing_rule({
    #     name: "String", # required
    #     rule: { # required
    #       probabilistic: {
    #         desired_sampling_percentage: 1.0, # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.indexing_rule.name #=> String
    #   resp.indexing_rule.modified_at #=> Time
    #   resp.indexing_rule.rule.probabilistic.desired_sampling_percentage #=> Float
    #   resp.indexing_rule.rule.probabilistic.actual_sampling_percentage #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/UpdateIndexingRule AWS API Documentation
    #
    # @overload update_indexing_rule(params = {})
    # @param [Hash] params ({})
    def update_indexing_rule(params = {}, options = {})
      req = build_request(:update_indexing_rule, params)
      req.send_request(options)
    end

    # Modifies a sampling rule's configuration.
    #
    # @option params [required, Types::SamplingRuleUpdate] :sampling_rule_update
    #   The rule and fields to change.
    #
    # @return [Types::UpdateSamplingRuleResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSamplingRuleResult#sampling_rule_record #sampling_rule_record} => Types::SamplingRuleRecord
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_sampling_rule({
    #     sampling_rule_update: { # required
    #       rule_name: "RuleName",
    #       rule_arn: "String",
    #       resource_arn: "ResourceARN",
    #       priority: 1,
    #       fixed_rate: 1.0,
    #       reservoir_size: 1,
    #       host: "Host",
    #       service_name: "ServiceName",
    #       service_type: "ServiceType",
    #       http_method: "HTTPMethod",
    #       url_path: "URLPath",
    #       attributes: {
    #         "AttributeKey" => "AttributeValue",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.sampling_rule_record.sampling_rule.rule_name #=> String
    #   resp.sampling_rule_record.sampling_rule.rule_arn #=> String
    #   resp.sampling_rule_record.sampling_rule.resource_arn #=> String
    #   resp.sampling_rule_record.sampling_rule.priority #=> Integer
    #   resp.sampling_rule_record.sampling_rule.fixed_rate #=> Float
    #   resp.sampling_rule_record.sampling_rule.reservoir_size #=> Integer
    #   resp.sampling_rule_record.sampling_rule.service_name #=> String
    #   resp.sampling_rule_record.sampling_rule.service_type #=> String
    #   resp.sampling_rule_record.sampling_rule.host #=> String
    #   resp.sampling_rule_record.sampling_rule.http_method #=> String
    #   resp.sampling_rule_record.sampling_rule.url_path #=> String
    #   resp.sampling_rule_record.sampling_rule.version #=> Integer
    #   resp.sampling_rule_record.sampling_rule.attributes #=> Hash
    #   resp.sampling_rule_record.sampling_rule.attributes["AttributeKey"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.sampling_rule_record.created_at #=> Time
    #   resp.sampling_rule_record.modified_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/UpdateSamplingRule AWS API Documentation
    #
    # @overload update_sampling_rule(params = {})
    # @param [Hash] params ({})
    def update_sampling_rule(params = {}, options = {})
      req = build_request(:update_sampling_rule, params)
      req.send_request(options)
    end

    # Modifies the destination of data sent to `PutTraceSegments`. The
    # Transaction Search feature requires the CloudWatchLogs destination.
    # For more information, see [Transaction Search][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Transaction-Search.html
    #
    # @option params [String] :destination
    #   The configured destination of trace segments.
    #
    # @return [Types::UpdateTraceSegmentDestinationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTraceSegmentDestinationResult#destination #destination} => String
    #   * {Types::UpdateTraceSegmentDestinationResult#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_trace_segment_destination({
    #     destination: "XRay", # accepts XRay, CloudWatchLogs
    #   })
    #
    # @example Response structure
    #
    #   resp.destination #=> String, one of "XRay", "CloudWatchLogs"
    #   resp.status #=> String, one of "PENDING", "ACTIVE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/UpdateTraceSegmentDestination AWS API Documentation
    #
    # @overload update_trace_segment_destination(params = {})
    # @param [Hash] params ({})
    def update_trace_segment_destination(params = {}, options = {})
      req = build_request(:update_trace_segment_destination, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::XRay')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-xray'
      context[:gem_version] = '1.87.0'
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
