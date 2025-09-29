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
require 'aws-sdk-core/plugins/event_stream_configuration'

module Aws::BedrockAgentRuntime
  # An API client for BedrockAgentRuntime.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::BedrockAgentRuntime::Client.new(
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

    @identifier = :bedrockagentruntime

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
    add_plugin(Aws::Plugins::EventStreamConfiguration)
    add_plugin(Aws::BedrockAgentRuntime::Plugins::Endpoints)

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
    #   @option options [Proc] :event_stream_handler
    #     When an EventStream or Proc object is provided, it will be used as callback for each chunk of event stream response received along the way.
    #
    #   @option options [Boolean] :ignore_configured_endpoint_urls
    #     Setting to true disables use of endpoint URLs provided via environment
    #     variables and the shared configuration file.
    #
    #   @option options [Proc] :input_event_stream_handler
    #     When an EventStream or Proc object is provided, it can be used for sending events for the event stream.
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
    #   @option options [Proc] :output_event_stream_handler
    #     When an EventStream or Proc object is provided, it will be used as callback for each chunk of event stream response received along the way.
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
    #   @option options [Aws::BedrockAgentRuntime::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::BedrockAgentRuntime::EndpointParameters`.
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

    # Creates a new invocation within a session. An invocation groups the
    # related invocation steps that store the content from a conversation.
    # For more information about sessions, see [Store and retrieve
    # conversation history and context with Amazon Bedrock sessions][1].
    #
    # Related APIs
    #
    # * [ListInvocations][2]
    #
    # * [ListSessions][3]
    #
    # * [GetSession][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_ListInvocations.html
    # [3]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_ListSessions.html
    # [4]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_GetSession.html
    #
    # @option params [String] :invocation_id
    #   A unique identifier for the invocation in UUID format.
    #
    # @option params [String] :description
    #   A description for the interactions in the invocation. For example,
    #   "User asking about weather in Seattle".
    #
    # @option params [required, String] :session_identifier
    #   The unique identifier for the associated session for the invocation.
    #   You can specify either the session's `sessionId` or its Amazon
    #   Resource Name (ARN).
    #
    # @return [Types::CreateInvocationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInvocationResponse#session_id #session_id} => String
    #   * {Types::CreateInvocationResponse#invocation_id #invocation_id} => String
    #   * {Types::CreateInvocationResponse#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_invocation({
    #     invocation_id: "Uuid",
    #     description: "InvocationDescription",
    #     session_identifier: "SessionIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.session_id #=> String
    #   resp.invocation_id #=> String
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/CreateInvocation AWS API Documentation
    #
    # @overload create_invocation(params = {})
    # @param [Hash] params ({})
    def create_invocation(params = {}, options = {})
      req = build_request(:create_invocation, params)
      req.send_request(options)
    end

    # Creates a session to temporarily store conversations for generative AI
    # (GenAI) applications built with open-source frameworks such as
    # LangGraph and LlamaIndex. Sessions enable you to save the state of
    # conversations at checkpoints, with the added security and
    # infrastructure of Amazon Web Services. For more information, see
    # [Store and retrieve conversation history and context with Amazon
    # Bedrock sessions][1].
    #
    # By default, Amazon Bedrock uses Amazon Web Services-managed keys for
    # session encryption, including session metadata, or you can use your
    # own KMS key. For more information, see [Amazon Bedrock session
    # encryption][2].
    #
    # <note markdown="1"> You use a session to store state and conversation history for
    # generative AI applications built with open-source frameworks. For
    # Amazon Bedrock Agents, the service automatically manages conversation
    # context and associates them with the agent-specific sessionId you
    # specify in the [InvokeAgent][3] API operation.
    #
    #  </note>
    #
    # Related APIs:
    #
    # * [ListSessions][4]
    #
    # * [GetSession][5]
    #
    # * [EndSession][6]
    #
    # * [DeleteSession][7]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/session-encryption.html
    # [3]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html
    # [4]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_ListSessions.html
    # [5]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_GetSession.html
    # [6]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_EndSession.html
    # [7]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_DeleteSession.html
    #
    # @option params [Hash<String,String>] :session_metadata
    #   A map of key-value pairs containing attributes to be persisted across
    #   the session. For example, the user's ID, their language preference,
    #   and the type of device they are using.
    #
    # @option params [String] :encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key to use to encrypt the
    #   session data. The user or role creating the session must have
    #   permission to use the key. For more information, see [Amazon Bedrock
    #   session encryption][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/session-encryption.html
    #
    # @option params [Hash<String,String>] :tags
    #   Specify the key-value pairs for the tags that you want to attach to
    #   the session.
    #
    # @return [Types::CreateSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSessionResponse#session_id #session_id} => String
    #   * {Types::CreateSessionResponse#session_arn #session_arn} => String
    #   * {Types::CreateSessionResponse#session_status #session_status} => String
    #   * {Types::CreateSessionResponse#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_session({
    #     session_metadata: {
    #       "SessionMetadataKey" => "SessionMetadataValue",
    #     },
    #     encryption_key_arn: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.session_id #=> String
    #   resp.session_arn #=> String
    #   resp.session_status #=> String, one of "ACTIVE", "EXPIRED", "ENDED"
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/CreateSession AWS API Documentation
    #
    # @overload create_session(params = {})
    # @param [Hash] params ({})
    def create_session(params = {}, options = {})
      req = build_request(:create_session, params)
      req.send_request(options)
    end

    # Deletes memory from the specified memory identifier.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent to which the alias belongs.
    #
    # @option params [required, String] :agent_alias_id
    #   The unique identifier of an alias of an agent.
    #
    # @option params [String] :memory_id
    #   The unique identifier of the memory.
    #
    # @option params [String] :session_id
    #   The unique session identifier of the memory.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_agent_memory({
    #     agent_id: "AgentId", # required
    #     agent_alias_id: "AgentAliasId", # required
    #     memory_id: "MemoryId",
    #     session_id: "SessionId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/DeleteAgentMemory AWS API Documentation
    #
    # @overload delete_agent_memory(params = {})
    # @param [Hash] params ({})
    def delete_agent_memory(params = {}, options = {})
      req = build_request(:delete_agent_memory, params)
      req.send_request(options)
    end

    # Deletes a session that you ended. You can't delete a session with an
    # `ACTIVE` status. To delete an active session, you must first end it
    # with the [EndSession][1] API operation. For more information about
    # sessions, see [Store and retrieve conversation history and context
    # with Amazon Bedrock sessions][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_EndSession.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html
    #
    # @option params [required, String] :session_identifier
    #   The unique identifier for the session to be deleted. You can specify
    #   either the session's `sessionId` or its Amazon Resource Name (ARN).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_session({
    #     session_identifier: "SessionIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/DeleteSession AWS API Documentation
    #
    # @overload delete_session(params = {})
    # @param [Hash] params ({})
    def delete_session(params = {}, options = {})
      req = build_request(:delete_session, params)
      req.send_request(options)
    end

    # Ends the session. After you end a session, you can still access its
    # content but you can’t add to it. To delete the session and it's
    # content, you use the DeleteSession API operation. For more information
    # about sessions, see [Store and retrieve conversation history and
    # context with Amazon Bedrock sessions][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html
    #
    # @option params [required, String] :session_identifier
    #   The unique identifier for the session to end. You can specify either
    #   the session's `sessionId` or its Amazon Resource Name (ARN).
    #
    # @return [Types::EndSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EndSessionResponse#session_id #session_id} => String
    #   * {Types::EndSessionResponse#session_arn #session_arn} => String
    #   * {Types::EndSessionResponse#session_status #session_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.end_session({
    #     session_identifier: "SessionIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.session_id #=> String
    #   resp.session_arn #=> String
    #   resp.session_status #=> String, one of "ACTIVE", "EXPIRED", "ENDED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/EndSession AWS API Documentation
    #
    # @overload end_session(params = {})
    # @param [Hash] params ({})
    def end_session(params = {}, options = {})
      req = build_request(:end_session, params)
      req.send_request(options)
    end

    # Generates an SQL query from a natural language query. For more
    # information, see [Generate a query for structured data][1] in the
    # Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-generate-query.html
    #
    # @option params [required, Types::QueryGenerationInput] :query_generation_input
    #   Specifies information about a natural language query to transform into
    #   SQL.
    #
    # @option params [required, Types::TransformationConfiguration] :transformation_configuration
    #   Specifies configurations for transforming the natural language query
    #   into SQL.
    #
    # @return [Types::GenerateQueryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GenerateQueryResponse#queries #queries} => Array&lt;Types::GeneratedQuery&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_query({
    #     query_generation_input: { # required
    #       type: "TEXT", # required, accepts TEXT
    #       text: "QueryGenerationInputTextString", # required
    #     },
    #     transformation_configuration: { # required
    #       mode: "TEXT_TO_SQL", # required, accepts TEXT_TO_SQL
    #       text_to_sql_configuration: {
    #         type: "KNOWLEDGE_BASE", # required, accepts KNOWLEDGE_BASE
    #         knowledge_base_configuration: {
    #           knowledge_base_arn: "KnowledgeBaseArn", # required
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.queries #=> Array
    #   resp.queries[0].type #=> String, one of "REDSHIFT_SQL"
    #   resp.queries[0].sql #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GenerateQuery AWS API Documentation
    #
    # @overload generate_query(params = {})
    # @param [Hash] params ({})
    def generate_query(params = {}, options = {})
      req = build_request(:generate_query, params)
      req.send_request(options)
    end

    # Gets the sessions stored in the memory of the agent.
    #
    # @option params [String] :next_token
    #   If the total number of results is greater than the maxItems value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #
    # @option params [Integer] :max_items
    #   The maximum number of items to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent to which the alias belongs.
    #
    # @option params [required, String] :agent_alias_id
    #   The unique identifier of an alias of an agent.
    #
    # @option params [required, String] :memory_type
    #   The type of memory.
    #
    # @option params [required, String] :memory_id
    #   The unique identifier of the memory.
    #
    # @return [Types::GetAgentMemoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAgentMemoryResponse#next_token #next_token} => String
    #   * {Types::GetAgentMemoryResponse#memory_contents #memory_contents} => Array&lt;Types::Memory&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_agent_memory({
    #     next_token: "NextToken",
    #     max_items: 1,
    #     agent_id: "AgentId", # required
    #     agent_alias_id: "AgentAliasId", # required
    #     memory_type: "SESSION_SUMMARY", # required, accepts SESSION_SUMMARY
    #     memory_id: "MemoryId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.memory_contents #=> Array
    #   resp.memory_contents[0].session_summary.memory_id #=> String
    #   resp.memory_contents[0].session_summary.session_id #=> String
    #   resp.memory_contents[0].session_summary.session_start_time #=> Time
    #   resp.memory_contents[0].session_summary.session_expiry_time #=> Time
    #   resp.memory_contents[0].session_summary.summary_text #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GetAgentMemory AWS API Documentation
    #
    # @overload get_agent_memory(params = {})
    # @param [Hash] params ({})
    def get_agent_memory(params = {}, options = {})
      req = build_request(:get_agent_memory, params)
      req.send_request(options)
    end

    # Retrieves the flow definition snapshot used for a flow execution. The
    # snapshot represents the flow metadata and definition as it existed at
    # the time the execution was started. Note that even if the flow is
    # edited after an execution starts, the snapshot connected to the
    # execution remains unchanged.
    #
    # <note markdown="1"> Flow executions is in preview release for Amazon Bedrock and is
    # subject to change.
    #
    #  </note>
    #
    # @option params [required, String] :flow_identifier
    #   The unique identifier of the flow.
    #
    # @option params [required, String] :flow_alias_identifier
    #   The unique identifier of the flow alias used for the flow execution.
    #
    # @option params [required, String] :execution_identifier
    #   The unique identifier of the flow execution.
    #
    # @return [Types::GetExecutionFlowSnapshotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetExecutionFlowSnapshotResponse#flow_identifier #flow_identifier} => String
    #   * {Types::GetExecutionFlowSnapshotResponse#flow_alias_identifier #flow_alias_identifier} => String
    #   * {Types::GetExecutionFlowSnapshotResponse#flow_version #flow_version} => String
    #   * {Types::GetExecutionFlowSnapshotResponse#execution_role_arn #execution_role_arn} => String
    #   * {Types::GetExecutionFlowSnapshotResponse#definition #definition} => String
    #   * {Types::GetExecutionFlowSnapshotResponse#customer_encryption_key_arn #customer_encryption_key_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_execution_flow_snapshot({
    #     flow_identifier: "FlowIdentifier", # required
    #     flow_alias_identifier: "FlowAliasIdentifier", # required
    #     execution_identifier: "FlowExecutionIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_identifier #=> String
    #   resp.flow_alias_identifier #=> String
    #   resp.flow_version #=> String
    #   resp.execution_role_arn #=> String
    #   resp.definition #=> String
    #   resp.customer_encryption_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GetExecutionFlowSnapshot AWS API Documentation
    #
    # @overload get_execution_flow_snapshot(params = {})
    # @param [Hash] params ({})
    def get_execution_flow_snapshot(params = {}, options = {})
      req = build_request(:get_execution_flow_snapshot, params)
      req.send_request(options)
    end

    # Retrieves details about a specific flow execution, including its
    # status, start and end times, and any errors that occurred during
    # execution.
    #
    # @option params [required, String] :flow_identifier
    #   The unique identifier of the flow.
    #
    # @option params [required, String] :flow_alias_identifier
    #   The unique identifier of the flow alias used for the execution.
    #
    # @option params [required, String] :execution_identifier
    #   The unique identifier of the flow execution to retrieve.
    #
    # @return [Types::GetFlowExecutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFlowExecutionResponse#execution_arn #execution_arn} => String
    #   * {Types::GetFlowExecutionResponse#status #status} => String
    #   * {Types::GetFlowExecutionResponse#started_at #started_at} => Time
    #   * {Types::GetFlowExecutionResponse#ended_at #ended_at} => Time
    #   * {Types::GetFlowExecutionResponse#errors #errors} => Array&lt;Types::FlowExecutionError&gt;
    #   * {Types::GetFlowExecutionResponse#flow_alias_identifier #flow_alias_identifier} => String
    #   * {Types::GetFlowExecutionResponse#flow_identifier #flow_identifier} => String
    #   * {Types::GetFlowExecutionResponse#flow_version #flow_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_flow_execution({
    #     flow_identifier: "FlowIdentifier", # required
    #     flow_alias_identifier: "FlowAliasIdentifier", # required
    #     execution_identifier: "FlowExecutionIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.execution_arn #=> String
    #   resp.status #=> String, one of "Running", "Succeeded", "Failed", "TimedOut", "Aborted"
    #   resp.started_at #=> Time
    #   resp.ended_at #=> Time
    #   resp.errors #=> Array
    #   resp.errors[0].node_name #=> String
    #   resp.errors[0].error #=> String, one of "ExecutionTimedOut"
    #   resp.errors[0].message #=> String
    #   resp.flow_alias_identifier #=> String
    #   resp.flow_identifier #=> String
    #   resp.flow_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GetFlowExecution AWS API Documentation
    #
    # @overload get_flow_execution(params = {})
    # @param [Hash] params ({})
    def get_flow_execution(params = {}, options = {})
      req = build_request(:get_flow_execution, params)
      req.send_request(options)
    end

    # Retrieves the details of a specific invocation step within an
    # invocation in a session. For more information about sessions, see
    # [Store and retrieve conversation history and context with Amazon
    # Bedrock sessions][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html
    #
    # @option params [required, String] :invocation_identifier
    #   The unique identifier for the invocation in UUID format.
    #
    # @option params [required, String] :invocation_step_id
    #   The unique identifier (in UUID format) for the specific invocation
    #   step to retrieve.
    #
    # @option params [required, String] :session_identifier
    #   The unique identifier for the invocation step's associated session.
    #   You can specify either the session's `sessionId` or its Amazon
    #   Resource Name (ARN).
    #
    # @return [Types::GetInvocationStepResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInvocationStepResponse#invocation_step #invocation_step} => Types::InvocationStep
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_invocation_step({
    #     invocation_identifier: "InvocationIdentifier", # required
    #     invocation_step_id: "Uuid", # required
    #     session_identifier: "SessionIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.invocation_step.session_id #=> String
    #   resp.invocation_step.invocation_id #=> String
    #   resp.invocation_step.invocation_step_id #=> String
    #   resp.invocation_step.invocation_step_time #=> Time
    #   resp.invocation_step.payload.content_blocks #=> Array
    #   resp.invocation_step.payload.content_blocks[0].text #=> String
    #   resp.invocation_step.payload.content_blocks[0].image.format #=> String, one of "png", "jpeg", "gif", "webp"
    #   resp.invocation_step.payload.content_blocks[0].image.source.bytes #=> String
    #   resp.invocation_step.payload.content_blocks[0].image.source.s3_location.uri #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GetInvocationStep AWS API Documentation
    #
    # @overload get_invocation_step(params = {})
    # @param [Hash] params ({})
    def get_invocation_step(params = {}, options = {})
      req = build_request(:get_invocation_step, params)
      req.send_request(options)
    end

    # Retrieves details about a specific session. For more information about
    # sessions, see [Store and retrieve conversation history and context
    # with Amazon Bedrock sessions][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html
    #
    # @option params [required, String] :session_identifier
    #   A unique identifier for the session to retrieve. You can specify
    #   either the session's `sessionId` or its Amazon Resource Name (ARN).
    #
    # @return [Types::GetSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSessionResponse#session_id #session_id} => String
    #   * {Types::GetSessionResponse#session_arn #session_arn} => String
    #   * {Types::GetSessionResponse#session_status #session_status} => String
    #   * {Types::GetSessionResponse#created_at #created_at} => Time
    #   * {Types::GetSessionResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetSessionResponse#session_metadata #session_metadata} => Hash&lt;String,String&gt;
    #   * {Types::GetSessionResponse#encryption_key_arn #encryption_key_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_session({
    #     session_identifier: "SessionIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.session_id #=> String
    #   resp.session_arn #=> String
    #   resp.session_status #=> String, one of "ACTIVE", "EXPIRED", "ENDED"
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.session_metadata #=> Hash
    #   resp.session_metadata["SessionMetadataKey"] #=> String
    #   resp.encryption_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/GetSession AWS API Documentation
    #
    # @overload get_session(params = {})
    # @param [Hash] params ({})
    def get_session(params = {}, options = {})
      req = build_request(:get_session, params)
      req.send_request(options)
    end

    # <note> </note>
    #
    #  Sends a prompt for the agent to process and respond to. Note the
    # following fields for the request:
    #
    #  * To continue the same conversation with an agent, use the same
    #   `sessionId` value in the request.
    #
    # * To activate trace enablement, turn `enableTrace` to `true`. Trace
    #   enablement helps you follow the agent's reasoning process that led
    #   it to the information it processed, the actions it took, and the
    #   final result it yielded. For more information, see [Trace
    #   enablement][1].
    #
    # * End a conversation by setting `endSession` to `true`.
    #
    # * In the `sessionState` object, you can include attributes for the
    #   session or prompt or, if you configured an action group to return
    #   control, results from invocation of the action group.
    #
    #  The response contains both **chunk** and **trace** attributes.
    #
    #  The final response is returned in the `bytes` field of the `chunk`
    # object. The `InvokeAgent` returns one chunk for the entire
    # interaction.
    #
    #  * The `attribution` object contains citations for parts of the
    #   response.
    #
    # * If you set `enableTrace` to `true` in the request, you can trace the
    #   agent's steps and reasoning process that led it to the response.
    #
    # * If the action predicted was configured to return control, the
    #   response returns parameters for the action, elicited from the user,
    #   in the `returnControl` field.
    #
    # * Errors are also surfaced in the response.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-test.html#trace-events
    #
    # @option params [Types::SessionState] :session_state
    #   Contains parameters that specify various attributes of the session.
    #   For more information, see [Control session context][1].
    #
    #   <note markdown="1"> If you include `returnControlInvocationResults` in the `sessionState`
    #   field, the `inputText` field will be ignored.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-session-state.html
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent to use.
    #
    # @option params [required, String] :agent_alias_id
    #   The alias of the agent to use.
    #
    # @option params [required, String] :session_id
    #   The unique identifier of the session. Use the same value across
    #   requests to continue the same conversation.
    #
    # @option params [Boolean] :end_session
    #   Specifies whether to end the session with the agent or not.
    #
    # @option params [Boolean] :enable_trace
    #   Specifies whether to turn on the trace or not to track the agent's
    #   reasoning process. For more information, see [Trace enablement][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-test.html#trace-events
    #
    # @option params [String] :input_text
    #   The prompt text to send the agent.
    #
    #   <note markdown="1"> If you include `returnControlInvocationResults` in the `sessionState`
    #   field, the `inputText` field will be ignored.
    #
    #    </note>
    #
    # @option params [String] :memory_id
    #   The unique identifier of the agent memory.
    #
    # @option params [Types::BedrockModelConfigurations] :bedrock_model_configurations
    #   Model performance settings for the request.
    #
    # @option params [Types::StreamingConfigurations] :streaming_configurations
    #   Specifies the configurations for streaming.
    #
    #   <note markdown="1"> To use agent streaming, you need permissions to perform the
    #   `bedrock:InvokeModelWithResponseStream` action.
    #
    #    </note>
    #
    # @option params [Types::PromptCreationConfigurations] :prompt_creation_configurations
    #   Specifies parameters that control how the service populates the agent
    #   prompt for an `InvokeAgent` request. You can control which aspects of
    #   previous invocations in the same agent session the service uses to
    #   populate the agent prompt. This gives you more granular control over
    #   the contextual history that is used to process the current request.
    #
    # @option params [String] :source_arn
    #   The ARN of the resource making the request.
    #
    # @return [Types::InvokeAgentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvokeAgentResponse#completion #completion} => Types::ResponseStream
    #   * {Types::InvokeAgentResponse#content_type #content_type} => String
    #   * {Types::InvokeAgentResponse#session_id #session_id} => String
    #   * {Types::InvokeAgentResponse#memory_id #memory_id} => String
    #
    # @example EventStream Operation Example
    #
    #   # You can process the event once it arrives immediately, or wait until the
    #   # full response is complete and iterate through the eventstream enumerator.
    #
    #   # To interact with event immediately, you need to register invoke_agent
    #   # with callbacks. Callbacks can be registered for specific events or for all
    #   # events, including error events.
    #
    #   # Callbacks can be passed into the `:event_stream_handler` option or within a
    #   # block statement attached to the #invoke_agent call directly. Hybrid
    #   # pattern of both is also supported.
    #
    #   # `:event_stream_handler` option takes in either a Proc object or
    #   # Aws::BedrockAgentRuntime::EventStreams::ResponseStream object.
    #
    #   # Usage pattern a): Callbacks with a block attached to #invoke_agent
    #   # Example for registering callbacks for all event types and an error event
    #   client.invoke_agent(
    #     # params input
    #   ) do |stream|
    #     stream.on_error_event do |event|
    #       # catch unmodeled error event in the stream
    #       raise event
    #       # => Aws::Errors::EventError
    #       # event.event_type => :error
    #       # event.error_code => String
    #       # event.error_message => String
    #     end
    #
    #     stream.on_event do |event|
    #       # process all events arrive
    #       puts event.event_type
    #       # ...
    #     end
    #   end
    #
    #   # Usage pattern b): Pass in `:event_stream_handler` for #invoke_agent
    #   #  1) Create a Aws::BedrockAgentRuntime::EventStreams::ResponseStream object
    #   #  Example for registering callbacks with specific events
    #
    #   handler = Aws::BedrockAgentRuntime::EventStreams::ResponseStream.new
    #   handler.on_chunk_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::chunk
    #   end
    #   handler.on_trace_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::trace
    #   end
    #   handler.on_return_control_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::returnControl
    #   end
    #   handler.on_internal_server_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::internalServerException
    #   end
    #   handler.on_validation_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::validationException
    #   end
    #   handler.on_resource_not_found_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::resourceNotFoundException
    #   end
    #   handler.on_service_quota_exceeded_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::serviceQuotaExceededException
    #   end
    #   handler.on_throttling_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::throttlingException
    #   end
    #   handler.on_access_denied_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::accessDeniedException
    #   end
    #   handler.on_conflict_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::conflictException
    #   end
    #   handler.on_dependency_failed_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::dependencyFailedException
    #   end
    #   handler.on_bad_gateway_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::badGatewayException
    #   end
    #   handler.on_model_not_ready_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::modelNotReadyException
    #   end
    #   handler.on_files_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::files
    #   end
    #
    #   client.invoke_agent(
    #     # params inputs
    #     event_stream_handler: handler
    #   )
    #
    #   #  2) Use a Ruby Proc object
    #   #  Example for registering callbacks with specific events
    #   handler = Proc.new do |stream|
    #     stream.on_chunk_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::chunk
    #     end
    #     stream.on_trace_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::trace
    #     end
    #     stream.on_return_control_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::returnControl
    #     end
    #     stream.on_internal_server_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::internalServerException
    #     end
    #     stream.on_validation_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::validationException
    #     end
    #     stream.on_resource_not_found_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::resourceNotFoundException
    #     end
    #     stream.on_service_quota_exceeded_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::serviceQuotaExceededException
    #     end
    #     stream.on_throttling_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::throttlingException
    #     end
    #     stream.on_access_denied_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::accessDeniedException
    #     end
    #     stream.on_conflict_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::conflictException
    #     end
    #     stream.on_dependency_failed_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::dependencyFailedException
    #     end
    #     stream.on_bad_gateway_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::badGatewayException
    #     end
    #     stream.on_model_not_ready_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::modelNotReadyException
    #     end
    #     stream.on_files_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::files
    #     end
    #   end
    #
    #   client.invoke_agent(
    #     # params inputs
    #     event_stream_handler: handler
    #   )
    #
    #   #  Usage pattern c): Hybrid pattern of a) and b)
    #   handler = Aws::BedrockAgentRuntime::EventStreams::ResponseStream.new
    #   handler.on_chunk_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::chunk
    #   end
    #   handler.on_trace_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::trace
    #   end
    #   handler.on_return_control_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::returnControl
    #   end
    #   handler.on_internal_server_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::internalServerException
    #   end
    #   handler.on_validation_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::validationException
    #   end
    #   handler.on_resource_not_found_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::resourceNotFoundException
    #   end
    #   handler.on_service_quota_exceeded_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::serviceQuotaExceededException
    #   end
    #   handler.on_throttling_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::throttlingException
    #   end
    #   handler.on_access_denied_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::accessDeniedException
    #   end
    #   handler.on_conflict_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::conflictException
    #   end
    #   handler.on_dependency_failed_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::dependencyFailedException
    #   end
    #   handler.on_bad_gateway_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::badGatewayException
    #   end
    #   handler.on_model_not_ready_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::modelNotReadyException
    #   end
    #   handler.on_files_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::files
    #   end
    #
    #   client.invoke_agent(
    #     # params input
    #     event_stream_handler: handler
    #   ) do |stream|
    #     stream.on_error_event do |event|
    #       # catch unmodeled error event in the stream
    #       raise event
    #       # => Aws::Errors::EventError
    #       # event.event_type => :error
    #       # event.error_code => String
    #       # event.error_message => String
    #     end
    #   end
    #
    #   # You can also iterate through events after the response complete.
    #   # Events are available at
    #   resp.completion # => Enumerator
    #   # For parameter input example, please refer to following request syntax.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke_agent({
    #     session_state: {
    #       session_attributes: {
    #         "String" => "String",
    #       },
    #       prompt_session_attributes: {
    #         "String" => "String",
    #       },
    #       return_control_invocation_results: [
    #         {
    #           api_result: {
    #             action_group: "String", # required
    #             http_method: "String",
    #             api_path: "ApiPath",
    #             confirmation_state: "CONFIRM", # accepts CONFIRM, DENY
    #             response_state: "FAILURE", # accepts FAILURE, REPROMPT
    #             http_status_code: 1,
    #             response_body: {
    #               "String" => {
    #                 body: "String",
    #                 images: [
    #                   {
    #                     format: "png", # required, accepts png, jpeg, gif, webp
    #                     source: { # required
    #                       bytes: "data",
    #                     },
    #                   },
    #                 ],
    #               },
    #             },
    #             agent_id: "String",
    #           },
    #           function_result: {
    #             action_group: "String", # required
    #             confirmation_state: "CONFIRM", # accepts CONFIRM, DENY
    #             function: "String",
    #             response_body: {
    #               "String" => {
    #                 body: "String",
    #                 images: [
    #                   {
    #                     format: "png", # required, accepts png, jpeg, gif, webp
    #                     source: { # required
    #                       bytes: "data",
    #                     },
    #                   },
    #                 ],
    #               },
    #             },
    #             response_state: "FAILURE", # accepts FAILURE, REPROMPT
    #             agent_id: "String",
    #           },
    #         },
    #       ],
    #       invocation_id: "String",
    #       files: [
    #         {
    #           name: "String", # required
    #           source: { # required
    #             source_type: "S3", # required, accepts S3, BYTE_CONTENT
    #             s3_location: {
    #               uri: "S3Uri", # required
    #             },
    #             byte_content: {
    #               media_type: "MimeType", # required
    #               data: "data", # required
    #             },
    #           },
    #           use_case: "CODE_INTERPRETER", # required, accepts CODE_INTERPRETER, CHAT
    #         },
    #       ],
    #       knowledge_base_configurations: [
    #         {
    #           knowledge_base_id: "KnowledgeBaseId", # required
    #           retrieval_configuration: { # required
    #             vector_search_configuration: { # required
    #               number_of_results: 1,
    #               override_search_type: "HYBRID", # accepts HYBRID, SEMANTIC
    #               filter: {
    #                 equals: {
    #                   key: "FilterKey", # required
    #                   value: { # required
    #                   },
    #                 },
    #                 not_equals: {
    #                   key: "FilterKey", # required
    #                   value: { # required
    #                   },
    #                 },
    #                 greater_than: {
    #                   key: "FilterKey", # required
    #                   value: { # required
    #                   },
    #                 },
    #                 greater_than_or_equals: {
    #                   key: "FilterKey", # required
    #                   value: { # required
    #                   },
    #                 },
    #                 less_than: {
    #                   key: "FilterKey", # required
    #                   value: { # required
    #                   },
    #                 },
    #                 less_than_or_equals: {
    #                   key: "FilterKey", # required
    #                   value: { # required
    #                   },
    #                 },
    #                 in: {
    #                   key: "FilterKey", # required
    #                   value: { # required
    #                   },
    #                 },
    #                 not_in: {
    #                   key: "FilterKey", # required
    #                   value: { # required
    #                   },
    #                 },
    #                 starts_with: {
    #                   key: "FilterKey", # required
    #                   value: { # required
    #                   },
    #                 },
    #                 list_contains: {
    #                   key: "FilterKey", # required
    #                   value: { # required
    #                   },
    #                 },
    #                 string_contains: {
    #                   key: "FilterKey", # required
    #                   value: { # required
    #                   },
    #                 },
    #                 and_all: [
    #                   {
    #                     # recursive RetrievalFilter
    #                   },
    #                 ],
    #                 or_all: [
    #                   {
    #                     # recursive RetrievalFilter
    #                   },
    #                 ],
    #               },
    #               reranking_configuration: {
    #                 type: "BEDROCK_RERANKING_MODEL", # required, accepts BEDROCK_RERANKING_MODEL
    #                 bedrock_reranking_configuration: {
    #                   model_configuration: { # required
    #                     model_arn: "BedrockRerankingModelArn", # required
    #                     additional_model_request_fields: {
    #                       "AdditionalModelRequestFieldsKey" => {
    #                       },
    #                     },
    #                   },
    #                   number_of_reranked_results: 1,
    #                   metadata_configuration: {
    #                     selection_mode: "SELECTIVE", # required, accepts SELECTIVE, ALL
    #                     selective_mode_configuration: {
    #                       fields_to_include: [
    #                         {
    #                           field_name: "FieldForRerankingFieldNameString", # required
    #                         },
    #                       ],
    #                       fields_to_exclude: [
    #                         {
    #                           field_name: "FieldForRerankingFieldNameString", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 },
    #               },
    #               implicit_filter_configuration: {
    #                 metadata_attributes: [ # required
    #                   {
    #                     key: "MetadataAttributeSchemaKeyString", # required
    #                     type: "STRING", # required, accepts STRING, NUMBER, BOOLEAN, STRING_LIST
    #                     description: "MetadataAttributeSchemaDescriptionString", # required
    #                   },
    #                 ],
    #                 model_arn: "BedrockModelArn", # required
    #               },
    #             },
    #           },
    #         },
    #       ],
    #       conversation_history: {
    #         messages: [
    #           {
    #             role: "user", # required, accepts user, assistant
    #             content: [ # required
    #               {
    #                 text: "String",
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #     },
    #     agent_id: "AgentId", # required
    #     agent_alias_id: "AgentAliasId", # required
    #     session_id: "SessionId", # required
    #     end_session: false,
    #     enable_trace: false,
    #     input_text: "InputText",
    #     memory_id: "MemoryId",
    #     bedrock_model_configurations: {
    #       performance_config: {
    #         latency: "standard", # accepts standard, optimized
    #       },
    #     },
    #     streaming_configurations: {
    #       stream_final_response: false,
    #       apply_guardrail_interval: 1,
    #     },
    #     prompt_creation_configurations: {
    #       previous_conversation_turns_to_include: 1,
    #       exclude_previous_thinking_steps: false,
    #     },
    #     source_arn: "AWSResourceARN",
    #   })
    #
    # @example Response structure
    #
    #   # All events are available at resp.completion:
    #   resp.completion #=> Enumerator
    #   resp.completion.event_types #=> [:chunk, :trace, :return_control, :internal_server_exception, :validation_exception, :resource_not_found_exception, :service_quota_exceeded_exception, :throttling_exception, :access_denied_exception, :conflict_exception, :dependency_failed_exception, :bad_gateway_exception, :model_not_ready_exception, :files]
    #
    #   # For :chunk event available at #on_chunk_event callback and response eventstream enumerator:
    #   event.bytes #=> String
    #   event.attribution.citations #=> Array
    #   event.attribution.citations[0].generated_response_part.text_response_part.text #=> String
    #   event.attribution.citations[0].generated_response_part.text_response_part.span.start #=> Integer
    #   event.attribution.citations[0].generated_response_part.text_response_part.span.end #=> Integer
    #   event.attribution.citations[0].retrieved_references #=> Array
    #   event.attribution.citations[0].retrieved_references[0].content.type #=> String, one of "TEXT", "IMAGE", "ROW"
    #   event.attribution.citations[0].retrieved_references[0].content.text #=> String
    #   event.attribution.citations[0].retrieved_references[0].content.byte_content #=> String
    #   event.attribution.citations[0].retrieved_references[0].content.row #=> Array
    #   event.attribution.citations[0].retrieved_references[0].content.row[0].column_name #=> String
    #   event.attribution.citations[0].retrieved_references[0].content.row[0].column_value #=> String
    #   event.attribution.citations[0].retrieved_references[0].content.row[0].type #=> String, one of "BLOB", "BOOLEAN", "DOUBLE", "NULL", "LONG", "STRING"
    #   event.attribution.citations[0].retrieved_references[0].location.type #=> String, one of "S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "KENDRA", "SQL"
    #   event.attribution.citations[0].retrieved_references[0].location.s3_location.uri #=> String
    #   event.attribution.citations[0].retrieved_references[0].location.web_location.url #=> String
    #   event.attribution.citations[0].retrieved_references[0].location.confluence_location.url #=> String
    #   event.attribution.citations[0].retrieved_references[0].location.salesforce_location.url #=> String
    #   event.attribution.citations[0].retrieved_references[0].location.share_point_location.url #=> String
    #   event.attribution.citations[0].retrieved_references[0].location.custom_document_location.id #=> String
    #   event.attribution.citations[0].retrieved_references[0].location.kendra_document_location.uri #=> String
    #   event.attribution.citations[0].retrieved_references[0].location.sql_location.query #=> String
    #   event.attribution.citations[0].retrieved_references[0].metadata #=> Hash
    #
    #   # For :trace event available at #on_trace_event callback and response eventstream enumerator:
    #   event.session_id #=> String
    #   event.trace.guardrail_trace.action #=> String, one of "INTERVENED", "NONE"
    #   event.trace.guardrail_trace.trace_id #=> String
    #   event.trace.guardrail_trace.input_assessments #=> Array
    #   event.trace.guardrail_trace.input_assessments[0].topic_policy.topics #=> Array
    #   event.trace.guardrail_trace.input_assessments[0].topic_policy.topics[0].name #=> String
    #   event.trace.guardrail_trace.input_assessments[0].topic_policy.topics[0].type #=> String, one of "DENY"
    #   event.trace.guardrail_trace.input_assessments[0].topic_policy.topics[0].action #=> String, one of "BLOCKED"
    #   event.trace.guardrail_trace.input_assessments[0].content_policy.filters #=> Array
    #   event.trace.guardrail_trace.input_assessments[0].content_policy.filters[0].type #=> String, one of "INSULTS", "HATE", "SEXUAL", "VIOLENCE", "MISCONDUCT", "PROMPT_ATTACK"
    #   event.trace.guardrail_trace.input_assessments[0].content_policy.filters[0].confidence #=> String, one of "NONE", "LOW", "MEDIUM", "HIGH"
    #   event.trace.guardrail_trace.input_assessments[0].content_policy.filters[0].action #=> String, one of "BLOCKED"
    #   event.trace.guardrail_trace.input_assessments[0].word_policy.custom_words #=> Array
    #   event.trace.guardrail_trace.input_assessments[0].word_policy.custom_words[0].match #=> String
    #   event.trace.guardrail_trace.input_assessments[0].word_policy.custom_words[0].action #=> String, one of "BLOCKED"
    #   event.trace.guardrail_trace.input_assessments[0].word_policy.managed_word_lists #=> Array
    #   event.trace.guardrail_trace.input_assessments[0].word_policy.managed_word_lists[0].match #=> String
    #   event.trace.guardrail_trace.input_assessments[0].word_policy.managed_word_lists[0].type #=> String, one of "PROFANITY"
    #   event.trace.guardrail_trace.input_assessments[0].word_policy.managed_word_lists[0].action #=> String, one of "BLOCKED"
    #   event.trace.guardrail_trace.input_assessments[0].sensitive_information_policy.pii_entities #=> Array
    #   event.trace.guardrail_trace.input_assessments[0].sensitive_information_policy.pii_entities[0].type #=> String, one of "ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"
    #   event.trace.guardrail_trace.input_assessments[0].sensitive_information_policy.pii_entities[0].match #=> String
    #   event.trace.guardrail_trace.input_assessments[0].sensitive_information_policy.pii_entities[0].action #=> String, one of "BLOCKED", "ANONYMIZED"
    #   event.trace.guardrail_trace.input_assessments[0].sensitive_information_policy.regexes #=> Array
    #   event.trace.guardrail_trace.input_assessments[0].sensitive_information_policy.regexes[0].name #=> String
    #   event.trace.guardrail_trace.input_assessments[0].sensitive_information_policy.regexes[0].regex #=> String
    #   event.trace.guardrail_trace.input_assessments[0].sensitive_information_policy.regexes[0].match #=> String
    #   event.trace.guardrail_trace.input_assessments[0].sensitive_information_policy.regexes[0].action #=> String, one of "BLOCKED", "ANONYMIZED"
    #   event.trace.guardrail_trace.output_assessments #=> Array
    #   event.trace.guardrail_trace.output_assessments[0].topic_policy.topics #=> Array
    #   event.trace.guardrail_trace.output_assessments[0].topic_policy.topics[0].name #=> String
    #   event.trace.guardrail_trace.output_assessments[0].topic_policy.topics[0].type #=> String, one of "DENY"
    #   event.trace.guardrail_trace.output_assessments[0].topic_policy.topics[0].action #=> String, one of "BLOCKED"
    #   event.trace.guardrail_trace.output_assessments[0].content_policy.filters #=> Array
    #   event.trace.guardrail_trace.output_assessments[0].content_policy.filters[0].type #=> String, one of "INSULTS", "HATE", "SEXUAL", "VIOLENCE", "MISCONDUCT", "PROMPT_ATTACK"
    #   event.trace.guardrail_trace.output_assessments[0].content_policy.filters[0].confidence #=> String, one of "NONE", "LOW", "MEDIUM", "HIGH"
    #   event.trace.guardrail_trace.output_assessments[0].content_policy.filters[0].action #=> String, one of "BLOCKED"
    #   event.trace.guardrail_trace.output_assessments[0].word_policy.custom_words #=> Array
    #   event.trace.guardrail_trace.output_assessments[0].word_policy.custom_words[0].match #=> String
    #   event.trace.guardrail_trace.output_assessments[0].word_policy.custom_words[0].action #=> String, one of "BLOCKED"
    #   event.trace.guardrail_trace.output_assessments[0].word_policy.managed_word_lists #=> Array
    #   event.trace.guardrail_trace.output_assessments[0].word_policy.managed_word_lists[0].match #=> String
    #   event.trace.guardrail_trace.output_assessments[0].word_policy.managed_word_lists[0].type #=> String, one of "PROFANITY"
    #   event.trace.guardrail_trace.output_assessments[0].word_policy.managed_word_lists[0].action #=> String, one of "BLOCKED"
    #   event.trace.guardrail_trace.output_assessments[0].sensitive_information_policy.pii_entities #=> Array
    #   event.trace.guardrail_trace.output_assessments[0].sensitive_information_policy.pii_entities[0].type #=> String, one of "ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"
    #   event.trace.guardrail_trace.output_assessments[0].sensitive_information_policy.pii_entities[0].match #=> String
    #   event.trace.guardrail_trace.output_assessments[0].sensitive_information_policy.pii_entities[0].action #=> String, one of "BLOCKED", "ANONYMIZED"
    #   event.trace.guardrail_trace.output_assessments[0].sensitive_information_policy.regexes #=> Array
    #   event.trace.guardrail_trace.output_assessments[0].sensitive_information_policy.regexes[0].name #=> String
    #   event.trace.guardrail_trace.output_assessments[0].sensitive_information_policy.regexes[0].regex #=> String
    #   event.trace.guardrail_trace.output_assessments[0].sensitive_information_policy.regexes[0].match #=> String
    #   event.trace.guardrail_trace.output_assessments[0].sensitive_information_policy.regexes[0].action #=> String, one of "BLOCKED", "ANONYMIZED"
    #   event.trace.guardrail_trace.metadata.start_time #=> Time
    #   event.trace.guardrail_trace.metadata.end_time #=> Time
    #   event.trace.guardrail_trace.metadata.total_time_ms #=> Integer
    #   event.trace.guardrail_trace.metadata.operation_total_time_ms #=> Integer
    #   event.trace.guardrail_trace.metadata.client_request_id #=> String
    #   event.trace.guardrail_trace.metadata.usage.input_tokens #=> Integer
    #   event.trace.guardrail_trace.metadata.usage.output_tokens #=> Integer
    #   event.trace.pre_processing_trace.model_invocation_input.trace_id #=> String
    #   event.trace.pre_processing_trace.model_invocation_input.text #=> String
    #   event.trace.pre_processing_trace.model_invocation_input.type #=> String, one of "PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"
    #   event.trace.pre_processing_trace.model_invocation_input.override_lambda #=> String
    #   event.trace.pre_processing_trace.model_invocation_input.prompt_creation_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.pre_processing_trace.model_invocation_input.inference_configuration.temperature #=> Float
    #   event.trace.pre_processing_trace.model_invocation_input.inference_configuration.top_p #=> Float
    #   event.trace.pre_processing_trace.model_invocation_input.inference_configuration.top_k #=> Integer
    #   event.trace.pre_processing_trace.model_invocation_input.inference_configuration.maximum_length #=> Integer
    #   event.trace.pre_processing_trace.model_invocation_input.inference_configuration.stop_sequences #=> Array
    #   event.trace.pre_processing_trace.model_invocation_input.inference_configuration.stop_sequences[0] #=> String
    #   event.trace.pre_processing_trace.model_invocation_input.parser_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.pre_processing_trace.model_invocation_input.foundation_model #=> String
    #   event.trace.pre_processing_trace.model_invocation_output.trace_id #=> String
    #   event.trace.pre_processing_trace.model_invocation_output.parsed_response.rationale #=> String
    #   event.trace.pre_processing_trace.model_invocation_output.parsed_response.is_valid #=> Boolean
    #   event.trace.pre_processing_trace.model_invocation_output.raw_response.content #=> String
    #   event.trace.pre_processing_trace.model_invocation_output.metadata.start_time #=> Time
    #   event.trace.pre_processing_trace.model_invocation_output.metadata.end_time #=> Time
    #   event.trace.pre_processing_trace.model_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.pre_processing_trace.model_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.pre_processing_trace.model_invocation_output.metadata.client_request_id #=> String
    #   event.trace.pre_processing_trace.model_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.pre_processing_trace.model_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.pre_processing_trace.model_invocation_output.reasoning_content.reasoning_text.text #=> String
    #   event.trace.pre_processing_trace.model_invocation_output.reasoning_content.reasoning_text.signature #=> String
    #   event.trace.pre_processing_trace.model_invocation_output.reasoning_content.redacted_content #=> String
    #   event.trace.orchestration_trace.rationale.trace_id #=> String
    #   event.trace.orchestration_trace.rationale.text #=> String
    #   event.trace.orchestration_trace.invocation_input.trace_id #=> String
    #   event.trace.orchestration_trace.invocation_input.invocation_type #=> String, one of "ACTION_GROUP", "KNOWLEDGE_BASE", "FINISH", "ACTION_GROUP_CODE_INTERPRETER", "AGENT_COLLABORATOR"
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.action_group_name #=> String
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.verb #=> String
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.api_path #=> String
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.parameters #=> Array
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.parameters[0].name #=> String
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.parameters[0].type #=> String
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.parameters[0].value #=> String
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.request_body.content #=> Hash
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.request_body.content["String"] #=> Array
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.request_body.content["String"][0].name #=> String
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.request_body.content["String"][0].type #=> String
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.request_body.content["String"][0].value #=> String
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.function #=> String
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.execution_type #=> String, one of "LAMBDA", "RETURN_CONTROL"
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.invocation_id #=> String
    #   event.trace.orchestration_trace.invocation_input.knowledge_base_lookup_input.text #=> String
    #   event.trace.orchestration_trace.invocation_input.knowledge_base_lookup_input.knowledge_base_id #=> String
    #   event.trace.orchestration_trace.invocation_input.code_interpreter_invocation_input.code #=> String
    #   event.trace.orchestration_trace.invocation_input.code_interpreter_invocation_input.files #=> Array
    #   event.trace.orchestration_trace.invocation_input.code_interpreter_invocation_input.files[0] #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.agent_collaborator_name #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.agent_collaborator_alias_arn #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.type #=> String, one of "TEXT", "RETURN_CONTROL"
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.text #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.invocation_id #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results #=> Array
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.action_group #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.http_method #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.api_path #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.confirmation_state #=> String, one of "CONFIRM", "DENY"
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_state #=> String, one of "FAILURE", "REPROMPT"
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.http_status_code #=> Integer
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body #=> Hash
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].body #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].images #=> Array
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].images[0].format #=> String, one of "png", "jpeg", "gif", "webp"
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].images[0].source.bytes #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.agent_id #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.action_group #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.confirmation_state #=> String, one of "CONFIRM", "DENY"
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.function #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body #=> Hash
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].body #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].images #=> Array
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].images[0].format #=> String, one of "png", "jpeg", "gif", "webp"
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].images[0].source.bytes #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_state #=> String, one of "FAILURE", "REPROMPT"
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.agent_id #=> String
    #   event.trace.orchestration_trace.observation.trace_id #=> String
    #   event.trace.orchestration_trace.observation.type #=> String, one of "ACTION_GROUP", "AGENT_COLLABORATOR", "KNOWLEDGE_BASE", "FINISH", "ASK_USER", "REPROMPT"
    #   event.trace.orchestration_trace.observation.action_group_invocation_output.text #=> String
    #   event.trace.orchestration_trace.observation.action_group_invocation_output.metadata.start_time #=> Time
    #   event.trace.orchestration_trace.observation.action_group_invocation_output.metadata.end_time #=> Time
    #   event.trace.orchestration_trace.observation.action_group_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.orchestration_trace.observation.action_group_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.orchestration_trace.observation.action_group_invocation_output.metadata.client_request_id #=> String
    #   event.trace.orchestration_trace.observation.action_group_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.orchestration_trace.observation.action_group_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.agent_collaborator_name #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.agent_collaborator_alias_arn #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.type #=> String, one of "TEXT", "RETURN_CONTROL"
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.text #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs #=> Array
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.action_group #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.http_method #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.api_path #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters #=> Array
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters[0].name #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters[0].type #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters[0].value #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content #=> Hash
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties #=> Array
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].name #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].type #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].value #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.action_invocation_type #=> String, one of "RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.agent_id #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.collaborator_name #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.action_group #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters #=> Array
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters[0].name #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters[0].type #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters[0].value #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.function #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.action_invocation_type #=> String, one of "RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.agent_id #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.collaborator_name #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_id #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.metadata.start_time #=> Time
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.metadata.end_time #=> Time
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.metadata.client_request_id #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references #=> Array
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.type #=> String, one of "TEXT", "IMAGE", "ROW"
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.text #=> String
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.byte_content #=> String
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row #=> Array
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row[0].column_name #=> String
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row[0].column_value #=> String
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row[0].type #=> String, one of "BLOB", "BOOLEAN", "DOUBLE", "NULL", "LONG", "STRING"
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.type #=> String, one of "S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "KENDRA", "SQL"
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.s3_location.uri #=> String
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.web_location.url #=> String
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.confluence_location.url #=> String
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.salesforce_location.url #=> String
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.share_point_location.url #=> String
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.custom_document_location.id #=> String
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.kendra_document_location.uri #=> String
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.sql_location.query #=> String
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].metadata #=> Hash
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.metadata.start_time #=> Time
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.metadata.end_time #=> Time
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.metadata.total_time_ms #=> Integer
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.metadata.client_request_id #=> String
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.orchestration_trace.observation.final_response.text #=> String
    #   event.trace.orchestration_trace.observation.final_response.metadata.start_time #=> Time
    #   event.trace.orchestration_trace.observation.final_response.metadata.end_time #=> Time
    #   event.trace.orchestration_trace.observation.final_response.metadata.total_time_ms #=> Integer
    #   event.trace.orchestration_trace.observation.final_response.metadata.operation_total_time_ms #=> Integer
    #   event.trace.orchestration_trace.observation.final_response.metadata.client_request_id #=> String
    #   event.trace.orchestration_trace.observation.final_response.metadata.usage.input_tokens #=> Integer
    #   event.trace.orchestration_trace.observation.final_response.metadata.usage.output_tokens #=> Integer
    #   event.trace.orchestration_trace.observation.reprompt_response.text #=> String
    #   event.trace.orchestration_trace.observation.reprompt_response.source #=> String, one of "ACTION_GROUP", "KNOWLEDGE_BASE", "PARSER"
    #   event.trace.orchestration_trace.observation.code_interpreter_invocation_output.execution_output #=> String
    #   event.trace.orchestration_trace.observation.code_interpreter_invocation_output.execution_error #=> String
    #   event.trace.orchestration_trace.observation.code_interpreter_invocation_output.files #=> Array
    #   event.trace.orchestration_trace.observation.code_interpreter_invocation_output.files[0] #=> String
    #   event.trace.orchestration_trace.observation.code_interpreter_invocation_output.execution_timeout #=> Boolean
    #   event.trace.orchestration_trace.observation.code_interpreter_invocation_output.metadata.start_time #=> Time
    #   event.trace.orchestration_trace.observation.code_interpreter_invocation_output.metadata.end_time #=> Time
    #   event.trace.orchestration_trace.observation.code_interpreter_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.orchestration_trace.observation.code_interpreter_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.orchestration_trace.observation.code_interpreter_invocation_output.metadata.client_request_id #=> String
    #   event.trace.orchestration_trace.observation.code_interpreter_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.orchestration_trace.observation.code_interpreter_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.orchestration_trace.model_invocation_input.trace_id #=> String
    #   event.trace.orchestration_trace.model_invocation_input.text #=> String
    #   event.trace.orchestration_trace.model_invocation_input.type #=> String, one of "PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"
    #   event.trace.orchestration_trace.model_invocation_input.override_lambda #=> String
    #   event.trace.orchestration_trace.model_invocation_input.prompt_creation_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.orchestration_trace.model_invocation_input.inference_configuration.temperature #=> Float
    #   event.trace.orchestration_trace.model_invocation_input.inference_configuration.top_p #=> Float
    #   event.trace.orchestration_trace.model_invocation_input.inference_configuration.top_k #=> Integer
    #   event.trace.orchestration_trace.model_invocation_input.inference_configuration.maximum_length #=> Integer
    #   event.trace.orchestration_trace.model_invocation_input.inference_configuration.stop_sequences #=> Array
    #   event.trace.orchestration_trace.model_invocation_input.inference_configuration.stop_sequences[0] #=> String
    #   event.trace.orchestration_trace.model_invocation_input.parser_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.orchestration_trace.model_invocation_input.foundation_model #=> String
    #   event.trace.orchestration_trace.model_invocation_output.trace_id #=> String
    #   event.trace.orchestration_trace.model_invocation_output.raw_response.content #=> String
    #   event.trace.orchestration_trace.model_invocation_output.metadata.start_time #=> Time
    #   event.trace.orchestration_trace.model_invocation_output.metadata.end_time #=> Time
    #   event.trace.orchestration_trace.model_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.orchestration_trace.model_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.orchestration_trace.model_invocation_output.metadata.client_request_id #=> String
    #   event.trace.orchestration_trace.model_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.orchestration_trace.model_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.orchestration_trace.model_invocation_output.reasoning_content.reasoning_text.text #=> String
    #   event.trace.orchestration_trace.model_invocation_output.reasoning_content.reasoning_text.signature #=> String
    #   event.trace.orchestration_trace.model_invocation_output.reasoning_content.redacted_content #=> String
    #   event.trace.post_processing_trace.model_invocation_input.trace_id #=> String
    #   event.trace.post_processing_trace.model_invocation_input.text #=> String
    #   event.trace.post_processing_trace.model_invocation_input.type #=> String, one of "PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"
    #   event.trace.post_processing_trace.model_invocation_input.override_lambda #=> String
    #   event.trace.post_processing_trace.model_invocation_input.prompt_creation_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.post_processing_trace.model_invocation_input.inference_configuration.temperature #=> Float
    #   event.trace.post_processing_trace.model_invocation_input.inference_configuration.top_p #=> Float
    #   event.trace.post_processing_trace.model_invocation_input.inference_configuration.top_k #=> Integer
    #   event.trace.post_processing_trace.model_invocation_input.inference_configuration.maximum_length #=> Integer
    #   event.trace.post_processing_trace.model_invocation_input.inference_configuration.stop_sequences #=> Array
    #   event.trace.post_processing_trace.model_invocation_input.inference_configuration.stop_sequences[0] #=> String
    #   event.trace.post_processing_trace.model_invocation_input.parser_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.post_processing_trace.model_invocation_input.foundation_model #=> String
    #   event.trace.post_processing_trace.model_invocation_output.trace_id #=> String
    #   event.trace.post_processing_trace.model_invocation_output.parsed_response.text #=> String
    #   event.trace.post_processing_trace.model_invocation_output.raw_response.content #=> String
    #   event.trace.post_processing_trace.model_invocation_output.metadata.start_time #=> Time
    #   event.trace.post_processing_trace.model_invocation_output.metadata.end_time #=> Time
    #   event.trace.post_processing_trace.model_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.post_processing_trace.model_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.post_processing_trace.model_invocation_output.metadata.client_request_id #=> String
    #   event.trace.post_processing_trace.model_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.post_processing_trace.model_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.post_processing_trace.model_invocation_output.reasoning_content.reasoning_text.text #=> String
    #   event.trace.post_processing_trace.model_invocation_output.reasoning_content.reasoning_text.signature #=> String
    #   event.trace.post_processing_trace.model_invocation_output.reasoning_content.redacted_content #=> String
    #   event.trace.routing_classifier_trace.invocation_input.trace_id #=> String
    #   event.trace.routing_classifier_trace.invocation_input.invocation_type #=> String, one of "ACTION_GROUP", "KNOWLEDGE_BASE", "FINISH", "ACTION_GROUP_CODE_INTERPRETER", "AGENT_COLLABORATOR"
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.action_group_name #=> String
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.verb #=> String
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.api_path #=> String
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.parameters #=> Array
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.parameters[0].name #=> String
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.parameters[0].type #=> String
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.parameters[0].value #=> String
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.request_body.content #=> Hash
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.request_body.content["String"] #=> Array
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.request_body.content["String"][0].name #=> String
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.request_body.content["String"][0].type #=> String
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.request_body.content["String"][0].value #=> String
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.function #=> String
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.execution_type #=> String, one of "LAMBDA", "RETURN_CONTROL"
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.invocation_id #=> String
    #   event.trace.routing_classifier_trace.invocation_input.knowledge_base_lookup_input.text #=> String
    #   event.trace.routing_classifier_trace.invocation_input.knowledge_base_lookup_input.knowledge_base_id #=> String
    #   event.trace.routing_classifier_trace.invocation_input.code_interpreter_invocation_input.code #=> String
    #   event.trace.routing_classifier_trace.invocation_input.code_interpreter_invocation_input.files #=> Array
    #   event.trace.routing_classifier_trace.invocation_input.code_interpreter_invocation_input.files[0] #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.agent_collaborator_name #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.agent_collaborator_alias_arn #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.type #=> String, one of "TEXT", "RETURN_CONTROL"
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.text #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.invocation_id #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results #=> Array
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.action_group #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.http_method #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.api_path #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.confirmation_state #=> String, one of "CONFIRM", "DENY"
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_state #=> String, one of "FAILURE", "REPROMPT"
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.http_status_code #=> Integer
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body #=> Hash
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].body #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].images #=> Array
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].images[0].format #=> String, one of "png", "jpeg", "gif", "webp"
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].images[0].source.bytes #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.agent_id #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.action_group #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.confirmation_state #=> String, one of "CONFIRM", "DENY"
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.function #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body #=> Hash
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].body #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].images #=> Array
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].images[0].format #=> String, one of "png", "jpeg", "gif", "webp"
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].images[0].source.bytes #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_state #=> String, one of "FAILURE", "REPROMPT"
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.agent_id #=> String
    #   event.trace.routing_classifier_trace.observation.trace_id #=> String
    #   event.trace.routing_classifier_trace.observation.type #=> String, one of "ACTION_GROUP", "AGENT_COLLABORATOR", "KNOWLEDGE_BASE", "FINISH", "ASK_USER", "REPROMPT"
    #   event.trace.routing_classifier_trace.observation.action_group_invocation_output.text #=> String
    #   event.trace.routing_classifier_trace.observation.action_group_invocation_output.metadata.start_time #=> Time
    #   event.trace.routing_classifier_trace.observation.action_group_invocation_output.metadata.end_time #=> Time
    #   event.trace.routing_classifier_trace.observation.action_group_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.routing_classifier_trace.observation.action_group_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.routing_classifier_trace.observation.action_group_invocation_output.metadata.client_request_id #=> String
    #   event.trace.routing_classifier_trace.observation.action_group_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.routing_classifier_trace.observation.action_group_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.agent_collaborator_name #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.agent_collaborator_alias_arn #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.type #=> String, one of "TEXT", "RETURN_CONTROL"
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.text #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs #=> Array
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.action_group #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.http_method #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.api_path #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters #=> Array
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters[0].name #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters[0].type #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters[0].value #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content #=> Hash
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties #=> Array
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].name #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].type #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].value #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.action_invocation_type #=> String, one of "RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.agent_id #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.collaborator_name #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.action_group #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters #=> Array
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters[0].name #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters[0].type #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters[0].value #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.function #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.action_invocation_type #=> String, one of "RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.agent_id #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.collaborator_name #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_id #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.metadata.start_time #=> Time
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.metadata.end_time #=> Time
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.metadata.client_request_id #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references #=> Array
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.type #=> String, one of "TEXT", "IMAGE", "ROW"
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.text #=> String
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.byte_content #=> String
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row #=> Array
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row[0].column_name #=> String
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row[0].column_value #=> String
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row[0].type #=> String, one of "BLOB", "BOOLEAN", "DOUBLE", "NULL", "LONG", "STRING"
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.type #=> String, one of "S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "KENDRA", "SQL"
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.s3_location.uri #=> String
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.web_location.url #=> String
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.confluence_location.url #=> String
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.salesforce_location.url #=> String
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.share_point_location.url #=> String
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.custom_document_location.id #=> String
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.kendra_document_location.uri #=> String
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.sql_location.query #=> String
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].metadata #=> Hash
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.metadata.start_time #=> Time
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.metadata.end_time #=> Time
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.metadata.total_time_ms #=> Integer
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.metadata.client_request_id #=> String
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.routing_classifier_trace.observation.final_response.text #=> String
    #   event.trace.routing_classifier_trace.observation.final_response.metadata.start_time #=> Time
    #   event.trace.routing_classifier_trace.observation.final_response.metadata.end_time #=> Time
    #   event.trace.routing_classifier_trace.observation.final_response.metadata.total_time_ms #=> Integer
    #   event.trace.routing_classifier_trace.observation.final_response.metadata.operation_total_time_ms #=> Integer
    #   event.trace.routing_classifier_trace.observation.final_response.metadata.client_request_id #=> String
    #   event.trace.routing_classifier_trace.observation.final_response.metadata.usage.input_tokens #=> Integer
    #   event.trace.routing_classifier_trace.observation.final_response.metadata.usage.output_tokens #=> Integer
    #   event.trace.routing_classifier_trace.observation.reprompt_response.text #=> String
    #   event.trace.routing_classifier_trace.observation.reprompt_response.source #=> String, one of "ACTION_GROUP", "KNOWLEDGE_BASE", "PARSER"
    #   event.trace.routing_classifier_trace.observation.code_interpreter_invocation_output.execution_output #=> String
    #   event.trace.routing_classifier_trace.observation.code_interpreter_invocation_output.execution_error #=> String
    #   event.trace.routing_classifier_trace.observation.code_interpreter_invocation_output.files #=> Array
    #   event.trace.routing_classifier_trace.observation.code_interpreter_invocation_output.files[0] #=> String
    #   event.trace.routing_classifier_trace.observation.code_interpreter_invocation_output.execution_timeout #=> Boolean
    #   event.trace.routing_classifier_trace.observation.code_interpreter_invocation_output.metadata.start_time #=> Time
    #   event.trace.routing_classifier_trace.observation.code_interpreter_invocation_output.metadata.end_time #=> Time
    #   event.trace.routing_classifier_trace.observation.code_interpreter_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.routing_classifier_trace.observation.code_interpreter_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.routing_classifier_trace.observation.code_interpreter_invocation_output.metadata.client_request_id #=> String
    #   event.trace.routing_classifier_trace.observation.code_interpreter_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.routing_classifier_trace.observation.code_interpreter_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.routing_classifier_trace.model_invocation_input.trace_id #=> String
    #   event.trace.routing_classifier_trace.model_invocation_input.text #=> String
    #   event.trace.routing_classifier_trace.model_invocation_input.type #=> String, one of "PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"
    #   event.trace.routing_classifier_trace.model_invocation_input.override_lambda #=> String
    #   event.trace.routing_classifier_trace.model_invocation_input.prompt_creation_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.routing_classifier_trace.model_invocation_input.inference_configuration.temperature #=> Float
    #   event.trace.routing_classifier_trace.model_invocation_input.inference_configuration.top_p #=> Float
    #   event.trace.routing_classifier_trace.model_invocation_input.inference_configuration.top_k #=> Integer
    #   event.trace.routing_classifier_trace.model_invocation_input.inference_configuration.maximum_length #=> Integer
    #   event.trace.routing_classifier_trace.model_invocation_input.inference_configuration.stop_sequences #=> Array
    #   event.trace.routing_classifier_trace.model_invocation_input.inference_configuration.stop_sequences[0] #=> String
    #   event.trace.routing_classifier_trace.model_invocation_input.parser_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.routing_classifier_trace.model_invocation_input.foundation_model #=> String
    #   event.trace.routing_classifier_trace.model_invocation_output.trace_id #=> String
    #   event.trace.routing_classifier_trace.model_invocation_output.raw_response.content #=> String
    #   event.trace.routing_classifier_trace.model_invocation_output.metadata.start_time #=> Time
    #   event.trace.routing_classifier_trace.model_invocation_output.metadata.end_time #=> Time
    #   event.trace.routing_classifier_trace.model_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.routing_classifier_trace.model_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.routing_classifier_trace.model_invocation_output.metadata.client_request_id #=> String
    #   event.trace.routing_classifier_trace.model_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.routing_classifier_trace.model_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.failure_trace.trace_id #=> String
    #   event.trace.failure_trace.failure_reason #=> String
    #   event.trace.failure_trace.failure_code #=> Integer
    #   event.trace.failure_trace.metadata.start_time #=> Time
    #   event.trace.failure_trace.metadata.end_time #=> Time
    #   event.trace.failure_trace.metadata.total_time_ms #=> Integer
    #   event.trace.failure_trace.metadata.operation_total_time_ms #=> Integer
    #   event.trace.failure_trace.metadata.client_request_id #=> String
    #   event.trace.failure_trace.metadata.usage.input_tokens #=> Integer
    #   event.trace.failure_trace.metadata.usage.output_tokens #=> Integer
    #   event.trace.custom_orchestration_trace.trace_id #=> String
    #   event.trace.custom_orchestration_trace.event.text #=> String
    #   event.caller_chain #=> Array
    #   event.caller_chain[0].agent_alias_arn #=> String
    #   event.event_time #=> Time
    #   event.collaborator_name #=> String
    #   event.agent_id #=> String
    #   event.agent_alias_id #=> String
    #   event.agent_version #=> String
    #
    #   # For :return_control event available at #on_return_control_event callback and response eventstream enumerator:
    #   event.invocation_inputs #=> Array
    #   event.invocation_inputs[0].api_invocation_input.action_group #=> String
    #   event.invocation_inputs[0].api_invocation_input.http_method #=> String
    #   event.invocation_inputs[0].api_invocation_input.api_path #=> String
    #   event.invocation_inputs[0].api_invocation_input.parameters #=> Array
    #   event.invocation_inputs[0].api_invocation_input.parameters[0].name #=> String
    #   event.invocation_inputs[0].api_invocation_input.parameters[0].type #=> String
    #   event.invocation_inputs[0].api_invocation_input.parameters[0].value #=> String
    #   event.invocation_inputs[0].api_invocation_input.request_body.content #=> Hash
    #   event.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties #=> Array
    #   event.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].name #=> String
    #   event.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].type #=> String
    #   event.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].value #=> String
    #   event.invocation_inputs[0].api_invocation_input.action_invocation_type #=> String, one of "RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"
    #   event.invocation_inputs[0].api_invocation_input.agent_id #=> String
    #   event.invocation_inputs[0].api_invocation_input.collaborator_name #=> String
    #   event.invocation_inputs[0].function_invocation_input.action_group #=> String
    #   event.invocation_inputs[0].function_invocation_input.parameters #=> Array
    #   event.invocation_inputs[0].function_invocation_input.parameters[0].name #=> String
    #   event.invocation_inputs[0].function_invocation_input.parameters[0].type #=> String
    #   event.invocation_inputs[0].function_invocation_input.parameters[0].value #=> String
    #   event.invocation_inputs[0].function_invocation_input.function #=> String
    #   event.invocation_inputs[0].function_invocation_input.action_invocation_type #=> String, one of "RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"
    #   event.invocation_inputs[0].function_invocation_input.agent_id #=> String
    #   event.invocation_inputs[0].function_invocation_input.collaborator_name #=> String
    #   event.invocation_id #=> String
    #
    #   # For :internal_server_exception event available at #on_internal_server_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #   event.reason #=> String
    #
    #   # For :validation_exception event available at #on_validation_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :resource_not_found_exception event available at #on_resource_not_found_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :service_quota_exceeded_exception event available at #on_service_quota_exceeded_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :throttling_exception event available at #on_throttling_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :access_denied_exception event available at #on_access_denied_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :conflict_exception event available at #on_conflict_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :dependency_failed_exception event available at #on_dependency_failed_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #   event.resource_name #=> String
    #
    #   # For :bad_gateway_exception event available at #on_bad_gateway_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #   event.resource_name #=> String
    #
    #   # For :model_not_ready_exception event available at #on_model_not_ready_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :files event available at #on_files_event callback and response eventstream enumerator:
    #   event.files #=> Array
    #   event.files[0].name #=> String
    #   event.files[0].type #=> String
    #   event.files[0].bytes #=> String
    #
    #   resp.content_type #=> String
    #   resp.session_id #=> String
    #   resp.memory_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InvokeAgent AWS API Documentation
    #
    # @overload invoke_agent(params = {})
    # @param [Hash] params ({})
    def invoke_agent(params = {}, options = {}, &block)
      params = params.dup
      event_stream_handler = case handler = params.delete(:event_stream_handler)
        when EventStreams::ResponseStream then handler
        when Proc then EventStreams::ResponseStream.new.tap(&handler)
        when nil then EventStreams::ResponseStream.new
        else
          msg = "expected :event_stream_handler to be a block or "\
                "instance of Aws::BedrockAgentRuntime::EventStreams::ResponseStream"\
                ", got `#{handler.inspect}` instead"
          raise ArgumentError, msg
        end

      yield(event_stream_handler) if block_given?

      req = build_request(:invoke_agent, params)

      req.context[:event_stream_handler] = event_stream_handler
      req.handlers.add(Aws::Binary::DecodeHandler, priority: 95)

      req.send_request(options, &block)
    end

    # Invokes an alias of a flow to run the inputs that you specify and
    # return the output of each node as a stream. If there's an error, the
    # error is returned. For more information, see [Test a flow in Amazon
    # Bedrock][1] in the [Amazon Bedrock User Guide][2].
    #
    # <note markdown="1"> The CLI doesn't support streaming operations in Amazon Bedrock,
    # including `InvokeFlow`.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-test.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [required, String] :flow_identifier
    #   The unique identifier of the flow.
    #
    # @option params [required, String] :flow_alias_identifier
    #   The unique identifier of the flow alias.
    #
    # @option params [required, Array<Types::FlowInput>] :inputs
    #   A list of objects, each containing information about an input into the
    #   flow.
    #
    # @option params [Boolean] :enable_trace
    #   Specifies whether to return the trace for the flow or not. Traces
    #   track inputs and outputs for nodes in the flow. For more information,
    #   see [Track each step in your prompt flow by viewing its trace in
    #   Amazon Bedrock][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-trace.html
    #
    # @option params [Types::ModelPerformanceConfiguration] :model_performance_configuration
    #   Model performance settings for the request.
    #
    # @option params [String] :execution_id
    #   The unique identifier for the current flow execution. If you don't
    #   provide a value, Amazon Bedrock creates the identifier for you.
    #
    # @return [Types::InvokeFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvokeFlowResponse#response_stream #response_stream} => Types::FlowResponseStream
    #   * {Types::InvokeFlowResponse#execution_id #execution_id} => String
    #
    # @example EventStream Operation Example
    #
    #   # You can process the event once it arrives immediately, or wait until the
    #   # full response is complete and iterate through the eventstream enumerator.
    #
    #   # To interact with event immediately, you need to register invoke_flow
    #   # with callbacks. Callbacks can be registered for specific events or for all
    #   # events, including error events.
    #
    #   # Callbacks can be passed into the `:event_stream_handler` option or within a
    #   # block statement attached to the #invoke_flow call directly. Hybrid
    #   # pattern of both is also supported.
    #
    #   # `:event_stream_handler` option takes in either a Proc object or
    #   # Aws::BedrockAgentRuntime::EventStreams::FlowResponseStream object.
    #
    #   # Usage pattern a): Callbacks with a block attached to #invoke_flow
    #   # Example for registering callbacks for all event types and an error event
    #   client.invoke_flow(
    #     # params input
    #   ) do |stream|
    #     stream.on_error_event do |event|
    #       # catch unmodeled error event in the stream
    #       raise event
    #       # => Aws::Errors::EventError
    #       # event.event_type => :error
    #       # event.error_code => String
    #       # event.error_message => String
    #     end
    #
    #     stream.on_event do |event|
    #       # process all events arrive
    #       puts event.event_type
    #       # ...
    #     end
    #   end
    #
    #   # Usage pattern b): Pass in `:event_stream_handler` for #invoke_flow
    #   #  1) Create a Aws::BedrockAgentRuntime::EventStreams::FlowResponseStream object
    #   #  Example for registering callbacks with specific events
    #
    #   handler = Aws::BedrockAgentRuntime::EventStreams::FlowResponseStream.new
    #   handler.on_flow_output_event_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::flowOutputEvent
    #   end
    #   handler.on_flow_completion_event_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::flowCompletionEvent
    #   end
    #   handler.on_flow_trace_event_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::flowTraceEvent
    #   end
    #   handler.on_internal_server_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::internalServerException
    #   end
    #   handler.on_validation_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::validationException
    #   end
    #   handler.on_resource_not_found_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::resourceNotFoundException
    #   end
    #   handler.on_service_quota_exceeded_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::serviceQuotaExceededException
    #   end
    #   handler.on_throttling_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::throttlingException
    #   end
    #   handler.on_access_denied_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::accessDeniedException
    #   end
    #   handler.on_conflict_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::conflictException
    #   end
    #   handler.on_dependency_failed_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::dependencyFailedException
    #   end
    #   handler.on_bad_gateway_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::badGatewayException
    #   end
    #   handler.on_flow_multi_turn_input_request_event_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::flowMultiTurnInputRequestEvent
    #   end
    #
    #   client.invoke_flow(
    #     # params inputs
    #     event_stream_handler: handler
    #   )
    #
    #   #  2) Use a Ruby Proc object
    #   #  Example for registering callbacks with specific events
    #   handler = Proc.new do |stream|
    #     stream.on_flow_output_event_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::flowOutputEvent
    #     end
    #     stream.on_flow_completion_event_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::flowCompletionEvent
    #     end
    #     stream.on_flow_trace_event_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::flowTraceEvent
    #     end
    #     stream.on_internal_server_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::internalServerException
    #     end
    #     stream.on_validation_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::validationException
    #     end
    #     stream.on_resource_not_found_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::resourceNotFoundException
    #     end
    #     stream.on_service_quota_exceeded_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::serviceQuotaExceededException
    #     end
    #     stream.on_throttling_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::throttlingException
    #     end
    #     stream.on_access_denied_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::accessDeniedException
    #     end
    #     stream.on_conflict_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::conflictException
    #     end
    #     stream.on_dependency_failed_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::dependencyFailedException
    #     end
    #     stream.on_bad_gateway_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::badGatewayException
    #     end
    #     stream.on_flow_multi_turn_input_request_event_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::flowMultiTurnInputRequestEvent
    #     end
    #   end
    #
    #   client.invoke_flow(
    #     # params inputs
    #     event_stream_handler: handler
    #   )
    #
    #   #  Usage pattern c): Hybrid pattern of a) and b)
    #   handler = Aws::BedrockAgentRuntime::EventStreams::FlowResponseStream.new
    #   handler.on_flow_output_event_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::flowOutputEvent
    #   end
    #   handler.on_flow_completion_event_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::flowCompletionEvent
    #   end
    #   handler.on_flow_trace_event_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::flowTraceEvent
    #   end
    #   handler.on_internal_server_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::internalServerException
    #   end
    #   handler.on_validation_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::validationException
    #   end
    #   handler.on_resource_not_found_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::resourceNotFoundException
    #   end
    #   handler.on_service_quota_exceeded_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::serviceQuotaExceededException
    #   end
    #   handler.on_throttling_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::throttlingException
    #   end
    #   handler.on_access_denied_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::accessDeniedException
    #   end
    #   handler.on_conflict_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::conflictException
    #   end
    #   handler.on_dependency_failed_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::dependencyFailedException
    #   end
    #   handler.on_bad_gateway_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::badGatewayException
    #   end
    #   handler.on_flow_multi_turn_input_request_event_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::flowMultiTurnInputRequestEvent
    #   end
    #
    #   client.invoke_flow(
    #     # params input
    #     event_stream_handler: handler
    #   ) do |stream|
    #     stream.on_error_event do |event|
    #       # catch unmodeled error event in the stream
    #       raise event
    #       # => Aws::Errors::EventError
    #       # event.event_type => :error
    #       # event.error_code => String
    #       # event.error_message => String
    #     end
    #   end
    #
    #   # You can also iterate through events after the response complete.
    #   # Events are available at
    #   resp.response_stream # => Enumerator
    #   # For parameter input example, please refer to following request syntax.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke_flow({
    #     flow_identifier: "FlowIdentifier", # required
    #     flow_alias_identifier: "FlowAliasIdentifier", # required
    #     inputs: [ # required
    #       {
    #         node_name: "NodeName", # required
    #         node_output_name: "NodeOutputName",
    #         content: { # required
    #           document: {
    #           },
    #         },
    #         node_input_name: "NodeInputName",
    #       },
    #     ],
    #     enable_trace: false,
    #     model_performance_configuration: {
    #       performance_config: {
    #         latency: "standard", # accepts standard, optimized
    #       },
    #     },
    #     execution_id: "FlowExecutionId",
    #   })
    #
    # @example Response structure
    #
    #   # All events are available at resp.response_stream:
    #   resp.response_stream #=> Enumerator
    #   resp.response_stream.event_types #=> [:flow_output_event, :flow_completion_event, :flow_trace_event, :internal_server_exception, :validation_exception, :resource_not_found_exception, :service_quota_exceeded_exception, :throttling_exception, :access_denied_exception, :conflict_exception, :dependency_failed_exception, :bad_gateway_exception, :flow_multi_turn_input_request_event]
    #
    #   # For :flow_output_event event available at #on_flow_output_event_event callback and response eventstream enumerator:
    #   event.node_name #=> String
    #   event.node_type #=> String, one of "FlowInputNode", "FlowOutputNode", "LambdaFunctionNode", "KnowledgeBaseNode", "PromptNode", "ConditionNode", "LexNode"
    #
    #   # For :flow_completion_event event available at #on_flow_completion_event_event callback and response eventstream enumerator:
    #   event.completion_reason #=> String, one of "SUCCESS", "INPUT_REQUIRED"
    #
    #   # For :flow_trace_event event available at #on_flow_trace_event_event callback and response eventstream enumerator:
    #   event.trace.node_input_trace.node_name #=> String
    #   event.trace.node_input_trace.timestamp #=> Time
    #   event.trace.node_input_trace.fields #=> Array
    #   event.trace.node_input_trace.fields[0].node_input_name #=> String
    #   event.trace.node_input_trace.fields[0].source.node_name #=> String
    #   event.trace.node_input_trace.fields[0].source.output_field_name #=> String
    #   event.trace.node_input_trace.fields[0].source.expression #=> String
    #   event.trace.node_input_trace.fields[0].type #=> String, one of "String", "Number", "Boolean", "Object", "Array"
    #   event.trace.node_input_trace.fields[0].category #=> String, one of "LoopCondition", "ReturnValueToLoopStart", "ExitLoop"
    #   event.trace.node_input_trace.fields[0].execution_chain #=> Array
    #   event.trace.node_input_trace.fields[0].execution_chain[0].node_name #=> String
    #   event.trace.node_input_trace.fields[0].execution_chain[0].index #=> Integer
    #   event.trace.node_input_trace.fields[0].execution_chain[0].type #=> String, one of "Iterator", "Loop"
    #   event.trace.node_output_trace.node_name #=> String
    #   event.trace.node_output_trace.timestamp #=> Time
    #   event.trace.node_output_trace.fields #=> Array
    #   event.trace.node_output_trace.fields[0].node_output_name #=> String
    #   event.trace.node_output_trace.fields[0].next #=> Array
    #   event.trace.node_output_trace.fields[0].next[0].node_name #=> String
    #   event.trace.node_output_trace.fields[0].next[0].input_field_name #=> String
    #   event.trace.node_output_trace.fields[0].type #=> String, one of "String", "Number", "Boolean", "Object", "Array"
    #   event.trace.condition_node_result_trace.node_name #=> String
    #   event.trace.condition_node_result_trace.timestamp #=> Time
    #   event.trace.condition_node_result_trace.satisfied_conditions #=> Array
    #   event.trace.condition_node_result_trace.satisfied_conditions[0].condition_name #=> String
    #   event.trace.node_action_trace.node_name #=> String
    #   event.trace.node_action_trace.timestamp #=> Time
    #   event.trace.node_action_trace.request_id #=> String
    #   event.trace.node_action_trace.service_name #=> String
    #   event.trace.node_action_trace.operation_name #=> String
    #   event.trace.node_dependency_trace.node_name #=> String
    #   event.trace.node_dependency_trace.timestamp #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].session_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.action #=> String, one of "INTERVENED", "NONE"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.trace_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].topic_policy.topics #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].topic_policy.topics[0].name #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].topic_policy.topics[0].type #=> String, one of "DENY"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].topic_policy.topics[0].action #=> String, one of "BLOCKED"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].content_policy.filters #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].content_policy.filters[0].type #=> String, one of "INSULTS", "HATE", "SEXUAL", "VIOLENCE", "MISCONDUCT", "PROMPT_ATTACK"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].content_policy.filters[0].confidence #=> String, one of "NONE", "LOW", "MEDIUM", "HIGH"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].content_policy.filters[0].action #=> String, one of "BLOCKED"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].word_policy.custom_words #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].word_policy.custom_words[0].match #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].word_policy.custom_words[0].action #=> String, one of "BLOCKED"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].word_policy.managed_word_lists #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].word_policy.managed_word_lists[0].match #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].word_policy.managed_word_lists[0].type #=> String, one of "PROFANITY"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].word_policy.managed_word_lists[0].action #=> String, one of "BLOCKED"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].sensitive_information_policy.pii_entities #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].sensitive_information_policy.pii_entities[0].type #=> String, one of "ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].sensitive_information_policy.pii_entities[0].match #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].sensitive_information_policy.pii_entities[0].action #=> String, one of "BLOCKED", "ANONYMIZED"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].sensitive_information_policy.regexes #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].sensitive_information_policy.regexes[0].name #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].sensitive_information_policy.regexes[0].regex #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].sensitive_information_policy.regexes[0].match #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].sensitive_information_policy.regexes[0].action #=> String, one of "BLOCKED", "ANONYMIZED"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].topic_policy.topics #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].topic_policy.topics[0].name #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].topic_policy.topics[0].type #=> String, one of "DENY"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].topic_policy.topics[0].action #=> String, one of "BLOCKED"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].content_policy.filters #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].content_policy.filters[0].type #=> String, one of "INSULTS", "HATE", "SEXUAL", "VIOLENCE", "MISCONDUCT", "PROMPT_ATTACK"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].content_policy.filters[0].confidence #=> String, one of "NONE", "LOW", "MEDIUM", "HIGH"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].content_policy.filters[0].action #=> String, one of "BLOCKED"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].word_policy.custom_words #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].word_policy.custom_words[0].match #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].word_policy.custom_words[0].action #=> String, one of "BLOCKED"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].word_policy.managed_word_lists #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].word_policy.managed_word_lists[0].match #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].word_policy.managed_word_lists[0].type #=> String, one of "PROFANITY"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].word_policy.managed_word_lists[0].action #=> String, one of "BLOCKED"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].sensitive_information_policy.pii_entities #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].sensitive_information_policy.pii_entities[0].type #=> String, one of "ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].sensitive_information_policy.pii_entities[0].match #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].sensitive_information_policy.pii_entities[0].action #=> String, one of "BLOCKED", "ANONYMIZED"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].sensitive_information_policy.regexes #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].sensitive_information_policy.regexes[0].name #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].sensitive_information_policy.regexes[0].regex #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].sensitive_information_policy.regexes[0].match #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].sensitive_information_policy.regexes[0].action #=> String, one of "BLOCKED", "ANONYMIZED"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.metadata.start_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.metadata.end_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.metadata.total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.metadata.operation_total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.metadata.client_request_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.metadata.usage.input_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.guardrail_trace.metadata.usage.output_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_input.trace_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_input.text #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_input.type #=> String, one of "PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_input.override_lambda #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_input.prompt_creation_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_input.inference_configuration.temperature #=> Float
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_input.inference_configuration.top_p #=> Float
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_input.inference_configuration.top_k #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_input.inference_configuration.maximum_length #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_input.inference_configuration.stop_sequences #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_input.inference_configuration.stop_sequences[0] #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_input.parser_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_input.foundation_model #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_output.trace_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_output.parsed_response.rationale #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_output.parsed_response.is_valid #=> Boolean
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_output.raw_response.content #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_output.metadata.start_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_output.metadata.end_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_output.metadata.client_request_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_output.reasoning_content.reasoning_text.text #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_output.reasoning_content.reasoning_text.signature #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_output.reasoning_content.redacted_content #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.rationale.trace_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.rationale.text #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.trace_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.invocation_type #=> String, one of "ACTION_GROUP", "KNOWLEDGE_BASE", "FINISH", "ACTION_GROUP_CODE_INTERPRETER", "AGENT_COLLABORATOR"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.action_group_name #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.verb #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.api_path #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.parameters #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.parameters[0].name #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.parameters[0].type #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.parameters[0].value #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.request_body.content #=> Hash
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.request_body.content["String"] #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.request_body.content["String"][0].name #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.request_body.content["String"][0].type #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.request_body.content["String"][0].value #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.function #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.execution_type #=> String, one of "LAMBDA", "RETURN_CONTROL"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.invocation_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.knowledge_base_lookup_input.text #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.knowledge_base_lookup_input.knowledge_base_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.code_interpreter_invocation_input.code #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.code_interpreter_invocation_input.files #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.code_interpreter_invocation_input.files[0] #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.agent_collaborator_name #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.agent_collaborator_alias_arn #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.type #=> String, one of "TEXT", "RETURN_CONTROL"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.text #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.invocation_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.action_group #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.http_method #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.api_path #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.confirmation_state #=> String, one of "CONFIRM", "DENY"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_state #=> String, one of "FAILURE", "REPROMPT"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.http_status_code #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body #=> Hash
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].body #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].images #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].images[0].format #=> String, one of "png", "jpeg", "gif", "webp"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].images[0].source.bytes #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.agent_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.action_group #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.confirmation_state #=> String, one of "CONFIRM", "DENY"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.function #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body #=> Hash
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].body #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].images #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].images[0].format #=> String, one of "png", "jpeg", "gif", "webp"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].images[0].source.bytes #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_state #=> String, one of "FAILURE", "REPROMPT"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.agent_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.trace_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.type #=> String, one of "ACTION_GROUP", "AGENT_COLLABORATOR", "KNOWLEDGE_BASE", "FINISH", "ASK_USER", "REPROMPT"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.action_group_invocation_output.text #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.action_group_invocation_output.metadata.start_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.action_group_invocation_output.metadata.end_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.action_group_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.action_group_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.action_group_invocation_output.metadata.client_request_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.action_group_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.action_group_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.agent_collaborator_name #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.agent_collaborator_alias_arn #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.type #=> String, one of "TEXT", "RETURN_CONTROL"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.text #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.action_group #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.http_method #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.api_path #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters[0].name #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters[0].type #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters[0].value #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content #=> Hash
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].name #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].type #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].value #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.action_invocation_type #=> String, one of "RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.agent_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.collaborator_name #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.action_group #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters[0].name #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters[0].type #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters[0].value #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.function #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.action_invocation_type #=> String, one of "RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.agent_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.collaborator_name #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.metadata.start_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.metadata.end_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.metadata.client_request_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.type #=> String, one of "TEXT", "IMAGE", "ROW"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.text #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.byte_content #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row[0].column_name #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row[0].column_value #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row[0].type #=> String, one of "BLOB", "BOOLEAN", "DOUBLE", "NULL", "LONG", "STRING"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.type #=> String, one of "S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "KENDRA", "SQL"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.s3_location.uri #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.web_location.url #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.confluence_location.url #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.salesforce_location.url #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.share_point_location.url #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.custom_document_location.id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.kendra_document_location.uri #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.sql_location.query #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].metadata #=> Hash
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.metadata.start_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.metadata.end_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.metadata.total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.metadata.client_request_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.final_response.text #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.final_response.metadata.start_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.final_response.metadata.end_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.final_response.metadata.total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.final_response.metadata.operation_total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.final_response.metadata.client_request_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.final_response.metadata.usage.input_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.final_response.metadata.usage.output_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.reprompt_response.text #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.reprompt_response.source #=> String, one of "ACTION_GROUP", "KNOWLEDGE_BASE", "PARSER"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.code_interpreter_invocation_output.execution_output #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.code_interpreter_invocation_output.execution_error #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.code_interpreter_invocation_output.files #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.code_interpreter_invocation_output.files[0] #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.code_interpreter_invocation_output.execution_timeout #=> Boolean
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.code_interpreter_invocation_output.metadata.start_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.code_interpreter_invocation_output.metadata.end_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.code_interpreter_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.code_interpreter_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.code_interpreter_invocation_output.metadata.client_request_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.code_interpreter_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.observation.code_interpreter_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_input.trace_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_input.text #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_input.type #=> String, one of "PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_input.override_lambda #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_input.prompt_creation_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_input.inference_configuration.temperature #=> Float
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_input.inference_configuration.top_p #=> Float
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_input.inference_configuration.top_k #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_input.inference_configuration.maximum_length #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_input.inference_configuration.stop_sequences #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_input.inference_configuration.stop_sequences[0] #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_input.parser_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_input.foundation_model #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_output.trace_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_output.raw_response.content #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_output.metadata.start_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_output.metadata.end_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_output.metadata.client_request_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_output.reasoning_content.reasoning_text.text #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_output.reasoning_content.reasoning_text.signature #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_output.reasoning_content.redacted_content #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_input.trace_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_input.text #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_input.type #=> String, one of "PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_input.override_lambda #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_input.prompt_creation_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_input.inference_configuration.temperature #=> Float
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_input.inference_configuration.top_p #=> Float
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_input.inference_configuration.top_k #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_input.inference_configuration.maximum_length #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_input.inference_configuration.stop_sequences #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_input.inference_configuration.stop_sequences[0] #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_input.parser_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_input.foundation_model #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_output.trace_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_output.parsed_response.text #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_output.raw_response.content #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_output.metadata.start_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_output.metadata.end_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_output.metadata.client_request_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_output.reasoning_content.reasoning_text.text #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_output.reasoning_content.reasoning_text.signature #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_output.reasoning_content.redacted_content #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.trace_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.invocation_type #=> String, one of "ACTION_GROUP", "KNOWLEDGE_BASE", "FINISH", "ACTION_GROUP_CODE_INTERPRETER", "AGENT_COLLABORATOR"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.action_group_name #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.verb #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.api_path #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.parameters #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.parameters[0].name #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.parameters[0].type #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.parameters[0].value #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.request_body.content #=> Hash
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.request_body.content["String"] #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.request_body.content["String"][0].name #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.request_body.content["String"][0].type #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.request_body.content["String"][0].value #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.function #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.execution_type #=> String, one of "LAMBDA", "RETURN_CONTROL"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.invocation_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.knowledge_base_lookup_input.text #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.knowledge_base_lookup_input.knowledge_base_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.code_interpreter_invocation_input.code #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.code_interpreter_invocation_input.files #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.code_interpreter_invocation_input.files[0] #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.agent_collaborator_name #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.agent_collaborator_alias_arn #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.type #=> String, one of "TEXT", "RETURN_CONTROL"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.text #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.invocation_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.action_group #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.http_method #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.api_path #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.confirmation_state #=> String, one of "CONFIRM", "DENY"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_state #=> String, one of "FAILURE", "REPROMPT"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.http_status_code #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body #=> Hash
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].body #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].images #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].images[0].format #=> String, one of "png", "jpeg", "gif", "webp"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].images[0].source.bytes #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.agent_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.action_group #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.confirmation_state #=> String, one of "CONFIRM", "DENY"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.function #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body #=> Hash
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].body #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].images #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].images[0].format #=> String, one of "png", "jpeg", "gif", "webp"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].images[0].source.bytes #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_state #=> String, one of "FAILURE", "REPROMPT"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.agent_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.trace_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.type #=> String, one of "ACTION_GROUP", "AGENT_COLLABORATOR", "KNOWLEDGE_BASE", "FINISH", "ASK_USER", "REPROMPT"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.action_group_invocation_output.text #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.action_group_invocation_output.metadata.start_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.action_group_invocation_output.metadata.end_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.action_group_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.action_group_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.action_group_invocation_output.metadata.client_request_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.action_group_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.action_group_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.agent_collaborator_name #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.agent_collaborator_alias_arn #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.type #=> String, one of "TEXT", "RETURN_CONTROL"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.text #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.action_group #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.http_method #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.api_path #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters[0].name #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters[0].type #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters[0].value #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content #=> Hash
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].name #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].type #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].value #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.action_invocation_type #=> String, one of "RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.agent_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.collaborator_name #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.action_group #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters[0].name #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters[0].type #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters[0].value #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.function #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.action_invocation_type #=> String, one of "RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.agent_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.collaborator_name #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.metadata.start_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.metadata.end_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.metadata.client_request_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.type #=> String, one of "TEXT", "IMAGE", "ROW"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.text #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.byte_content #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row[0].column_name #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row[0].column_value #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row[0].type #=> String, one of "BLOB", "BOOLEAN", "DOUBLE", "NULL", "LONG", "STRING"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.type #=> String, one of "S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "KENDRA", "SQL"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.s3_location.uri #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.web_location.url #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.confluence_location.url #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.salesforce_location.url #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.share_point_location.url #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.custom_document_location.id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.kendra_document_location.uri #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.sql_location.query #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].metadata #=> Hash
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.metadata.start_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.metadata.end_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.metadata.total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.metadata.client_request_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.final_response.text #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.final_response.metadata.start_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.final_response.metadata.end_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.final_response.metadata.total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.final_response.metadata.operation_total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.final_response.metadata.client_request_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.final_response.metadata.usage.input_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.final_response.metadata.usage.output_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.reprompt_response.text #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.reprompt_response.source #=> String, one of "ACTION_GROUP", "KNOWLEDGE_BASE", "PARSER"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.code_interpreter_invocation_output.execution_output #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.code_interpreter_invocation_output.execution_error #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.code_interpreter_invocation_output.files #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.code_interpreter_invocation_output.files[0] #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.code_interpreter_invocation_output.execution_timeout #=> Boolean
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.code_interpreter_invocation_output.metadata.start_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.code_interpreter_invocation_output.metadata.end_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.code_interpreter_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.code_interpreter_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.code_interpreter_invocation_output.metadata.client_request_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.code_interpreter_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.code_interpreter_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_input.trace_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_input.text #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_input.type #=> String, one of "PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_input.override_lambda #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_input.prompt_creation_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_input.inference_configuration.temperature #=> Float
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_input.inference_configuration.top_p #=> Float
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_input.inference_configuration.top_k #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_input.inference_configuration.maximum_length #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_input.inference_configuration.stop_sequences #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_input.inference_configuration.stop_sequences[0] #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_input.parser_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_input.foundation_model #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_output.trace_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_output.raw_response.content #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_output.metadata.start_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_output.metadata.end_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_output.metadata.client_request_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.failure_trace.trace_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.failure_trace.failure_reason #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.failure_trace.failure_code #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.failure_trace.metadata.start_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.failure_trace.metadata.end_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.failure_trace.metadata.total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.failure_trace.metadata.operation_total_time_ms #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.failure_trace.metadata.client_request_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.failure_trace.metadata.usage.input_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.failure_trace.metadata.usage.output_tokens #=> Integer
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.custom_orchestration_trace.trace_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].trace.custom_orchestration_trace.event.text #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].caller_chain #=> Array
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].caller_chain[0].agent_alias_arn #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].event_time #=> Time
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].collaborator_name #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].agent_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].agent_alias_id #=> String
    #   event.trace.node_dependency_trace.trace_elements.agent_traces[0].agent_version #=> String
    #
    #   # For :internal_server_exception event available at #on_internal_server_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #   event.reason #=> String
    #
    #   # For :validation_exception event available at #on_validation_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :resource_not_found_exception event available at #on_resource_not_found_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :service_quota_exceeded_exception event available at #on_service_quota_exceeded_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :throttling_exception event available at #on_throttling_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :access_denied_exception event available at #on_access_denied_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :conflict_exception event available at #on_conflict_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :dependency_failed_exception event available at #on_dependency_failed_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #   event.resource_name #=> String
    #
    #   # For :bad_gateway_exception event available at #on_bad_gateway_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #   event.resource_name #=> String
    #
    #   # For :flow_multi_turn_input_request_event event available at #on_flow_multi_turn_input_request_event_event callback and response eventstream enumerator:
    #   event.node_name #=> String
    #   event.node_type #=> String, one of "FlowInputNode", "FlowOutputNode", "LambdaFunctionNode", "KnowledgeBaseNode", "PromptNode", "ConditionNode", "LexNode"
    #
    #   resp.execution_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InvokeFlow AWS API Documentation
    #
    # @overload invoke_flow(params = {})
    # @param [Hash] params ({})
    def invoke_flow(params = {}, options = {}, &block)
      params = params.dup
      event_stream_handler = case handler = params.delete(:event_stream_handler)
        when EventStreams::FlowResponseStream then handler
        when Proc then EventStreams::FlowResponseStream.new.tap(&handler)
        when nil then EventStreams::FlowResponseStream.new
        else
          msg = "expected :event_stream_handler to be a block or "\
                "instance of Aws::BedrockAgentRuntime::EventStreams::FlowResponseStream"\
                ", got `#{handler.inspect}` instead"
          raise ArgumentError, msg
        end

      yield(event_stream_handler) if block_given?

      req = build_request(:invoke_flow, params)

      req.context[:event_stream_handler] = event_stream_handler
      req.handlers.add(Aws::Binary::DecodeHandler, priority: 95)

      req.send_request(options, &block)
    end

    # Invokes an inline Amazon Bedrock agent using the configurations you
    # provide with the request.
    #
    # * Specify the following fields for security purposes.
    #
    #   * (Optional) `customerEncryptionKeyArn` – The Amazon Resource Name
    #     (ARN) of a KMS key to encrypt the creation of the agent.
    #
    #   * (Optional) `idleSessionTTLinSeconds` – Specify the number of
    #     seconds for which the agent should maintain session information.
    #     After this time expires, the subsequent `InvokeInlineAgent`
    #     request begins a new session.
    # * To override the default prompt behavior for agent orchestration and
    #   to use advanced prompts, include a `promptOverrideConfiguration`
    #   object. For more information, see [Advanced prompts][1].
    #
    # * The agent instructions will not be honored if your agent has only
    #   one knowledge base, uses default prompts, has no action group, and
    #   user input is disabled.
    #
    # <note> </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html
    #
    # @option params [String] :customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services KMS key to
    #   use to encrypt your inline agent.
    #
    # @option params [required, String] :foundation_model
    #   The [model identifier (ID)][1] of the model to use for orchestration
    #   by the inline agent. For example, `meta.llama3-1-70b-instruct-v1:0`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns
    #
    # @option params [required, String] :instruction
    #   The instructions that tell the inline agent what it should do and how
    #   it should interact with users.
    #
    # @option params [Integer] :idle_session_ttl_in_seconds
    #   The number of seconds for which the inline agent should maintain
    #   session information. After this time expires, the subsequent
    #   `InvokeInlineAgent` request begins a new session.
    #
    #   A user interaction remains active for the amount of time specified. If
    #   no conversation occurs during this time, the session expires and the
    #   data provided before the timeout is deleted.
    #
    # @option params [Array<Types::AgentActionGroup>] :action_groups
    #   A list of action groups with each action group defining the action the
    #   inline agent needs to carry out.
    #
    # @option params [Array<Types::KnowledgeBase>] :knowledge_bases
    #   Contains information of the knowledge bases to associate with.
    #
    # @option params [Types::GuardrailConfigurationWithArn] :guardrail_configuration
    #   The [guardrails][1] to assign to the inline agent.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails.html
    #
    # @option params [Types::PromptOverrideConfiguration] :prompt_override_configuration
    #   Configurations for advanced prompts used to override the default
    #   prompts to enhance the accuracy of the inline agent.
    #
    # @option params [String] :agent_collaboration
    #   Defines how the inline collaborator agent handles information across
    #   multiple collaborator agents to coordinate a final response. The
    #   inline collaborator agent can also be the supervisor.
    #
    # @option params [Array<Types::CollaboratorConfiguration>] :collaborator_configurations
    #   Settings for an inline agent collaborator called with
    #   [InvokeInlineAgent][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeInlineAgent.html
    #
    # @option params [String] :agent_name
    #   The name for the agent.
    #
    # @option params [required, String] :session_id
    #   The unique identifier of the session. Use the same value across
    #   requests to continue the same conversation.
    #
    # @option params [Boolean] :end_session
    #   Specifies whether to end the session with the inline agent or not.
    #
    # @option params [Boolean] :enable_trace
    #   Specifies whether to turn on the trace or not to track the agent's
    #   reasoning process. For more information, see [Using trace][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/trace-events.html
    #
    # @option params [String] :input_text
    #   The prompt text to send to the agent.
    #
    #   <note markdown="1"> If you include `returnControlInvocationResults` in the `sessionState`
    #   field, the `inputText` field will be ignored.
    #
    #    </note>
    #
    # @option params [Types::StreamingConfigurations] :streaming_configurations
    #   Specifies the configurations for streaming.
    #
    #   <note markdown="1"> To use agent streaming, you need permissions to perform the
    #   `bedrock:InvokeModelWithResponseStream` action.
    #
    #    </note>
    #
    # @option params [Types::PromptCreationConfigurations] :prompt_creation_configurations
    #   Specifies parameters that control how the service populates the agent
    #   prompt for an `InvokeInlineAgent` request. You can control which
    #   aspects of previous invocations in the same agent session the service
    #   uses to populate the agent prompt. This gives you more granular
    #   control over the contextual history that is used to process the
    #   current request.
    #
    # @option params [Types::InlineSessionState] :inline_session_state
    #   Parameters that specify the various attributes of a sessions. You can
    #   include attributes for the session or prompt or, if you configured an
    #   action group to return control, results from invocation of the action
    #   group. For more information, see [Control session context][1].
    #
    #   <note markdown="1"> If you include `returnControlInvocationResults` in the `sessionState`
    #   field, the `inputText` field will be ignored.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-session-state.html
    #
    # @option params [Array<Types::Collaborator>] :collaborators
    #   List of collaborator inline agents.
    #
    # @option params [Types::InlineBedrockModelConfigurations] :bedrock_model_configurations
    #   Model settings for the request.
    #
    # @option params [String] :orchestration_type
    #   Specifies the type of orchestration strategy for the agent. This is
    #   set to DEFAULT orchestration type, by default.
    #
    # @option params [Types::CustomOrchestration] :custom_orchestration
    #   Contains details of the custom orchestration configured for the agent.
    #
    # @return [Types::InvokeInlineAgentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvokeInlineAgentResponse#completion #completion} => Types::InlineAgentResponseStream
    #   * {Types::InvokeInlineAgentResponse#content_type #content_type} => String
    #   * {Types::InvokeInlineAgentResponse#session_id #session_id} => String
    #
    # @example EventStream Operation Example
    #
    #   # You can process the event once it arrives immediately, or wait until the
    #   # full response is complete and iterate through the eventstream enumerator.
    #
    #   # To interact with event immediately, you need to register invoke_inline_agent
    #   # with callbacks. Callbacks can be registered for specific events or for all
    #   # events, including error events.
    #
    #   # Callbacks can be passed into the `:event_stream_handler` option or within a
    #   # block statement attached to the #invoke_inline_agent call directly. Hybrid
    #   # pattern of both is also supported.
    #
    #   # `:event_stream_handler` option takes in either a Proc object or
    #   # Aws::BedrockAgentRuntime::EventStreams::InlineAgentResponseStream object.
    #
    #   # Usage pattern a): Callbacks with a block attached to #invoke_inline_agent
    #   # Example for registering callbacks for all event types and an error event
    #   client.invoke_inline_agent(
    #     # params input
    #   ) do |stream|
    #     stream.on_error_event do |event|
    #       # catch unmodeled error event in the stream
    #       raise event
    #       # => Aws::Errors::EventError
    #       # event.event_type => :error
    #       # event.error_code => String
    #       # event.error_message => String
    #     end
    #
    #     stream.on_event do |event|
    #       # process all events arrive
    #       puts event.event_type
    #       # ...
    #     end
    #   end
    #
    #   # Usage pattern b): Pass in `:event_stream_handler` for #invoke_inline_agent
    #   #  1) Create a Aws::BedrockAgentRuntime::EventStreams::InlineAgentResponseStream object
    #   #  Example for registering callbacks with specific events
    #
    #   handler = Aws::BedrockAgentRuntime::EventStreams::InlineAgentResponseStream.new
    #   handler.on_chunk_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::chunk
    #   end
    #   handler.on_trace_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::trace
    #   end
    #   handler.on_return_control_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::returnControl
    #   end
    #   handler.on_internal_server_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::internalServerException
    #   end
    #   handler.on_validation_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::validationException
    #   end
    #   handler.on_resource_not_found_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::resourceNotFoundException
    #   end
    #   handler.on_service_quota_exceeded_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::serviceQuotaExceededException
    #   end
    #   handler.on_throttling_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::throttlingException
    #   end
    #   handler.on_access_denied_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::accessDeniedException
    #   end
    #   handler.on_conflict_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::conflictException
    #   end
    #   handler.on_dependency_failed_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::dependencyFailedException
    #   end
    #   handler.on_bad_gateway_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::badGatewayException
    #   end
    #   handler.on_files_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::files
    #   end
    #
    #   client.invoke_inline_agent(
    #     # params inputs
    #     event_stream_handler: handler
    #   )
    #
    #   #  2) Use a Ruby Proc object
    #   #  Example for registering callbacks with specific events
    #   handler = Proc.new do |stream|
    #     stream.on_chunk_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::chunk
    #     end
    #     stream.on_trace_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::trace
    #     end
    #     stream.on_return_control_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::returnControl
    #     end
    #     stream.on_internal_server_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::internalServerException
    #     end
    #     stream.on_validation_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::validationException
    #     end
    #     stream.on_resource_not_found_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::resourceNotFoundException
    #     end
    #     stream.on_service_quota_exceeded_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::serviceQuotaExceededException
    #     end
    #     stream.on_throttling_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::throttlingException
    #     end
    #     stream.on_access_denied_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::accessDeniedException
    #     end
    #     stream.on_conflict_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::conflictException
    #     end
    #     stream.on_dependency_failed_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::dependencyFailedException
    #     end
    #     stream.on_bad_gateway_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::badGatewayException
    #     end
    #     stream.on_files_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::files
    #     end
    #   end
    #
    #   client.invoke_inline_agent(
    #     # params inputs
    #     event_stream_handler: handler
    #   )
    #
    #   #  Usage pattern c): Hybrid pattern of a) and b)
    #   handler = Aws::BedrockAgentRuntime::EventStreams::InlineAgentResponseStream.new
    #   handler.on_chunk_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::chunk
    #   end
    #   handler.on_trace_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::trace
    #   end
    #   handler.on_return_control_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::returnControl
    #   end
    #   handler.on_internal_server_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::internalServerException
    #   end
    #   handler.on_validation_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::validationException
    #   end
    #   handler.on_resource_not_found_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::resourceNotFoundException
    #   end
    #   handler.on_service_quota_exceeded_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::serviceQuotaExceededException
    #   end
    #   handler.on_throttling_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::throttlingException
    #   end
    #   handler.on_access_denied_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::accessDeniedException
    #   end
    #   handler.on_conflict_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::conflictException
    #   end
    #   handler.on_dependency_failed_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::dependencyFailedException
    #   end
    #   handler.on_bad_gateway_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::badGatewayException
    #   end
    #   handler.on_files_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::files
    #   end
    #
    #   client.invoke_inline_agent(
    #     # params input
    #     event_stream_handler: handler
    #   ) do |stream|
    #     stream.on_error_event do |event|
    #       # catch unmodeled error event in the stream
    #       raise event
    #       # => Aws::Errors::EventError
    #       # event.event_type => :error
    #       # event.error_code => String
    #       # event.error_message => String
    #     end
    #   end
    #
    #   # You can also iterate through events after the response complete.
    #   # Events are available at
    #   resp.completion # => Enumerator
    #   # For parameter input example, please refer to following request syntax.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke_inline_agent({
    #     customer_encryption_key_arn: "KmsKeyArn",
    #     foundation_model: "ModelIdentifier", # required
    #     instruction: "Instruction", # required
    #     idle_session_ttl_in_seconds: 1,
    #     action_groups: [
    #       {
    #         action_group_name: "ResourceName", # required
    #         description: "ResourceDescription",
    #         parent_action_group_signature: "AMAZON.UserInput", # accepts AMAZON.UserInput, AMAZON.CodeInterpreter, ANTHROPIC.Computer, ANTHROPIC.Bash, ANTHROPIC.TextEditor
    #         action_group_executor: {
    #           lambda: "LambdaResourceArn",
    #           custom_control: "RETURN_CONTROL", # accepts RETURN_CONTROL
    #         },
    #         api_schema: {
    #           s3: {
    #             s3_bucket_name: "S3BucketName",
    #             s3_object_key: "S3ObjectKey",
    #           },
    #           payload: "Payload",
    #         },
    #         function_schema: {
    #           functions: [
    #             {
    #               name: "ResourceName", # required
    #               description: "FunctionDescription",
    #               parameters: {
    #                 "ParameterName" => {
    #                   description: "ParameterDescription",
    #                   type: "string", # required, accepts string, number, integer, boolean, array
    #                   required: false,
    #                 },
    #               },
    #               require_confirmation: "ENABLED", # accepts ENABLED, DISABLED
    #             },
    #           ],
    #         },
    #         parent_action_group_signature_params: {
    #           "ActionGroupSignatureParamsKeyString" => "ActionGroupSignatureParamsValueString",
    #         },
    #       },
    #     ],
    #     knowledge_bases: [
    #       {
    #         knowledge_base_id: "KnowledgeBaseId", # required
    #         description: "ResourceDescription", # required
    #         retrieval_configuration: {
    #           vector_search_configuration: { # required
    #             number_of_results: 1,
    #             override_search_type: "HYBRID", # accepts HYBRID, SEMANTIC
    #             filter: {
    #               equals: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               not_equals: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               greater_than: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               greater_than_or_equals: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               less_than: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               less_than_or_equals: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               in: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               not_in: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               starts_with: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               list_contains: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               string_contains: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               and_all: [
    #                 {
    #                   # recursive RetrievalFilter
    #                 },
    #               ],
    #               or_all: [
    #                 {
    #                   # recursive RetrievalFilter
    #                 },
    #               ],
    #             },
    #             reranking_configuration: {
    #               type: "BEDROCK_RERANKING_MODEL", # required, accepts BEDROCK_RERANKING_MODEL
    #               bedrock_reranking_configuration: {
    #                 model_configuration: { # required
    #                   model_arn: "BedrockRerankingModelArn", # required
    #                   additional_model_request_fields: {
    #                     "AdditionalModelRequestFieldsKey" => {
    #                     },
    #                   },
    #                 },
    #                 number_of_reranked_results: 1,
    #                 metadata_configuration: {
    #                   selection_mode: "SELECTIVE", # required, accepts SELECTIVE, ALL
    #                   selective_mode_configuration: {
    #                     fields_to_include: [
    #                       {
    #                         field_name: "FieldForRerankingFieldNameString", # required
    #                       },
    #                     ],
    #                     fields_to_exclude: [
    #                       {
    #                         field_name: "FieldForRerankingFieldNameString", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #               },
    #             },
    #             implicit_filter_configuration: {
    #               metadata_attributes: [ # required
    #                 {
    #                   key: "MetadataAttributeSchemaKeyString", # required
    #                   type: "STRING", # required, accepts STRING, NUMBER, BOOLEAN, STRING_LIST
    #                   description: "MetadataAttributeSchemaDescriptionString", # required
    #                 },
    #               ],
    #               model_arn: "BedrockModelArn", # required
    #             },
    #           },
    #         },
    #       },
    #     ],
    #     guardrail_configuration: {
    #       guardrail_identifier: "GuardrailIdentifierWithArn", # required
    #       guardrail_version: "GuardrailVersion", # required
    #     },
    #     prompt_override_configuration: {
    #       prompt_configurations: [ # required
    #         {
    #           prompt_type: "PRE_PROCESSING", # accepts PRE_PROCESSING, ORCHESTRATION, KNOWLEDGE_BASE_RESPONSE_GENERATION, POST_PROCESSING, ROUTING_CLASSIFIER
    #           prompt_creation_mode: "DEFAULT", # accepts DEFAULT, OVERRIDDEN
    #           prompt_state: "ENABLED", # accepts ENABLED, DISABLED
    #           base_prompt_template: "BasePromptTemplate",
    #           inference_configuration: {
    #             temperature: 1.0,
    #             top_p: 1.0,
    #             top_k: 1,
    #             maximum_length: 1,
    #             stop_sequences: ["String"],
    #           },
    #           parser_mode: "DEFAULT", # accepts DEFAULT, OVERRIDDEN
    #           foundation_model: "ModelIdentifier",
    #           additional_model_request_fields: {
    #           },
    #         },
    #       ],
    #       override_lambda: "LambdaResourceArn",
    #     },
    #     agent_collaboration: "SUPERVISOR", # accepts SUPERVISOR, SUPERVISOR_ROUTER, DISABLED
    #     collaborator_configurations: [
    #       {
    #         collaborator_name: "Name", # required
    #         collaborator_instruction: "CollaborationInstruction", # required
    #         agent_alias_arn: "AgentAliasArn",
    #         relay_conversation_history: "TO_COLLABORATOR", # accepts TO_COLLABORATOR, DISABLED
    #       },
    #     ],
    #     agent_name: "Name",
    #     session_id: "SessionId", # required
    #     end_session: false,
    #     enable_trace: false,
    #     input_text: "InputText",
    #     streaming_configurations: {
    #       stream_final_response: false,
    #       apply_guardrail_interval: 1,
    #     },
    #     prompt_creation_configurations: {
    #       previous_conversation_turns_to_include: 1,
    #       exclude_previous_thinking_steps: false,
    #     },
    #     inline_session_state: {
    #       session_attributes: {
    #         "String" => "String",
    #       },
    #       prompt_session_attributes: {
    #         "String" => "String",
    #       },
    #       return_control_invocation_results: [
    #         {
    #           api_result: {
    #             action_group: "String", # required
    #             http_method: "String",
    #             api_path: "ApiPath",
    #             confirmation_state: "CONFIRM", # accepts CONFIRM, DENY
    #             response_state: "FAILURE", # accepts FAILURE, REPROMPT
    #             http_status_code: 1,
    #             response_body: {
    #               "String" => {
    #                 body: "String",
    #                 images: [
    #                   {
    #                     format: "png", # required, accepts png, jpeg, gif, webp
    #                     source: { # required
    #                       bytes: "data",
    #                     },
    #                   },
    #                 ],
    #               },
    #             },
    #             agent_id: "String",
    #           },
    #           function_result: {
    #             action_group: "String", # required
    #             confirmation_state: "CONFIRM", # accepts CONFIRM, DENY
    #             function: "String",
    #             response_body: {
    #               "String" => {
    #                 body: "String",
    #                 images: [
    #                   {
    #                     format: "png", # required, accepts png, jpeg, gif, webp
    #                     source: { # required
    #                       bytes: "data",
    #                     },
    #                   },
    #                 ],
    #               },
    #             },
    #             response_state: "FAILURE", # accepts FAILURE, REPROMPT
    #             agent_id: "String",
    #           },
    #         },
    #       ],
    #       invocation_id: "String",
    #       files: [
    #         {
    #           name: "String", # required
    #           source: { # required
    #             source_type: "S3", # required, accepts S3, BYTE_CONTENT
    #             s3_location: {
    #               uri: "S3Uri", # required
    #             },
    #             byte_content: {
    #               media_type: "MimeType", # required
    #               data: "data", # required
    #             },
    #           },
    #           use_case: "CODE_INTERPRETER", # required, accepts CODE_INTERPRETER, CHAT
    #         },
    #       ],
    #       conversation_history: {
    #         messages: [
    #           {
    #             role: "user", # required, accepts user, assistant
    #             content: [ # required
    #               {
    #                 text: "String",
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #     },
    #     collaborators: [
    #       {
    #         customer_encryption_key_arn: "KmsKeyArn",
    #         foundation_model: "ModelIdentifier", # required
    #         instruction: "Instruction", # required
    #         idle_session_ttl_in_seconds: 1,
    #         action_groups: [
    #           {
    #             action_group_name: "ResourceName", # required
    #             description: "ResourceDescription",
    #             parent_action_group_signature: "AMAZON.UserInput", # accepts AMAZON.UserInput, AMAZON.CodeInterpreter, ANTHROPIC.Computer, ANTHROPIC.Bash, ANTHROPIC.TextEditor
    #             action_group_executor: {
    #               lambda: "LambdaResourceArn",
    #               custom_control: "RETURN_CONTROL", # accepts RETURN_CONTROL
    #             },
    #             api_schema: {
    #               s3: {
    #                 s3_bucket_name: "S3BucketName",
    #                 s3_object_key: "S3ObjectKey",
    #               },
    #               payload: "Payload",
    #             },
    #             function_schema: {
    #               functions: [
    #                 {
    #                   name: "ResourceName", # required
    #                   description: "FunctionDescription",
    #                   parameters: {
    #                     "ParameterName" => {
    #                       description: "ParameterDescription",
    #                       type: "string", # required, accepts string, number, integer, boolean, array
    #                       required: false,
    #                     },
    #                   },
    #                   require_confirmation: "ENABLED", # accepts ENABLED, DISABLED
    #                 },
    #               ],
    #             },
    #             parent_action_group_signature_params: {
    #               "ActionGroupSignatureParamsKeyString" => "ActionGroupSignatureParamsValueString",
    #             },
    #           },
    #         ],
    #         knowledge_bases: [
    #           {
    #             knowledge_base_id: "KnowledgeBaseId", # required
    #             description: "ResourceDescription", # required
    #             retrieval_configuration: {
    #               vector_search_configuration: { # required
    #                 number_of_results: 1,
    #                 override_search_type: "HYBRID", # accepts HYBRID, SEMANTIC
    #                 filter: {
    #                   equals: {
    #                     key: "FilterKey", # required
    #                     value: { # required
    #                     },
    #                   },
    #                   not_equals: {
    #                     key: "FilterKey", # required
    #                     value: { # required
    #                     },
    #                   },
    #                   greater_than: {
    #                     key: "FilterKey", # required
    #                     value: { # required
    #                     },
    #                   },
    #                   greater_than_or_equals: {
    #                     key: "FilterKey", # required
    #                     value: { # required
    #                     },
    #                   },
    #                   less_than: {
    #                     key: "FilterKey", # required
    #                     value: { # required
    #                     },
    #                   },
    #                   less_than_or_equals: {
    #                     key: "FilterKey", # required
    #                     value: { # required
    #                     },
    #                   },
    #                   in: {
    #                     key: "FilterKey", # required
    #                     value: { # required
    #                     },
    #                   },
    #                   not_in: {
    #                     key: "FilterKey", # required
    #                     value: { # required
    #                     },
    #                   },
    #                   starts_with: {
    #                     key: "FilterKey", # required
    #                     value: { # required
    #                     },
    #                   },
    #                   list_contains: {
    #                     key: "FilterKey", # required
    #                     value: { # required
    #                     },
    #                   },
    #                   string_contains: {
    #                     key: "FilterKey", # required
    #                     value: { # required
    #                     },
    #                   },
    #                   and_all: [
    #                     {
    #                       # recursive RetrievalFilter
    #                     },
    #                   ],
    #                   or_all: [
    #                     {
    #                       # recursive RetrievalFilter
    #                     },
    #                   ],
    #                 },
    #                 reranking_configuration: {
    #                   type: "BEDROCK_RERANKING_MODEL", # required, accepts BEDROCK_RERANKING_MODEL
    #                   bedrock_reranking_configuration: {
    #                     model_configuration: { # required
    #                       model_arn: "BedrockRerankingModelArn", # required
    #                       additional_model_request_fields: {
    #                         "AdditionalModelRequestFieldsKey" => {
    #                         },
    #                       },
    #                     },
    #                     number_of_reranked_results: 1,
    #                     metadata_configuration: {
    #                       selection_mode: "SELECTIVE", # required, accepts SELECTIVE, ALL
    #                       selective_mode_configuration: {
    #                         fields_to_include: [
    #                           {
    #                             field_name: "FieldForRerankingFieldNameString", # required
    #                           },
    #                         ],
    #                         fields_to_exclude: [
    #                           {
    #                             field_name: "FieldForRerankingFieldNameString", # required
    #                           },
    #                         ],
    #                       },
    #                     },
    #                   },
    #                 },
    #                 implicit_filter_configuration: {
    #                   metadata_attributes: [ # required
    #                     {
    #                       key: "MetadataAttributeSchemaKeyString", # required
    #                       type: "STRING", # required, accepts STRING, NUMBER, BOOLEAN, STRING_LIST
    #                       description: "MetadataAttributeSchemaDescriptionString", # required
    #                     },
    #                   ],
    #                   model_arn: "BedrockModelArn", # required
    #                 },
    #               },
    #             },
    #           },
    #         ],
    #         guardrail_configuration: {
    #           guardrail_identifier: "GuardrailIdentifierWithArn", # required
    #           guardrail_version: "GuardrailVersion", # required
    #         },
    #         prompt_override_configuration: {
    #           prompt_configurations: [ # required
    #             {
    #               prompt_type: "PRE_PROCESSING", # accepts PRE_PROCESSING, ORCHESTRATION, KNOWLEDGE_BASE_RESPONSE_GENERATION, POST_PROCESSING, ROUTING_CLASSIFIER
    #               prompt_creation_mode: "DEFAULT", # accepts DEFAULT, OVERRIDDEN
    #               prompt_state: "ENABLED", # accepts ENABLED, DISABLED
    #               base_prompt_template: "BasePromptTemplate",
    #               inference_configuration: {
    #                 temperature: 1.0,
    #                 top_p: 1.0,
    #                 top_k: 1,
    #                 maximum_length: 1,
    #                 stop_sequences: ["String"],
    #               },
    #               parser_mode: "DEFAULT", # accepts DEFAULT, OVERRIDDEN
    #               foundation_model: "ModelIdentifier",
    #               additional_model_request_fields: {
    #               },
    #             },
    #           ],
    #           override_lambda: "LambdaResourceArn",
    #         },
    #         agent_collaboration: "SUPERVISOR", # accepts SUPERVISOR, SUPERVISOR_ROUTER, DISABLED
    #         collaborator_configurations: [
    #           {
    #             collaborator_name: "Name", # required
    #             collaborator_instruction: "CollaborationInstruction", # required
    #             agent_alias_arn: "AgentAliasArn",
    #             relay_conversation_history: "TO_COLLABORATOR", # accepts TO_COLLABORATOR, DISABLED
    #           },
    #         ],
    #         agent_name: "Name",
    #       },
    #     ],
    #     bedrock_model_configurations: {
    #       performance_config: {
    #         latency: "standard", # accepts standard, optimized
    #       },
    #     },
    #     orchestration_type: "DEFAULT", # accepts DEFAULT, CUSTOM_ORCHESTRATION
    #     custom_orchestration: {
    #       executor: {
    #         lambda: "LambdaArn",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   # All events are available at resp.completion:
    #   resp.completion #=> Enumerator
    #   resp.completion.event_types #=> [:chunk, :trace, :return_control, :internal_server_exception, :validation_exception, :resource_not_found_exception, :service_quota_exceeded_exception, :throttling_exception, :access_denied_exception, :conflict_exception, :dependency_failed_exception, :bad_gateway_exception, :files]
    #
    #   # For :chunk event available at #on_chunk_event callback and response eventstream enumerator:
    #   event.bytes #=> String
    #   event.attribution.citations #=> Array
    #   event.attribution.citations[0].generated_response_part.text_response_part.text #=> String
    #   event.attribution.citations[0].generated_response_part.text_response_part.span.start #=> Integer
    #   event.attribution.citations[0].generated_response_part.text_response_part.span.end #=> Integer
    #   event.attribution.citations[0].retrieved_references #=> Array
    #   event.attribution.citations[0].retrieved_references[0].content.type #=> String, one of "TEXT", "IMAGE", "ROW"
    #   event.attribution.citations[0].retrieved_references[0].content.text #=> String
    #   event.attribution.citations[0].retrieved_references[0].content.byte_content #=> String
    #   event.attribution.citations[0].retrieved_references[0].content.row #=> Array
    #   event.attribution.citations[0].retrieved_references[0].content.row[0].column_name #=> String
    #   event.attribution.citations[0].retrieved_references[0].content.row[0].column_value #=> String
    #   event.attribution.citations[0].retrieved_references[0].content.row[0].type #=> String, one of "BLOB", "BOOLEAN", "DOUBLE", "NULL", "LONG", "STRING"
    #   event.attribution.citations[0].retrieved_references[0].location.type #=> String, one of "S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "KENDRA", "SQL"
    #   event.attribution.citations[0].retrieved_references[0].location.s3_location.uri #=> String
    #   event.attribution.citations[0].retrieved_references[0].location.web_location.url #=> String
    #   event.attribution.citations[0].retrieved_references[0].location.confluence_location.url #=> String
    #   event.attribution.citations[0].retrieved_references[0].location.salesforce_location.url #=> String
    #   event.attribution.citations[0].retrieved_references[0].location.share_point_location.url #=> String
    #   event.attribution.citations[0].retrieved_references[0].location.custom_document_location.id #=> String
    #   event.attribution.citations[0].retrieved_references[0].location.kendra_document_location.uri #=> String
    #   event.attribution.citations[0].retrieved_references[0].location.sql_location.query #=> String
    #   event.attribution.citations[0].retrieved_references[0].metadata #=> Hash
    #
    #   # For :trace event available at #on_trace_event callback and response eventstream enumerator:
    #   event.session_id #=> String
    #   event.trace.guardrail_trace.action #=> String, one of "INTERVENED", "NONE"
    #   event.trace.guardrail_trace.trace_id #=> String
    #   event.trace.guardrail_trace.input_assessments #=> Array
    #   event.trace.guardrail_trace.input_assessments[0].topic_policy.topics #=> Array
    #   event.trace.guardrail_trace.input_assessments[0].topic_policy.topics[0].name #=> String
    #   event.trace.guardrail_trace.input_assessments[0].topic_policy.topics[0].type #=> String, one of "DENY"
    #   event.trace.guardrail_trace.input_assessments[0].topic_policy.topics[0].action #=> String, one of "BLOCKED"
    #   event.trace.guardrail_trace.input_assessments[0].content_policy.filters #=> Array
    #   event.trace.guardrail_trace.input_assessments[0].content_policy.filters[0].type #=> String, one of "INSULTS", "HATE", "SEXUAL", "VIOLENCE", "MISCONDUCT", "PROMPT_ATTACK"
    #   event.trace.guardrail_trace.input_assessments[0].content_policy.filters[0].confidence #=> String, one of "NONE", "LOW", "MEDIUM", "HIGH"
    #   event.trace.guardrail_trace.input_assessments[0].content_policy.filters[0].action #=> String, one of "BLOCKED"
    #   event.trace.guardrail_trace.input_assessments[0].word_policy.custom_words #=> Array
    #   event.trace.guardrail_trace.input_assessments[0].word_policy.custom_words[0].match #=> String
    #   event.trace.guardrail_trace.input_assessments[0].word_policy.custom_words[0].action #=> String, one of "BLOCKED"
    #   event.trace.guardrail_trace.input_assessments[0].word_policy.managed_word_lists #=> Array
    #   event.trace.guardrail_trace.input_assessments[0].word_policy.managed_word_lists[0].match #=> String
    #   event.trace.guardrail_trace.input_assessments[0].word_policy.managed_word_lists[0].type #=> String, one of "PROFANITY"
    #   event.trace.guardrail_trace.input_assessments[0].word_policy.managed_word_lists[0].action #=> String, one of "BLOCKED"
    #   event.trace.guardrail_trace.input_assessments[0].sensitive_information_policy.pii_entities #=> Array
    #   event.trace.guardrail_trace.input_assessments[0].sensitive_information_policy.pii_entities[0].type #=> String, one of "ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"
    #   event.trace.guardrail_trace.input_assessments[0].sensitive_information_policy.pii_entities[0].match #=> String
    #   event.trace.guardrail_trace.input_assessments[0].sensitive_information_policy.pii_entities[0].action #=> String, one of "BLOCKED", "ANONYMIZED"
    #   event.trace.guardrail_trace.input_assessments[0].sensitive_information_policy.regexes #=> Array
    #   event.trace.guardrail_trace.input_assessments[0].sensitive_information_policy.regexes[0].name #=> String
    #   event.trace.guardrail_trace.input_assessments[0].sensitive_information_policy.regexes[0].regex #=> String
    #   event.trace.guardrail_trace.input_assessments[0].sensitive_information_policy.regexes[0].match #=> String
    #   event.trace.guardrail_trace.input_assessments[0].sensitive_information_policy.regexes[0].action #=> String, one of "BLOCKED", "ANONYMIZED"
    #   event.trace.guardrail_trace.output_assessments #=> Array
    #   event.trace.guardrail_trace.output_assessments[0].topic_policy.topics #=> Array
    #   event.trace.guardrail_trace.output_assessments[0].topic_policy.topics[0].name #=> String
    #   event.trace.guardrail_trace.output_assessments[0].topic_policy.topics[0].type #=> String, one of "DENY"
    #   event.trace.guardrail_trace.output_assessments[0].topic_policy.topics[0].action #=> String, one of "BLOCKED"
    #   event.trace.guardrail_trace.output_assessments[0].content_policy.filters #=> Array
    #   event.trace.guardrail_trace.output_assessments[0].content_policy.filters[0].type #=> String, one of "INSULTS", "HATE", "SEXUAL", "VIOLENCE", "MISCONDUCT", "PROMPT_ATTACK"
    #   event.trace.guardrail_trace.output_assessments[0].content_policy.filters[0].confidence #=> String, one of "NONE", "LOW", "MEDIUM", "HIGH"
    #   event.trace.guardrail_trace.output_assessments[0].content_policy.filters[0].action #=> String, one of "BLOCKED"
    #   event.trace.guardrail_trace.output_assessments[0].word_policy.custom_words #=> Array
    #   event.trace.guardrail_trace.output_assessments[0].word_policy.custom_words[0].match #=> String
    #   event.trace.guardrail_trace.output_assessments[0].word_policy.custom_words[0].action #=> String, one of "BLOCKED"
    #   event.trace.guardrail_trace.output_assessments[0].word_policy.managed_word_lists #=> Array
    #   event.trace.guardrail_trace.output_assessments[0].word_policy.managed_word_lists[0].match #=> String
    #   event.trace.guardrail_trace.output_assessments[0].word_policy.managed_word_lists[0].type #=> String, one of "PROFANITY"
    #   event.trace.guardrail_trace.output_assessments[0].word_policy.managed_word_lists[0].action #=> String, one of "BLOCKED"
    #   event.trace.guardrail_trace.output_assessments[0].sensitive_information_policy.pii_entities #=> Array
    #   event.trace.guardrail_trace.output_assessments[0].sensitive_information_policy.pii_entities[0].type #=> String, one of "ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"
    #   event.trace.guardrail_trace.output_assessments[0].sensitive_information_policy.pii_entities[0].match #=> String
    #   event.trace.guardrail_trace.output_assessments[0].sensitive_information_policy.pii_entities[0].action #=> String, one of "BLOCKED", "ANONYMIZED"
    #   event.trace.guardrail_trace.output_assessments[0].sensitive_information_policy.regexes #=> Array
    #   event.trace.guardrail_trace.output_assessments[0].sensitive_information_policy.regexes[0].name #=> String
    #   event.trace.guardrail_trace.output_assessments[0].sensitive_information_policy.regexes[0].regex #=> String
    #   event.trace.guardrail_trace.output_assessments[0].sensitive_information_policy.regexes[0].match #=> String
    #   event.trace.guardrail_trace.output_assessments[0].sensitive_information_policy.regexes[0].action #=> String, one of "BLOCKED", "ANONYMIZED"
    #   event.trace.guardrail_trace.metadata.start_time #=> Time
    #   event.trace.guardrail_trace.metadata.end_time #=> Time
    #   event.trace.guardrail_trace.metadata.total_time_ms #=> Integer
    #   event.trace.guardrail_trace.metadata.operation_total_time_ms #=> Integer
    #   event.trace.guardrail_trace.metadata.client_request_id #=> String
    #   event.trace.guardrail_trace.metadata.usage.input_tokens #=> Integer
    #   event.trace.guardrail_trace.metadata.usage.output_tokens #=> Integer
    #   event.trace.pre_processing_trace.model_invocation_input.trace_id #=> String
    #   event.trace.pre_processing_trace.model_invocation_input.text #=> String
    #   event.trace.pre_processing_trace.model_invocation_input.type #=> String, one of "PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"
    #   event.trace.pre_processing_trace.model_invocation_input.override_lambda #=> String
    #   event.trace.pre_processing_trace.model_invocation_input.prompt_creation_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.pre_processing_trace.model_invocation_input.inference_configuration.temperature #=> Float
    #   event.trace.pre_processing_trace.model_invocation_input.inference_configuration.top_p #=> Float
    #   event.trace.pre_processing_trace.model_invocation_input.inference_configuration.top_k #=> Integer
    #   event.trace.pre_processing_trace.model_invocation_input.inference_configuration.maximum_length #=> Integer
    #   event.trace.pre_processing_trace.model_invocation_input.inference_configuration.stop_sequences #=> Array
    #   event.trace.pre_processing_trace.model_invocation_input.inference_configuration.stop_sequences[0] #=> String
    #   event.trace.pre_processing_trace.model_invocation_input.parser_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.pre_processing_trace.model_invocation_input.foundation_model #=> String
    #   event.trace.pre_processing_trace.model_invocation_output.trace_id #=> String
    #   event.trace.pre_processing_trace.model_invocation_output.parsed_response.rationale #=> String
    #   event.trace.pre_processing_trace.model_invocation_output.parsed_response.is_valid #=> Boolean
    #   event.trace.pre_processing_trace.model_invocation_output.raw_response.content #=> String
    #   event.trace.pre_processing_trace.model_invocation_output.metadata.start_time #=> Time
    #   event.trace.pre_processing_trace.model_invocation_output.metadata.end_time #=> Time
    #   event.trace.pre_processing_trace.model_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.pre_processing_trace.model_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.pre_processing_trace.model_invocation_output.metadata.client_request_id #=> String
    #   event.trace.pre_processing_trace.model_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.pre_processing_trace.model_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.pre_processing_trace.model_invocation_output.reasoning_content.reasoning_text.text #=> String
    #   event.trace.pre_processing_trace.model_invocation_output.reasoning_content.reasoning_text.signature #=> String
    #   event.trace.pre_processing_trace.model_invocation_output.reasoning_content.redacted_content #=> String
    #   event.trace.orchestration_trace.rationale.trace_id #=> String
    #   event.trace.orchestration_trace.rationale.text #=> String
    #   event.trace.orchestration_trace.invocation_input.trace_id #=> String
    #   event.trace.orchestration_trace.invocation_input.invocation_type #=> String, one of "ACTION_GROUP", "KNOWLEDGE_BASE", "FINISH", "ACTION_GROUP_CODE_INTERPRETER", "AGENT_COLLABORATOR"
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.action_group_name #=> String
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.verb #=> String
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.api_path #=> String
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.parameters #=> Array
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.parameters[0].name #=> String
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.parameters[0].type #=> String
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.parameters[0].value #=> String
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.request_body.content #=> Hash
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.request_body.content["String"] #=> Array
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.request_body.content["String"][0].name #=> String
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.request_body.content["String"][0].type #=> String
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.request_body.content["String"][0].value #=> String
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.function #=> String
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.execution_type #=> String, one of "LAMBDA", "RETURN_CONTROL"
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.invocation_id #=> String
    #   event.trace.orchestration_trace.invocation_input.knowledge_base_lookup_input.text #=> String
    #   event.trace.orchestration_trace.invocation_input.knowledge_base_lookup_input.knowledge_base_id #=> String
    #   event.trace.orchestration_trace.invocation_input.code_interpreter_invocation_input.code #=> String
    #   event.trace.orchestration_trace.invocation_input.code_interpreter_invocation_input.files #=> Array
    #   event.trace.orchestration_trace.invocation_input.code_interpreter_invocation_input.files[0] #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.agent_collaborator_name #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.agent_collaborator_alias_arn #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.type #=> String, one of "TEXT", "RETURN_CONTROL"
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.text #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.invocation_id #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results #=> Array
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.action_group #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.http_method #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.api_path #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.confirmation_state #=> String, one of "CONFIRM", "DENY"
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_state #=> String, one of "FAILURE", "REPROMPT"
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.http_status_code #=> Integer
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body #=> Hash
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].body #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].images #=> Array
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].images[0].format #=> String, one of "png", "jpeg", "gif", "webp"
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].images[0].source.bytes #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.agent_id #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.action_group #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.confirmation_state #=> String, one of "CONFIRM", "DENY"
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.function #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body #=> Hash
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].body #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].images #=> Array
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].images[0].format #=> String, one of "png", "jpeg", "gif", "webp"
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].images[0].source.bytes #=> String
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_state #=> String, one of "FAILURE", "REPROMPT"
    #   event.trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.agent_id #=> String
    #   event.trace.orchestration_trace.observation.trace_id #=> String
    #   event.trace.orchestration_trace.observation.type #=> String, one of "ACTION_GROUP", "AGENT_COLLABORATOR", "KNOWLEDGE_BASE", "FINISH", "ASK_USER", "REPROMPT"
    #   event.trace.orchestration_trace.observation.action_group_invocation_output.text #=> String
    #   event.trace.orchestration_trace.observation.action_group_invocation_output.metadata.start_time #=> Time
    #   event.trace.orchestration_trace.observation.action_group_invocation_output.metadata.end_time #=> Time
    #   event.trace.orchestration_trace.observation.action_group_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.orchestration_trace.observation.action_group_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.orchestration_trace.observation.action_group_invocation_output.metadata.client_request_id #=> String
    #   event.trace.orchestration_trace.observation.action_group_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.orchestration_trace.observation.action_group_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.agent_collaborator_name #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.agent_collaborator_alias_arn #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.type #=> String, one of "TEXT", "RETURN_CONTROL"
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.text #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs #=> Array
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.action_group #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.http_method #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.api_path #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters #=> Array
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters[0].name #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters[0].type #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters[0].value #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content #=> Hash
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties #=> Array
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].name #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].type #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].value #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.action_invocation_type #=> String, one of "RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.agent_id #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.collaborator_name #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.action_group #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters #=> Array
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters[0].name #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters[0].type #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters[0].value #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.function #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.action_invocation_type #=> String, one of "RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.agent_id #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.collaborator_name #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_id #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.metadata.start_time #=> Time
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.metadata.end_time #=> Time
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.metadata.client_request_id #=> String
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.orchestration_trace.observation.agent_collaborator_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references #=> Array
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.type #=> String, one of "TEXT", "IMAGE", "ROW"
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.text #=> String
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.byte_content #=> String
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row #=> Array
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row[0].column_name #=> String
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row[0].column_value #=> String
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row[0].type #=> String, one of "BLOB", "BOOLEAN", "DOUBLE", "NULL", "LONG", "STRING"
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.type #=> String, one of "S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "KENDRA", "SQL"
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.s3_location.uri #=> String
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.web_location.url #=> String
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.confluence_location.url #=> String
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.salesforce_location.url #=> String
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.share_point_location.url #=> String
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.custom_document_location.id #=> String
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.kendra_document_location.uri #=> String
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.sql_location.query #=> String
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].metadata #=> Hash
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.metadata.start_time #=> Time
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.metadata.end_time #=> Time
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.metadata.total_time_ms #=> Integer
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.metadata.client_request_id #=> String
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.orchestration_trace.observation.final_response.text #=> String
    #   event.trace.orchestration_trace.observation.final_response.metadata.start_time #=> Time
    #   event.trace.orchestration_trace.observation.final_response.metadata.end_time #=> Time
    #   event.trace.orchestration_trace.observation.final_response.metadata.total_time_ms #=> Integer
    #   event.trace.orchestration_trace.observation.final_response.metadata.operation_total_time_ms #=> Integer
    #   event.trace.orchestration_trace.observation.final_response.metadata.client_request_id #=> String
    #   event.trace.orchestration_trace.observation.final_response.metadata.usage.input_tokens #=> Integer
    #   event.trace.orchestration_trace.observation.final_response.metadata.usage.output_tokens #=> Integer
    #   event.trace.orchestration_trace.observation.reprompt_response.text #=> String
    #   event.trace.orchestration_trace.observation.reprompt_response.source #=> String, one of "ACTION_GROUP", "KNOWLEDGE_BASE", "PARSER"
    #   event.trace.orchestration_trace.observation.code_interpreter_invocation_output.execution_output #=> String
    #   event.trace.orchestration_trace.observation.code_interpreter_invocation_output.execution_error #=> String
    #   event.trace.orchestration_trace.observation.code_interpreter_invocation_output.files #=> Array
    #   event.trace.orchestration_trace.observation.code_interpreter_invocation_output.files[0] #=> String
    #   event.trace.orchestration_trace.observation.code_interpreter_invocation_output.execution_timeout #=> Boolean
    #   event.trace.orchestration_trace.observation.code_interpreter_invocation_output.metadata.start_time #=> Time
    #   event.trace.orchestration_trace.observation.code_interpreter_invocation_output.metadata.end_time #=> Time
    #   event.trace.orchestration_trace.observation.code_interpreter_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.orchestration_trace.observation.code_interpreter_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.orchestration_trace.observation.code_interpreter_invocation_output.metadata.client_request_id #=> String
    #   event.trace.orchestration_trace.observation.code_interpreter_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.orchestration_trace.observation.code_interpreter_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.orchestration_trace.model_invocation_input.trace_id #=> String
    #   event.trace.orchestration_trace.model_invocation_input.text #=> String
    #   event.trace.orchestration_trace.model_invocation_input.type #=> String, one of "PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"
    #   event.trace.orchestration_trace.model_invocation_input.override_lambda #=> String
    #   event.trace.orchestration_trace.model_invocation_input.prompt_creation_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.orchestration_trace.model_invocation_input.inference_configuration.temperature #=> Float
    #   event.trace.orchestration_trace.model_invocation_input.inference_configuration.top_p #=> Float
    #   event.trace.orchestration_trace.model_invocation_input.inference_configuration.top_k #=> Integer
    #   event.trace.orchestration_trace.model_invocation_input.inference_configuration.maximum_length #=> Integer
    #   event.trace.orchestration_trace.model_invocation_input.inference_configuration.stop_sequences #=> Array
    #   event.trace.orchestration_trace.model_invocation_input.inference_configuration.stop_sequences[0] #=> String
    #   event.trace.orchestration_trace.model_invocation_input.parser_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.orchestration_trace.model_invocation_input.foundation_model #=> String
    #   event.trace.orchestration_trace.model_invocation_output.trace_id #=> String
    #   event.trace.orchestration_trace.model_invocation_output.raw_response.content #=> String
    #   event.trace.orchestration_trace.model_invocation_output.metadata.start_time #=> Time
    #   event.trace.orchestration_trace.model_invocation_output.metadata.end_time #=> Time
    #   event.trace.orchestration_trace.model_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.orchestration_trace.model_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.orchestration_trace.model_invocation_output.metadata.client_request_id #=> String
    #   event.trace.orchestration_trace.model_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.orchestration_trace.model_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.orchestration_trace.model_invocation_output.reasoning_content.reasoning_text.text #=> String
    #   event.trace.orchestration_trace.model_invocation_output.reasoning_content.reasoning_text.signature #=> String
    #   event.trace.orchestration_trace.model_invocation_output.reasoning_content.redacted_content #=> String
    #   event.trace.post_processing_trace.model_invocation_input.trace_id #=> String
    #   event.trace.post_processing_trace.model_invocation_input.text #=> String
    #   event.trace.post_processing_trace.model_invocation_input.type #=> String, one of "PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"
    #   event.trace.post_processing_trace.model_invocation_input.override_lambda #=> String
    #   event.trace.post_processing_trace.model_invocation_input.prompt_creation_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.post_processing_trace.model_invocation_input.inference_configuration.temperature #=> Float
    #   event.trace.post_processing_trace.model_invocation_input.inference_configuration.top_p #=> Float
    #   event.trace.post_processing_trace.model_invocation_input.inference_configuration.top_k #=> Integer
    #   event.trace.post_processing_trace.model_invocation_input.inference_configuration.maximum_length #=> Integer
    #   event.trace.post_processing_trace.model_invocation_input.inference_configuration.stop_sequences #=> Array
    #   event.trace.post_processing_trace.model_invocation_input.inference_configuration.stop_sequences[0] #=> String
    #   event.trace.post_processing_trace.model_invocation_input.parser_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.post_processing_trace.model_invocation_input.foundation_model #=> String
    #   event.trace.post_processing_trace.model_invocation_output.trace_id #=> String
    #   event.trace.post_processing_trace.model_invocation_output.parsed_response.text #=> String
    #   event.trace.post_processing_trace.model_invocation_output.raw_response.content #=> String
    #   event.trace.post_processing_trace.model_invocation_output.metadata.start_time #=> Time
    #   event.trace.post_processing_trace.model_invocation_output.metadata.end_time #=> Time
    #   event.trace.post_processing_trace.model_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.post_processing_trace.model_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.post_processing_trace.model_invocation_output.metadata.client_request_id #=> String
    #   event.trace.post_processing_trace.model_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.post_processing_trace.model_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.post_processing_trace.model_invocation_output.reasoning_content.reasoning_text.text #=> String
    #   event.trace.post_processing_trace.model_invocation_output.reasoning_content.reasoning_text.signature #=> String
    #   event.trace.post_processing_trace.model_invocation_output.reasoning_content.redacted_content #=> String
    #   event.trace.routing_classifier_trace.invocation_input.trace_id #=> String
    #   event.trace.routing_classifier_trace.invocation_input.invocation_type #=> String, one of "ACTION_GROUP", "KNOWLEDGE_BASE", "FINISH", "ACTION_GROUP_CODE_INTERPRETER", "AGENT_COLLABORATOR"
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.action_group_name #=> String
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.verb #=> String
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.api_path #=> String
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.parameters #=> Array
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.parameters[0].name #=> String
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.parameters[0].type #=> String
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.parameters[0].value #=> String
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.request_body.content #=> Hash
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.request_body.content["String"] #=> Array
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.request_body.content["String"][0].name #=> String
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.request_body.content["String"][0].type #=> String
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.request_body.content["String"][0].value #=> String
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.function #=> String
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.execution_type #=> String, one of "LAMBDA", "RETURN_CONTROL"
    #   event.trace.routing_classifier_trace.invocation_input.action_group_invocation_input.invocation_id #=> String
    #   event.trace.routing_classifier_trace.invocation_input.knowledge_base_lookup_input.text #=> String
    #   event.trace.routing_classifier_trace.invocation_input.knowledge_base_lookup_input.knowledge_base_id #=> String
    #   event.trace.routing_classifier_trace.invocation_input.code_interpreter_invocation_input.code #=> String
    #   event.trace.routing_classifier_trace.invocation_input.code_interpreter_invocation_input.files #=> Array
    #   event.trace.routing_classifier_trace.invocation_input.code_interpreter_invocation_input.files[0] #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.agent_collaborator_name #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.agent_collaborator_alias_arn #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.type #=> String, one of "TEXT", "RETURN_CONTROL"
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.text #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.invocation_id #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results #=> Array
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.action_group #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.http_method #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.api_path #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.confirmation_state #=> String, one of "CONFIRM", "DENY"
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_state #=> String, one of "FAILURE", "REPROMPT"
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.http_status_code #=> Integer
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body #=> Hash
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].body #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].images #=> Array
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].images[0].format #=> String, one of "png", "jpeg", "gif", "webp"
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].images[0].source.bytes #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.agent_id #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.action_group #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.confirmation_state #=> String, one of "CONFIRM", "DENY"
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.function #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body #=> Hash
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].body #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].images #=> Array
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].images[0].format #=> String, one of "png", "jpeg", "gif", "webp"
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].images[0].source.bytes #=> String
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_state #=> String, one of "FAILURE", "REPROMPT"
    #   event.trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.agent_id #=> String
    #   event.trace.routing_classifier_trace.observation.trace_id #=> String
    #   event.trace.routing_classifier_trace.observation.type #=> String, one of "ACTION_GROUP", "AGENT_COLLABORATOR", "KNOWLEDGE_BASE", "FINISH", "ASK_USER", "REPROMPT"
    #   event.trace.routing_classifier_trace.observation.action_group_invocation_output.text #=> String
    #   event.trace.routing_classifier_trace.observation.action_group_invocation_output.metadata.start_time #=> Time
    #   event.trace.routing_classifier_trace.observation.action_group_invocation_output.metadata.end_time #=> Time
    #   event.trace.routing_classifier_trace.observation.action_group_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.routing_classifier_trace.observation.action_group_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.routing_classifier_trace.observation.action_group_invocation_output.metadata.client_request_id #=> String
    #   event.trace.routing_classifier_trace.observation.action_group_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.routing_classifier_trace.observation.action_group_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.agent_collaborator_name #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.agent_collaborator_alias_arn #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.type #=> String, one of "TEXT", "RETURN_CONTROL"
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.text #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs #=> Array
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.action_group #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.http_method #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.api_path #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters #=> Array
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters[0].name #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters[0].type #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters[0].value #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content #=> Hash
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties #=> Array
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].name #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].type #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].value #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.action_invocation_type #=> String, one of "RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.agent_id #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.collaborator_name #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.action_group #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters #=> Array
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters[0].name #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters[0].type #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters[0].value #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.function #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.action_invocation_type #=> String, one of "RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.agent_id #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.collaborator_name #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_id #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.metadata.start_time #=> Time
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.metadata.end_time #=> Time
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.metadata.client_request_id #=> String
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references #=> Array
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.type #=> String, one of "TEXT", "IMAGE", "ROW"
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.text #=> String
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.byte_content #=> String
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row #=> Array
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row[0].column_name #=> String
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row[0].column_value #=> String
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row[0].type #=> String, one of "BLOB", "BOOLEAN", "DOUBLE", "NULL", "LONG", "STRING"
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.type #=> String, one of "S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "KENDRA", "SQL"
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.s3_location.uri #=> String
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.web_location.url #=> String
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.confluence_location.url #=> String
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.salesforce_location.url #=> String
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.share_point_location.url #=> String
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.custom_document_location.id #=> String
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.kendra_document_location.uri #=> String
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.sql_location.query #=> String
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].metadata #=> Hash
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.metadata.start_time #=> Time
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.metadata.end_time #=> Time
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.metadata.total_time_ms #=> Integer
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.metadata.client_request_id #=> String
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.routing_classifier_trace.observation.knowledge_base_lookup_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.routing_classifier_trace.observation.final_response.text #=> String
    #   event.trace.routing_classifier_trace.observation.final_response.metadata.start_time #=> Time
    #   event.trace.routing_classifier_trace.observation.final_response.metadata.end_time #=> Time
    #   event.trace.routing_classifier_trace.observation.final_response.metadata.total_time_ms #=> Integer
    #   event.trace.routing_classifier_trace.observation.final_response.metadata.operation_total_time_ms #=> Integer
    #   event.trace.routing_classifier_trace.observation.final_response.metadata.client_request_id #=> String
    #   event.trace.routing_classifier_trace.observation.final_response.metadata.usage.input_tokens #=> Integer
    #   event.trace.routing_classifier_trace.observation.final_response.metadata.usage.output_tokens #=> Integer
    #   event.trace.routing_classifier_trace.observation.reprompt_response.text #=> String
    #   event.trace.routing_classifier_trace.observation.reprompt_response.source #=> String, one of "ACTION_GROUP", "KNOWLEDGE_BASE", "PARSER"
    #   event.trace.routing_classifier_trace.observation.code_interpreter_invocation_output.execution_output #=> String
    #   event.trace.routing_classifier_trace.observation.code_interpreter_invocation_output.execution_error #=> String
    #   event.trace.routing_classifier_trace.observation.code_interpreter_invocation_output.files #=> Array
    #   event.trace.routing_classifier_trace.observation.code_interpreter_invocation_output.files[0] #=> String
    #   event.trace.routing_classifier_trace.observation.code_interpreter_invocation_output.execution_timeout #=> Boolean
    #   event.trace.routing_classifier_trace.observation.code_interpreter_invocation_output.metadata.start_time #=> Time
    #   event.trace.routing_classifier_trace.observation.code_interpreter_invocation_output.metadata.end_time #=> Time
    #   event.trace.routing_classifier_trace.observation.code_interpreter_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.routing_classifier_trace.observation.code_interpreter_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.routing_classifier_trace.observation.code_interpreter_invocation_output.metadata.client_request_id #=> String
    #   event.trace.routing_classifier_trace.observation.code_interpreter_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.routing_classifier_trace.observation.code_interpreter_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.routing_classifier_trace.model_invocation_input.trace_id #=> String
    #   event.trace.routing_classifier_trace.model_invocation_input.text #=> String
    #   event.trace.routing_classifier_trace.model_invocation_input.type #=> String, one of "PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"
    #   event.trace.routing_classifier_trace.model_invocation_input.override_lambda #=> String
    #   event.trace.routing_classifier_trace.model_invocation_input.prompt_creation_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.routing_classifier_trace.model_invocation_input.inference_configuration.temperature #=> Float
    #   event.trace.routing_classifier_trace.model_invocation_input.inference_configuration.top_p #=> Float
    #   event.trace.routing_classifier_trace.model_invocation_input.inference_configuration.top_k #=> Integer
    #   event.trace.routing_classifier_trace.model_invocation_input.inference_configuration.maximum_length #=> Integer
    #   event.trace.routing_classifier_trace.model_invocation_input.inference_configuration.stop_sequences #=> Array
    #   event.trace.routing_classifier_trace.model_invocation_input.inference_configuration.stop_sequences[0] #=> String
    #   event.trace.routing_classifier_trace.model_invocation_input.parser_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.routing_classifier_trace.model_invocation_input.foundation_model #=> String
    #   event.trace.routing_classifier_trace.model_invocation_output.trace_id #=> String
    #   event.trace.routing_classifier_trace.model_invocation_output.raw_response.content #=> String
    #   event.trace.routing_classifier_trace.model_invocation_output.metadata.start_time #=> Time
    #   event.trace.routing_classifier_trace.model_invocation_output.metadata.end_time #=> Time
    #   event.trace.routing_classifier_trace.model_invocation_output.metadata.total_time_ms #=> Integer
    #   event.trace.routing_classifier_trace.model_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   event.trace.routing_classifier_trace.model_invocation_output.metadata.client_request_id #=> String
    #   event.trace.routing_classifier_trace.model_invocation_output.metadata.usage.input_tokens #=> Integer
    #   event.trace.routing_classifier_trace.model_invocation_output.metadata.usage.output_tokens #=> Integer
    #   event.trace.failure_trace.trace_id #=> String
    #   event.trace.failure_trace.failure_reason #=> String
    #   event.trace.failure_trace.failure_code #=> Integer
    #   event.trace.failure_trace.metadata.start_time #=> Time
    #   event.trace.failure_trace.metadata.end_time #=> Time
    #   event.trace.failure_trace.metadata.total_time_ms #=> Integer
    #   event.trace.failure_trace.metadata.operation_total_time_ms #=> Integer
    #   event.trace.failure_trace.metadata.client_request_id #=> String
    #   event.trace.failure_trace.metadata.usage.input_tokens #=> Integer
    #   event.trace.failure_trace.metadata.usage.output_tokens #=> Integer
    #   event.trace.custom_orchestration_trace.trace_id #=> String
    #   event.trace.custom_orchestration_trace.event.text #=> String
    #   event.caller_chain #=> Array
    #   event.caller_chain[0].agent_alias_arn #=> String
    #   event.event_time #=> Time
    #   event.collaborator_name #=> String
    #
    #   # For :return_control event available at #on_return_control_event callback and response eventstream enumerator:
    #   event.invocation_inputs #=> Array
    #   event.invocation_inputs[0].api_invocation_input.action_group #=> String
    #   event.invocation_inputs[0].api_invocation_input.http_method #=> String
    #   event.invocation_inputs[0].api_invocation_input.api_path #=> String
    #   event.invocation_inputs[0].api_invocation_input.parameters #=> Array
    #   event.invocation_inputs[0].api_invocation_input.parameters[0].name #=> String
    #   event.invocation_inputs[0].api_invocation_input.parameters[0].type #=> String
    #   event.invocation_inputs[0].api_invocation_input.parameters[0].value #=> String
    #   event.invocation_inputs[0].api_invocation_input.request_body.content #=> Hash
    #   event.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties #=> Array
    #   event.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].name #=> String
    #   event.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].type #=> String
    #   event.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].value #=> String
    #   event.invocation_inputs[0].api_invocation_input.action_invocation_type #=> String, one of "RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"
    #   event.invocation_inputs[0].api_invocation_input.agent_id #=> String
    #   event.invocation_inputs[0].api_invocation_input.collaborator_name #=> String
    #   event.invocation_inputs[0].function_invocation_input.action_group #=> String
    #   event.invocation_inputs[0].function_invocation_input.parameters #=> Array
    #   event.invocation_inputs[0].function_invocation_input.parameters[0].name #=> String
    #   event.invocation_inputs[0].function_invocation_input.parameters[0].type #=> String
    #   event.invocation_inputs[0].function_invocation_input.parameters[0].value #=> String
    #   event.invocation_inputs[0].function_invocation_input.function #=> String
    #   event.invocation_inputs[0].function_invocation_input.action_invocation_type #=> String, one of "RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"
    #   event.invocation_inputs[0].function_invocation_input.agent_id #=> String
    #   event.invocation_inputs[0].function_invocation_input.collaborator_name #=> String
    #   event.invocation_id #=> String
    #
    #   # For :internal_server_exception event available at #on_internal_server_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #   event.reason #=> String
    #
    #   # For :validation_exception event available at #on_validation_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :resource_not_found_exception event available at #on_resource_not_found_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :service_quota_exceeded_exception event available at #on_service_quota_exceeded_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :throttling_exception event available at #on_throttling_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :access_denied_exception event available at #on_access_denied_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :conflict_exception event available at #on_conflict_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :dependency_failed_exception event available at #on_dependency_failed_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #   event.resource_name #=> String
    #
    #   # For :bad_gateway_exception event available at #on_bad_gateway_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #   event.resource_name #=> String
    #
    #   # For :files event available at #on_files_event callback and response eventstream enumerator:
    #   event.files #=> Array
    #   event.files[0].name #=> String
    #   event.files[0].type #=> String
    #   event.files[0].bytes #=> String
    #
    #   resp.content_type #=> String
    #   resp.session_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InvokeInlineAgent AWS API Documentation
    #
    # @overload invoke_inline_agent(params = {})
    # @param [Hash] params ({})
    def invoke_inline_agent(params = {}, options = {}, &block)
      params = params.dup
      event_stream_handler = case handler = params.delete(:event_stream_handler)
        when EventStreams::InlineAgentResponseStream then handler
        when Proc then EventStreams::InlineAgentResponseStream.new.tap(&handler)
        when nil then EventStreams::InlineAgentResponseStream.new
        else
          msg = "expected :event_stream_handler to be a block or "\
                "instance of Aws::BedrockAgentRuntime::EventStreams::InlineAgentResponseStream"\
                ", got `#{handler.inspect}` instead"
          raise ArgumentError, msg
        end

      yield(event_stream_handler) if block_given?

      req = build_request(:invoke_inline_agent, params)

      req.context[:event_stream_handler] = event_stream_handler
      req.handlers.add(Aws::Binary::DecodeHandler, priority: 95)

      req.send_request(options, &block)
    end

    # Lists events that occurred during a flow execution. Events provide
    # detailed information about the execution progress, including node
    # inputs and outputs, flow inputs and outputs, condition results, and
    # failure events.
    #
    # <note markdown="1"> Flow executions is in preview release for Amazon Bedrock and is
    # subject to change.
    #
    #  </note>
    #
    # @option params [required, String] :flow_identifier
    #   The unique identifier of the flow.
    #
    # @option params [required, String] :flow_alias_identifier
    #   The unique identifier of the flow alias used for the execution.
    #
    # @option params [required, String] :execution_identifier
    #   The unique identifier of the flow execution.
    #
    # @option params [Integer] :max_results
    #   The maximum number of events to return in a single response. If more
    #   events exist than the specified maxResults value, a token is included
    #   in the response so that the remaining results can be retrieved.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next set of results. This value is returned in
    #   the response if more results are available.
    #
    # @option params [required, String] :event_type
    #   The type of events to retrieve. Specify `Node` for node-level events
    #   or `Flow` for flow-level events.
    #
    # @return [Types::ListFlowExecutionEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFlowExecutionEventsResponse#flow_execution_events #flow_execution_events} => Array&lt;Types::FlowExecutionEvent&gt;
    #   * {Types::ListFlowExecutionEventsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_flow_execution_events({
    #     flow_identifier: "FlowIdentifier", # required
    #     flow_alias_identifier: "FlowAliasIdentifier", # required
    #     execution_identifier: "FlowExecutionIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     event_type: "Node", # required, accepts Node, Flow
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_execution_events #=> Array
    #   resp.flow_execution_events[0].flow_input_event.node_name #=> String
    #   resp.flow_execution_events[0].flow_input_event.timestamp #=> Time
    #   resp.flow_execution_events[0].flow_input_event.fields #=> Array
    #   resp.flow_execution_events[0].flow_input_event.fields[0].name #=> String
    #   resp.flow_execution_events[0].flow_output_event.node_name #=> String
    #   resp.flow_execution_events[0].flow_output_event.timestamp #=> Time
    #   resp.flow_execution_events[0].flow_output_event.fields #=> Array
    #   resp.flow_execution_events[0].flow_output_event.fields[0].name #=> String
    #   resp.flow_execution_events[0].node_input_event.node_name #=> String
    #   resp.flow_execution_events[0].node_input_event.timestamp #=> Time
    #   resp.flow_execution_events[0].node_input_event.fields #=> Array
    #   resp.flow_execution_events[0].node_input_event.fields[0].name #=> String
    #   resp.flow_execution_events[0].node_input_event.fields[0].source.node_name #=> String
    #   resp.flow_execution_events[0].node_input_event.fields[0].source.output_field_name #=> String
    #   resp.flow_execution_events[0].node_input_event.fields[0].source.expression #=> String
    #   resp.flow_execution_events[0].node_input_event.fields[0].type #=> String, one of "String", "Number", "Boolean", "Object", "Array"
    #   resp.flow_execution_events[0].node_input_event.fields[0].category #=> String, one of "LoopCondition", "ReturnValueToLoopStart", "ExitLoop"
    #   resp.flow_execution_events[0].node_input_event.fields[0].execution_chain #=> Array
    #   resp.flow_execution_events[0].node_input_event.fields[0].execution_chain[0].node_name #=> String
    #   resp.flow_execution_events[0].node_input_event.fields[0].execution_chain[0].index #=> Integer
    #   resp.flow_execution_events[0].node_input_event.fields[0].execution_chain[0].type #=> String, one of "Iterator", "Loop"
    #   resp.flow_execution_events[0].node_output_event.node_name #=> String
    #   resp.flow_execution_events[0].node_output_event.timestamp #=> Time
    #   resp.flow_execution_events[0].node_output_event.fields #=> Array
    #   resp.flow_execution_events[0].node_output_event.fields[0].name #=> String
    #   resp.flow_execution_events[0].node_output_event.fields[0].next #=> Array
    #   resp.flow_execution_events[0].node_output_event.fields[0].next[0].node_name #=> String
    #   resp.flow_execution_events[0].node_output_event.fields[0].next[0].input_field_name #=> String
    #   resp.flow_execution_events[0].node_output_event.fields[0].type #=> String, one of "String", "Number", "Boolean", "Object", "Array"
    #   resp.flow_execution_events[0].condition_result_event.node_name #=> String
    #   resp.flow_execution_events[0].condition_result_event.timestamp #=> Time
    #   resp.flow_execution_events[0].condition_result_event.satisfied_conditions #=> Array
    #   resp.flow_execution_events[0].condition_result_event.satisfied_conditions[0].condition_name #=> String
    #   resp.flow_execution_events[0].node_failure_event.node_name #=> String
    #   resp.flow_execution_events[0].node_failure_event.timestamp #=> Time
    #   resp.flow_execution_events[0].node_failure_event.error_code #=> String, one of "VALIDATION", "DEPENDENCY_FAILED", "BAD_GATEWAY", "INTERNAL_SERVER"
    #   resp.flow_execution_events[0].node_failure_event.error_message #=> String
    #   resp.flow_execution_events[0].flow_failure_event.timestamp #=> Time
    #   resp.flow_execution_events[0].flow_failure_event.error_code #=> String, one of "VALIDATION", "INTERNAL_SERVER", "NODE_EXECUTION_FAILED"
    #   resp.flow_execution_events[0].flow_failure_event.error_message #=> String
    #   resp.flow_execution_events[0].node_action_event.node_name #=> String
    #   resp.flow_execution_events[0].node_action_event.timestamp #=> Time
    #   resp.flow_execution_events[0].node_action_event.request_id #=> String
    #   resp.flow_execution_events[0].node_action_event.service_name #=> String
    #   resp.flow_execution_events[0].node_action_event.operation_name #=> String
    #   resp.flow_execution_events[0].node_dependency_event.node_name #=> String
    #   resp.flow_execution_events[0].node_dependency_event.timestamp #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].session_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.action #=> String, one of "INTERVENED", "NONE"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.trace_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].topic_policy.topics #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].topic_policy.topics[0].name #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].topic_policy.topics[0].type #=> String, one of "DENY"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].topic_policy.topics[0].action #=> String, one of "BLOCKED"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].content_policy.filters #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].content_policy.filters[0].type #=> String, one of "INSULTS", "HATE", "SEXUAL", "VIOLENCE", "MISCONDUCT", "PROMPT_ATTACK"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].content_policy.filters[0].confidence #=> String, one of "NONE", "LOW", "MEDIUM", "HIGH"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].content_policy.filters[0].action #=> String, one of "BLOCKED"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].word_policy.custom_words #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].word_policy.custom_words[0].match #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].word_policy.custom_words[0].action #=> String, one of "BLOCKED"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].word_policy.managed_word_lists #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].word_policy.managed_word_lists[0].match #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].word_policy.managed_word_lists[0].type #=> String, one of "PROFANITY"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].word_policy.managed_word_lists[0].action #=> String, one of "BLOCKED"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].sensitive_information_policy.pii_entities #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].sensitive_information_policy.pii_entities[0].type #=> String, one of "ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].sensitive_information_policy.pii_entities[0].match #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].sensitive_information_policy.pii_entities[0].action #=> String, one of "BLOCKED", "ANONYMIZED"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].sensitive_information_policy.regexes #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].sensitive_information_policy.regexes[0].name #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].sensitive_information_policy.regexes[0].regex #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].sensitive_information_policy.regexes[0].match #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.input_assessments[0].sensitive_information_policy.regexes[0].action #=> String, one of "BLOCKED", "ANONYMIZED"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].topic_policy.topics #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].topic_policy.topics[0].name #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].topic_policy.topics[0].type #=> String, one of "DENY"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].topic_policy.topics[0].action #=> String, one of "BLOCKED"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].content_policy.filters #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].content_policy.filters[0].type #=> String, one of "INSULTS", "HATE", "SEXUAL", "VIOLENCE", "MISCONDUCT", "PROMPT_ATTACK"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].content_policy.filters[0].confidence #=> String, one of "NONE", "LOW", "MEDIUM", "HIGH"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].content_policy.filters[0].action #=> String, one of "BLOCKED"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].word_policy.custom_words #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].word_policy.custom_words[0].match #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].word_policy.custom_words[0].action #=> String, one of "BLOCKED"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].word_policy.managed_word_lists #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].word_policy.managed_word_lists[0].match #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].word_policy.managed_word_lists[0].type #=> String, one of "PROFANITY"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].word_policy.managed_word_lists[0].action #=> String, one of "BLOCKED"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].sensitive_information_policy.pii_entities #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].sensitive_information_policy.pii_entities[0].type #=> String, one of "ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].sensitive_information_policy.pii_entities[0].match #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].sensitive_information_policy.pii_entities[0].action #=> String, one of "BLOCKED", "ANONYMIZED"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].sensitive_information_policy.regexes #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].sensitive_information_policy.regexes[0].name #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].sensitive_information_policy.regexes[0].regex #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].sensitive_information_policy.regexes[0].match #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.output_assessments[0].sensitive_information_policy.regexes[0].action #=> String, one of "BLOCKED", "ANONYMIZED"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.metadata.start_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.metadata.end_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.metadata.total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.metadata.operation_total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.metadata.client_request_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.metadata.usage.input_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.guardrail_trace.metadata.usage.output_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_input.trace_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_input.text #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_input.type #=> String, one of "PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_input.override_lambda #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_input.prompt_creation_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_input.inference_configuration.temperature #=> Float
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_input.inference_configuration.top_p #=> Float
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_input.inference_configuration.top_k #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_input.inference_configuration.maximum_length #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_input.inference_configuration.stop_sequences #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_input.inference_configuration.stop_sequences[0] #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_input.parser_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_input.foundation_model #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_output.trace_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_output.parsed_response.rationale #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_output.parsed_response.is_valid #=> Boolean
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_output.raw_response.content #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_output.metadata.start_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_output.metadata.end_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_output.metadata.total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_output.metadata.client_request_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_output.metadata.usage.input_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_output.metadata.usage.output_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_output.reasoning_content.reasoning_text.text #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_output.reasoning_content.reasoning_text.signature #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.pre_processing_trace.model_invocation_output.reasoning_content.redacted_content #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.rationale.trace_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.rationale.text #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.trace_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.invocation_type #=> String, one of "ACTION_GROUP", "KNOWLEDGE_BASE", "FINISH", "ACTION_GROUP_CODE_INTERPRETER", "AGENT_COLLABORATOR"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.action_group_name #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.verb #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.api_path #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.parameters #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.parameters[0].name #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.parameters[0].type #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.parameters[0].value #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.request_body.content #=> Hash
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.request_body.content["String"] #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.request_body.content["String"][0].name #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.request_body.content["String"][0].type #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.request_body.content["String"][0].value #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.function #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.execution_type #=> String, one of "LAMBDA", "RETURN_CONTROL"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.action_group_invocation_input.invocation_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.knowledge_base_lookup_input.text #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.knowledge_base_lookup_input.knowledge_base_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.code_interpreter_invocation_input.code #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.code_interpreter_invocation_input.files #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.code_interpreter_invocation_input.files[0] #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.agent_collaborator_name #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.agent_collaborator_alias_arn #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.type #=> String, one of "TEXT", "RETURN_CONTROL"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.text #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.invocation_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.action_group #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.http_method #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.api_path #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.confirmation_state #=> String, one of "CONFIRM", "DENY"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_state #=> String, one of "FAILURE", "REPROMPT"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.http_status_code #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body #=> Hash
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].body #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].images #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].images[0].format #=> String, one of "png", "jpeg", "gif", "webp"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].images[0].source.bytes #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.agent_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.action_group #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.confirmation_state #=> String, one of "CONFIRM", "DENY"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.function #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body #=> Hash
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].body #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].images #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].images[0].format #=> String, one of "png", "jpeg", "gif", "webp"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].images[0].source.bytes #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_state #=> String, one of "FAILURE", "REPROMPT"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.agent_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.trace_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.type #=> String, one of "ACTION_GROUP", "AGENT_COLLABORATOR", "KNOWLEDGE_BASE", "FINISH", "ASK_USER", "REPROMPT"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.action_group_invocation_output.text #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.action_group_invocation_output.metadata.start_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.action_group_invocation_output.metadata.end_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.action_group_invocation_output.metadata.total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.action_group_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.action_group_invocation_output.metadata.client_request_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.action_group_invocation_output.metadata.usage.input_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.action_group_invocation_output.metadata.usage.output_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.agent_collaborator_name #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.agent_collaborator_alias_arn #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.type #=> String, one of "TEXT", "RETURN_CONTROL"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.text #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.action_group #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.http_method #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.api_path #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters[0].name #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters[0].type #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters[0].value #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content #=> Hash
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].name #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].type #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].value #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.action_invocation_type #=> String, one of "RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.agent_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.collaborator_name #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.action_group #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters[0].name #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters[0].type #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters[0].value #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.function #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.action_invocation_type #=> String, one of "RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.agent_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.collaborator_name #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.metadata.start_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.metadata.end_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.metadata.total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.metadata.client_request_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.metadata.usage.input_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.agent_collaborator_invocation_output.metadata.usage.output_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.type #=> String, one of "TEXT", "IMAGE", "ROW"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.text #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.byte_content #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row[0].column_name #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row[0].column_value #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row[0].type #=> String, one of "BLOB", "BOOLEAN", "DOUBLE", "NULL", "LONG", "STRING"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.type #=> String, one of "S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "KENDRA", "SQL"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.s3_location.uri #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.web_location.url #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.confluence_location.url #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.salesforce_location.url #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.share_point_location.url #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.custom_document_location.id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.kendra_document_location.uri #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.sql_location.query #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].metadata #=> Hash
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.metadata.start_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.metadata.end_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.metadata.total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.metadata.operation_total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.metadata.client_request_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.metadata.usage.input_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.knowledge_base_lookup_output.metadata.usage.output_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.final_response.text #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.final_response.metadata.start_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.final_response.metadata.end_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.final_response.metadata.total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.final_response.metadata.operation_total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.final_response.metadata.client_request_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.final_response.metadata.usage.input_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.final_response.metadata.usage.output_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.reprompt_response.text #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.reprompt_response.source #=> String, one of "ACTION_GROUP", "KNOWLEDGE_BASE", "PARSER"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.code_interpreter_invocation_output.execution_output #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.code_interpreter_invocation_output.execution_error #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.code_interpreter_invocation_output.files #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.code_interpreter_invocation_output.files[0] #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.code_interpreter_invocation_output.execution_timeout #=> Boolean
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.code_interpreter_invocation_output.metadata.start_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.code_interpreter_invocation_output.metadata.end_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.code_interpreter_invocation_output.metadata.total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.code_interpreter_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.code_interpreter_invocation_output.metadata.client_request_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.code_interpreter_invocation_output.metadata.usage.input_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.observation.code_interpreter_invocation_output.metadata.usage.output_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_input.trace_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_input.text #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_input.type #=> String, one of "PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_input.override_lambda #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_input.prompt_creation_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_input.inference_configuration.temperature #=> Float
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_input.inference_configuration.top_p #=> Float
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_input.inference_configuration.top_k #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_input.inference_configuration.maximum_length #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_input.inference_configuration.stop_sequences #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_input.inference_configuration.stop_sequences[0] #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_input.parser_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_input.foundation_model #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_output.trace_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_output.raw_response.content #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_output.metadata.start_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_output.metadata.end_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_output.metadata.total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_output.metadata.client_request_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_output.metadata.usage.input_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_output.metadata.usage.output_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_output.reasoning_content.reasoning_text.text #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_output.reasoning_content.reasoning_text.signature #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.orchestration_trace.model_invocation_output.reasoning_content.redacted_content #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_input.trace_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_input.text #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_input.type #=> String, one of "PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_input.override_lambda #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_input.prompt_creation_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_input.inference_configuration.temperature #=> Float
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_input.inference_configuration.top_p #=> Float
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_input.inference_configuration.top_k #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_input.inference_configuration.maximum_length #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_input.inference_configuration.stop_sequences #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_input.inference_configuration.stop_sequences[0] #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_input.parser_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_input.foundation_model #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_output.trace_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_output.parsed_response.text #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_output.raw_response.content #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_output.metadata.start_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_output.metadata.end_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_output.metadata.total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_output.metadata.client_request_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_output.metadata.usage.input_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_output.metadata.usage.output_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_output.reasoning_content.reasoning_text.text #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_output.reasoning_content.reasoning_text.signature #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.post_processing_trace.model_invocation_output.reasoning_content.redacted_content #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.trace_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.invocation_type #=> String, one of "ACTION_GROUP", "KNOWLEDGE_BASE", "FINISH", "ACTION_GROUP_CODE_INTERPRETER", "AGENT_COLLABORATOR"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.action_group_name #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.verb #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.api_path #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.parameters #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.parameters[0].name #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.parameters[0].type #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.parameters[0].value #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.request_body.content #=> Hash
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.request_body.content["String"] #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.request_body.content["String"][0].name #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.request_body.content["String"][0].type #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.request_body.content["String"][0].value #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.function #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.execution_type #=> String, one of "LAMBDA", "RETURN_CONTROL"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.action_group_invocation_input.invocation_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.knowledge_base_lookup_input.text #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.knowledge_base_lookup_input.knowledge_base_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.code_interpreter_invocation_input.code #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.code_interpreter_invocation_input.files #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.code_interpreter_invocation_input.files[0] #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.agent_collaborator_name #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.agent_collaborator_alias_arn #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.type #=> String, one of "TEXT", "RETURN_CONTROL"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.text #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.invocation_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.action_group #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.http_method #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.api_path #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.confirmation_state #=> String, one of "CONFIRM", "DENY"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_state #=> String, one of "FAILURE", "REPROMPT"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.http_status_code #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body #=> Hash
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].body #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].images #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].images[0].format #=> String, one of "png", "jpeg", "gif", "webp"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.response_body["String"].images[0].source.bytes #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].api_result.agent_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.action_group #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.confirmation_state #=> String, one of "CONFIRM", "DENY"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.function #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body #=> Hash
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].body #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].images #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].images[0].format #=> String, one of "png", "jpeg", "gif", "webp"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_body["String"].images[0].source.bytes #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.response_state #=> String, one of "FAILURE", "REPROMPT"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.invocation_input.agent_collaborator_invocation_input.input.return_control_results.return_control_invocation_results[0].function_result.agent_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.trace_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.type #=> String, one of "ACTION_GROUP", "AGENT_COLLABORATOR", "KNOWLEDGE_BASE", "FINISH", "ASK_USER", "REPROMPT"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.action_group_invocation_output.text #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.action_group_invocation_output.metadata.start_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.action_group_invocation_output.metadata.end_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.action_group_invocation_output.metadata.total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.action_group_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.action_group_invocation_output.metadata.client_request_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.action_group_invocation_output.metadata.usage.input_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.action_group_invocation_output.metadata.usage.output_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.agent_collaborator_name #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.agent_collaborator_alias_arn #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.type #=> String, one of "TEXT", "RETURN_CONTROL"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.text #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.action_group #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.http_method #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.api_path #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters[0].name #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters[0].type #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.parameters[0].value #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content #=> Hash
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].name #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].type #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.request_body.content["String"].properties[0].value #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.action_invocation_type #=> String, one of "RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.agent_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].api_invocation_input.collaborator_name #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.action_group #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters[0].name #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters[0].type #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.parameters[0].value #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.function #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.action_invocation_type #=> String, one of "RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.agent_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_inputs[0].function_invocation_input.collaborator_name #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.output.return_control_payload.invocation_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.metadata.start_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.metadata.end_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.metadata.total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.metadata.client_request_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.metadata.usage.input_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.agent_collaborator_invocation_output.metadata.usage.output_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.type #=> String, one of "TEXT", "IMAGE", "ROW"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.text #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.byte_content #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row[0].column_name #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row[0].column_value #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.row[0].type #=> String, one of "BLOB", "BOOLEAN", "DOUBLE", "NULL", "LONG", "STRING"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.type #=> String, one of "S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "KENDRA", "SQL"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.s3_location.uri #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.web_location.url #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.confluence_location.url #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.salesforce_location.url #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.share_point_location.url #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.custom_document_location.id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.kendra_document_location.uri #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.sql_location.query #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.retrieved_references[0].metadata #=> Hash
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.metadata.start_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.metadata.end_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.metadata.total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.metadata.operation_total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.metadata.client_request_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.metadata.usage.input_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.knowledge_base_lookup_output.metadata.usage.output_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.final_response.text #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.final_response.metadata.start_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.final_response.metadata.end_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.final_response.metadata.total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.final_response.metadata.operation_total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.final_response.metadata.client_request_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.final_response.metadata.usage.input_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.final_response.metadata.usage.output_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.reprompt_response.text #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.reprompt_response.source #=> String, one of "ACTION_GROUP", "KNOWLEDGE_BASE", "PARSER"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.code_interpreter_invocation_output.execution_output #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.code_interpreter_invocation_output.execution_error #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.code_interpreter_invocation_output.files #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.code_interpreter_invocation_output.files[0] #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.code_interpreter_invocation_output.execution_timeout #=> Boolean
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.code_interpreter_invocation_output.metadata.start_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.code_interpreter_invocation_output.metadata.end_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.code_interpreter_invocation_output.metadata.total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.code_interpreter_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.code_interpreter_invocation_output.metadata.client_request_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.code_interpreter_invocation_output.metadata.usage.input_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.observation.code_interpreter_invocation_output.metadata.usage.output_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_input.trace_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_input.text #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_input.type #=> String, one of "PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_input.override_lambda #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_input.prompt_creation_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_input.inference_configuration.temperature #=> Float
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_input.inference_configuration.top_p #=> Float
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_input.inference_configuration.top_k #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_input.inference_configuration.maximum_length #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_input.inference_configuration.stop_sequences #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_input.inference_configuration.stop_sequences[0] #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_input.parser_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_input.foundation_model #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_output.trace_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_output.raw_response.content #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_output.metadata.start_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_output.metadata.end_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_output.metadata.total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_output.metadata.operation_total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_output.metadata.client_request_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_output.metadata.usage.input_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.routing_classifier_trace.model_invocation_output.metadata.usage.output_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.failure_trace.trace_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.failure_trace.failure_reason #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.failure_trace.failure_code #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.failure_trace.metadata.start_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.failure_trace.metadata.end_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.failure_trace.metadata.total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.failure_trace.metadata.operation_total_time_ms #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.failure_trace.metadata.client_request_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.failure_trace.metadata.usage.input_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.failure_trace.metadata.usage.output_tokens #=> Integer
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.custom_orchestration_trace.trace_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].trace.custom_orchestration_trace.event.text #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].caller_chain #=> Array
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].caller_chain[0].agent_alias_arn #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].event_time #=> Time
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].collaborator_name #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].agent_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].agent_alias_id #=> String
    #   resp.flow_execution_events[0].node_dependency_event.trace_elements.agent_traces[0].agent_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ListFlowExecutionEvents AWS API Documentation
    #
    # @overload list_flow_execution_events(params = {})
    # @param [Hash] params ({})
    def list_flow_execution_events(params = {}, options = {})
      req = build_request(:list_flow_execution_events, params)
      req.send_request(options)
    end

    # Lists all executions of a flow. Results can be paginated and include
    # summary information about each execution, such as status, start and
    # end times, and the execution's Amazon Resource Name (ARN).
    #
    # <note markdown="1"> Flow executions is in preview release for Amazon Bedrock and is
    # subject to change.
    #
    #  </note>
    #
    # @option params [required, String] :flow_identifier
    #   The unique identifier of the flow to list executions for.
    #
    # @option params [String] :flow_alias_identifier
    #   The unique identifier of the flow alias to list executions for.
    #
    # @option params [Integer] :max_results
    #   The maximum number of flow executions to return in a single response.
    #   If more executions exist than the specified `maxResults` value, a
    #   token is included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next set of results. This value is returned in
    #   the response if more results are available.
    #
    # @return [Types::ListFlowExecutionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFlowExecutionsResponse#flow_execution_summaries #flow_execution_summaries} => Array&lt;Types::FlowExecutionSummary&gt;
    #   * {Types::ListFlowExecutionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_flow_executions({
    #     flow_identifier: "FlowIdentifier", # required
    #     flow_alias_identifier: "FlowAliasIdentifier",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_execution_summaries #=> Array
    #   resp.flow_execution_summaries[0].execution_arn #=> String
    #   resp.flow_execution_summaries[0].flow_alias_identifier #=> String
    #   resp.flow_execution_summaries[0].flow_identifier #=> String
    #   resp.flow_execution_summaries[0].flow_version #=> String
    #   resp.flow_execution_summaries[0].status #=> String, one of "Running", "Succeeded", "Failed", "TimedOut", "Aborted"
    #   resp.flow_execution_summaries[0].created_at #=> Time
    #   resp.flow_execution_summaries[0].ended_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ListFlowExecutions AWS API Documentation
    #
    # @overload list_flow_executions(params = {})
    # @param [Hash] params ({})
    def list_flow_executions(params = {}, options = {})
      req = build_request(:list_flow_executions, params)
      req.send_request(options)
    end

    # Lists all invocation steps associated with a session and optionally,
    # an invocation within the session. For more information about sessions,
    # see [Store and retrieve conversation history and context with Amazon
    # Bedrock sessions][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html
    #
    # @option params [String] :invocation_identifier
    #   The unique identifier (in UUID format) for the invocation to list
    #   invocation steps for.
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
    # @option params [required, String] :session_identifier
    #   The unique identifier for the session associated with the invocation
    #   steps. You can specify either the session's `sessionId` or its Amazon
    #   Resource Name (ARN).
    #
    # @return [Types::ListInvocationStepsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInvocationStepsResponse#invocation_step_summaries #invocation_step_summaries} => Array&lt;Types::InvocationStepSummary&gt;
    #   * {Types::ListInvocationStepsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_invocation_steps({
    #     invocation_identifier: "InvocationIdentifier",
    #     next_token: "NextToken",
    #     max_results: 1,
    #     session_identifier: "SessionIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.invocation_step_summaries #=> Array
    #   resp.invocation_step_summaries[0].session_id #=> String
    #   resp.invocation_step_summaries[0].invocation_id #=> String
    #   resp.invocation_step_summaries[0].invocation_step_id #=> String
    #   resp.invocation_step_summaries[0].invocation_step_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ListInvocationSteps AWS API Documentation
    #
    # @overload list_invocation_steps(params = {})
    # @param [Hash] params ({})
    def list_invocation_steps(params = {}, options = {})
      req = build_request(:list_invocation_steps, params)
      req.send_request(options)
    end

    # Lists all invocations associated with a specific session. For more
    # information about sessions, see [Store and retrieve conversation
    # history and context with Amazon Bedrock sessions][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html
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
    # @option params [required, String] :session_identifier
    #   The unique identifier for the session to list invocations for. You can
    #   specify either the session's `sessionId` or its Amazon Resource Name
    #   (ARN).
    #
    # @return [Types::ListInvocationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInvocationsResponse#invocation_summaries #invocation_summaries} => Array&lt;Types::InvocationSummary&gt;
    #   * {Types::ListInvocationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_invocations({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     session_identifier: "SessionIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.invocation_summaries #=> Array
    #   resp.invocation_summaries[0].session_id #=> String
    #   resp.invocation_summaries[0].invocation_id #=> String
    #   resp.invocation_summaries[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ListInvocations AWS API Documentation
    #
    # @overload list_invocations(params = {})
    # @param [Hash] params ({})
    def list_invocations(params = {}, options = {})
      req = build_request(:list_invocations, params)
      req.send_request(options)
    end

    # Lists all sessions in your Amazon Web Services account. For more
    # information about sessions, see [Store and retrieve conversation
    # history and context with Amazon Bedrock sessions][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html
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
    # @return [Types::ListSessionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSessionsResponse#session_summaries #session_summaries} => Array&lt;Types::SessionSummary&gt;
    #   * {Types::ListSessionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sessions({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.session_summaries #=> Array
    #   resp.session_summaries[0].session_id #=> String
    #   resp.session_summaries[0].session_arn #=> String
    #   resp.session_summaries[0].session_status #=> String, one of "ACTIVE", "EXPIRED", "ENDED"
    #   resp.session_summaries[0].created_at #=> Time
    #   resp.session_summaries[0].last_updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ListSessions AWS API Documentation
    #
    # @overload list_sessions(params = {})
    # @param [Hash] params ({})
    def list_sessions(params = {}, options = {})
      req = build_request(:list_sessions, params)
      req.send_request(options)
    end

    # List all the tags for the resource you specify.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which to list tags.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Optimizes a prompt for the task that you specify. For more
    # information, see [Optimize a prompt][1] in the [Amazon Bedrock User
    # Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-optimize.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [required, Types::InputPrompt] :input
    #   Contains the prompt to optimize.
    #
    # @option params [required, String] :target_model_id
    #   The unique identifier of the model that you want to optimize the
    #   prompt for.
    #
    # @return [Types::OptimizePromptResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::OptimizePromptResponse#optimized_prompt #optimized_prompt} => Types::OptimizedPromptStream
    #
    # @example EventStream Operation Example
    #
    #   # You can process the event once it arrives immediately, or wait until the
    #   # full response is complete and iterate through the eventstream enumerator.
    #
    #   # To interact with event immediately, you need to register optimize_prompt
    #   # with callbacks. Callbacks can be registered for specific events or for all
    #   # events, including error events.
    #
    #   # Callbacks can be passed into the `:event_stream_handler` option or within a
    #   # block statement attached to the #optimize_prompt call directly. Hybrid
    #   # pattern of both is also supported.
    #
    #   # `:event_stream_handler` option takes in either a Proc object or
    #   # Aws::BedrockAgentRuntime::EventStreams::OptimizedPromptStream object.
    #
    #   # Usage pattern a): Callbacks with a block attached to #optimize_prompt
    #   # Example for registering callbacks for all event types and an error event
    #   client.optimize_prompt(
    #     # params input
    #   ) do |stream|
    #     stream.on_error_event do |event|
    #       # catch unmodeled error event in the stream
    #       raise event
    #       # => Aws::Errors::EventError
    #       # event.event_type => :error
    #       # event.error_code => String
    #       # event.error_message => String
    #     end
    #
    #     stream.on_event do |event|
    #       # process all events arrive
    #       puts event.event_type
    #       # ...
    #     end
    #   end
    #
    #   # Usage pattern b): Pass in `:event_stream_handler` for #optimize_prompt
    #   #  1) Create a Aws::BedrockAgentRuntime::EventStreams::OptimizedPromptStream object
    #   #  Example for registering callbacks with specific events
    #
    #   handler = Aws::BedrockAgentRuntime::EventStreams::OptimizedPromptStream.new
    #   handler.on_optimized_prompt_event_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::optimizedPromptEvent
    #   end
    #   handler.on_analyze_prompt_event_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::analyzePromptEvent
    #   end
    #   handler.on_internal_server_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::internalServerException
    #   end
    #   handler.on_throttling_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::throttlingException
    #   end
    #   handler.on_validation_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::validationException
    #   end
    #   handler.on_dependency_failed_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::dependencyFailedException
    #   end
    #   handler.on_access_denied_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::accessDeniedException
    #   end
    #   handler.on_bad_gateway_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::badGatewayException
    #   end
    #
    #   client.optimize_prompt(
    #     # params inputs
    #     event_stream_handler: handler
    #   )
    #
    #   #  2) Use a Ruby Proc object
    #   #  Example for registering callbacks with specific events
    #   handler = Proc.new do |stream|
    #     stream.on_optimized_prompt_event_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::optimizedPromptEvent
    #     end
    #     stream.on_analyze_prompt_event_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::analyzePromptEvent
    #     end
    #     stream.on_internal_server_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::internalServerException
    #     end
    #     stream.on_throttling_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::throttlingException
    #     end
    #     stream.on_validation_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::validationException
    #     end
    #     stream.on_dependency_failed_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::dependencyFailedException
    #     end
    #     stream.on_access_denied_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::accessDeniedException
    #     end
    #     stream.on_bad_gateway_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::badGatewayException
    #     end
    #   end
    #
    #   client.optimize_prompt(
    #     # params inputs
    #     event_stream_handler: handler
    #   )
    #
    #   #  Usage pattern c): Hybrid pattern of a) and b)
    #   handler = Aws::BedrockAgentRuntime::EventStreams::OptimizedPromptStream.new
    #   handler.on_optimized_prompt_event_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::optimizedPromptEvent
    #   end
    #   handler.on_analyze_prompt_event_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::analyzePromptEvent
    #   end
    #   handler.on_internal_server_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::internalServerException
    #   end
    #   handler.on_throttling_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::throttlingException
    #   end
    #   handler.on_validation_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::validationException
    #   end
    #   handler.on_dependency_failed_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::dependencyFailedException
    #   end
    #   handler.on_access_denied_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::accessDeniedException
    #   end
    #   handler.on_bad_gateway_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::badGatewayException
    #   end
    #
    #   client.optimize_prompt(
    #     # params input
    #     event_stream_handler: handler
    #   ) do |stream|
    #     stream.on_error_event do |event|
    #       # catch unmodeled error event in the stream
    #       raise event
    #       # => Aws::Errors::EventError
    #       # event.event_type => :error
    #       # event.error_code => String
    #       # event.error_message => String
    #     end
    #   end
    #
    #   # You can also iterate through events after the response complete.
    #   # Events are available at
    #   resp.optimized_prompt # => Enumerator
    #   # For parameter input example, please refer to following request syntax.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.optimize_prompt({
    #     input: { # required
    #       text_prompt: {
    #         text: "TextPromptTextString", # required
    #       },
    #     },
    #     target_model_id: "OptimizePromptRequestTargetModelIdString", # required
    #   })
    #
    # @example Response structure
    #
    #   # All events are available at resp.optimized_prompt:
    #   resp.optimized_prompt #=> Enumerator
    #   resp.optimized_prompt.event_types #=> [:optimized_prompt_event, :analyze_prompt_event, :internal_server_exception, :throttling_exception, :validation_exception, :dependency_failed_exception, :access_denied_exception, :bad_gateway_exception]
    #
    #   # For :optimized_prompt_event event available at #on_optimized_prompt_event_event callback and response eventstream enumerator:
    #   event.optimized_prompt.text_prompt.text #=> String
    #
    #   # For :analyze_prompt_event event available at #on_analyze_prompt_event_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :internal_server_exception event available at #on_internal_server_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #   event.reason #=> String
    #
    #   # For :throttling_exception event available at #on_throttling_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :validation_exception event available at #on_validation_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :dependency_failed_exception event available at #on_dependency_failed_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #   event.resource_name #=> String
    #
    #   # For :access_denied_exception event available at #on_access_denied_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :bad_gateway_exception event available at #on_bad_gateway_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #   event.resource_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/OptimizePrompt AWS API Documentation
    #
    # @overload optimize_prompt(params = {})
    # @param [Hash] params ({})
    def optimize_prompt(params = {}, options = {}, &block)
      params = params.dup
      event_stream_handler = case handler = params.delete(:event_stream_handler)
        when EventStreams::OptimizedPromptStream then handler
        when Proc then EventStreams::OptimizedPromptStream.new.tap(&handler)
        when nil then EventStreams::OptimizedPromptStream.new
        else
          msg = "expected :event_stream_handler to be a block or "\
                "instance of Aws::BedrockAgentRuntime::EventStreams::OptimizedPromptStream"\
                ", got `#{handler.inspect}` instead"
          raise ArgumentError, msg
        end

      yield(event_stream_handler) if block_given?

      req = build_request(:optimize_prompt, params)

      req.context[:event_stream_handler] = event_stream_handler
      req.handlers.add(Aws::Binary::DecodeHandler, priority: 95)

      req.send_request(options, &block)
    end

    # Add an invocation step to an invocation in a session. An invocation
    # step stores fine-grained state checkpoints, including text and images,
    # for each interaction. For more information about sessions, see [Store
    # and retrieve conversation history and context with Amazon Bedrock
    # sessions][1].
    #
    # Related APIs:
    #
    # * [GetInvocationStep][2]
    #
    # * [ListInvocationSteps][3]
    #
    # * [ListInvocations][4]
    #
    # * [ListSessions][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_GetInvocationStep.html
    # [3]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_ListInvocationSteps.html
    # [4]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_ListInvocations.html
    #
    # @option params [required, String] :session_identifier
    #   The unique identifier for the session to add the invocation step to.
    #   You can specify either the session's `sessionId` or its Amazon
    #   Resource Name (ARN).
    #
    # @option params [required, String] :invocation_identifier
    #   The unique identifier (in UUID format) of the invocation to add the
    #   invocation step to.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :invocation_step_time
    #   The timestamp for when the invocation step occurred.
    #
    # @option params [required, Types::InvocationStepPayload] :payload
    #   The payload for the invocation step, including text and images for the
    #   interaction.
    #
    # @option params [String] :invocation_step_id
    #   The unique identifier of the invocation step in UUID format.
    #
    # @return [Types::PutInvocationStepResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutInvocationStepResponse#invocation_step_id #invocation_step_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_invocation_step({
    #     session_identifier: "SessionIdentifier", # required
    #     invocation_identifier: "InvocationIdentifier", # required
    #     invocation_step_time: Time.now, # required
    #     payload: { # required
    #       content_blocks: [
    #         {
    #           text: "BedrockSessionContentBlockTextString",
    #           image: {
    #             format: "png", # required, accepts png, jpeg, gif, webp
    #             source: { # required
    #               bytes: "data",
    #               s3_location: {
    #                 uri: "S3Uri", # required
    #               },
    #             },
    #           },
    #         },
    #       ],
    #     },
    #     invocation_step_id: "Uuid",
    #   })
    #
    # @example Response structure
    #
    #   resp.invocation_step_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/PutInvocationStep AWS API Documentation
    #
    # @overload put_invocation_step(params = {})
    # @param [Hash] params ({})
    def put_invocation_step(params = {}, options = {})
      req = build_request(:put_invocation_step, params)
      req.send_request(options)
    end

    # Reranks the relevance of sources based on queries. For more
    # information, see [Improve the relevance of query responses with a
    # reranker model][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/rerank.html
    #
    # @option params [required, Array<Types::RerankQuery>] :queries
    #   An array of objects, each of which contains information about a query
    #   to submit to the reranker model.
    #
    # @option params [required, Array<Types::RerankSource>] :sources
    #   An array of objects, each of which contains information about the
    #   sources to rerank.
    #
    # @option params [required, Types::RerankingConfiguration] :reranking_configuration
    #   Contains configurations for reranking.
    #
    # @option params [String] :next_token
    #   If the total number of results was greater than could fit in a
    #   response, a token is returned in the `nextToken` field. You can enter
    #   that token in this field to return the next batch of results.
    #
    # @return [Types::RerankResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RerankResponse#results #results} => Array&lt;Types::RerankResult&gt;
    #   * {Types::RerankResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rerank({
    #     queries: [ # required
    #       {
    #         type: "TEXT", # required, accepts TEXT
    #         text_query: { # required
    #           text: "RerankTextDocumentTextString",
    #         },
    #       },
    #     ],
    #     sources: [ # required
    #       {
    #         type: "INLINE", # required, accepts INLINE
    #         inline_document_source: { # required
    #           type: "TEXT", # required, accepts TEXT, JSON
    #           text_document: {
    #             text: "RerankTextDocumentTextString",
    #           },
    #           json_document: {
    #           },
    #         },
    #       },
    #     ],
    #     reranking_configuration: { # required
    #       type: "BEDROCK_RERANKING_MODEL", # required, accepts BEDROCK_RERANKING_MODEL
    #       bedrock_reranking_configuration: { # required
    #         number_of_results: 1,
    #         model_configuration: { # required
    #           model_arn: "BedrockModelArn", # required
    #           additional_model_request_fields: {
    #             "AdditionalModelRequestFieldsKey" => {
    #             },
    #           },
    #         },
    #       },
    #     },
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].index #=> Integer
    #   resp.results[0].relevance_score #=> Float
    #   resp.results[0].document.type #=> String, one of "TEXT", "JSON"
    #   resp.results[0].document.text_document.text #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/Rerank AWS API Documentation
    #
    # @overload rerank(params = {})
    # @param [Hash] params ({})
    def rerank(params = {}, options = {})
      req = build_request(:rerank, params)
      req.send_request(options)
    end

    # Queries a knowledge base and retrieves information from it.
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base to query.
    #
    # @option params [required, Types::KnowledgeBaseQuery] :retrieval_query
    #   Contains the query to send the knowledge base.
    #
    # @option params [Types::KnowledgeBaseRetrievalConfiguration] :retrieval_configuration
    #   Contains configurations for the knowledge base query and retrieval
    #   process. For more information, see [Query configurations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html
    #
    # @option params [Types::GuardrailConfiguration] :guardrail_configuration
    #   Guardrail settings.
    #
    # @option params [String] :next_token
    #   If there are more results than can fit in the response, the response
    #   returns a `nextToken`. Use this token in the `nextToken` field of
    #   another request to retrieve the next batch of results.
    #
    # @return [Types::RetrieveResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RetrieveResponse#retrieval_results #retrieval_results} => Array&lt;Types::KnowledgeBaseRetrievalResult&gt;
    #   * {Types::RetrieveResponse#guardrail_action #guardrail_action} => String
    #   * {Types::RetrieveResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retrieve({
    #     knowledge_base_id: "KnowledgeBaseId", # required
    #     retrieval_query: { # required
    #       text: "KnowledgeBaseQueryTextString", # required
    #     },
    #     retrieval_configuration: {
    #       vector_search_configuration: { # required
    #         number_of_results: 1,
    #         override_search_type: "HYBRID", # accepts HYBRID, SEMANTIC
    #         filter: {
    #           equals: {
    #             key: "FilterKey", # required
    #             value: { # required
    #             },
    #           },
    #           not_equals: {
    #             key: "FilterKey", # required
    #             value: { # required
    #             },
    #           },
    #           greater_than: {
    #             key: "FilterKey", # required
    #             value: { # required
    #             },
    #           },
    #           greater_than_or_equals: {
    #             key: "FilterKey", # required
    #             value: { # required
    #             },
    #           },
    #           less_than: {
    #             key: "FilterKey", # required
    #             value: { # required
    #             },
    #           },
    #           less_than_or_equals: {
    #             key: "FilterKey", # required
    #             value: { # required
    #             },
    #           },
    #           in: {
    #             key: "FilterKey", # required
    #             value: { # required
    #             },
    #           },
    #           not_in: {
    #             key: "FilterKey", # required
    #             value: { # required
    #             },
    #           },
    #           starts_with: {
    #             key: "FilterKey", # required
    #             value: { # required
    #             },
    #           },
    #           list_contains: {
    #             key: "FilterKey", # required
    #             value: { # required
    #             },
    #           },
    #           string_contains: {
    #             key: "FilterKey", # required
    #             value: { # required
    #             },
    #           },
    #           and_all: [
    #             {
    #               # recursive RetrievalFilter
    #             },
    #           ],
    #           or_all: [
    #             {
    #               # recursive RetrievalFilter
    #             },
    #           ],
    #         },
    #         reranking_configuration: {
    #           type: "BEDROCK_RERANKING_MODEL", # required, accepts BEDROCK_RERANKING_MODEL
    #           bedrock_reranking_configuration: {
    #             model_configuration: { # required
    #               model_arn: "BedrockRerankingModelArn", # required
    #               additional_model_request_fields: {
    #                 "AdditionalModelRequestFieldsKey" => {
    #                 },
    #               },
    #             },
    #             number_of_reranked_results: 1,
    #             metadata_configuration: {
    #               selection_mode: "SELECTIVE", # required, accepts SELECTIVE, ALL
    #               selective_mode_configuration: {
    #                 fields_to_include: [
    #                   {
    #                     field_name: "FieldForRerankingFieldNameString", # required
    #                   },
    #                 ],
    #                 fields_to_exclude: [
    #                   {
    #                     field_name: "FieldForRerankingFieldNameString", # required
    #                   },
    #                 ],
    #               },
    #             },
    #           },
    #         },
    #         implicit_filter_configuration: {
    #           metadata_attributes: [ # required
    #             {
    #               key: "MetadataAttributeSchemaKeyString", # required
    #               type: "STRING", # required, accepts STRING, NUMBER, BOOLEAN, STRING_LIST
    #               description: "MetadataAttributeSchemaDescriptionString", # required
    #             },
    #           ],
    #           model_arn: "BedrockModelArn", # required
    #         },
    #       },
    #     },
    #     guardrail_configuration: {
    #       guardrail_id: "GuardrailConfigurationGuardrailIdString", # required
    #       guardrail_version: "GuardrailConfigurationGuardrailVersionString", # required
    #     },
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.retrieval_results #=> Array
    #   resp.retrieval_results[0].content.type #=> String, one of "TEXT", "IMAGE", "ROW"
    #   resp.retrieval_results[0].content.text #=> String
    #   resp.retrieval_results[0].content.byte_content #=> String
    #   resp.retrieval_results[0].content.row #=> Array
    #   resp.retrieval_results[0].content.row[0].column_name #=> String
    #   resp.retrieval_results[0].content.row[0].column_value #=> String
    #   resp.retrieval_results[0].content.row[0].type #=> String, one of "BLOB", "BOOLEAN", "DOUBLE", "NULL", "LONG", "STRING"
    #   resp.retrieval_results[0].location.type #=> String, one of "S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "KENDRA", "SQL"
    #   resp.retrieval_results[0].location.s3_location.uri #=> String
    #   resp.retrieval_results[0].location.web_location.url #=> String
    #   resp.retrieval_results[0].location.confluence_location.url #=> String
    #   resp.retrieval_results[0].location.salesforce_location.url #=> String
    #   resp.retrieval_results[0].location.share_point_location.url #=> String
    #   resp.retrieval_results[0].location.custom_document_location.id #=> String
    #   resp.retrieval_results[0].location.kendra_document_location.uri #=> String
    #   resp.retrieval_results[0].location.sql_location.query #=> String
    #   resp.retrieval_results[0].score #=> Float
    #   resp.retrieval_results[0].metadata #=> Hash
    #   resp.guardrail_action #=> String, one of "INTERVENED", "NONE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/Retrieve AWS API Documentation
    #
    # @overload retrieve(params = {})
    # @param [Hash] params ({})
    def retrieve(params = {}, options = {})
      req = build_request(:retrieve, params)
      req.send_request(options)
    end

    # Queries a knowledge base and generates responses based on the
    # retrieved results and using the specified foundation model or
    # [inference profile][1]. The response only cites sources that are
    # relevant to the query.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html
    #
    # @option params [String] :session_id
    #   The unique identifier of the session. When you first make a
    #   `RetrieveAndGenerate` request, Amazon Bedrock automatically generates
    #   this value. You must reuse this value for all subsequent requests in
    #   the same conversational session. This value allows Amazon Bedrock to
    #   maintain context and knowledge from previous interactions. You can't
    #   explicitly set the `sessionId` yourself.
    #
    # @option params [required, Types::RetrieveAndGenerateInput] :input
    #   Contains the query to be made to the knowledge base.
    #
    # @option params [Types::RetrieveAndGenerateConfiguration] :retrieve_and_generate_configuration
    #   Contains configurations for the knowledge base query and retrieval
    #   process. For more information, see [Query configurations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html
    #
    # @option params [Types::RetrieveAndGenerateSessionConfiguration] :session_configuration
    #   Contains details about the session with the knowledge base.
    #
    # @return [Types::RetrieveAndGenerateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RetrieveAndGenerateResponse#session_id #session_id} => String
    #   * {Types::RetrieveAndGenerateResponse#output #output} => Types::RetrieveAndGenerateOutput
    #   * {Types::RetrieveAndGenerateResponse#citations #citations} => Array&lt;Types::Citation&gt;
    #   * {Types::RetrieveAndGenerateResponse#guardrail_action #guardrail_action} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retrieve_and_generate({
    #     session_id: "SessionId",
    #     input: { # required
    #       text: "RetrieveAndGenerateInputTextString", # required
    #     },
    #     retrieve_and_generate_configuration: {
    #       type: "KNOWLEDGE_BASE", # required, accepts KNOWLEDGE_BASE, EXTERNAL_SOURCES
    #       knowledge_base_configuration: {
    #         knowledge_base_id: "KnowledgeBaseId", # required
    #         model_arn: "BedrockModelArn", # required
    #         retrieval_configuration: {
    #           vector_search_configuration: { # required
    #             number_of_results: 1,
    #             override_search_type: "HYBRID", # accepts HYBRID, SEMANTIC
    #             filter: {
    #               equals: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               not_equals: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               greater_than: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               greater_than_or_equals: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               less_than: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               less_than_or_equals: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               in: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               not_in: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               starts_with: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               list_contains: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               string_contains: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               and_all: [
    #                 {
    #                   # recursive RetrievalFilter
    #                 },
    #               ],
    #               or_all: [
    #                 {
    #                   # recursive RetrievalFilter
    #                 },
    #               ],
    #             },
    #             reranking_configuration: {
    #               type: "BEDROCK_RERANKING_MODEL", # required, accepts BEDROCK_RERANKING_MODEL
    #               bedrock_reranking_configuration: {
    #                 model_configuration: { # required
    #                   model_arn: "BedrockRerankingModelArn", # required
    #                   additional_model_request_fields: {
    #                     "AdditionalModelRequestFieldsKey" => {
    #                     },
    #                   },
    #                 },
    #                 number_of_reranked_results: 1,
    #                 metadata_configuration: {
    #                   selection_mode: "SELECTIVE", # required, accepts SELECTIVE, ALL
    #                   selective_mode_configuration: {
    #                     fields_to_include: [
    #                       {
    #                         field_name: "FieldForRerankingFieldNameString", # required
    #                       },
    #                     ],
    #                     fields_to_exclude: [
    #                       {
    #                         field_name: "FieldForRerankingFieldNameString", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #               },
    #             },
    #             implicit_filter_configuration: {
    #               metadata_attributes: [ # required
    #                 {
    #                   key: "MetadataAttributeSchemaKeyString", # required
    #                   type: "STRING", # required, accepts STRING, NUMBER, BOOLEAN, STRING_LIST
    #                   description: "MetadataAttributeSchemaDescriptionString", # required
    #                 },
    #               ],
    #               model_arn: "BedrockModelArn", # required
    #             },
    #           },
    #         },
    #         generation_configuration: {
    #           prompt_template: {
    #             text_prompt_template: "TextPromptTemplate",
    #           },
    #           guardrail_configuration: {
    #             guardrail_id: "GuardrailConfigurationGuardrailIdString", # required
    #             guardrail_version: "GuardrailConfigurationGuardrailVersionString", # required
    #           },
    #           inference_config: {
    #             text_inference_config: {
    #               temperature: 1.0,
    #               top_p: 1.0,
    #               max_tokens: 1,
    #               stop_sequences: ["RAGStopSequencesMemberString"],
    #             },
    #           },
    #           additional_model_request_fields: {
    #             "AdditionalModelRequestFieldsKey" => {
    #             },
    #           },
    #           performance_config: {
    #             latency: "standard", # accepts standard, optimized
    #           },
    #         },
    #         orchestration_configuration: {
    #           prompt_template: {
    #             text_prompt_template: "TextPromptTemplate",
    #           },
    #           inference_config: {
    #             text_inference_config: {
    #               temperature: 1.0,
    #               top_p: 1.0,
    #               max_tokens: 1,
    #               stop_sequences: ["RAGStopSequencesMemberString"],
    #             },
    #           },
    #           additional_model_request_fields: {
    #             "AdditionalModelRequestFieldsKey" => {
    #             },
    #           },
    #           query_transformation_configuration: {
    #             type: "QUERY_DECOMPOSITION", # required, accepts QUERY_DECOMPOSITION
    #           },
    #           performance_config: {
    #             latency: "standard", # accepts standard, optimized
    #           },
    #         },
    #       },
    #       external_sources_configuration: {
    #         model_arn: "BedrockModelArn", # required
    #         sources: [ # required
    #           {
    #             source_type: "S3", # required, accepts S3, BYTE_CONTENT
    #             s3_location: {
    #               uri: "S3Uri", # required
    #             },
    #             byte_content: {
    #               identifier: "Identifier", # required
    #               content_type: "ContentType", # required
    #               data: "data", # required
    #             },
    #           },
    #         ],
    #         generation_configuration: {
    #           prompt_template: {
    #             text_prompt_template: "TextPromptTemplate",
    #           },
    #           guardrail_configuration: {
    #             guardrail_id: "GuardrailConfigurationGuardrailIdString", # required
    #             guardrail_version: "GuardrailConfigurationGuardrailVersionString", # required
    #           },
    #           inference_config: {
    #             text_inference_config: {
    #               temperature: 1.0,
    #               top_p: 1.0,
    #               max_tokens: 1,
    #               stop_sequences: ["RAGStopSequencesMemberString"],
    #             },
    #           },
    #           additional_model_request_fields: {
    #             "AdditionalModelRequestFieldsKey" => {
    #             },
    #           },
    #           performance_config: {
    #             latency: "standard", # accepts standard, optimized
    #           },
    #         },
    #       },
    #     },
    #     session_configuration: {
    #       kms_key_arn: "KmsKeyArn", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.session_id #=> String
    #   resp.output.text #=> String
    #   resp.citations #=> Array
    #   resp.citations[0].generated_response_part.text_response_part.text #=> String
    #   resp.citations[0].generated_response_part.text_response_part.span.start #=> Integer
    #   resp.citations[0].generated_response_part.text_response_part.span.end #=> Integer
    #   resp.citations[0].retrieved_references #=> Array
    #   resp.citations[0].retrieved_references[0].content.type #=> String, one of "TEXT", "IMAGE", "ROW"
    #   resp.citations[0].retrieved_references[0].content.text #=> String
    #   resp.citations[0].retrieved_references[0].content.byte_content #=> String
    #   resp.citations[0].retrieved_references[0].content.row #=> Array
    #   resp.citations[0].retrieved_references[0].content.row[0].column_name #=> String
    #   resp.citations[0].retrieved_references[0].content.row[0].column_value #=> String
    #   resp.citations[0].retrieved_references[0].content.row[0].type #=> String, one of "BLOB", "BOOLEAN", "DOUBLE", "NULL", "LONG", "STRING"
    #   resp.citations[0].retrieved_references[0].location.type #=> String, one of "S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "KENDRA", "SQL"
    #   resp.citations[0].retrieved_references[0].location.s3_location.uri #=> String
    #   resp.citations[0].retrieved_references[0].location.web_location.url #=> String
    #   resp.citations[0].retrieved_references[0].location.confluence_location.url #=> String
    #   resp.citations[0].retrieved_references[0].location.salesforce_location.url #=> String
    #   resp.citations[0].retrieved_references[0].location.share_point_location.url #=> String
    #   resp.citations[0].retrieved_references[0].location.custom_document_location.id #=> String
    #   resp.citations[0].retrieved_references[0].location.kendra_document_location.uri #=> String
    #   resp.citations[0].retrieved_references[0].location.sql_location.query #=> String
    #   resp.citations[0].retrieved_references[0].metadata #=> Hash
    #   resp.guardrail_action #=> String, one of "INTERVENED", "NONE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrieveAndGenerate AWS API Documentation
    #
    # @overload retrieve_and_generate(params = {})
    # @param [Hash] params ({})
    def retrieve_and_generate(params = {}, options = {})
      req = build_request(:retrieve_and_generate, params)
      req.send_request(options)
    end

    # Queries a knowledge base and generates responses based on the
    # retrieved results, with output in streaming format.
    #
    # <note markdown="1"> The CLI doesn't support streaming operations in Amazon Bedrock,
    # including `InvokeModelWithResponseStream`.
    #
    #  </note>
    #
    # This operation requires permission for the `
    # bedrock:RetrieveAndGenerate` action.
    #
    # @option params [String] :session_id
    #   The unique identifier of the session. When you first make a
    #   `RetrieveAndGenerate` request, Amazon Bedrock automatically generates
    #   this value. You must reuse this value for all subsequent requests in
    #   the same conversational session. This value allows Amazon Bedrock to
    #   maintain context and knowledge from previous interactions. You can't
    #   explicitly set the `sessionId` yourself.
    #
    # @option params [required, Types::RetrieveAndGenerateInput] :input
    #   Contains the query to be made to the knowledge base.
    #
    # @option params [Types::RetrieveAndGenerateConfiguration] :retrieve_and_generate_configuration
    #   Contains configurations for the knowledge base query and retrieval
    #   process. For more information, see [Query configurations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html
    #
    # @option params [Types::RetrieveAndGenerateSessionConfiguration] :session_configuration
    #   Contains details about the session with the knowledge base.
    #
    # @return [Types::RetrieveAndGenerateStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RetrieveAndGenerateStreamResponse#stream #stream} => Types::RetrieveAndGenerateStreamResponseOutput
    #   * {Types::RetrieveAndGenerateStreamResponse#session_id #session_id} => String
    #
    # @example EventStream Operation Example
    #
    #   # You can process the event once it arrives immediately, or wait until the
    #   # full response is complete and iterate through the eventstream enumerator.
    #
    #   # To interact with event immediately, you need to register retrieve_and_generate_stream
    #   # with callbacks. Callbacks can be registered for specific events or for all
    #   # events, including error events.
    #
    #   # Callbacks can be passed into the `:event_stream_handler` option or within a
    #   # block statement attached to the #retrieve_and_generate_stream call directly. Hybrid
    #   # pattern of both is also supported.
    #
    #   # `:event_stream_handler` option takes in either a Proc object or
    #   # Aws::BedrockAgentRuntime::EventStreams::RetrieveAndGenerateStreamResponseOutput object.
    #
    #   # Usage pattern a): Callbacks with a block attached to #retrieve_and_generate_stream
    #   # Example for registering callbacks for all event types and an error event
    #   client.retrieve_and_generate_stream(
    #     # params input
    #   ) do |stream|
    #     stream.on_error_event do |event|
    #       # catch unmodeled error event in the stream
    #       raise event
    #       # => Aws::Errors::EventError
    #       # event.event_type => :error
    #       # event.error_code => String
    #       # event.error_message => String
    #     end
    #
    #     stream.on_event do |event|
    #       # process all events arrive
    #       puts event.event_type
    #       # ...
    #     end
    #   end
    #
    #   # Usage pattern b): Pass in `:event_stream_handler` for #retrieve_and_generate_stream
    #   #  1) Create a Aws::BedrockAgentRuntime::EventStreams::RetrieveAndGenerateStreamResponseOutput object
    #   #  Example for registering callbacks with specific events
    #
    #   handler = Aws::BedrockAgentRuntime::EventStreams::RetrieveAndGenerateStreamResponseOutput.new
    #   handler.on_output_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::output
    #   end
    #   handler.on_citation_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::citation
    #   end
    #   handler.on_guardrail_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::guardrail
    #   end
    #   handler.on_internal_server_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::internalServerException
    #   end
    #   handler.on_validation_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::validationException
    #   end
    #   handler.on_resource_not_found_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::resourceNotFoundException
    #   end
    #   handler.on_service_quota_exceeded_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::serviceQuotaExceededException
    #   end
    #   handler.on_throttling_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::throttlingException
    #   end
    #   handler.on_access_denied_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::accessDeniedException
    #   end
    #   handler.on_conflict_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::conflictException
    #   end
    #   handler.on_dependency_failed_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::dependencyFailedException
    #   end
    #   handler.on_bad_gateway_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::badGatewayException
    #   end
    #
    #   client.retrieve_and_generate_stream(
    #     # params inputs
    #     event_stream_handler: handler
    #   )
    #
    #   #  2) Use a Ruby Proc object
    #   #  Example for registering callbacks with specific events
    #   handler = Proc.new do |stream|
    #     stream.on_output_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::output
    #     end
    #     stream.on_citation_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::citation
    #     end
    #     stream.on_guardrail_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::guardrail
    #     end
    #     stream.on_internal_server_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::internalServerException
    #     end
    #     stream.on_validation_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::validationException
    #     end
    #     stream.on_resource_not_found_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::resourceNotFoundException
    #     end
    #     stream.on_service_quota_exceeded_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::serviceQuotaExceededException
    #     end
    #     stream.on_throttling_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::throttlingException
    #     end
    #     stream.on_access_denied_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::accessDeniedException
    #     end
    #     stream.on_conflict_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::conflictException
    #     end
    #     stream.on_dependency_failed_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::dependencyFailedException
    #     end
    #     stream.on_bad_gateway_exception_event do |event|
    #       event # => Aws::BedrockAgentRuntime::Types::badGatewayException
    #     end
    #   end
    #
    #   client.retrieve_and_generate_stream(
    #     # params inputs
    #     event_stream_handler: handler
    #   )
    #
    #   #  Usage pattern c): Hybrid pattern of a) and b)
    #   handler = Aws::BedrockAgentRuntime::EventStreams::RetrieveAndGenerateStreamResponseOutput.new
    #   handler.on_output_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::output
    #   end
    #   handler.on_citation_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::citation
    #   end
    #   handler.on_guardrail_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::guardrail
    #   end
    #   handler.on_internal_server_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::internalServerException
    #   end
    #   handler.on_validation_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::validationException
    #   end
    #   handler.on_resource_not_found_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::resourceNotFoundException
    #   end
    #   handler.on_service_quota_exceeded_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::serviceQuotaExceededException
    #   end
    #   handler.on_throttling_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::throttlingException
    #   end
    #   handler.on_access_denied_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::accessDeniedException
    #   end
    #   handler.on_conflict_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::conflictException
    #   end
    #   handler.on_dependency_failed_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::dependencyFailedException
    #   end
    #   handler.on_bad_gateway_exception_event do |event|
    #     event # => Aws::BedrockAgentRuntime::Types::badGatewayException
    #   end
    #
    #   client.retrieve_and_generate_stream(
    #     # params input
    #     event_stream_handler: handler
    #   ) do |stream|
    #     stream.on_error_event do |event|
    #       # catch unmodeled error event in the stream
    #       raise event
    #       # => Aws::Errors::EventError
    #       # event.event_type => :error
    #       # event.error_code => String
    #       # event.error_message => String
    #     end
    #   end
    #
    #   # You can also iterate through events after the response complete.
    #   # Events are available at
    #   resp.stream # => Enumerator
    #   # For parameter input example, please refer to following request syntax.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retrieve_and_generate_stream({
    #     session_id: "SessionId",
    #     input: { # required
    #       text: "RetrieveAndGenerateInputTextString", # required
    #     },
    #     retrieve_and_generate_configuration: {
    #       type: "KNOWLEDGE_BASE", # required, accepts KNOWLEDGE_BASE, EXTERNAL_SOURCES
    #       knowledge_base_configuration: {
    #         knowledge_base_id: "KnowledgeBaseId", # required
    #         model_arn: "BedrockModelArn", # required
    #         retrieval_configuration: {
    #           vector_search_configuration: { # required
    #             number_of_results: 1,
    #             override_search_type: "HYBRID", # accepts HYBRID, SEMANTIC
    #             filter: {
    #               equals: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               not_equals: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               greater_than: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               greater_than_or_equals: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               less_than: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               less_than_or_equals: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               in: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               not_in: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               starts_with: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               list_contains: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               string_contains: {
    #                 key: "FilterKey", # required
    #                 value: { # required
    #                 },
    #               },
    #               and_all: [
    #                 {
    #                   # recursive RetrievalFilter
    #                 },
    #               ],
    #               or_all: [
    #                 {
    #                   # recursive RetrievalFilter
    #                 },
    #               ],
    #             },
    #             reranking_configuration: {
    #               type: "BEDROCK_RERANKING_MODEL", # required, accepts BEDROCK_RERANKING_MODEL
    #               bedrock_reranking_configuration: {
    #                 model_configuration: { # required
    #                   model_arn: "BedrockRerankingModelArn", # required
    #                   additional_model_request_fields: {
    #                     "AdditionalModelRequestFieldsKey" => {
    #                     },
    #                   },
    #                 },
    #                 number_of_reranked_results: 1,
    #                 metadata_configuration: {
    #                   selection_mode: "SELECTIVE", # required, accepts SELECTIVE, ALL
    #                   selective_mode_configuration: {
    #                     fields_to_include: [
    #                       {
    #                         field_name: "FieldForRerankingFieldNameString", # required
    #                       },
    #                     ],
    #                     fields_to_exclude: [
    #                       {
    #                         field_name: "FieldForRerankingFieldNameString", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #               },
    #             },
    #             implicit_filter_configuration: {
    #               metadata_attributes: [ # required
    #                 {
    #                   key: "MetadataAttributeSchemaKeyString", # required
    #                   type: "STRING", # required, accepts STRING, NUMBER, BOOLEAN, STRING_LIST
    #                   description: "MetadataAttributeSchemaDescriptionString", # required
    #                 },
    #               ],
    #               model_arn: "BedrockModelArn", # required
    #             },
    #           },
    #         },
    #         generation_configuration: {
    #           prompt_template: {
    #             text_prompt_template: "TextPromptTemplate",
    #           },
    #           guardrail_configuration: {
    #             guardrail_id: "GuardrailConfigurationGuardrailIdString", # required
    #             guardrail_version: "GuardrailConfigurationGuardrailVersionString", # required
    #           },
    #           inference_config: {
    #             text_inference_config: {
    #               temperature: 1.0,
    #               top_p: 1.0,
    #               max_tokens: 1,
    #               stop_sequences: ["RAGStopSequencesMemberString"],
    #             },
    #           },
    #           additional_model_request_fields: {
    #             "AdditionalModelRequestFieldsKey" => {
    #             },
    #           },
    #           performance_config: {
    #             latency: "standard", # accepts standard, optimized
    #           },
    #         },
    #         orchestration_configuration: {
    #           prompt_template: {
    #             text_prompt_template: "TextPromptTemplate",
    #           },
    #           inference_config: {
    #             text_inference_config: {
    #               temperature: 1.0,
    #               top_p: 1.0,
    #               max_tokens: 1,
    #               stop_sequences: ["RAGStopSequencesMemberString"],
    #             },
    #           },
    #           additional_model_request_fields: {
    #             "AdditionalModelRequestFieldsKey" => {
    #             },
    #           },
    #           query_transformation_configuration: {
    #             type: "QUERY_DECOMPOSITION", # required, accepts QUERY_DECOMPOSITION
    #           },
    #           performance_config: {
    #             latency: "standard", # accepts standard, optimized
    #           },
    #         },
    #       },
    #       external_sources_configuration: {
    #         model_arn: "BedrockModelArn", # required
    #         sources: [ # required
    #           {
    #             source_type: "S3", # required, accepts S3, BYTE_CONTENT
    #             s3_location: {
    #               uri: "S3Uri", # required
    #             },
    #             byte_content: {
    #               identifier: "Identifier", # required
    #               content_type: "ContentType", # required
    #               data: "data", # required
    #             },
    #           },
    #         ],
    #         generation_configuration: {
    #           prompt_template: {
    #             text_prompt_template: "TextPromptTemplate",
    #           },
    #           guardrail_configuration: {
    #             guardrail_id: "GuardrailConfigurationGuardrailIdString", # required
    #             guardrail_version: "GuardrailConfigurationGuardrailVersionString", # required
    #           },
    #           inference_config: {
    #             text_inference_config: {
    #               temperature: 1.0,
    #               top_p: 1.0,
    #               max_tokens: 1,
    #               stop_sequences: ["RAGStopSequencesMemberString"],
    #             },
    #           },
    #           additional_model_request_fields: {
    #             "AdditionalModelRequestFieldsKey" => {
    #             },
    #           },
    #           performance_config: {
    #             latency: "standard", # accepts standard, optimized
    #           },
    #         },
    #       },
    #     },
    #     session_configuration: {
    #       kms_key_arn: "KmsKeyArn", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   # All events are available at resp.stream:
    #   resp.stream #=> Enumerator
    #   resp.stream.event_types #=> [:output, :citation, :guardrail, :internal_server_exception, :validation_exception, :resource_not_found_exception, :service_quota_exceeded_exception, :throttling_exception, :access_denied_exception, :conflict_exception, :dependency_failed_exception, :bad_gateway_exception]
    #
    #   # For :output event available at #on_output_event callback and response eventstream enumerator:
    #   event.text #=> String
    #
    #   # For :citation event available at #on_citation_event callback and response eventstream enumerator:
    #   event.citation.generated_response_part.text_response_part.text #=> String
    #   event.citation.generated_response_part.text_response_part.span.start #=> Integer
    #   event.citation.generated_response_part.text_response_part.span.end #=> Integer
    #   event.citation.retrieved_references #=> Array
    #   event.citation.retrieved_references[0].content.type #=> String, one of "TEXT", "IMAGE", "ROW"
    #   event.citation.retrieved_references[0].content.text #=> String
    #   event.citation.retrieved_references[0].content.byte_content #=> String
    #   event.citation.retrieved_references[0].content.row #=> Array
    #   event.citation.retrieved_references[0].content.row[0].column_name #=> String
    #   event.citation.retrieved_references[0].content.row[0].column_value #=> String
    #   event.citation.retrieved_references[0].content.row[0].type #=> String, one of "BLOB", "BOOLEAN", "DOUBLE", "NULL", "LONG", "STRING"
    #   event.citation.retrieved_references[0].location.type #=> String, one of "S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "KENDRA", "SQL"
    #   event.citation.retrieved_references[0].location.s3_location.uri #=> String
    #   event.citation.retrieved_references[0].location.web_location.url #=> String
    #   event.citation.retrieved_references[0].location.confluence_location.url #=> String
    #   event.citation.retrieved_references[0].location.salesforce_location.url #=> String
    #   event.citation.retrieved_references[0].location.share_point_location.url #=> String
    #   event.citation.retrieved_references[0].location.custom_document_location.id #=> String
    #   event.citation.retrieved_references[0].location.kendra_document_location.uri #=> String
    #   event.citation.retrieved_references[0].location.sql_location.query #=> String
    #   event.citation.retrieved_references[0].metadata #=> Hash
    #   event.generated_response_part.text_response_part.text #=> String
    #   event.generated_response_part.text_response_part.span.start #=> Integer
    #   event.generated_response_part.text_response_part.span.end #=> Integer
    #   event.retrieved_references #=> Array
    #   event.retrieved_references[0].content.type #=> String, one of "TEXT", "IMAGE", "ROW"
    #   event.retrieved_references[0].content.text #=> String
    #   event.retrieved_references[0].content.byte_content #=> String
    #   event.retrieved_references[0].content.row #=> Array
    #   event.retrieved_references[0].content.row[0].column_name #=> String
    #   event.retrieved_references[0].content.row[0].column_value #=> String
    #   event.retrieved_references[0].content.row[0].type #=> String, one of "BLOB", "BOOLEAN", "DOUBLE", "NULL", "LONG", "STRING"
    #   event.retrieved_references[0].location.type #=> String, one of "S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "KENDRA", "SQL"
    #   event.retrieved_references[0].location.s3_location.uri #=> String
    #   event.retrieved_references[0].location.web_location.url #=> String
    #   event.retrieved_references[0].location.confluence_location.url #=> String
    #   event.retrieved_references[0].location.salesforce_location.url #=> String
    #   event.retrieved_references[0].location.share_point_location.url #=> String
    #   event.retrieved_references[0].location.custom_document_location.id #=> String
    #   event.retrieved_references[0].location.kendra_document_location.uri #=> String
    #   event.retrieved_references[0].location.sql_location.query #=> String
    #   event.retrieved_references[0].metadata #=> Hash
    #
    #   # For :guardrail event available at #on_guardrail_event callback and response eventstream enumerator:
    #   event.action #=> String, one of "INTERVENED", "NONE"
    #
    #   # For :internal_server_exception event available at #on_internal_server_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #   event.reason #=> String
    #
    #   # For :validation_exception event available at #on_validation_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :resource_not_found_exception event available at #on_resource_not_found_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :service_quota_exceeded_exception event available at #on_service_quota_exceeded_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :throttling_exception event available at #on_throttling_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :access_denied_exception event available at #on_access_denied_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :conflict_exception event available at #on_conflict_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :dependency_failed_exception event available at #on_dependency_failed_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #   event.resource_name #=> String
    #
    #   # For :bad_gateway_exception event available at #on_bad_gateway_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #   event.resource_name #=> String
    #
    #   resp.session_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrieveAndGenerateStream AWS API Documentation
    #
    # @overload retrieve_and_generate_stream(params = {})
    # @param [Hash] params ({})
    def retrieve_and_generate_stream(params = {}, options = {}, &block)
      params = params.dup
      event_stream_handler = case handler = params.delete(:event_stream_handler)
        when EventStreams::RetrieveAndGenerateStreamResponseOutput then handler
        when Proc then EventStreams::RetrieveAndGenerateStreamResponseOutput.new.tap(&handler)
        when nil then EventStreams::RetrieveAndGenerateStreamResponseOutput.new
        else
          msg = "expected :event_stream_handler to be a block or "\
                "instance of Aws::BedrockAgentRuntime::EventStreams::RetrieveAndGenerateStreamResponseOutput"\
                ", got `#{handler.inspect}` instead"
          raise ArgumentError, msg
        end

      yield(event_stream_handler) if block_given?

      req = build_request(:retrieve_and_generate_stream, params)

      req.context[:event_stream_handler] = event_stream_handler
      req.handlers.add(Aws::Binary::DecodeHandler, priority: 95)

      req.send_request(options, &block)
    end

    # Starts an execution of an Amazon Bedrock flow. Unlike flows that run
    # until completion or time out after five minutes, flow executions let
    # you run flows asynchronously for longer durations. Flow executions
    # also yield control so that your application can perform other tasks.
    #
    # This operation returns an Amazon Resource Name (ARN) that you can use
    # to track and manage your flow execution.
    #
    # <note markdown="1"> Flow executions is in preview release for Amazon Bedrock and is
    # subject to change.
    #
    #  </note>
    #
    # @option params [required, String] :flow_identifier
    #   The unique identifier of the flow to execute.
    #
    # @option params [required, String] :flow_alias_identifier
    #   The unique identifier of the flow alias to use for the flow execution.
    #
    # @option params [String] :flow_execution_name
    #   The unique name for the flow execution. If you don't provide one, a
    #   system-generated name is used.
    #
    # @option params [required, Array<Types::FlowInput>] :inputs
    #   The input data required for the flow execution. This must match the
    #   input schema defined in the flow.
    #
    # @option params [Types::ModelPerformanceConfiguration] :model_performance_configuration
    #   The performance settings for the foundation model used in the flow
    #   execution.
    #
    # @return [Types::StartFlowExecutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartFlowExecutionResponse#execution_arn #execution_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_flow_execution({
    #     flow_identifier: "FlowIdentifier", # required
    #     flow_alias_identifier: "FlowAliasIdentifier", # required
    #     flow_execution_name: "FlowExecutionName",
    #     inputs: [ # required
    #       {
    #         node_name: "NodeName", # required
    #         node_output_name: "NodeOutputName",
    #         content: { # required
    #           document: {
    #           },
    #         },
    #         node_input_name: "NodeInputName",
    #       },
    #     ],
    #     model_performance_configuration: {
    #       performance_config: {
    #         latency: "standard", # accepts standard, optimized
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.execution_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/StartFlowExecution AWS API Documentation
    #
    # @overload start_flow_execution(params = {})
    # @param [Hash] params ({})
    def start_flow_execution(params = {}, options = {})
      req = build_request(:start_flow_execution, params)
      req.send_request(options)
    end

    # Stops an Amazon Bedrock flow's execution. This operation prevents
    # further processing of the flow and changes the execution status to
    # `Aborted`.
    #
    # @option params [required, String] :flow_identifier
    #   The unique identifier of the flow.
    #
    # @option params [required, String] :flow_alias_identifier
    #   The unique identifier of the flow alias used for the execution.
    #
    # @option params [required, String] :execution_identifier
    #   The unique identifier of the flow execution to stop.
    #
    # @return [Types::StopFlowExecutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopFlowExecutionResponse#execution_arn #execution_arn} => String
    #   * {Types::StopFlowExecutionResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_flow_execution({
    #     flow_identifier: "FlowIdentifier", # required
    #     flow_alias_identifier: "FlowAliasIdentifier", # required
    #     execution_identifier: "FlowExecutionIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.execution_arn #=> String
    #   resp.status #=> String, one of "Running", "Succeeded", "Failed", "TimedOut", "Aborted"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/StopFlowExecution AWS API Documentation
    #
    # @overload stop_flow_execution(params = {})
    # @param [Hash] params ({})
    def stop_flow_execution(params = {}, options = {})
      req = build_request(:stop_flow_execution, params)
      req.send_request(options)
    end

    # Associate tags with a resource. For more information, see [Tagging
    # resources][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to tag.
    #
    # @option params [required, Hash<String,String>] :tags
    #   An object containing key-value pairs that define the tags to attach to
    #   the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Remove tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which to remove
    #   tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of keys of the tags to remove from the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the metadata or encryption settings of a session. For more
    # information about sessions, see [Store and retrieve conversation
    # history and context with Amazon Bedrock sessions][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html
    #
    # @option params [Hash<String,String>] :session_metadata
    #   A map of key-value pairs containing attributes to be persisted across
    #   the session. For example the user's ID, their language preference,
    #   and the type of device they are using.
    #
    # @option params [required, String] :session_identifier
    #   The unique identifier of the session to modify. You can specify either
    #   the session's `sessionId` or its Amazon Resource Name (ARN).
    #
    # @return [Types::UpdateSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSessionResponse#session_id #session_id} => String
    #   * {Types::UpdateSessionResponse#session_arn #session_arn} => String
    #   * {Types::UpdateSessionResponse#session_status #session_status} => String
    #   * {Types::UpdateSessionResponse#created_at #created_at} => Time
    #   * {Types::UpdateSessionResponse#last_updated_at #last_updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_session({
    #     session_metadata: {
    #       "SessionMetadataKey" => "SessionMetadataValue",
    #     },
    #     session_identifier: "SessionIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.session_id #=> String
    #   resp.session_arn #=> String
    #   resp.session_status #=> String, one of "ACTIVE", "EXPIRED", "ENDED"
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/UpdateSession AWS API Documentation
    #
    # @overload update_session(params = {})
    # @param [Hash] params ({})
    def update_session(params = {}, options = {})
      req = build_request(:update_session, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::BedrockAgentRuntime')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-bedrockagentruntime'
      context[:gem_version] = '1.64.0'
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
