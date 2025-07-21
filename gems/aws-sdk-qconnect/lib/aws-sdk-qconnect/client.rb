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

module Aws::QConnect
  # An API client for QConnect.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::QConnect::Client.new(
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

    @identifier = :qconnect

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
    add_plugin(Aws::QConnect::Plugins::Endpoints)

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
    #   @option options [Aws::QConnect::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::QConnect::EndpointParameters`.
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

    # Activates a specific version of the Amazon Q in Connect message
    # template. After the version is activated, the previous active version
    # will be deactivated automatically. You can use the `$ACTIVE_VERSION`
    # qualifier later to reference the version that is in active status.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @option params [required, String] :message_template_id
    #   The identifier of the message template. Can be either the ID or the
    #   ARN. It cannot contain any qualifier.
    #
    # @option params [required, Integer] :version_number
    #   The version number of the message template version to activate.
    #
    # @return [Types::ActivateMessageTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ActivateMessageTemplateResponse#message_template_arn #message_template_arn} => String
    #   * {Types::ActivateMessageTemplateResponse#message_template_id #message_template_id} => String
    #   * {Types::ActivateMessageTemplateResponse#version_number #version_number} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.activate_message_template({
    #     knowledge_base_id: "UuidOrArn", # required
    #     message_template_id: "UuidOrArnOrEitherWithQualifier", # required
    #     version_number: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message_template_arn #=> String
    #   resp.message_template_id #=> String
    #   resp.version_number #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ActivateMessageTemplate AWS API Documentation
    #
    # @overload activate_message_template(params = {})
    # @param [Hash] params ({})
    def activate_message_template(params = {}, options = {})
      req = build_request(:activate_message_template, params)
      req.send_request(options)
    end

    # Creates an Amazon Q in Connect AI Agent.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1]..
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :name
    #   The name of the AI Agent.
    #
    # @option params [required, String] :type
    #   The type of the AI Agent.
    #
    # @option params [required, Types::AIAgentConfiguration] :configuration
    #   The configuration of the AI Agent.
    #
    # @option params [required, String] :visibility_status
    #   The visibility status of the AI Agent.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @option params [String] :description
    #   The description of the AI Agent.
    #
    # @return [Types::CreateAIAgentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAIAgentResponse#ai_agent #ai_agent} => Types::AIAgentData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ai_agent({
    #     client_token: "ClientToken",
    #     assistant_id: "UuidOrArn", # required
    #     name: "Name", # required
    #     type: "MANUAL_SEARCH", # required, accepts MANUAL_SEARCH, ANSWER_RECOMMENDATION, SELF_SERVICE
    #     configuration: { # required
    #       manual_search_ai_agent_configuration: {
    #         answer_generation_ai_prompt_id: "UuidWithQualifier",
    #         answer_generation_ai_guardrail_id: "UuidWithQualifier",
    #         association_configurations: [
    #           {
    #             association_id: "Uuid",
    #             association_type: "KNOWLEDGE_BASE", # accepts KNOWLEDGE_BASE
    #             association_configuration_data: {
    #               knowledge_base_association_configuration_data: {
    #                 content_tag_filter: {
    #                   tag_condition: {
    #                     key: "TagKey", # required
    #                     value: "TagValue",
    #                   },
    #                   and_conditions: [
    #                     {
    #                       key: "TagKey", # required
    #                       value: "TagValue",
    #                     },
    #                   ],
    #                   or_conditions: [
    #                     {
    #                       and_conditions: [
    #                         {
    #                           key: "TagKey", # required
    #                           value: "TagValue",
    #                         },
    #                       ],
    #                       tag_condition: {
    #                         key: "TagKey", # required
    #                         value: "TagValue",
    #                       },
    #                     },
    #                   ],
    #                 },
    #                 max_results: 1,
    #                 override_knowledge_base_search_type: "HYBRID", # accepts HYBRID, SEMANTIC
    #               },
    #             },
    #           },
    #         ],
    #         locale: "NonEmptyString",
    #       },
    #       answer_recommendation_ai_agent_configuration: {
    #         intent_labeling_generation_ai_prompt_id: "UuidWithQualifier",
    #         query_reformulation_ai_prompt_id: "UuidWithQualifier",
    #         answer_generation_ai_prompt_id: "UuidWithQualifier",
    #         answer_generation_ai_guardrail_id: "UuidWithQualifier",
    #         association_configurations: [
    #           {
    #             association_id: "Uuid",
    #             association_type: "KNOWLEDGE_BASE", # accepts KNOWLEDGE_BASE
    #             association_configuration_data: {
    #               knowledge_base_association_configuration_data: {
    #                 content_tag_filter: {
    #                   tag_condition: {
    #                     key: "TagKey", # required
    #                     value: "TagValue",
    #                   },
    #                   and_conditions: [
    #                     {
    #                       key: "TagKey", # required
    #                       value: "TagValue",
    #                     },
    #                   ],
    #                   or_conditions: [
    #                     {
    #                       and_conditions: [
    #                         {
    #                           key: "TagKey", # required
    #                           value: "TagValue",
    #                         },
    #                       ],
    #                       tag_condition: {
    #                         key: "TagKey", # required
    #                         value: "TagValue",
    #                       },
    #                     },
    #                   ],
    #                 },
    #                 max_results: 1,
    #                 override_knowledge_base_search_type: "HYBRID", # accepts HYBRID, SEMANTIC
    #               },
    #             },
    #           },
    #         ],
    #         locale: "NonEmptyString",
    #       },
    #       self_service_ai_agent_configuration: {
    #         self_service_pre_processing_ai_prompt_id: "UuidWithQualifier",
    #         self_service_answer_generation_ai_prompt_id: "UuidWithQualifier",
    #         self_service_ai_guardrail_id: "UuidWithQualifier",
    #         association_configurations: [
    #           {
    #             association_id: "Uuid",
    #             association_type: "KNOWLEDGE_BASE", # accepts KNOWLEDGE_BASE
    #             association_configuration_data: {
    #               knowledge_base_association_configuration_data: {
    #                 content_tag_filter: {
    #                   tag_condition: {
    #                     key: "TagKey", # required
    #                     value: "TagValue",
    #                   },
    #                   and_conditions: [
    #                     {
    #                       key: "TagKey", # required
    #                       value: "TagValue",
    #                     },
    #                   ],
    #                   or_conditions: [
    #                     {
    #                       and_conditions: [
    #                         {
    #                           key: "TagKey", # required
    #                           value: "TagValue",
    #                         },
    #                       ],
    #                       tag_condition: {
    #                         key: "TagKey", # required
    #                         value: "TagValue",
    #                       },
    #                     },
    #                   ],
    #                 },
    #                 max_results: 1,
    #                 override_knowledge_base_search_type: "HYBRID", # accepts HYBRID, SEMANTIC
    #               },
    #             },
    #           },
    #         ],
    #       },
    #     },
    #     visibility_status: "SAVED", # required, accepts SAVED, PUBLISHED
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.ai_agent.assistant_id #=> String
    #   resp.ai_agent.assistant_arn #=> String
    #   resp.ai_agent.ai_agent_id #=> String
    #   resp.ai_agent.ai_agent_arn #=> String
    #   resp.ai_agent.name #=> String
    #   resp.ai_agent.type #=> String, one of "MANUAL_SEARCH", "ANSWER_RECOMMENDATION", "SELF_SERVICE"
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.answer_generation_ai_prompt_id #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.answer_generation_ai_guardrail_id #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations #=> Array
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_id #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_type #=> String, one of "KNOWLEDGE_BASE"
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.key #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.value #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions #=> Array
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].key #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].value #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions #=> Array
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions #=> Array
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].key #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].value #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.key #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.value #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.max_results #=> Integer
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.override_knowledge_base_search_type #=> String, one of "HYBRID", "SEMANTIC"
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.locale #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.intent_labeling_generation_ai_prompt_id #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.query_reformulation_ai_prompt_id #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.answer_generation_ai_prompt_id #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.answer_generation_ai_guardrail_id #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations #=> Array
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_id #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_type #=> String, one of "KNOWLEDGE_BASE"
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.key #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.value #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions #=> Array
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].key #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].value #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions #=> Array
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions #=> Array
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].key #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].value #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.key #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.value #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.max_results #=> Integer
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.override_knowledge_base_search_type #=> String, one of "HYBRID", "SEMANTIC"
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.locale #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.self_service_pre_processing_ai_prompt_id #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.self_service_answer_generation_ai_prompt_id #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.self_service_ai_guardrail_id #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations #=> Array
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_id #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_type #=> String, one of "KNOWLEDGE_BASE"
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.key #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.value #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions #=> Array
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].key #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].value #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions #=> Array
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions #=> Array
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].key #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].value #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.key #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.value #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.max_results #=> Integer
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.override_knowledge_base_search_type #=> String, one of "HYBRID", "SEMANTIC"
    #   resp.ai_agent.modified_time #=> Time
    #   resp.ai_agent.description #=> String
    #   resp.ai_agent.visibility_status #=> String, one of "SAVED", "PUBLISHED"
    #   resp.ai_agent.tags #=> Hash
    #   resp.ai_agent.tags["TagKey"] #=> String
    #   resp.ai_agent.origin #=> String, one of "SYSTEM", "CUSTOMER"
    #   resp.ai_agent.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateAIAgent AWS API Documentation
    #
    # @overload create_ai_agent(params = {})
    # @param [Hash] params ({})
    def create_ai_agent(params = {}, options = {})
      req = build_request(:create_ai_agent, params)
      req.send_request(options)
    end

    # Creates and Amazon Q in Connect AI Agent version.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :ai_agent_id
    #   The identifier of the Amazon Q in Connect AI Agent.
    #
    # @option params [Time,DateTime,Date,Integer,String] :modified_time
    #   The modification time of the AI Agent should be tracked for version
    #   creation. This field should be specified to avoid version creation
    #   when simultaneous update to the underlying AI Agent are possible. The
    #   value should be the modifiedTime returned from the request to create
    #   or update an AI Agent so that version creation can fail if an update
    #   to the AI Agent post the specified modification time has been made.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1]..
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Types::CreateAIAgentVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAIAgentVersionResponse#ai_agent #ai_agent} => Types::AIAgentData
    #   * {Types::CreateAIAgentVersionResponse#version_number #version_number} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ai_agent_version({
    #     assistant_id: "UuidOrArn", # required
    #     ai_agent_id: "UuidOrArnOrEitherWithQualifier", # required
    #     modified_time: Time.now,
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.ai_agent.assistant_id #=> String
    #   resp.ai_agent.assistant_arn #=> String
    #   resp.ai_agent.ai_agent_id #=> String
    #   resp.ai_agent.ai_agent_arn #=> String
    #   resp.ai_agent.name #=> String
    #   resp.ai_agent.type #=> String, one of "MANUAL_SEARCH", "ANSWER_RECOMMENDATION", "SELF_SERVICE"
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.answer_generation_ai_prompt_id #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.answer_generation_ai_guardrail_id #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations #=> Array
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_id #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_type #=> String, one of "KNOWLEDGE_BASE"
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.key #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.value #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions #=> Array
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].key #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].value #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions #=> Array
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions #=> Array
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].key #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].value #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.key #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.value #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.max_results #=> Integer
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.override_knowledge_base_search_type #=> String, one of "HYBRID", "SEMANTIC"
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.locale #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.intent_labeling_generation_ai_prompt_id #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.query_reformulation_ai_prompt_id #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.answer_generation_ai_prompt_id #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.answer_generation_ai_guardrail_id #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations #=> Array
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_id #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_type #=> String, one of "KNOWLEDGE_BASE"
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.key #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.value #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions #=> Array
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].key #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].value #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions #=> Array
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions #=> Array
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].key #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].value #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.key #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.value #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.max_results #=> Integer
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.override_knowledge_base_search_type #=> String, one of "HYBRID", "SEMANTIC"
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.locale #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.self_service_pre_processing_ai_prompt_id #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.self_service_answer_generation_ai_prompt_id #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.self_service_ai_guardrail_id #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations #=> Array
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_id #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_type #=> String, one of "KNOWLEDGE_BASE"
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.key #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.value #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions #=> Array
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].key #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].value #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions #=> Array
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions #=> Array
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].key #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].value #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.key #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.value #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.max_results #=> Integer
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.override_knowledge_base_search_type #=> String, one of "HYBRID", "SEMANTIC"
    #   resp.ai_agent.modified_time #=> Time
    #   resp.ai_agent.description #=> String
    #   resp.ai_agent.visibility_status #=> String, one of "SAVED", "PUBLISHED"
    #   resp.ai_agent.tags #=> Hash
    #   resp.ai_agent.tags["TagKey"] #=> String
    #   resp.ai_agent.origin #=> String, one of "SYSTEM", "CUSTOMER"
    #   resp.ai_agent.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.version_number #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateAIAgentVersion AWS API Documentation
    #
    # @overload create_ai_agent_version(params = {})
    # @param [Hash] params ({})
    def create_ai_agent_version(params = {}, options = {})
      req = build_request(:create_ai_agent_version, params)
      req.send_request(options)
    end

    # Creates an Amazon Q in Connect AI Guardrail.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1]..
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :name
    #   The name of the AI Guardrail.
    #
    # @option params [required, String] :blocked_input_messaging
    #   The message to return when the AI Guardrail blocks a prompt.
    #
    # @option params [required, String] :blocked_outputs_messaging
    #   The message to return when the AI Guardrail blocks a model response.
    #
    # @option params [required, String] :visibility_status
    #   The visibility status of the AI Guardrail.
    #
    # @option params [String] :description
    #   A description of the AI Guardrail.
    #
    # @option params [Types::AIGuardrailTopicPolicyConfig] :topic_policy_config
    #   The topic policies to configure for the AI Guardrail.
    #
    # @option params [Types::AIGuardrailContentPolicyConfig] :content_policy_config
    #   The content filter policies to configure for the AI Guardrail.
    #
    # @option params [Types::AIGuardrailWordPolicyConfig] :word_policy_config
    #   The word policy you configure for the AI Guardrail.
    #
    # @option params [Types::AIGuardrailSensitiveInformationPolicyConfig] :sensitive_information_policy_config
    #   The sensitive information policy to configure for the AI Guardrail.
    #
    # @option params [Types::AIGuardrailContextualGroundingPolicyConfig] :contextual_grounding_policy_config
    #   The contextual grounding policy configuration used to create an AI
    #   Guardrail.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Types::CreateAIGuardrailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAIGuardrailResponse#ai_guardrail #ai_guardrail} => Types::AIGuardrailData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ai_guardrail({
    #     client_token: "ClientToken",
    #     assistant_id: "UuidOrArn", # required
    #     name: "Name", # required
    #     blocked_input_messaging: "AIGuardrailBlockedMessaging", # required
    #     blocked_outputs_messaging: "AIGuardrailBlockedMessaging", # required
    #     visibility_status: "SAVED", # required, accepts SAVED, PUBLISHED
    #     description: "AIGuardrailDescription",
    #     topic_policy_config: {
    #       topics_config: [ # required
    #         {
    #           name: "GuardrailTopicName", # required
    #           definition: "GuardrailTopicDefinition", # required
    #           examples: ["GuardrailTopicExample"],
    #           type: "DENY", # required, accepts DENY
    #         },
    #       ],
    #     },
    #     content_policy_config: {
    #       filters_config: [ # required
    #         {
    #           type: "SEXUAL", # required, accepts SEXUAL, VIOLENCE, HATE, INSULTS, MISCONDUCT, PROMPT_ATTACK
    #           input_strength: "NONE", # required, accepts NONE, LOW, MEDIUM, HIGH
    #           output_strength: "NONE", # required, accepts NONE, LOW, MEDIUM, HIGH
    #         },
    #       ],
    #     },
    #     word_policy_config: {
    #       words_config: [
    #         {
    #           text: "GuardrailWordText", # required
    #         },
    #       ],
    #       managed_word_lists_config: [
    #         {
    #           type: "PROFANITY", # required, accepts PROFANITY
    #         },
    #       ],
    #     },
    #     sensitive_information_policy_config: {
    #       pii_entities_config: [
    #         {
    #           type: "ADDRESS", # required, accepts ADDRESS, AGE, AWS_ACCESS_KEY, AWS_SECRET_KEY, CA_HEALTH_NUMBER, CA_SOCIAL_INSURANCE_NUMBER, CREDIT_DEBIT_CARD_CVV, CREDIT_DEBIT_CARD_EXPIRY, CREDIT_DEBIT_CARD_NUMBER, DRIVER_ID, EMAIL, INTERNATIONAL_BANK_ACCOUNT_NUMBER, IP_ADDRESS, LICENSE_PLATE, MAC_ADDRESS, NAME, PASSWORD, PHONE, PIN, SWIFT_CODE, UK_NATIONAL_HEALTH_SERVICE_NUMBER, UK_NATIONAL_INSURANCE_NUMBER, UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER, URL, USERNAME, US_BANK_ACCOUNT_NUMBER, US_BANK_ROUTING_NUMBER, US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER, US_PASSPORT_NUMBER, US_SOCIAL_SECURITY_NUMBER, VEHICLE_IDENTIFICATION_NUMBER
    #           action: "BLOCK", # required, accepts BLOCK, ANONYMIZE
    #         },
    #       ],
    #       regexes_config: [
    #         {
    #           name: "GuardrailRegexName", # required
    #           description: "GuardrailRegexDescription",
    #           pattern: "GuardrailRegexPattern", # required
    #           action: "BLOCK", # required, accepts BLOCK, ANONYMIZE
    #         },
    #       ],
    #     },
    #     contextual_grounding_policy_config: {
    #       filters_config: [ # required
    #         {
    #           type: "GROUNDING", # required, accepts GROUNDING, RELEVANCE
    #           threshold: 1.0, # required
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
    #   resp.ai_guardrail.assistant_id #=> String
    #   resp.ai_guardrail.assistant_arn #=> String
    #   resp.ai_guardrail.ai_guardrail_arn #=> String
    #   resp.ai_guardrail.ai_guardrail_id #=> String
    #   resp.ai_guardrail.name #=> String
    #   resp.ai_guardrail.visibility_status #=> String, one of "SAVED", "PUBLISHED"
    #   resp.ai_guardrail.blocked_input_messaging #=> String
    #   resp.ai_guardrail.blocked_outputs_messaging #=> String
    #   resp.ai_guardrail.description #=> String
    #   resp.ai_guardrail.topic_policy_config.topics_config #=> Array
    #   resp.ai_guardrail.topic_policy_config.topics_config[0].name #=> String
    #   resp.ai_guardrail.topic_policy_config.topics_config[0].definition #=> String
    #   resp.ai_guardrail.topic_policy_config.topics_config[0].examples #=> Array
    #   resp.ai_guardrail.topic_policy_config.topics_config[0].examples[0] #=> String
    #   resp.ai_guardrail.topic_policy_config.topics_config[0].type #=> String, one of "DENY"
    #   resp.ai_guardrail.content_policy_config.filters_config #=> Array
    #   resp.ai_guardrail.content_policy_config.filters_config[0].type #=> String, one of "SEXUAL", "VIOLENCE", "HATE", "INSULTS", "MISCONDUCT", "PROMPT_ATTACK"
    #   resp.ai_guardrail.content_policy_config.filters_config[0].input_strength #=> String, one of "NONE", "LOW", "MEDIUM", "HIGH"
    #   resp.ai_guardrail.content_policy_config.filters_config[0].output_strength #=> String, one of "NONE", "LOW", "MEDIUM", "HIGH"
    #   resp.ai_guardrail.word_policy_config.words_config #=> Array
    #   resp.ai_guardrail.word_policy_config.words_config[0].text #=> String
    #   resp.ai_guardrail.word_policy_config.managed_word_lists_config #=> Array
    #   resp.ai_guardrail.word_policy_config.managed_word_lists_config[0].type #=> String, one of "PROFANITY"
    #   resp.ai_guardrail.sensitive_information_policy_config.pii_entities_config #=> Array
    #   resp.ai_guardrail.sensitive_information_policy_config.pii_entities_config[0].type #=> String, one of "ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"
    #   resp.ai_guardrail.sensitive_information_policy_config.pii_entities_config[0].action #=> String, one of "BLOCK", "ANONYMIZE"
    #   resp.ai_guardrail.sensitive_information_policy_config.regexes_config #=> Array
    #   resp.ai_guardrail.sensitive_information_policy_config.regexes_config[0].name #=> String
    #   resp.ai_guardrail.sensitive_information_policy_config.regexes_config[0].description #=> String
    #   resp.ai_guardrail.sensitive_information_policy_config.regexes_config[0].pattern #=> String
    #   resp.ai_guardrail.sensitive_information_policy_config.regexes_config[0].action #=> String, one of "BLOCK", "ANONYMIZE"
    #   resp.ai_guardrail.contextual_grounding_policy_config.filters_config #=> Array
    #   resp.ai_guardrail.contextual_grounding_policy_config.filters_config[0].type #=> String, one of "GROUNDING", "RELEVANCE"
    #   resp.ai_guardrail.contextual_grounding_policy_config.filters_config[0].threshold #=> Float
    #   resp.ai_guardrail.tags #=> Hash
    #   resp.ai_guardrail.tags["TagKey"] #=> String
    #   resp.ai_guardrail.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.ai_guardrail.modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateAIGuardrail AWS API Documentation
    #
    # @overload create_ai_guardrail(params = {})
    # @param [Hash] params ({})
    def create_ai_guardrail(params = {}, options = {})
      req = build_request(:create_ai_guardrail, params)
      req.send_request(options)
    end

    # Creates an Amazon Q in Connect AI Guardrail version.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :ai_guardrail_id
    #   The identifier of the Amazon Q in Connect AI Guardrail.
    #
    # @option params [Time,DateTime,Date,Integer,String] :modified_time
    #   The time the AI Guardrail was last modified.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1]..
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Types::CreateAIGuardrailVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAIGuardrailVersionResponse#ai_guardrail #ai_guardrail} => Types::AIGuardrailData
    #   * {Types::CreateAIGuardrailVersionResponse#version_number #version_number} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ai_guardrail_version({
    #     assistant_id: "UuidOrArn", # required
    #     ai_guardrail_id: "UuidOrArnOrEitherWithQualifier", # required
    #     modified_time: Time.now,
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.ai_guardrail.assistant_id #=> String
    #   resp.ai_guardrail.assistant_arn #=> String
    #   resp.ai_guardrail.ai_guardrail_arn #=> String
    #   resp.ai_guardrail.ai_guardrail_id #=> String
    #   resp.ai_guardrail.name #=> String
    #   resp.ai_guardrail.visibility_status #=> String, one of "SAVED", "PUBLISHED"
    #   resp.ai_guardrail.blocked_input_messaging #=> String
    #   resp.ai_guardrail.blocked_outputs_messaging #=> String
    #   resp.ai_guardrail.description #=> String
    #   resp.ai_guardrail.topic_policy_config.topics_config #=> Array
    #   resp.ai_guardrail.topic_policy_config.topics_config[0].name #=> String
    #   resp.ai_guardrail.topic_policy_config.topics_config[0].definition #=> String
    #   resp.ai_guardrail.topic_policy_config.topics_config[0].examples #=> Array
    #   resp.ai_guardrail.topic_policy_config.topics_config[0].examples[0] #=> String
    #   resp.ai_guardrail.topic_policy_config.topics_config[0].type #=> String, one of "DENY"
    #   resp.ai_guardrail.content_policy_config.filters_config #=> Array
    #   resp.ai_guardrail.content_policy_config.filters_config[0].type #=> String, one of "SEXUAL", "VIOLENCE", "HATE", "INSULTS", "MISCONDUCT", "PROMPT_ATTACK"
    #   resp.ai_guardrail.content_policy_config.filters_config[0].input_strength #=> String, one of "NONE", "LOW", "MEDIUM", "HIGH"
    #   resp.ai_guardrail.content_policy_config.filters_config[0].output_strength #=> String, one of "NONE", "LOW", "MEDIUM", "HIGH"
    #   resp.ai_guardrail.word_policy_config.words_config #=> Array
    #   resp.ai_guardrail.word_policy_config.words_config[0].text #=> String
    #   resp.ai_guardrail.word_policy_config.managed_word_lists_config #=> Array
    #   resp.ai_guardrail.word_policy_config.managed_word_lists_config[0].type #=> String, one of "PROFANITY"
    #   resp.ai_guardrail.sensitive_information_policy_config.pii_entities_config #=> Array
    #   resp.ai_guardrail.sensitive_information_policy_config.pii_entities_config[0].type #=> String, one of "ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"
    #   resp.ai_guardrail.sensitive_information_policy_config.pii_entities_config[0].action #=> String, one of "BLOCK", "ANONYMIZE"
    #   resp.ai_guardrail.sensitive_information_policy_config.regexes_config #=> Array
    #   resp.ai_guardrail.sensitive_information_policy_config.regexes_config[0].name #=> String
    #   resp.ai_guardrail.sensitive_information_policy_config.regexes_config[0].description #=> String
    #   resp.ai_guardrail.sensitive_information_policy_config.regexes_config[0].pattern #=> String
    #   resp.ai_guardrail.sensitive_information_policy_config.regexes_config[0].action #=> String, one of "BLOCK", "ANONYMIZE"
    #   resp.ai_guardrail.contextual_grounding_policy_config.filters_config #=> Array
    #   resp.ai_guardrail.contextual_grounding_policy_config.filters_config[0].type #=> String, one of "GROUNDING", "RELEVANCE"
    #   resp.ai_guardrail.contextual_grounding_policy_config.filters_config[0].threshold #=> Float
    #   resp.ai_guardrail.tags #=> Hash
    #   resp.ai_guardrail.tags["TagKey"] #=> String
    #   resp.ai_guardrail.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.ai_guardrail.modified_time #=> Time
    #   resp.version_number #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateAIGuardrailVersion AWS API Documentation
    #
    # @overload create_ai_guardrail_version(params = {})
    # @param [Hash] params ({})
    def create_ai_guardrail_version(params = {}, options = {})
      req = build_request(:create_ai_guardrail_version, params)
      req.send_request(options)
    end

    # Creates an Amazon Q in Connect AI Prompt.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1]..
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :name
    #   The name of the AI Prompt.
    #
    # @option params [required, String] :type
    #   The type of this AI Prompt.
    #
    # @option params [required, Types::AIPromptTemplateConfiguration] :template_configuration
    #   The configuration of the prompt template for this AI Prompt.
    #
    # @option params [required, String] :visibility_status
    #   The visibility status of the AI Prompt.
    #
    # @option params [required, String] :template_type
    #   The type of the prompt template for this AI Prompt.
    #
    # @option params [required, String] :model_id
    #   The identifier of the model used for this AI Prompt.
    #
    # @option params [required, String] :api_format
    #   The API Format of the AI Prompt.
    #
    #   Recommended values: `MESSAGES | TEXT_COMPLETIONS`
    #
    #   <note markdown="1"> The values `ANTHROPIC_CLAUDE_MESSAGES |
    #   ANTHROPIC_CLAUDE_TEXT_COMPLETIONS` will be deprecated.
    #
    #    </note>
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @option params [String] :description
    #   The description of the AI Prompt.
    #
    # @return [Types::CreateAIPromptResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAIPromptResponse#ai_prompt #ai_prompt} => Types::AIPromptData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ai_prompt({
    #     client_token: "ClientToken",
    #     assistant_id: "UuidOrArn", # required
    #     name: "Name", # required
    #     type: "ANSWER_GENERATION", # required, accepts ANSWER_GENERATION, INTENT_LABELING_GENERATION, QUERY_REFORMULATION, SELF_SERVICE_PRE_PROCESSING, SELF_SERVICE_ANSWER_GENERATION
    #     template_configuration: { # required
    #       text_full_ai_prompt_edit_template_configuration: {
    #         text: "TextAIPrompt", # required
    #       },
    #     },
    #     visibility_status: "SAVED", # required, accepts SAVED, PUBLISHED
    #     template_type: "TEXT", # required, accepts TEXT
    #     model_id: "AIPromptModelIdentifier", # required
    #     api_format: "ANTHROPIC_CLAUDE_MESSAGES", # required, accepts ANTHROPIC_CLAUDE_MESSAGES, ANTHROPIC_CLAUDE_TEXT_COMPLETIONS, MESSAGES, TEXT_COMPLETIONS
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.ai_prompt.assistant_id #=> String
    #   resp.ai_prompt.assistant_arn #=> String
    #   resp.ai_prompt.ai_prompt_id #=> String
    #   resp.ai_prompt.ai_prompt_arn #=> String
    #   resp.ai_prompt.name #=> String
    #   resp.ai_prompt.type #=> String, one of "ANSWER_GENERATION", "INTENT_LABELING_GENERATION", "QUERY_REFORMULATION", "SELF_SERVICE_PRE_PROCESSING", "SELF_SERVICE_ANSWER_GENERATION"
    #   resp.ai_prompt.template_type #=> String, one of "TEXT"
    #   resp.ai_prompt.model_id #=> String
    #   resp.ai_prompt.api_format #=> String, one of "ANTHROPIC_CLAUDE_MESSAGES", "ANTHROPIC_CLAUDE_TEXT_COMPLETIONS", "MESSAGES", "TEXT_COMPLETIONS"
    #   resp.ai_prompt.template_configuration.text_full_ai_prompt_edit_template_configuration.text #=> String
    #   resp.ai_prompt.modified_time #=> Time
    #   resp.ai_prompt.description #=> String
    #   resp.ai_prompt.visibility_status #=> String, one of "SAVED", "PUBLISHED"
    #   resp.ai_prompt.tags #=> Hash
    #   resp.ai_prompt.tags["TagKey"] #=> String
    #   resp.ai_prompt.origin #=> String, one of "SYSTEM", "CUSTOMER"
    #   resp.ai_prompt.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateAIPrompt AWS API Documentation
    #
    # @overload create_ai_prompt(params = {})
    # @param [Hash] params ({})
    def create_ai_prompt(params = {}, options = {})
      req = build_request(:create_ai_prompt, params)
      req.send_request(options)
    end

    # Creates an Amazon Q in Connect AI Prompt version.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :ai_prompt_id
    #   The identifier of the Amazon Q in Connect AI prompt.
    #
    # @option params [Time,DateTime,Date,Integer,String] :modified_time
    #   The time the AI Prompt was last modified.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1]..
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Types::CreateAIPromptVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAIPromptVersionResponse#ai_prompt #ai_prompt} => Types::AIPromptData
    #   * {Types::CreateAIPromptVersionResponse#version_number #version_number} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ai_prompt_version({
    #     assistant_id: "UuidOrArn", # required
    #     ai_prompt_id: "UuidOrArnOrEitherWithQualifier", # required
    #     modified_time: Time.now,
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.ai_prompt.assistant_id #=> String
    #   resp.ai_prompt.assistant_arn #=> String
    #   resp.ai_prompt.ai_prompt_id #=> String
    #   resp.ai_prompt.ai_prompt_arn #=> String
    #   resp.ai_prompt.name #=> String
    #   resp.ai_prompt.type #=> String, one of "ANSWER_GENERATION", "INTENT_LABELING_GENERATION", "QUERY_REFORMULATION", "SELF_SERVICE_PRE_PROCESSING", "SELF_SERVICE_ANSWER_GENERATION"
    #   resp.ai_prompt.template_type #=> String, one of "TEXT"
    #   resp.ai_prompt.model_id #=> String
    #   resp.ai_prompt.api_format #=> String, one of "ANTHROPIC_CLAUDE_MESSAGES", "ANTHROPIC_CLAUDE_TEXT_COMPLETIONS", "MESSAGES", "TEXT_COMPLETIONS"
    #   resp.ai_prompt.template_configuration.text_full_ai_prompt_edit_template_configuration.text #=> String
    #   resp.ai_prompt.modified_time #=> Time
    #   resp.ai_prompt.description #=> String
    #   resp.ai_prompt.visibility_status #=> String, one of "SAVED", "PUBLISHED"
    #   resp.ai_prompt.tags #=> Hash
    #   resp.ai_prompt.tags["TagKey"] #=> String
    #   resp.ai_prompt.origin #=> String, one of "SYSTEM", "CUSTOMER"
    #   resp.ai_prompt.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.version_number #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateAIPromptVersion AWS API Documentation
    #
    # @overload create_ai_prompt_version(params = {})
    # @param [Hash] params ({})
    def create_ai_prompt_version(params = {}, options = {})
      req = build_request(:create_ai_prompt_version, params)
      req.send_request(options)
    end

    # Creates an Amazon Q in Connect assistant.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, String] :name
    #   The name of the assistant.
    #
    # @option params [required, String] :type
    #   The type of assistant.
    #
    # @option params [String] :description
    #   The description of the assistant.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @option params [Types::ServerSideEncryptionConfiguration] :server_side_encryption_configuration
    #   The configuration information for the customer managed key used for
    #   encryption.
    #
    #   The customer managed key must have a policy that allows
    #   `kms:CreateGrant`, ` kms:DescribeKey`, `kms:Decrypt`, and
    #   `kms:GenerateDataKey*` permissions to the IAM identity using the key
    #   to invoke Amazon Q in Connect. To use Amazon Q in Connect with chat,
    #   the key policy must also allow `kms:Decrypt`, `kms:GenerateDataKey*`,
    #   and `kms:DescribeKey` permissions to the `connect.amazonaws.com`
    #   service principal.
    #
    #   For more information about setting up a customer managed key for
    #   Amazon Q in Connect, see [Enable Amazon Q in Connect for your
    #   instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/enable-q.html
    #
    # @return [Types::CreateAssistantResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAssistantResponse#assistant #assistant} => Types::AssistantData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_assistant({
    #     client_token: "ClientToken",
    #     name: "Name", # required
    #     type: "AGENT", # required, accepts AGENT
    #     description: "Description",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     server_side_encryption_configuration: {
    #       kms_key_id: "NonEmptyString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.assistant.assistant_id #=> String
    #   resp.assistant.assistant_arn #=> String
    #   resp.assistant.name #=> String
    #   resp.assistant.type #=> String, one of "AGENT"
    #   resp.assistant.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.assistant.description #=> String
    #   resp.assistant.tags #=> Hash
    #   resp.assistant.tags["TagKey"] #=> String
    #   resp.assistant.server_side_encryption_configuration.kms_key_id #=> String
    #   resp.assistant.integration_configuration.topic_integration_arn #=> String
    #   resp.assistant.capability_configuration.type #=> String, one of "V1", "V2"
    #   resp.assistant.ai_agent_configuration #=> Hash
    #   resp.assistant.ai_agent_configuration["AIAgentType"].ai_agent_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateAssistant AWS API Documentation
    #
    # @overload create_assistant(params = {})
    # @param [Hash] params ({})
    def create_assistant(params = {}, options = {})
      req = build_request(:create_assistant, params)
      req.send_request(options)
    end

    # Creates an association between an Amazon Q in Connect assistant and
    # another resource. Currently, the only supported association is with a
    # knowledge base. An assistant can have only a single association.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :association_type
    #   The type of association.
    #
    # @option params [required, Types::AssistantAssociationInputData] :association
    #   The identifier of the associated resource.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Types::CreateAssistantAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAssistantAssociationResponse#assistant_association #assistant_association} => Types::AssistantAssociationData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_assistant_association({
    #     assistant_id: "UuidOrArn", # required
    #     association_type: "KNOWLEDGE_BASE", # required, accepts KNOWLEDGE_BASE
    #     association: { # required
    #       knowledge_base_id: "Uuid",
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.assistant_association.assistant_association_id #=> String
    #   resp.assistant_association.assistant_association_arn #=> String
    #   resp.assistant_association.assistant_id #=> String
    #   resp.assistant_association.assistant_arn #=> String
    #   resp.assistant_association.association_type #=> String, one of "KNOWLEDGE_BASE"
    #   resp.assistant_association.association_data.knowledge_base_association.knowledge_base_id #=> String
    #   resp.assistant_association.association_data.knowledge_base_association.knowledge_base_arn #=> String
    #   resp.assistant_association.tags #=> Hash
    #   resp.assistant_association.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateAssistantAssociation AWS API Documentation
    #
    # @overload create_assistant_association(params = {})
    # @param [Hash] params ({})
    def create_assistant_association(params = {}, options = {})
      req = build_request(:create_assistant_association, params)
      req.send_request(options)
    end

    # Creates Amazon Q in Connect content. Before to calling this API, use
    # [StartContentUpload][1] to upload an asset.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_StartContentUpload.html
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @option params [required, String] :name
    #   The name of the content. Each piece of content in a knowledge base
    #   must have a unique name. You can retrieve a piece of content using
    #   only its knowledge base and its name with the [SearchContent][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_SearchContent.html
    #
    # @option params [String] :title
    #   The title of the content. If not set, the title is equal to the name.
    #
    # @option params [String] :override_link_out_uri
    #   The URI you want to use for the article. If the knowledge base has a
    #   templateUri, setting this argument overrides it for this piece of
    #   content.
    #
    # @option params [Hash<String,String>] :metadata
    #   A key/value map to store attributes without affecting tagging or
    #   recommendations. For example, when synchronizing data between an
    #   external system and Amazon Q in Connect, you can store an external
    #   version identifier as metadata to utilize for determining drift.
    #
    # @option params [required, String] :upload_id
    #   A pointer to the uploaded asset. This value is returned by
    #   [StartContentUpload][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_StartContentUpload.html
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Types::CreateContentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateContentResponse#content #content} => Types::ContentData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_content({
    #     knowledge_base_id: "UuidOrArn", # required
    #     name: "Name", # required
    #     title: "ContentTitle",
    #     override_link_out_uri: "Uri",
    #     metadata: {
    #       "NonEmptyString" => "NonEmptyString",
    #     },
    #     upload_id: "UploadId", # required
    #     client_token: "NonEmptyString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.content.content_arn #=> String
    #   resp.content.content_id #=> String
    #   resp.content.knowledge_base_arn #=> String
    #   resp.content.knowledge_base_id #=> String
    #   resp.content.name #=> String
    #   resp.content.revision_id #=> String
    #   resp.content.title #=> String
    #   resp.content.content_type #=> String
    #   resp.content.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_FAILED"
    #   resp.content.metadata #=> Hash
    #   resp.content.metadata["NonEmptyString"] #=> String
    #   resp.content.tags #=> Hash
    #   resp.content.tags["TagKey"] #=> String
    #   resp.content.link_out_uri #=> String
    #   resp.content.url #=> String
    #   resp.content.url_expiry #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateContent AWS API Documentation
    #
    # @overload create_content(params = {})
    # @param [Hash] params ({})
    def create_content(params = {}, options = {})
      req = build_request(:create_content, params)
      req.send_request(options)
    end

    # Creates an association between a content resource in a knowledge base
    # and [step-by-step guides][1]. Step-by-step guides offer instructions
    # to agents for resolving common customer issues. You create a content
    # association to integrate Amazon Q in Connect and step-by-step guides.
    #
    # After you integrate Amazon Q and step-by-step guides, when Amazon Q
    # provides a recommendation to an agent based on the intent that it's
    # detected, it also provides them with the option to start the
    # step-by-step guide that you have associated with the content.
    #
    # Note the following limitations:
    #
    # * You can create only one content association for each content
    #   resource in a knowledge base.
    #
    # * You can associate a step-by-step guide with multiple content
    #   resources.
    #
    # For more information, see [Integrate Amazon Q in Connect with
    # step-by-step guides][2] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/step-by-step-guided-experiences.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/integrate-q-with-guides.html
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base.
    #
    # @option params [required, String] :content_id
    #   The identifier of the content.
    #
    # @option params [required, String] :association_type
    #   The type of association.
    #
    # @option params [required, Types::ContentAssociationContents] :association
    #   The identifier of the associated resource.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Types::CreateContentAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateContentAssociationResponse#content_association #content_association} => Types::ContentAssociationData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_content_association({
    #     client_token: "ClientToken",
    #     knowledge_base_id: "UuidOrArn", # required
    #     content_id: "UuidOrArn", # required
    #     association_type: "AMAZON_CONNECT_GUIDE", # required, accepts AMAZON_CONNECT_GUIDE
    #     association: { # required
    #       amazon_connect_guide_association: {
    #         flow_id: "GenericArn",
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.content_association.knowledge_base_id #=> String
    #   resp.content_association.knowledge_base_arn #=> String
    #   resp.content_association.content_id #=> String
    #   resp.content_association.content_arn #=> String
    #   resp.content_association.content_association_id #=> String
    #   resp.content_association.content_association_arn #=> String
    #   resp.content_association.association_type #=> String, one of "AMAZON_CONNECT_GUIDE"
    #   resp.content_association.association_data.amazon_connect_guide_association.flow_id #=> String
    #   resp.content_association.tags #=> Hash
    #   resp.content_association.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateContentAssociation AWS API Documentation
    #
    # @overload create_content_association(params = {})
    # @param [Hash] params ({})
    def create_content_association(params = {}, options = {})
      req = build_request(:create_content_association, params)
      req.send_request(options)
    end

    # Creates a knowledge base.
    #
    # <note markdown="1"> When using this API, you cannot reuse [Amazon AppIntegrations][1]
    # DataIntegrations with external knowledge bases such as Salesforce and
    # ServiceNow. If you do, you'll get an `InvalidRequestException` error.
    #
    #  For example, you're programmatically managing your external knowledge
    # base, and you want to add or remove one of the fields that is being
    # ingested from Salesforce. Do the following:
    #
    #  1.  Call [DeleteKnowledgeBase][2].
    #
    # 2.  Call [DeleteDataIntegration][3].
    #
    # 3.  Call [CreateDataIntegration][4] to recreate the DataIntegration or
    #     a create different one.
    #
    # 4.  Call CreateKnowledgeBase.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html
    # [2]: https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_DeleteKnowledgeBase.html
    # [3]: https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html
    # [4]: https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, String] :name
    #   The name of the knowledge base.
    #
    # @option params [required, String] :knowledge_base_type
    #   The type of knowledge base. Only CUSTOM knowledge bases allow you to
    #   upload your own content. EXTERNAL knowledge bases support integrations
    #   with third-party systems whose content is synchronized automatically.
    #
    # @option params [Types::SourceConfiguration] :source_configuration
    #   The source of the knowledge base content. Only set this argument for
    #   EXTERNAL or Managed knowledge bases.
    #
    # @option params [Types::RenderingConfiguration] :rendering_configuration
    #   Information about how to render the content.
    #
    # @option params [Types::VectorIngestionConfiguration] :vector_ingestion_configuration
    #   Contains details about how to ingest the documents in a data source.
    #
    # @option params [Types::ServerSideEncryptionConfiguration] :server_side_encryption_configuration
    #   The configuration information for the customer managed key used for
    #   encryption.
    #
    #   This KMS key must have a policy that allows `kms:CreateGrant`,
    #   `kms:DescribeKey`, `kms:Decrypt`, and `kms:GenerateDataKey*`
    #   permissions to the IAM identity using the key to invoke Amazon Q in
    #   Connect.
    #
    #   For more information about setting up a customer managed key for
    #   Amazon Q in Connect, see [Enable Amazon Q in Connect for your
    #   instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/enable-q.html
    #
    # @option params [String] :description
    #   The description.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Types::CreateKnowledgeBaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKnowledgeBaseResponse#knowledge_base #knowledge_base} => Types::KnowledgeBaseData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_knowledge_base({
    #     client_token: "NonEmptyString",
    #     name: "Name", # required
    #     knowledge_base_type: "EXTERNAL", # required, accepts EXTERNAL, CUSTOM, QUICK_RESPONSES, MESSAGE_TEMPLATES, MANAGED
    #     source_configuration: {
    #       app_integrations: {
    #         app_integration_arn: "GenericArn", # required
    #         object_fields: ["NonEmptyString"],
    #       },
    #       managed_source_configuration: {
    #         web_crawler_configuration: {
    #           url_configuration: { # required
    #             seed_urls: [
    #               {
    #                 url: "WebUrl",
    #               },
    #             ],
    #           },
    #           crawler_limits: {
    #             rate_limit: 1,
    #           },
    #           inclusion_filters: ["UrlFilterPattern"],
    #           exclusion_filters: ["UrlFilterPattern"],
    #           scope: "HOST_ONLY", # accepts HOST_ONLY, SUBDOMAINS
    #         },
    #       },
    #     },
    #     rendering_configuration: {
    #       template_uri: "Uri",
    #     },
    #     vector_ingestion_configuration: {
    #       chunking_configuration: {
    #         chunking_strategy: "FIXED_SIZE", # required, accepts FIXED_SIZE, NONE, HIERARCHICAL, SEMANTIC
    #         fixed_size_chunking_configuration: {
    #           max_tokens: 1, # required
    #           overlap_percentage: 1, # required
    #         },
    #         hierarchical_chunking_configuration: {
    #           level_configurations: [ # required
    #             {
    #               max_tokens: 1, # required
    #             },
    #           ],
    #           overlap_tokens: 1, # required
    #         },
    #         semantic_chunking_configuration: {
    #           max_tokens: 1, # required
    #           buffer_size: 1, # required
    #           breakpoint_percentile_threshold: 1, # required
    #         },
    #       },
    #       parsing_configuration: {
    #         parsing_strategy: "BEDROCK_FOUNDATION_MODEL", # required, accepts BEDROCK_FOUNDATION_MODEL
    #         bedrock_foundation_model_configuration: {
    #           model_arn: "BedrockModelArnForParsing", # required
    #           parsing_prompt: {
    #             parsing_prompt_text: "ParsingPromptText", # required
    #           },
    #         },
    #       },
    #     },
    #     server_side_encryption_configuration: {
    #       kms_key_id: "NonEmptyString",
    #     },
    #     description: "Description",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.knowledge_base.knowledge_base_id #=> String
    #   resp.knowledge_base.knowledge_base_arn #=> String
    #   resp.knowledge_base.name #=> String
    #   resp.knowledge_base.knowledge_base_type #=> String, one of "EXTERNAL", "CUSTOM", "QUICK_RESPONSES", "MESSAGE_TEMPLATES", "MANAGED"
    #   resp.knowledge_base.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.knowledge_base.last_content_modification_time #=> Time
    #   resp.knowledge_base.vector_ingestion_configuration.chunking_configuration.chunking_strategy #=> String, one of "FIXED_SIZE", "NONE", "HIERARCHICAL", "SEMANTIC"
    #   resp.knowledge_base.vector_ingestion_configuration.chunking_configuration.fixed_size_chunking_configuration.max_tokens #=> Integer
    #   resp.knowledge_base.vector_ingestion_configuration.chunking_configuration.fixed_size_chunking_configuration.overlap_percentage #=> Integer
    #   resp.knowledge_base.vector_ingestion_configuration.chunking_configuration.hierarchical_chunking_configuration.level_configurations #=> Array
    #   resp.knowledge_base.vector_ingestion_configuration.chunking_configuration.hierarchical_chunking_configuration.level_configurations[0].max_tokens #=> Integer
    #   resp.knowledge_base.vector_ingestion_configuration.chunking_configuration.hierarchical_chunking_configuration.overlap_tokens #=> Integer
    #   resp.knowledge_base.vector_ingestion_configuration.chunking_configuration.semantic_chunking_configuration.max_tokens #=> Integer
    #   resp.knowledge_base.vector_ingestion_configuration.chunking_configuration.semantic_chunking_configuration.buffer_size #=> Integer
    #   resp.knowledge_base.vector_ingestion_configuration.chunking_configuration.semantic_chunking_configuration.breakpoint_percentile_threshold #=> Integer
    #   resp.knowledge_base.vector_ingestion_configuration.parsing_configuration.parsing_strategy #=> String, one of "BEDROCK_FOUNDATION_MODEL"
    #   resp.knowledge_base.vector_ingestion_configuration.parsing_configuration.bedrock_foundation_model_configuration.model_arn #=> String
    #   resp.knowledge_base.vector_ingestion_configuration.parsing_configuration.bedrock_foundation_model_configuration.parsing_prompt.parsing_prompt_text #=> String
    #   resp.knowledge_base.source_configuration.app_integrations.app_integration_arn #=> String
    #   resp.knowledge_base.source_configuration.app_integrations.object_fields #=> Array
    #   resp.knowledge_base.source_configuration.app_integrations.object_fields[0] #=> String
    #   resp.knowledge_base.source_configuration.managed_source_configuration.web_crawler_configuration.url_configuration.seed_urls #=> Array
    #   resp.knowledge_base.source_configuration.managed_source_configuration.web_crawler_configuration.url_configuration.seed_urls[0].url #=> String
    #   resp.knowledge_base.source_configuration.managed_source_configuration.web_crawler_configuration.crawler_limits.rate_limit #=> Integer
    #   resp.knowledge_base.source_configuration.managed_source_configuration.web_crawler_configuration.inclusion_filters #=> Array
    #   resp.knowledge_base.source_configuration.managed_source_configuration.web_crawler_configuration.inclusion_filters[0] #=> String
    #   resp.knowledge_base.source_configuration.managed_source_configuration.web_crawler_configuration.exclusion_filters #=> Array
    #   resp.knowledge_base.source_configuration.managed_source_configuration.web_crawler_configuration.exclusion_filters[0] #=> String
    #   resp.knowledge_base.source_configuration.managed_source_configuration.web_crawler_configuration.scope #=> String, one of "HOST_ONLY", "SUBDOMAINS"
    #   resp.knowledge_base.rendering_configuration.template_uri #=> String
    #   resp.knowledge_base.server_side_encryption_configuration.kms_key_id #=> String
    #   resp.knowledge_base.description #=> String
    #   resp.knowledge_base.tags #=> Hash
    #   resp.knowledge_base.tags["TagKey"] #=> String
    #   resp.knowledge_base.ingestion_status #=> String, one of "SYNC_FAILED", "SYNCING_IN_PROGRESS", "SYNC_SUCCESS", "CREATE_IN_PROGRESS"
    #   resp.knowledge_base.ingestion_failure_reasons #=> Array
    #   resp.knowledge_base.ingestion_failure_reasons[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateKnowledgeBase AWS API Documentation
    #
    # @overload create_knowledge_base(params = {})
    # @param [Hash] params ({})
    def create_knowledge_base(params = {}, options = {})
      req = build_request(:create_knowledge_base, params)
      req.send_request(options)
    end

    # Creates an Amazon Q in Connect message template. The name of the
    # message template has to be unique for each knowledge base. The channel
    # subtype of the message template is immutable and cannot be modified
    # after creation. After the message template is created, you can use the
    # `$LATEST` qualifier to reference the created message template.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @option params [required, String] :name
    #   The name of the message template.
    #
    # @option params [required, Types::MessageTemplateContentProvider] :content
    #   The content of the message template.
    #
    # @option params [String] :description
    #   The description of the message template.
    #
    # @option params [required, String] :channel_subtype
    #   The channel subtype this message template applies to.
    #
    # @option params [String] :language
    #   The language code value for the language in which the quick response
    #   is written. The supported language codes include `de_DE`, `en_US`,
    #   `es_ES`, `fr_FR`, `id_ID`, `it_IT`, `ja_JP`, `ko_KR`, `pt_BR`,
    #   `zh_CN`, `zh_TW`
    #
    # @option params [Types::MessageTemplateAttributes] :default_attributes
    #   An object that specifies the default values to use for variables in
    #   the message template. This object contains different categories of
    #   key-value pairs. Each key defines a variable or placeholder in the
    #   message template. The corresponding value defines the default value
    #   for that variable.
    #
    # @option params [Types::GroupingConfiguration] :grouping_configuration
    #   The configuration information of the grouping of Amazon Q in Connect
    #   users.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Types::CreateMessageTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMessageTemplateResponse#message_template #message_template} => Types::MessageTemplateData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_message_template({
    #     knowledge_base_id: "UuidOrArn", # required
    #     name: "Name", # required
    #     content: { # required
    #       email: {
    #         subject: "NonEmptyUnlimitedString",
    #         body: {
    #           plain_text: {
    #             content: "NonEmptyUnlimitedString",
    #           },
    #           html: {
    #             content: "NonEmptyUnlimitedString",
    #           },
    #         },
    #         headers: [
    #           {
    #             name: "EmailHeaderKey",
    #             value: "EmailHeaderValue",
    #           },
    #         ],
    #       },
    #       sms: {
    #         body: {
    #           plain_text: {
    #             content: "NonEmptyUnlimitedString",
    #           },
    #         },
    #       },
    #     },
    #     description: "Description",
    #     channel_subtype: "EMAIL", # required, accepts EMAIL, SMS
    #     language: "LanguageCode",
    #     default_attributes: {
    #       system_attributes: {
    #         name: "MessageTemplateAttributeValue",
    #         customer_endpoint: {
    #           address: "MessageTemplateAttributeValue",
    #         },
    #         system_endpoint: {
    #           address: "MessageTemplateAttributeValue",
    #         },
    #       },
    #       agent_attributes: {
    #         first_name: "MessageTemplateAttributeValue",
    #         last_name: "MessageTemplateAttributeValue",
    #       },
    #       customer_profile_attributes: {
    #         profile_id: "MessageTemplateAttributeValue",
    #         profile_arn: "MessageTemplateAttributeValue",
    #         first_name: "MessageTemplateAttributeValue",
    #         middle_name: "MessageTemplateAttributeValue",
    #         last_name: "MessageTemplateAttributeValue",
    #         account_number: "MessageTemplateAttributeValue",
    #         email_address: "MessageTemplateAttributeValue",
    #         phone_number: "MessageTemplateAttributeValue",
    #         additional_information: "MessageTemplateAttributeValue",
    #         party_type: "MessageTemplateAttributeValue",
    #         business_name: "MessageTemplateAttributeValue",
    #         birth_date: "MessageTemplateAttributeValue",
    #         gender: "MessageTemplateAttributeValue",
    #         mobile_phone_number: "MessageTemplateAttributeValue",
    #         home_phone_number: "MessageTemplateAttributeValue",
    #         business_phone_number: "MessageTemplateAttributeValue",
    #         business_email_address: "MessageTemplateAttributeValue",
    #         address1: "MessageTemplateAttributeValue",
    #         address2: "MessageTemplateAttributeValue",
    #         address3: "MessageTemplateAttributeValue",
    #         address4: "MessageTemplateAttributeValue",
    #         city: "MessageTemplateAttributeValue",
    #         county: "MessageTemplateAttributeValue",
    #         country: "MessageTemplateAttributeValue",
    #         postal_code: "MessageTemplateAttributeValue",
    #         province: "MessageTemplateAttributeValue",
    #         state: "MessageTemplateAttributeValue",
    #         shipping_address_1: "MessageTemplateAttributeValue",
    #         shipping_address_2: "MessageTemplateAttributeValue",
    #         shipping_address_3: "MessageTemplateAttributeValue",
    #         shipping_address_4: "MessageTemplateAttributeValue",
    #         shipping_city: "MessageTemplateAttributeValue",
    #         shipping_county: "MessageTemplateAttributeValue",
    #         shipping_country: "MessageTemplateAttributeValue",
    #         shipping_postal_code: "MessageTemplateAttributeValue",
    #         shipping_province: "MessageTemplateAttributeValue",
    #         shipping_state: "MessageTemplateAttributeValue",
    #         mailing_address_1: "MessageTemplateAttributeValue",
    #         mailing_address_2: "MessageTemplateAttributeValue",
    #         mailing_address_3: "MessageTemplateAttributeValue",
    #         mailing_address_4: "MessageTemplateAttributeValue",
    #         mailing_city: "MessageTemplateAttributeValue",
    #         mailing_county: "MessageTemplateAttributeValue",
    #         mailing_country: "MessageTemplateAttributeValue",
    #         mailing_postal_code: "MessageTemplateAttributeValue",
    #         mailing_province: "MessageTemplateAttributeValue",
    #         mailing_state: "MessageTemplateAttributeValue",
    #         billing_address_1: "MessageTemplateAttributeValue",
    #         billing_address_2: "MessageTemplateAttributeValue",
    #         billing_address_3: "MessageTemplateAttributeValue",
    #         billing_address_4: "MessageTemplateAttributeValue",
    #         billing_city: "MessageTemplateAttributeValue",
    #         billing_county: "MessageTemplateAttributeValue",
    #         billing_country: "MessageTemplateAttributeValue",
    #         billing_postal_code: "MessageTemplateAttributeValue",
    #         billing_province: "MessageTemplateAttributeValue",
    #         billing_state: "MessageTemplateAttributeValue",
    #         custom: {
    #           "MessageTemplateAttributeKey" => "MessageTemplateAttributeValue",
    #         },
    #       },
    #       custom_attributes: {
    #         "MessageTemplateAttributeKey" => "MessageTemplateAttributeValue",
    #       },
    #     },
    #     grouping_configuration: {
    #       criteria: "GroupingCriteria",
    #       values: ["GroupingValue"],
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.message_template.message_template_arn #=> String
    #   resp.message_template.message_template_id #=> String
    #   resp.message_template.knowledge_base_arn #=> String
    #   resp.message_template.knowledge_base_id #=> String
    #   resp.message_template.name #=> String
    #   resp.message_template.channel_subtype #=> String, one of "EMAIL", "SMS"
    #   resp.message_template.created_time #=> Time
    #   resp.message_template.last_modified_time #=> Time
    #   resp.message_template.last_modified_by #=> String
    #   resp.message_template.content.email.subject #=> String
    #   resp.message_template.content.email.body.plain_text.content #=> String
    #   resp.message_template.content.email.body.html.content #=> String
    #   resp.message_template.content.email.headers #=> Array
    #   resp.message_template.content.email.headers[0].name #=> String
    #   resp.message_template.content.email.headers[0].value #=> String
    #   resp.message_template.content.sms.body.plain_text.content #=> String
    #   resp.message_template.description #=> String
    #   resp.message_template.language #=> String
    #   resp.message_template.grouping_configuration.criteria #=> String
    #   resp.message_template.grouping_configuration.values #=> Array
    #   resp.message_template.grouping_configuration.values[0] #=> String
    #   resp.message_template.default_attributes.system_attributes.name #=> String
    #   resp.message_template.default_attributes.system_attributes.customer_endpoint.address #=> String
    #   resp.message_template.default_attributes.system_attributes.system_endpoint.address #=> String
    #   resp.message_template.default_attributes.agent_attributes.first_name #=> String
    #   resp.message_template.default_attributes.agent_attributes.last_name #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.profile_id #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.profile_arn #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.first_name #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.middle_name #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.last_name #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.account_number #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.email_address #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.phone_number #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.additional_information #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.party_type #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.business_name #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.birth_date #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.gender #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mobile_phone_number #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.home_phone_number #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.business_phone_number #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.business_email_address #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.address1 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.address2 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.address3 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.address4 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.city #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.county #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.country #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.postal_code #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.province #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.state #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_address_1 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_address_2 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_address_3 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_address_4 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_city #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_county #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_country #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_postal_code #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_province #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_state #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_address_1 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_address_2 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_address_3 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_address_4 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_city #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_county #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_country #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_postal_code #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_province #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_state #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_address_1 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_address_2 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_address_3 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_address_4 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_city #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_county #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_country #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_postal_code #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_province #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_state #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.custom #=> Hash
    #   resp.message_template.default_attributes.customer_profile_attributes.custom["MessageTemplateAttributeKey"] #=> String
    #   resp.message_template.default_attributes.custom_attributes #=> Hash
    #   resp.message_template.default_attributes.custom_attributes["MessageTemplateAttributeKey"] #=> String
    #   resp.message_template.attribute_types #=> Array
    #   resp.message_template.attribute_types[0] #=> String, one of "SYSTEM", "AGENT", "CUSTOMER_PROFILE", "CUSTOM"
    #   resp.message_template.message_template_content_sha_256 #=> String
    #   resp.message_template.tags #=> Hash
    #   resp.message_template.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateMessageTemplate AWS API Documentation
    #
    # @overload create_message_template(params = {})
    # @param [Hash] params ({})
    def create_message_template(params = {}, options = {})
      req = build_request(:create_message_template, params)
      req.send_request(options)
    end

    # Uploads an attachment file to the specified Amazon Q in Connect
    # message template. The name of the message template attachment has to
    # be unique for each message template referenced by the `$LATEST`
    # qualifier. The body of the attachment file should be encoded using
    # base64 encoding. After the file is uploaded, you can use the
    # pre-signed Amazon S3 URL returned in response to download the uploaded
    # file.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @option params [required, String] :message_template_id
    #   The identifier of the message template. Can be either the ID or the
    #   ARN. It cannot contain any qualifier.
    #
    # @option params [required, String] :content_disposition
    #   The presentation information for the attachment file.
    #
    # @option params [required, String] :name
    #   The name of the attachment file being uploaded. The name should
    #   include the file extension.
    #
    # @option params [required, String] :body
    #   The body of the attachment file being uploaded. It should be encoded
    #   using base64 encoding.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Types::CreateMessageTemplateAttachmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMessageTemplateAttachmentResponse#attachment #attachment} => Types::MessageTemplateAttachment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_message_template_attachment({
    #     knowledge_base_id: "UuidOrArn", # required
    #     message_template_id: "UuidOrArnOrEitherWithQualifier", # required
    #     content_disposition: "ATTACHMENT", # required, accepts ATTACHMENT
    #     name: "AttachmentFileName", # required
    #     body: "NonEmptyUnlimitedString", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.attachment.content_disposition #=> String, one of "ATTACHMENT"
    #   resp.attachment.name #=> String
    #   resp.attachment.uploaded_time #=> Time
    #   resp.attachment.url #=> String
    #   resp.attachment.url_expiry #=> Time
    #   resp.attachment.attachment_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateMessageTemplateAttachment AWS API Documentation
    #
    # @overload create_message_template_attachment(params = {})
    # @param [Hash] params ({})
    def create_message_template_attachment(params = {}, options = {})
      req = build_request(:create_message_template_attachment, params)
      req.send_request(options)
    end

    # Creates a new Amazon Q in Connect message template version from the
    # current content and configuration of a message template. Versions are
    # immutable and monotonically increasing. Once a version is created, you
    # can reference a specific version of the message template by passing in
    # `<message-template-id>:<versionNumber>` as the message template
    # identifier. An error is displayed if the supplied
    # `messageTemplateContentSha256` is different from the
    # `messageTemplateContentSha256` of the message template with `$LATEST`
    # qualifier. If multiple `CreateMessageTemplateVersion` requests are
    # made while the message template remains the same, only the first
    # invocation creates a new version and the succeeding requests will
    # return the same response as the first invocation.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @option params [required, String] :message_template_id
    #   The identifier of the message template. Can be either the ID or the
    #   ARN. It cannot contain any qualifier.
    #
    # @option params [String] :message_template_content_sha_256
    #   The checksum value of the message template content that is referenced
    #   by the `$LATEST` qualifier. It can be returned in
    #   `MessageTemplateData` or `ExtendedMessageTemplateData`. It’s
    #   calculated by content, language, `defaultAttributes` and `Attachments`
    #   of the message template. If not supplied, the message template version
    #   will be created based on the message template content that is
    #   referenced by the `$LATEST` qualifier by default.
    #
    # @return [Types::CreateMessageTemplateVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMessageTemplateVersionResponse#message_template #message_template} => Types::ExtendedMessageTemplateData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_message_template_version({
    #     knowledge_base_id: "UuidOrArn", # required
    #     message_template_id: "UuidOrArnOrEitherWithQualifier", # required
    #     message_template_content_sha_256: "MessageTemplateContentSha256",
    #   })
    #
    # @example Response structure
    #
    #   resp.message_template.message_template_arn #=> String
    #   resp.message_template.message_template_id #=> String
    #   resp.message_template.knowledge_base_arn #=> String
    #   resp.message_template.knowledge_base_id #=> String
    #   resp.message_template.name #=> String
    #   resp.message_template.channel_subtype #=> String, one of "EMAIL", "SMS"
    #   resp.message_template.created_time #=> Time
    #   resp.message_template.last_modified_time #=> Time
    #   resp.message_template.last_modified_by #=> String
    #   resp.message_template.content.email.subject #=> String
    #   resp.message_template.content.email.body.plain_text.content #=> String
    #   resp.message_template.content.email.body.html.content #=> String
    #   resp.message_template.content.email.headers #=> Array
    #   resp.message_template.content.email.headers[0].name #=> String
    #   resp.message_template.content.email.headers[0].value #=> String
    #   resp.message_template.content.sms.body.plain_text.content #=> String
    #   resp.message_template.description #=> String
    #   resp.message_template.language #=> String
    #   resp.message_template.grouping_configuration.criteria #=> String
    #   resp.message_template.grouping_configuration.values #=> Array
    #   resp.message_template.grouping_configuration.values[0] #=> String
    #   resp.message_template.default_attributes.system_attributes.name #=> String
    #   resp.message_template.default_attributes.system_attributes.customer_endpoint.address #=> String
    #   resp.message_template.default_attributes.system_attributes.system_endpoint.address #=> String
    #   resp.message_template.default_attributes.agent_attributes.first_name #=> String
    #   resp.message_template.default_attributes.agent_attributes.last_name #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.profile_id #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.profile_arn #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.first_name #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.middle_name #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.last_name #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.account_number #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.email_address #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.phone_number #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.additional_information #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.party_type #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.business_name #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.birth_date #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.gender #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mobile_phone_number #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.home_phone_number #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.business_phone_number #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.business_email_address #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.address1 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.address2 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.address3 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.address4 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.city #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.county #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.country #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.postal_code #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.province #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.state #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_address_1 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_address_2 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_address_3 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_address_4 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_city #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_county #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_country #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_postal_code #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_province #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_state #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_address_1 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_address_2 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_address_3 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_address_4 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_city #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_county #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_country #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_postal_code #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_province #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_state #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_address_1 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_address_2 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_address_3 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_address_4 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_city #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_county #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_country #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_postal_code #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_province #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_state #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.custom #=> Hash
    #   resp.message_template.default_attributes.customer_profile_attributes.custom["MessageTemplateAttributeKey"] #=> String
    #   resp.message_template.default_attributes.custom_attributes #=> Hash
    #   resp.message_template.default_attributes.custom_attributes["MessageTemplateAttributeKey"] #=> String
    #   resp.message_template.attribute_types #=> Array
    #   resp.message_template.attribute_types[0] #=> String, one of "SYSTEM", "AGENT", "CUSTOMER_PROFILE", "CUSTOM"
    #   resp.message_template.attachments #=> Array
    #   resp.message_template.attachments[0].content_disposition #=> String, one of "ATTACHMENT"
    #   resp.message_template.attachments[0].name #=> String
    #   resp.message_template.attachments[0].uploaded_time #=> Time
    #   resp.message_template.attachments[0].url #=> String
    #   resp.message_template.attachments[0].url_expiry #=> Time
    #   resp.message_template.attachments[0].attachment_id #=> String
    #   resp.message_template.is_active #=> Boolean
    #   resp.message_template.version_number #=> Integer
    #   resp.message_template.message_template_content_sha_256 #=> String
    #   resp.message_template.tags #=> Hash
    #   resp.message_template.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateMessageTemplateVersion AWS API Documentation
    #
    # @overload create_message_template_version(params = {})
    # @param [Hash] params ({})
    def create_message_template_version(params = {}, options = {})
      req = build_request(:create_message_template_version, params)
      req.send_request(options)
    end

    # Creates an Amazon Q in Connect quick response.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @option params [required, String] :name
    #   The name of the quick response.
    #
    # @option params [required, Types::QuickResponseDataProvider] :content
    #   The content of the quick response.
    #
    # @option params [String] :content_type
    #   The media type of the quick response content.
    #
    #   * Use `application/x.quickresponse;format=plain` for a quick response
    #     written in plain text.
    #
    #   * Use `application/x.quickresponse;format=markdown` for a quick
    #     response written in richtext.
    #
    # @option params [Types::GroupingConfiguration] :grouping_configuration
    #   The configuration information of the user groups that the quick
    #   response is accessible to.
    #
    # @option params [String] :description
    #   The description of the quick response.
    #
    # @option params [String] :shortcut_key
    #   The shortcut key of the quick response. The value should be unique
    #   across the knowledge base.
    #
    # @option params [Boolean] :is_active
    #   Whether the quick response is active.
    #
    # @option params [Array<String>] :channels
    #   The Amazon Connect channels this quick response applies to.
    #
    # @option params [String] :language
    #   The language code value for the language in which the quick response
    #   is written. The supported language codes include `de_DE`, `en_US`,
    #   `es_ES`, `fr_FR`, `id_ID`, `it_IT`, `ja_JP`, `ko_KR`, `pt_BR`,
    #   `zh_CN`, `zh_TW`
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Types::CreateQuickResponseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateQuickResponseResponse#quick_response #quick_response} => Types::QuickResponseData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_quick_response({
    #     knowledge_base_id: "UuidOrArn", # required
    #     name: "QuickResponseName", # required
    #     content: { # required
    #       content: "QuickResponseContent",
    #     },
    #     content_type: "QuickResponseType",
    #     grouping_configuration: {
    #       criteria: "GroupingCriteria",
    #       values: ["GroupingValue"],
    #     },
    #     description: "QuickResponseDescription",
    #     shortcut_key: "ShortCutKey",
    #     is_active: false,
    #     channels: ["Channel"],
    #     language: "LanguageCode",
    #     client_token: "NonEmptyString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.quick_response.quick_response_arn #=> String
    #   resp.quick_response.quick_response_id #=> String
    #   resp.quick_response.knowledge_base_arn #=> String
    #   resp.quick_response.knowledge_base_id #=> String
    #   resp.quick_response.name #=> String
    #   resp.quick_response.content_type #=> String
    #   resp.quick_response.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"
    #   resp.quick_response.created_time #=> Time
    #   resp.quick_response.last_modified_time #=> Time
    #   resp.quick_response.contents.plain_text.content #=> String
    #   resp.quick_response.contents.markdown.content #=> String
    #   resp.quick_response.description #=> String
    #   resp.quick_response.grouping_configuration.criteria #=> String
    #   resp.quick_response.grouping_configuration.values #=> Array
    #   resp.quick_response.grouping_configuration.values[0] #=> String
    #   resp.quick_response.shortcut_key #=> String
    #   resp.quick_response.last_modified_by #=> String
    #   resp.quick_response.is_active #=> Boolean
    #   resp.quick_response.channels #=> Array
    #   resp.quick_response.channels[0] #=> String
    #   resp.quick_response.language #=> String
    #   resp.quick_response.tags #=> Hash
    #   resp.quick_response.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateQuickResponse AWS API Documentation
    #
    # @overload create_quick_response(params = {})
    # @param [Hash] params ({})
    def create_quick_response(params = {}, options = {})
      req = build_request(:create_quick_response, params)
      req.send_request(options)
    end

    # Creates a session. A session is a contextual container used for
    # generating recommendations. Amazon Connect creates a new Amazon Q in
    # Connect session for each contact on which Amazon Q in Connect is
    # enabled.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :name
    #   The name of the session.
    #
    # @option params [String] :description
    #   The description.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @option params [Types::TagFilter] :tag_filter
    #   An object that can be used to specify Tag conditions.
    #
    # @option params [Hash<String,Types::AIAgentConfigurationData>] :ai_agent_configuration
    #   The configuration of the AI Agents (mapped by AI Agent Type to AI
    #   Agent version) that should be used by Amazon Q in Connect for this
    #   Session.
    #
    # @return [Types::CreateSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSessionResponse#session #session} => Types::SessionData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_session({
    #     client_token: "ClientToken",
    #     assistant_id: "UuidOrArn", # required
    #     name: "Name", # required
    #     description: "Description",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     tag_filter: {
    #       tag_condition: {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #       and_conditions: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue",
    #         },
    #       ],
    #       or_conditions: [
    #         {
    #           and_conditions: [
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue",
    #             },
    #           ],
    #           tag_condition: {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         },
    #       ],
    #     },
    #     ai_agent_configuration: {
    #       "MANUAL_SEARCH" => {
    #         ai_agent_id: "UuidWithQualifier", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.session.session_arn #=> String
    #   resp.session.session_id #=> String
    #   resp.session.name #=> String
    #   resp.session.description #=> String
    #   resp.session.tags #=> Hash
    #   resp.session.tags["TagKey"] #=> String
    #   resp.session.integration_configuration.topic_integration_arn #=> String
    #   resp.session.tag_filter.tag_condition.key #=> String
    #   resp.session.tag_filter.tag_condition.value #=> String
    #   resp.session.tag_filter.and_conditions #=> Array
    #   resp.session.tag_filter.and_conditions[0].key #=> String
    #   resp.session.tag_filter.and_conditions[0].value #=> String
    #   resp.session.tag_filter.or_conditions #=> Array
    #   resp.session.tag_filter.or_conditions[0].and_conditions #=> Array
    #   resp.session.tag_filter.or_conditions[0].and_conditions[0].key #=> String
    #   resp.session.tag_filter.or_conditions[0].and_conditions[0].value #=> String
    #   resp.session.tag_filter.or_conditions[0].tag_condition.key #=> String
    #   resp.session.tag_filter.or_conditions[0].tag_condition.value #=> String
    #   resp.session.ai_agent_configuration #=> Hash
    #   resp.session.ai_agent_configuration["AIAgentType"].ai_agent_id #=> String
    #   resp.session.origin #=> String, one of "SYSTEM", "CUSTOMER"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateSession AWS API Documentation
    #
    # @overload create_session(params = {})
    # @param [Hash] params ({})
    def create_session(params = {}, options = {})
      req = build_request(:create_session, params)
      req.send_request(options)
    end

    # Deactivates a specific version of the Amazon Q in Connect message
    # template . After the version is deactivated, you can no longer use the
    # `$ACTIVE_VERSION` qualifier to reference the version in active status.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @option params [required, String] :message_template_id
    #   The identifier of the message template. Can be either the ID or the
    #   ARN. It cannot contain any qualifier.
    #
    # @option params [required, Integer] :version_number
    #   The version number of the message template version to deactivate.
    #
    # @return [Types::DeactivateMessageTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeactivateMessageTemplateResponse#message_template_arn #message_template_arn} => String
    #   * {Types::DeactivateMessageTemplateResponse#message_template_id #message_template_id} => String
    #   * {Types::DeactivateMessageTemplateResponse#version_number #version_number} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deactivate_message_template({
    #     knowledge_base_id: "UuidOrArn", # required
    #     message_template_id: "UuidOrArnOrEitherWithQualifier", # required
    #     version_number: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message_template_arn #=> String
    #   resp.message_template_id #=> String
    #   resp.version_number #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeactivateMessageTemplate AWS API Documentation
    #
    # @overload deactivate_message_template(params = {})
    # @param [Hash] params ({})
    def deactivate_message_template(params = {}, options = {})
      req = build_request(:deactivate_message_template, params)
      req.send_request(options)
    end

    # Deletes an Amazon Q in Connect AI Agent.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :ai_agent_id
    #   The identifier of the Amazon Q in Connect AI Agent. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ai_agent({
    #     assistant_id: "UuidOrArn", # required
    #     ai_agent_id: "UuidOrArnOrEitherWithQualifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAIAgent AWS API Documentation
    #
    # @overload delete_ai_agent(params = {})
    # @param [Hash] params ({})
    def delete_ai_agent(params = {}, options = {})
      req = build_request(:delete_ai_agent, params)
      req.send_request(options)
    end

    # Deletes an Amazon Q in Connect AI Agent Version.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :ai_agent_id
    #   The identifier of the Amazon Q in Connect AI Agent. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, Integer] :version_number
    #   The version number of the AI Agent version.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ai_agent_version({
    #     assistant_id: "UuidOrArn", # required
    #     ai_agent_id: "UuidOrArnOrEitherWithQualifier", # required
    #     version_number: 1, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAIAgentVersion AWS API Documentation
    #
    # @overload delete_ai_agent_version(params = {})
    # @param [Hash] params ({})
    def delete_ai_agent_version(params = {}, options = {})
      req = build_request(:delete_ai_agent_version, params)
      req.send_request(options)
    end

    # Deletes an Amazon Q in Connect AI Guardrail.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :ai_guardrail_id
    #   The identifier of the Amazon Q in Connect AI Guardrail. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ai_guardrail({
    #     assistant_id: "UuidOrArn", # required
    #     ai_guardrail_id: "UuidOrArnOrEitherWithQualifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAIGuardrail AWS API Documentation
    #
    # @overload delete_ai_guardrail(params = {})
    # @param [Hash] params ({})
    def delete_ai_guardrail(params = {}, options = {})
      req = build_request(:delete_ai_guardrail, params)
      req.send_request(options)
    end

    # Delete and Amazon Q in Connect AI Guardrail version.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :ai_guardrail_id
    #   The identifier of the Amazon Q in Connect AI Guardrail.
    #
    # @option params [required, Integer] :version_number
    #   The version number of the AI Guardrail version to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ai_guardrail_version({
    #     assistant_id: "UuidOrArn", # required
    #     ai_guardrail_id: "UuidOrArnOrEitherWithQualifier", # required
    #     version_number: 1, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAIGuardrailVersion AWS API Documentation
    #
    # @overload delete_ai_guardrail_version(params = {})
    # @param [Hash] params ({})
    def delete_ai_guardrail_version(params = {}, options = {})
      req = build_request(:delete_ai_guardrail_version, params)
      req.send_request(options)
    end

    # Deletes an Amazon Q in Connect AI Prompt.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :ai_prompt_id
    #   The identifier of the Amazon Q in Connect AI prompt. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ai_prompt({
    #     assistant_id: "UuidOrArn", # required
    #     ai_prompt_id: "UuidOrArnOrEitherWithQualifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAIPrompt AWS API Documentation
    #
    # @overload delete_ai_prompt(params = {})
    # @param [Hash] params ({})
    def delete_ai_prompt(params = {}, options = {})
      req = build_request(:delete_ai_prompt, params)
      req.send_request(options)
    end

    # Delete and Amazon Q in Connect AI Prompt version.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :ai_prompt_id
    #   The identifier of the Amazon Q in Connect AI prompt.
    #
    # @option params [required, Integer] :version_number
    #   The version number of the AI Prompt version to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ai_prompt_version({
    #     assistant_id: "UuidOrArn", # required
    #     ai_prompt_id: "UuidOrArnOrEitherWithQualifier", # required
    #     version_number: 1, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAIPromptVersion AWS API Documentation
    #
    # @overload delete_ai_prompt_version(params = {})
    # @param [Hash] params ({})
    def delete_ai_prompt_version(params = {}, options = {})
      req = build_request(:delete_ai_prompt_version, params)
      req.send_request(options)
    end

    # Deletes an assistant.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_assistant({
    #     assistant_id: "UuidOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAssistant AWS API Documentation
    #
    # @overload delete_assistant(params = {})
    # @param [Hash] params ({})
    def delete_assistant(params = {}, options = {})
      req = build_request(:delete_assistant, params)
      req.send_request(options)
    end

    # Deletes an assistant association.
    #
    # @option params [required, String] :assistant_association_id
    #   The identifier of the assistant association. Can be either the ID or
    #   the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_assistant_association({
    #     assistant_association_id: "UuidOrArn", # required
    #     assistant_id: "UuidOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAssistantAssociation AWS API Documentation
    #
    # @overload delete_assistant_association(params = {})
    # @param [Hash] params ({})
    def delete_assistant_association(params = {}, options = {})
      req = build_request(:delete_assistant_association, params)
      req.send_request(options)
    end

    # Deletes the content.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @option params [required, String] :content_id
    #   The identifier of the content. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_content({
    #     knowledge_base_id: "UuidOrArn", # required
    #     content_id: "UuidOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteContent AWS API Documentation
    #
    # @overload delete_content(params = {})
    # @param [Hash] params ({})
    def delete_content(params = {}, options = {})
      req = build_request(:delete_content, params)
      req.send_request(options)
    end

    # Deletes the content association.
    #
    # For more information about content associations--what they are and
    # when they are used--see [Integrate Amazon Q in Connect with
    # step-by-step guides][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/integrate-q-with-guides.html
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base.
    #
    # @option params [required, String] :content_id
    #   The identifier of the content.
    #
    # @option params [required, String] :content_association_id
    #   The identifier of the content association. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_content_association({
    #     knowledge_base_id: "UuidOrArn", # required
    #     content_id: "UuidOrArn", # required
    #     content_association_id: "UuidOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteContentAssociation AWS API Documentation
    #
    # @overload delete_content_association(params = {})
    # @param [Hash] params ({})
    def delete_content_association(params = {}, options = {})
      req = build_request(:delete_content_association, params)
      req.send_request(options)
    end

    # Deletes the quick response import job.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base.
    #
    # @option params [required, String] :import_job_id
    #   The identifier of the import job to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_import_job({
    #     knowledge_base_id: "UuidOrArn", # required
    #     import_job_id: "Uuid", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteImportJob AWS API Documentation
    #
    # @overload delete_import_job(params = {})
    # @param [Hash] params ({})
    def delete_import_job(params = {}, options = {})
      req = build_request(:delete_import_job, params)
      req.send_request(options)
    end

    # Deletes the knowledge base.
    #
    # <note markdown="1"> When you use this API to delete an external knowledge base such as
    # Salesforce or ServiceNow, you must also delete the [Amazon
    # AppIntegrations][1] DataIntegration. This is because you can't reuse
    # the DataIntegration after it's been associated with an external
    # knowledge base. However, you can delete and recreate it. See
    # [DeleteDataIntegration][2] and [CreateDataIntegration][3] in the
    # *Amazon AppIntegrations API Reference*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html
    # [2]: https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html
    # [3]: https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html
    #
    # @option params [required, String] :knowledge_base_id
    #   The knowledge base to delete content from. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_knowledge_base({
    #     knowledge_base_id: "UuidOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteKnowledgeBase AWS API Documentation
    #
    # @overload delete_knowledge_base(params = {})
    # @param [Hash] params ({})
    def delete_knowledge_base(params = {}, options = {})
      req = build_request(:delete_knowledge_base, params)
      req.send_request(options)
    end

    # Deletes an Amazon Q in Connect message template entirely or a specific
    # version of the message template if version is supplied in the request.
    # You can provide the message template identifier as
    # `<message-template-id>:<versionNumber>` to delete a specific version
    # of the message template. If it is not supplied, the message template
    # and all available versions will be deleted.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @option params [required, String] :message_template_id
    #   The identifier of the message template. Can be either the ID or the
    #   ARN.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_message_template({
    #     knowledge_base_id: "UuidOrArn", # required
    #     message_template_id: "UuidOrArnOrEitherWithQualifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteMessageTemplate AWS API Documentation
    #
    # @overload delete_message_template(params = {})
    # @param [Hash] params ({})
    def delete_message_template(params = {}, options = {})
      req = build_request(:delete_message_template, params)
      req.send_request(options)
    end

    # Deletes the attachment file from the Amazon Q in Connect message
    # template that is referenced by `$LATEST` qualifier. Attachments on
    # available message template versions will remain unchanged.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @option params [required, String] :message_template_id
    #   The identifier of the message template. Can be either the ID or the
    #   ARN. It cannot contain any qualifier.
    #
    # @option params [required, String] :attachment_id
    #   The identifier of the attachment file.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_message_template_attachment({
    #     knowledge_base_id: "UuidOrArn", # required
    #     message_template_id: "UuidOrArnOrEitherWithQualifier", # required
    #     attachment_id: "Uuid", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteMessageTemplateAttachment AWS API Documentation
    #
    # @overload delete_message_template_attachment(params = {})
    # @param [Hash] params ({})
    def delete_message_template_attachment(params = {}, options = {})
      req = build_request(:delete_message_template_attachment, params)
      req.send_request(options)
    end

    # Deletes a quick response.
    #
    # @option params [required, String] :knowledge_base_id
    #   The knowledge base from which the quick response is deleted. The
    #   identifier of the knowledge base.
    #
    # @option params [required, String] :quick_response_id
    #   The identifier of the quick response to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_quick_response({
    #     knowledge_base_id: "UuidOrArn", # required
    #     quick_response_id: "UuidOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteQuickResponse AWS API Documentation
    #
    # @overload delete_quick_response(params = {})
    # @param [Hash] params ({})
    def delete_quick_response(params = {}, options = {})
      req = build_request(:delete_quick_response, params)
      req.send_request(options)
    end

    # Gets an Amazon Q in Connect AI Agent.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :ai_agent_id
    #   The identifier of the Amazon Q in Connect AI Agent (with or without a
    #   version qualifier). Can be either the ID or the ARN. URLs cannot
    #   contain the ARN.
    #
    # @return [Types::GetAIAgentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAIAgentResponse#ai_agent #ai_agent} => Types::AIAgentData
    #   * {Types::GetAIAgentResponse#version_number #version_number} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ai_agent({
    #     assistant_id: "UuidOrArn", # required
    #     ai_agent_id: "UuidOrArnOrEitherWithQualifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ai_agent.assistant_id #=> String
    #   resp.ai_agent.assistant_arn #=> String
    #   resp.ai_agent.ai_agent_id #=> String
    #   resp.ai_agent.ai_agent_arn #=> String
    #   resp.ai_agent.name #=> String
    #   resp.ai_agent.type #=> String, one of "MANUAL_SEARCH", "ANSWER_RECOMMENDATION", "SELF_SERVICE"
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.answer_generation_ai_prompt_id #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.answer_generation_ai_guardrail_id #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations #=> Array
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_id #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_type #=> String, one of "KNOWLEDGE_BASE"
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.key #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.value #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions #=> Array
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].key #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].value #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions #=> Array
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions #=> Array
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].key #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].value #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.key #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.value #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.max_results #=> Integer
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.override_knowledge_base_search_type #=> String, one of "HYBRID", "SEMANTIC"
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.locale #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.intent_labeling_generation_ai_prompt_id #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.query_reformulation_ai_prompt_id #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.answer_generation_ai_prompt_id #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.answer_generation_ai_guardrail_id #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations #=> Array
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_id #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_type #=> String, one of "KNOWLEDGE_BASE"
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.key #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.value #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions #=> Array
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].key #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].value #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions #=> Array
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions #=> Array
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].key #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].value #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.key #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.value #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.max_results #=> Integer
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.override_knowledge_base_search_type #=> String, one of "HYBRID", "SEMANTIC"
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.locale #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.self_service_pre_processing_ai_prompt_id #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.self_service_answer_generation_ai_prompt_id #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.self_service_ai_guardrail_id #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations #=> Array
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_id #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_type #=> String, one of "KNOWLEDGE_BASE"
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.key #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.value #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions #=> Array
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].key #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].value #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions #=> Array
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions #=> Array
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].key #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].value #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.key #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.value #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.max_results #=> Integer
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.override_knowledge_base_search_type #=> String, one of "HYBRID", "SEMANTIC"
    #   resp.ai_agent.modified_time #=> Time
    #   resp.ai_agent.description #=> String
    #   resp.ai_agent.visibility_status #=> String, one of "SAVED", "PUBLISHED"
    #   resp.ai_agent.tags #=> Hash
    #   resp.ai_agent.tags["TagKey"] #=> String
    #   resp.ai_agent.origin #=> String, one of "SYSTEM", "CUSTOMER"
    #   resp.ai_agent.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.version_number #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetAIAgent AWS API Documentation
    #
    # @overload get_ai_agent(params = {})
    # @param [Hash] params ({})
    def get_ai_agent(params = {}, options = {})
      req = build_request(:get_ai_agent, params)
      req.send_request(options)
    end

    # Gets the Amazon Q in Connect AI Guardrail.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :ai_guardrail_id
    #   The identifier of the Amazon Q in Connect AI Guardrail.
    #
    # @return [Types::GetAIGuardrailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAIGuardrailResponse#ai_guardrail #ai_guardrail} => Types::AIGuardrailData
    #   * {Types::GetAIGuardrailResponse#version_number #version_number} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ai_guardrail({
    #     assistant_id: "UuidOrArn", # required
    #     ai_guardrail_id: "UuidOrArnOrEitherWithQualifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ai_guardrail.assistant_id #=> String
    #   resp.ai_guardrail.assistant_arn #=> String
    #   resp.ai_guardrail.ai_guardrail_arn #=> String
    #   resp.ai_guardrail.ai_guardrail_id #=> String
    #   resp.ai_guardrail.name #=> String
    #   resp.ai_guardrail.visibility_status #=> String, one of "SAVED", "PUBLISHED"
    #   resp.ai_guardrail.blocked_input_messaging #=> String
    #   resp.ai_guardrail.blocked_outputs_messaging #=> String
    #   resp.ai_guardrail.description #=> String
    #   resp.ai_guardrail.topic_policy_config.topics_config #=> Array
    #   resp.ai_guardrail.topic_policy_config.topics_config[0].name #=> String
    #   resp.ai_guardrail.topic_policy_config.topics_config[0].definition #=> String
    #   resp.ai_guardrail.topic_policy_config.topics_config[0].examples #=> Array
    #   resp.ai_guardrail.topic_policy_config.topics_config[0].examples[0] #=> String
    #   resp.ai_guardrail.topic_policy_config.topics_config[0].type #=> String, one of "DENY"
    #   resp.ai_guardrail.content_policy_config.filters_config #=> Array
    #   resp.ai_guardrail.content_policy_config.filters_config[0].type #=> String, one of "SEXUAL", "VIOLENCE", "HATE", "INSULTS", "MISCONDUCT", "PROMPT_ATTACK"
    #   resp.ai_guardrail.content_policy_config.filters_config[0].input_strength #=> String, one of "NONE", "LOW", "MEDIUM", "HIGH"
    #   resp.ai_guardrail.content_policy_config.filters_config[0].output_strength #=> String, one of "NONE", "LOW", "MEDIUM", "HIGH"
    #   resp.ai_guardrail.word_policy_config.words_config #=> Array
    #   resp.ai_guardrail.word_policy_config.words_config[0].text #=> String
    #   resp.ai_guardrail.word_policy_config.managed_word_lists_config #=> Array
    #   resp.ai_guardrail.word_policy_config.managed_word_lists_config[0].type #=> String, one of "PROFANITY"
    #   resp.ai_guardrail.sensitive_information_policy_config.pii_entities_config #=> Array
    #   resp.ai_guardrail.sensitive_information_policy_config.pii_entities_config[0].type #=> String, one of "ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"
    #   resp.ai_guardrail.sensitive_information_policy_config.pii_entities_config[0].action #=> String, one of "BLOCK", "ANONYMIZE"
    #   resp.ai_guardrail.sensitive_information_policy_config.regexes_config #=> Array
    #   resp.ai_guardrail.sensitive_information_policy_config.regexes_config[0].name #=> String
    #   resp.ai_guardrail.sensitive_information_policy_config.regexes_config[0].description #=> String
    #   resp.ai_guardrail.sensitive_information_policy_config.regexes_config[0].pattern #=> String
    #   resp.ai_guardrail.sensitive_information_policy_config.regexes_config[0].action #=> String, one of "BLOCK", "ANONYMIZE"
    #   resp.ai_guardrail.contextual_grounding_policy_config.filters_config #=> Array
    #   resp.ai_guardrail.contextual_grounding_policy_config.filters_config[0].type #=> String, one of "GROUNDING", "RELEVANCE"
    #   resp.ai_guardrail.contextual_grounding_policy_config.filters_config[0].threshold #=> Float
    #   resp.ai_guardrail.tags #=> Hash
    #   resp.ai_guardrail.tags["TagKey"] #=> String
    #   resp.ai_guardrail.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.ai_guardrail.modified_time #=> Time
    #   resp.version_number #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetAIGuardrail AWS API Documentation
    #
    # @overload get_ai_guardrail(params = {})
    # @param [Hash] params ({})
    def get_ai_guardrail(params = {}, options = {})
      req = build_request(:get_ai_guardrail, params)
      req.send_request(options)
    end

    # Gets and Amazon Q in Connect AI Prompt.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :ai_prompt_id
    #   The identifier of the Amazon Q in Connect AI prompt.
    #
    # @return [Types::GetAIPromptResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAIPromptResponse#ai_prompt #ai_prompt} => Types::AIPromptData
    #   * {Types::GetAIPromptResponse#version_number #version_number} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ai_prompt({
    #     assistant_id: "UuidOrArn", # required
    #     ai_prompt_id: "UuidOrArnOrEitherWithQualifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ai_prompt.assistant_id #=> String
    #   resp.ai_prompt.assistant_arn #=> String
    #   resp.ai_prompt.ai_prompt_id #=> String
    #   resp.ai_prompt.ai_prompt_arn #=> String
    #   resp.ai_prompt.name #=> String
    #   resp.ai_prompt.type #=> String, one of "ANSWER_GENERATION", "INTENT_LABELING_GENERATION", "QUERY_REFORMULATION", "SELF_SERVICE_PRE_PROCESSING", "SELF_SERVICE_ANSWER_GENERATION"
    #   resp.ai_prompt.template_type #=> String, one of "TEXT"
    #   resp.ai_prompt.model_id #=> String
    #   resp.ai_prompt.api_format #=> String, one of "ANTHROPIC_CLAUDE_MESSAGES", "ANTHROPIC_CLAUDE_TEXT_COMPLETIONS", "MESSAGES", "TEXT_COMPLETIONS"
    #   resp.ai_prompt.template_configuration.text_full_ai_prompt_edit_template_configuration.text #=> String
    #   resp.ai_prompt.modified_time #=> Time
    #   resp.ai_prompt.description #=> String
    #   resp.ai_prompt.visibility_status #=> String, one of "SAVED", "PUBLISHED"
    #   resp.ai_prompt.tags #=> Hash
    #   resp.ai_prompt.tags["TagKey"] #=> String
    #   resp.ai_prompt.origin #=> String, one of "SYSTEM", "CUSTOMER"
    #   resp.ai_prompt.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.version_number #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetAIPrompt AWS API Documentation
    #
    # @overload get_ai_prompt(params = {})
    # @param [Hash] params ({})
    def get_ai_prompt(params = {}, options = {})
      req = build_request(:get_ai_prompt, params)
      req.send_request(options)
    end

    # Retrieves information about an assistant.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @return [Types::GetAssistantResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAssistantResponse#assistant #assistant} => Types::AssistantData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_assistant({
    #     assistant_id: "UuidOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.assistant.assistant_id #=> String
    #   resp.assistant.assistant_arn #=> String
    #   resp.assistant.name #=> String
    #   resp.assistant.type #=> String, one of "AGENT"
    #   resp.assistant.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.assistant.description #=> String
    #   resp.assistant.tags #=> Hash
    #   resp.assistant.tags["TagKey"] #=> String
    #   resp.assistant.server_side_encryption_configuration.kms_key_id #=> String
    #   resp.assistant.integration_configuration.topic_integration_arn #=> String
    #   resp.assistant.capability_configuration.type #=> String, one of "V1", "V2"
    #   resp.assistant.ai_agent_configuration #=> Hash
    #   resp.assistant.ai_agent_configuration["AIAgentType"].ai_agent_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetAssistant AWS API Documentation
    #
    # @overload get_assistant(params = {})
    # @param [Hash] params ({})
    def get_assistant(params = {}, options = {})
      req = build_request(:get_assistant, params)
      req.send_request(options)
    end

    # Retrieves information about an assistant association.
    #
    # @option params [required, String] :assistant_association_id
    #   The identifier of the assistant association. Can be either the ID or
    #   the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @return [Types::GetAssistantAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAssistantAssociationResponse#assistant_association #assistant_association} => Types::AssistantAssociationData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_assistant_association({
    #     assistant_association_id: "UuidOrArn", # required
    #     assistant_id: "UuidOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.assistant_association.assistant_association_id #=> String
    #   resp.assistant_association.assistant_association_arn #=> String
    #   resp.assistant_association.assistant_id #=> String
    #   resp.assistant_association.assistant_arn #=> String
    #   resp.assistant_association.association_type #=> String, one of "KNOWLEDGE_BASE"
    #   resp.assistant_association.association_data.knowledge_base_association.knowledge_base_id #=> String
    #   resp.assistant_association.association_data.knowledge_base_association.knowledge_base_arn #=> String
    #   resp.assistant_association.tags #=> Hash
    #   resp.assistant_association.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetAssistantAssociation AWS API Documentation
    #
    # @overload get_assistant_association(params = {})
    # @param [Hash] params ({})
    def get_assistant_association(params = {}, options = {})
      req = build_request(:get_assistant_association, params)
      req.send_request(options)
    end

    # Retrieves content, including a pre-signed URL to download the content.
    #
    # @option params [required, String] :content_id
    #   The identifier of the content. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @return [Types::GetContentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetContentResponse#content #content} => Types::ContentData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_content({
    #     content_id: "UuidOrArn", # required
    #     knowledge_base_id: "UuidOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.content.content_arn #=> String
    #   resp.content.content_id #=> String
    #   resp.content.knowledge_base_arn #=> String
    #   resp.content.knowledge_base_id #=> String
    #   resp.content.name #=> String
    #   resp.content.revision_id #=> String
    #   resp.content.title #=> String
    #   resp.content.content_type #=> String
    #   resp.content.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_FAILED"
    #   resp.content.metadata #=> Hash
    #   resp.content.metadata["NonEmptyString"] #=> String
    #   resp.content.tags #=> Hash
    #   resp.content.tags["TagKey"] #=> String
    #   resp.content.link_out_uri #=> String
    #   resp.content.url #=> String
    #   resp.content.url_expiry #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetContent AWS API Documentation
    #
    # @overload get_content(params = {})
    # @param [Hash] params ({})
    def get_content(params = {}, options = {})
      req = build_request(:get_content, params)
      req.send_request(options)
    end

    # Returns the content association.
    #
    # For more information about content associations--what they are and
    # when they are used--see [Integrate Amazon Q in Connect with
    # step-by-step guides][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/integrate-q-with-guides.html
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base.
    #
    # @option params [required, String] :content_id
    #   The identifier of the content.
    #
    # @option params [required, String] :content_association_id
    #   The identifier of the content association. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #
    # @return [Types::GetContentAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetContentAssociationResponse#content_association #content_association} => Types::ContentAssociationData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_content_association({
    #     knowledge_base_id: "UuidOrArn", # required
    #     content_id: "UuidOrArn", # required
    #     content_association_id: "UuidOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.content_association.knowledge_base_id #=> String
    #   resp.content_association.knowledge_base_arn #=> String
    #   resp.content_association.content_id #=> String
    #   resp.content_association.content_arn #=> String
    #   resp.content_association.content_association_id #=> String
    #   resp.content_association.content_association_arn #=> String
    #   resp.content_association.association_type #=> String, one of "AMAZON_CONNECT_GUIDE"
    #   resp.content_association.association_data.amazon_connect_guide_association.flow_id #=> String
    #   resp.content_association.tags #=> Hash
    #   resp.content_association.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetContentAssociation AWS API Documentation
    #
    # @overload get_content_association(params = {})
    # @param [Hash] params ({})
    def get_content_association(params = {}, options = {})
      req = build_request(:get_content_association, params)
      req.send_request(options)
    end

    # Retrieves summary information about the content.
    #
    # @option params [required, String] :content_id
    #   The identifier of the content. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @return [Types::GetContentSummaryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetContentSummaryResponse#content_summary #content_summary} => Types::ContentSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_content_summary({
    #     content_id: "UuidOrArn", # required
    #     knowledge_base_id: "UuidOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.content_summary.content_arn #=> String
    #   resp.content_summary.content_id #=> String
    #   resp.content_summary.knowledge_base_arn #=> String
    #   resp.content_summary.knowledge_base_id #=> String
    #   resp.content_summary.name #=> String
    #   resp.content_summary.revision_id #=> String
    #   resp.content_summary.title #=> String
    #   resp.content_summary.content_type #=> String
    #   resp.content_summary.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_FAILED"
    #   resp.content_summary.metadata #=> Hash
    #   resp.content_summary.metadata["NonEmptyString"] #=> String
    #   resp.content_summary.tags #=> Hash
    #   resp.content_summary.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetContentSummary AWS API Documentation
    #
    # @overload get_content_summary(params = {})
    # @param [Hash] params ({})
    def get_content_summary(params = {}, options = {})
      req = build_request(:get_content_summary, params)
      req.send_request(options)
    end

    # Retrieves the started import job.
    #
    # @option params [required, String] :import_job_id
    #   The identifier of the import job to retrieve.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base that the import job belongs to.
    #
    # @return [Types::GetImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetImportJobResponse#import_job #import_job} => Types::ImportJobData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_import_job({
    #     import_job_id: "Uuid", # required
    #     knowledge_base_id: "UuidOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.import_job.import_job_id #=> String
    #   resp.import_job.knowledge_base_id #=> String
    #   resp.import_job.upload_id #=> String
    #   resp.import_job.knowledge_base_arn #=> String
    #   resp.import_job.import_job_type #=> String, one of "QUICK_RESPONSES"
    #   resp.import_job.status #=> String, one of "START_IN_PROGRESS", "FAILED", "COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.import_job.url #=> String
    #   resp.import_job.failed_record_report #=> String
    #   resp.import_job.url_expiry #=> Time
    #   resp.import_job.created_time #=> Time
    #   resp.import_job.last_modified_time #=> Time
    #   resp.import_job.metadata #=> Hash
    #   resp.import_job.metadata["NonEmptyString"] #=> String
    #   resp.import_job.external_source_configuration.source #=> String, one of "AMAZON_CONNECT"
    #   resp.import_job.external_source_configuration.configuration.connect_configuration.instance_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetImportJob AWS API Documentation
    #
    # @overload get_import_job(params = {})
    # @param [Hash] params ({})
    def get_import_job(params = {}, options = {})
      req = build_request(:get_import_job, params)
      req.send_request(options)
    end

    # Retrieves information about the knowledge base.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @return [Types::GetKnowledgeBaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKnowledgeBaseResponse#knowledge_base #knowledge_base} => Types::KnowledgeBaseData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_knowledge_base({
    #     knowledge_base_id: "UuidOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.knowledge_base.knowledge_base_id #=> String
    #   resp.knowledge_base.knowledge_base_arn #=> String
    #   resp.knowledge_base.name #=> String
    #   resp.knowledge_base.knowledge_base_type #=> String, one of "EXTERNAL", "CUSTOM", "QUICK_RESPONSES", "MESSAGE_TEMPLATES", "MANAGED"
    #   resp.knowledge_base.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.knowledge_base.last_content_modification_time #=> Time
    #   resp.knowledge_base.vector_ingestion_configuration.chunking_configuration.chunking_strategy #=> String, one of "FIXED_SIZE", "NONE", "HIERARCHICAL", "SEMANTIC"
    #   resp.knowledge_base.vector_ingestion_configuration.chunking_configuration.fixed_size_chunking_configuration.max_tokens #=> Integer
    #   resp.knowledge_base.vector_ingestion_configuration.chunking_configuration.fixed_size_chunking_configuration.overlap_percentage #=> Integer
    #   resp.knowledge_base.vector_ingestion_configuration.chunking_configuration.hierarchical_chunking_configuration.level_configurations #=> Array
    #   resp.knowledge_base.vector_ingestion_configuration.chunking_configuration.hierarchical_chunking_configuration.level_configurations[0].max_tokens #=> Integer
    #   resp.knowledge_base.vector_ingestion_configuration.chunking_configuration.hierarchical_chunking_configuration.overlap_tokens #=> Integer
    #   resp.knowledge_base.vector_ingestion_configuration.chunking_configuration.semantic_chunking_configuration.max_tokens #=> Integer
    #   resp.knowledge_base.vector_ingestion_configuration.chunking_configuration.semantic_chunking_configuration.buffer_size #=> Integer
    #   resp.knowledge_base.vector_ingestion_configuration.chunking_configuration.semantic_chunking_configuration.breakpoint_percentile_threshold #=> Integer
    #   resp.knowledge_base.vector_ingestion_configuration.parsing_configuration.parsing_strategy #=> String, one of "BEDROCK_FOUNDATION_MODEL"
    #   resp.knowledge_base.vector_ingestion_configuration.parsing_configuration.bedrock_foundation_model_configuration.model_arn #=> String
    #   resp.knowledge_base.vector_ingestion_configuration.parsing_configuration.bedrock_foundation_model_configuration.parsing_prompt.parsing_prompt_text #=> String
    #   resp.knowledge_base.source_configuration.app_integrations.app_integration_arn #=> String
    #   resp.knowledge_base.source_configuration.app_integrations.object_fields #=> Array
    #   resp.knowledge_base.source_configuration.app_integrations.object_fields[0] #=> String
    #   resp.knowledge_base.source_configuration.managed_source_configuration.web_crawler_configuration.url_configuration.seed_urls #=> Array
    #   resp.knowledge_base.source_configuration.managed_source_configuration.web_crawler_configuration.url_configuration.seed_urls[0].url #=> String
    #   resp.knowledge_base.source_configuration.managed_source_configuration.web_crawler_configuration.crawler_limits.rate_limit #=> Integer
    #   resp.knowledge_base.source_configuration.managed_source_configuration.web_crawler_configuration.inclusion_filters #=> Array
    #   resp.knowledge_base.source_configuration.managed_source_configuration.web_crawler_configuration.inclusion_filters[0] #=> String
    #   resp.knowledge_base.source_configuration.managed_source_configuration.web_crawler_configuration.exclusion_filters #=> Array
    #   resp.knowledge_base.source_configuration.managed_source_configuration.web_crawler_configuration.exclusion_filters[0] #=> String
    #   resp.knowledge_base.source_configuration.managed_source_configuration.web_crawler_configuration.scope #=> String, one of "HOST_ONLY", "SUBDOMAINS"
    #   resp.knowledge_base.rendering_configuration.template_uri #=> String
    #   resp.knowledge_base.server_side_encryption_configuration.kms_key_id #=> String
    #   resp.knowledge_base.description #=> String
    #   resp.knowledge_base.tags #=> Hash
    #   resp.knowledge_base.tags["TagKey"] #=> String
    #   resp.knowledge_base.ingestion_status #=> String, one of "SYNC_FAILED", "SYNCING_IN_PROGRESS", "SYNC_SUCCESS", "CREATE_IN_PROGRESS"
    #   resp.knowledge_base.ingestion_failure_reasons #=> Array
    #   resp.knowledge_base.ingestion_failure_reasons[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetKnowledgeBase AWS API Documentation
    #
    # @overload get_knowledge_base(params = {})
    # @param [Hash] params ({})
    def get_knowledge_base(params = {}, options = {})
      req = build_request(:get_knowledge_base, params)
      req.send_request(options)
    end

    # Retrieves the Amazon Q in Connect message template. The message
    # template identifier can contain an optional qualifier, for example,
    # `<message-template-id>:<qualifier>`, which is either an actual version
    # number or an Amazon Q Connect managed qualifier `$ACTIVE_VERSION` \|
    # `$LATEST`. If it is not supplied, then `$LATEST` is assumed
    # implicitly.
    #
    # @option params [required, String] :message_template_id
    #   The identifier of the message template. Can be either the ID or the
    #   ARN.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @return [Types::GetMessageTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMessageTemplateResponse#message_template #message_template} => Types::ExtendedMessageTemplateData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_message_template({
    #     message_template_id: "UuidOrArnOrEitherWithQualifier", # required
    #     knowledge_base_id: "UuidOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message_template.message_template_arn #=> String
    #   resp.message_template.message_template_id #=> String
    #   resp.message_template.knowledge_base_arn #=> String
    #   resp.message_template.knowledge_base_id #=> String
    #   resp.message_template.name #=> String
    #   resp.message_template.channel_subtype #=> String, one of "EMAIL", "SMS"
    #   resp.message_template.created_time #=> Time
    #   resp.message_template.last_modified_time #=> Time
    #   resp.message_template.last_modified_by #=> String
    #   resp.message_template.content.email.subject #=> String
    #   resp.message_template.content.email.body.plain_text.content #=> String
    #   resp.message_template.content.email.body.html.content #=> String
    #   resp.message_template.content.email.headers #=> Array
    #   resp.message_template.content.email.headers[0].name #=> String
    #   resp.message_template.content.email.headers[0].value #=> String
    #   resp.message_template.content.sms.body.plain_text.content #=> String
    #   resp.message_template.description #=> String
    #   resp.message_template.language #=> String
    #   resp.message_template.grouping_configuration.criteria #=> String
    #   resp.message_template.grouping_configuration.values #=> Array
    #   resp.message_template.grouping_configuration.values[0] #=> String
    #   resp.message_template.default_attributes.system_attributes.name #=> String
    #   resp.message_template.default_attributes.system_attributes.customer_endpoint.address #=> String
    #   resp.message_template.default_attributes.system_attributes.system_endpoint.address #=> String
    #   resp.message_template.default_attributes.agent_attributes.first_name #=> String
    #   resp.message_template.default_attributes.agent_attributes.last_name #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.profile_id #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.profile_arn #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.first_name #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.middle_name #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.last_name #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.account_number #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.email_address #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.phone_number #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.additional_information #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.party_type #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.business_name #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.birth_date #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.gender #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mobile_phone_number #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.home_phone_number #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.business_phone_number #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.business_email_address #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.address1 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.address2 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.address3 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.address4 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.city #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.county #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.country #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.postal_code #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.province #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.state #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_address_1 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_address_2 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_address_3 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_address_4 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_city #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_county #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_country #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_postal_code #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_province #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_state #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_address_1 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_address_2 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_address_3 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_address_4 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_city #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_county #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_country #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_postal_code #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_province #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_state #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_address_1 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_address_2 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_address_3 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_address_4 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_city #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_county #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_country #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_postal_code #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_province #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_state #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.custom #=> Hash
    #   resp.message_template.default_attributes.customer_profile_attributes.custom["MessageTemplateAttributeKey"] #=> String
    #   resp.message_template.default_attributes.custom_attributes #=> Hash
    #   resp.message_template.default_attributes.custom_attributes["MessageTemplateAttributeKey"] #=> String
    #   resp.message_template.attribute_types #=> Array
    #   resp.message_template.attribute_types[0] #=> String, one of "SYSTEM", "AGENT", "CUSTOMER_PROFILE", "CUSTOM"
    #   resp.message_template.attachments #=> Array
    #   resp.message_template.attachments[0].content_disposition #=> String, one of "ATTACHMENT"
    #   resp.message_template.attachments[0].name #=> String
    #   resp.message_template.attachments[0].uploaded_time #=> Time
    #   resp.message_template.attachments[0].url #=> String
    #   resp.message_template.attachments[0].url_expiry #=> Time
    #   resp.message_template.attachments[0].attachment_id #=> String
    #   resp.message_template.is_active #=> Boolean
    #   resp.message_template.version_number #=> Integer
    #   resp.message_template.message_template_content_sha_256 #=> String
    #   resp.message_template.tags #=> Hash
    #   resp.message_template.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetMessageTemplate AWS API Documentation
    #
    # @overload get_message_template(params = {})
    # @param [Hash] params ({})
    def get_message_template(params = {}, options = {})
      req = build_request(:get_message_template, params)
      req.send_request(options)
    end

    # Retrieves next message on an Amazon Q in Connect session.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant.
    #
    # @option params [required, String] :session_id
    #   The identifier of the Amazon Q in Connect session.
    #
    # @option params [required, String] :next_message_token
    #   The token for the next message. Use the value returned in the
    #   SendMessage or previous response in the next request to retrieve the
    #   next message.
    #
    # @return [Types::GetNextMessageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNextMessageResponse#type #type} => String
    #   * {Types::GetNextMessageResponse#response #response} => Types::MessageOutput
    #   * {Types::GetNextMessageResponse#request_message_id #request_message_id} => String
    #   * {Types::GetNextMessageResponse#conversation_state #conversation_state} => Types::ConversationState
    #   * {Types::GetNextMessageResponse#next_message_token #next_message_token} => String
    #   * {Types::GetNextMessageResponse#conversation_session_data #conversation_session_data} => Array&lt;Types::RuntimeSessionData&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_next_message({
    #     assistant_id: "UuidOrArn", # required
    #     session_id: "UuidOrArn", # required
    #     next_message_token: "NextToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.type #=> String, one of "TEXT"
    #   resp.response.value.text.value #=> String
    #   resp.response.message_id #=> String
    #   resp.response.participant #=> String, one of "CUSTOMER", "AGENT", "BOT"
    #   resp.response.timestamp #=> Time
    #   resp.request_message_id #=> String
    #   resp.conversation_state.status #=> String, one of "CLOSED", "READY", "PROCESSING"
    #   resp.conversation_state.reason #=> String, one of "SUCCESS", "FAILED", "REJECTED"
    #   resp.next_message_token #=> String
    #   resp.conversation_session_data #=> Array
    #   resp.conversation_session_data[0].key #=> String
    #   resp.conversation_session_data[0].value.string_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetNextMessage AWS API Documentation
    #
    # @overload get_next_message(params = {})
    # @param [Hash] params ({})
    def get_next_message(params = {}, options = {})
      req = build_request(:get_next_message, params)
      req.send_request(options)
    end

    # Retrieves the quick response.
    #
    # @option params [required, String] :quick_response_id
    #   The identifier of the quick response.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. This should be a
    #   QUICK\_RESPONSES type knowledge base.
    #
    # @return [Types::GetQuickResponseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQuickResponseResponse#quick_response #quick_response} => Types::QuickResponseData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_quick_response({
    #     quick_response_id: "UuidOrArn", # required
    #     knowledge_base_id: "UuidOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.quick_response.quick_response_arn #=> String
    #   resp.quick_response.quick_response_id #=> String
    #   resp.quick_response.knowledge_base_arn #=> String
    #   resp.quick_response.knowledge_base_id #=> String
    #   resp.quick_response.name #=> String
    #   resp.quick_response.content_type #=> String
    #   resp.quick_response.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"
    #   resp.quick_response.created_time #=> Time
    #   resp.quick_response.last_modified_time #=> Time
    #   resp.quick_response.contents.plain_text.content #=> String
    #   resp.quick_response.contents.markdown.content #=> String
    #   resp.quick_response.description #=> String
    #   resp.quick_response.grouping_configuration.criteria #=> String
    #   resp.quick_response.grouping_configuration.values #=> Array
    #   resp.quick_response.grouping_configuration.values[0] #=> String
    #   resp.quick_response.shortcut_key #=> String
    #   resp.quick_response.last_modified_by #=> String
    #   resp.quick_response.is_active #=> Boolean
    #   resp.quick_response.channels #=> Array
    #   resp.quick_response.channels[0] #=> String
    #   resp.quick_response.language #=> String
    #   resp.quick_response.tags #=> Hash
    #   resp.quick_response.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetQuickResponse AWS API Documentation
    #
    # @overload get_quick_response(params = {})
    # @param [Hash] params ({})
    def get_quick_response(params = {}, options = {})
      req = build_request(:get_quick_response, params)
      req.send_request(options)
    end

    # This API will be discontinued starting June 1, 2024. To receive
    # generative responses after March 1, 2024, you will need to create a
    # new Assistant in the Amazon Connect console and integrate the Amazon Q
    # in Connect JavaScript library (amazon-q-connectjs) into your
    # applications.
    #
    #  Retrieves recommendations for the specified session. To avoid
    # retrieving the same recommendations in subsequent calls, use
    # [NotifyRecommendationsReceived][1]. This API supports long-polling
    # behavior with the `waitTimeSeconds` parameter. Short poll is the
    # default behavior and only returns recommendations already available.
    # To perform a manual query against an assistant, use
    # [QueryAssistant][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_NotifyRecommendationsReceived.html
    # [2]: https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_QueryAssistant.html
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :session_id
    #   The identifier of the session. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [Integer] :wait_time_seconds
    #   The duration (in seconds) for which the call waits for a
    #   recommendation to be made available before returning. If a
    #   recommendation is available, the call returns sooner than
    #   `WaitTimeSeconds`. If no messages are available and the wait time
    #   expires, the call returns successfully with an empty list.
    #
    # @option params [String] :next_chunk_token
    #   The token for the next set of chunks. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   chunks.
    #
    # @return [Types::GetRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRecommendationsResponse#recommendations #recommendations} => Array&lt;Types::RecommendationData&gt;
    #   * {Types::GetRecommendationsResponse#triggers #triggers} => Array&lt;Types::RecommendationTrigger&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recommendations({
    #     assistant_id: "UuidOrArn", # required
    #     session_id: "UuidOrArn", # required
    #     max_results: 1,
    #     wait_time_seconds: 1,
    #     next_chunk_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.recommendations #=> Array
    #   resp.recommendations[0].recommendation_id #=> String
    #   resp.recommendations[0].document.content_reference.knowledge_base_arn #=> String
    #   resp.recommendations[0].document.content_reference.knowledge_base_id #=> String
    #   resp.recommendations[0].document.content_reference.content_arn #=> String
    #   resp.recommendations[0].document.content_reference.content_id #=> String
    #   resp.recommendations[0].document.content_reference.source_url #=> String
    #   resp.recommendations[0].document.content_reference.reference_type #=> String, one of "WEB_CRAWLER", "KNOWLEDGE_BASE"
    #   resp.recommendations[0].document.title.text #=> String
    #   resp.recommendations[0].document.title.highlights #=> Array
    #   resp.recommendations[0].document.title.highlights[0].begin_offset_inclusive #=> Integer
    #   resp.recommendations[0].document.title.highlights[0].end_offset_exclusive #=> Integer
    #   resp.recommendations[0].document.excerpt.text #=> String
    #   resp.recommendations[0].document.excerpt.highlights #=> Array
    #   resp.recommendations[0].document.excerpt.highlights[0].begin_offset_inclusive #=> Integer
    #   resp.recommendations[0].document.excerpt.highlights[0].end_offset_exclusive #=> Integer
    #   resp.recommendations[0].relevance_score #=> Float
    #   resp.recommendations[0].relevance_level #=> String, one of "HIGH", "MEDIUM", "LOW"
    #   resp.recommendations[0].type #=> String, one of "KNOWLEDGE_CONTENT", "GENERATIVE_RESPONSE", "GENERATIVE_ANSWER", "DETECTED_INTENT", "GENERATIVE_ANSWER_CHUNK", "BLOCKED_GENERATIVE_ANSWER_CHUNK", "INTENT_ANSWER_CHUNK", "BLOCKED_INTENT_ANSWER_CHUNK"
    #   resp.recommendations[0].data.reference.content_reference.knowledge_base_arn #=> String
    #   resp.recommendations[0].data.reference.content_reference.knowledge_base_id #=> String
    #   resp.recommendations[0].data.reference.content_reference.content_arn #=> String
    #   resp.recommendations[0].data.reference.content_reference.content_id #=> String
    #   resp.recommendations[0].data.reference.content_reference.source_url #=> String
    #   resp.recommendations[0].data.reference.content_reference.reference_type #=> String, one of "WEB_CRAWLER", "KNOWLEDGE_BASE"
    #   resp.recommendations[0].data.reference.generative_reference.model_id #=> String
    #   resp.recommendations[0].data.reference.generative_reference.generation_id #=> String
    #   resp.recommendations[0].data.details.content_data.text_data.title.text #=> String
    #   resp.recommendations[0].data.details.content_data.text_data.title.highlights #=> Array
    #   resp.recommendations[0].data.details.content_data.text_data.title.highlights[0].begin_offset_inclusive #=> Integer
    #   resp.recommendations[0].data.details.content_data.text_data.title.highlights[0].end_offset_exclusive #=> Integer
    #   resp.recommendations[0].data.details.content_data.text_data.excerpt.text #=> String
    #   resp.recommendations[0].data.details.content_data.text_data.excerpt.highlights #=> Array
    #   resp.recommendations[0].data.details.content_data.text_data.excerpt.highlights[0].begin_offset_inclusive #=> Integer
    #   resp.recommendations[0].data.details.content_data.text_data.excerpt.highlights[0].end_offset_exclusive #=> Integer
    #   resp.recommendations[0].data.details.content_data.ranking_data.relevance_score #=> Float
    #   resp.recommendations[0].data.details.content_data.ranking_data.relevance_level #=> String, one of "HIGH", "MEDIUM", "LOW"
    #   resp.recommendations[0].data.details.generative_data.completion #=> String
    #   resp.recommendations[0].data.details.generative_data.references #=> Array
    #   resp.recommendations[0].data.details.generative_data.references[0] #=> Types::DataSummary
    #   resp.recommendations[0].data.details.generative_data.ranking_data.relevance_score #=> Float
    #   resp.recommendations[0].data.details.generative_data.ranking_data.relevance_level #=> String, one of "HIGH", "MEDIUM", "LOW"
    #   resp.recommendations[0].data.details.intent_detected_data.intent #=> String
    #   resp.recommendations[0].data.details.intent_detected_data.intent_id #=> String
    #   resp.recommendations[0].data.details.source_content_data.id #=> String
    #   resp.recommendations[0].data.details.source_content_data.type #=> String, one of "KNOWLEDGE_CONTENT"
    #   resp.recommendations[0].data.details.source_content_data.text_data.title.text #=> String
    #   resp.recommendations[0].data.details.source_content_data.text_data.title.highlights #=> Array
    #   resp.recommendations[0].data.details.source_content_data.text_data.title.highlights[0].begin_offset_inclusive #=> Integer
    #   resp.recommendations[0].data.details.source_content_data.text_data.title.highlights[0].end_offset_exclusive #=> Integer
    #   resp.recommendations[0].data.details.source_content_data.text_data.excerpt.text #=> String
    #   resp.recommendations[0].data.details.source_content_data.text_data.excerpt.highlights #=> Array
    #   resp.recommendations[0].data.details.source_content_data.text_data.excerpt.highlights[0].begin_offset_inclusive #=> Integer
    #   resp.recommendations[0].data.details.source_content_data.text_data.excerpt.highlights[0].end_offset_exclusive #=> Integer
    #   resp.recommendations[0].data.details.source_content_data.ranking_data.relevance_score #=> Float
    #   resp.recommendations[0].data.details.source_content_data.ranking_data.relevance_level #=> String, one of "HIGH", "MEDIUM", "LOW"
    #   resp.recommendations[0].data.details.source_content_data.citation_span.begin_offset_inclusive #=> Integer
    #   resp.recommendations[0].data.details.source_content_data.citation_span.end_offset_exclusive #=> Integer
    #   resp.recommendations[0].data.details.generative_chunk_data.completion #=> String
    #   resp.recommendations[0].data.details.generative_chunk_data.references #=> Array
    #   resp.recommendations[0].data.details.generative_chunk_data.references[0] #=> Types::DataSummary
    #   resp.recommendations[0].data.details.generative_chunk_data.next_chunk_token #=> String
    #   resp.triggers #=> Array
    #   resp.triggers[0].id #=> String
    #   resp.triggers[0].type #=> String, one of "QUERY", "GENERATIVE"
    #   resp.triggers[0].source #=> String, one of "ISSUE_DETECTION", "RULE_EVALUATION", "OTHER"
    #   resp.triggers[0].data.query.text #=> String
    #   resp.triggers[0].recommendation_ids #=> Array
    #   resp.triggers[0].recommendation_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetRecommendations AWS API Documentation
    #
    # @overload get_recommendations(params = {})
    # @param [Hash] params ({})
    def get_recommendations(params = {}, options = {})
      req = build_request(:get_recommendations, params)
      req.send_request(options)
    end

    # Retrieves information for a specified session.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :session_id
    #   The identifier of the session. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #
    # @return [Types::GetSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSessionResponse#session #session} => Types::SessionData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_session({
    #     assistant_id: "UuidOrArn", # required
    #     session_id: "UuidOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.session.session_arn #=> String
    #   resp.session.session_id #=> String
    #   resp.session.name #=> String
    #   resp.session.description #=> String
    #   resp.session.tags #=> Hash
    #   resp.session.tags["TagKey"] #=> String
    #   resp.session.integration_configuration.topic_integration_arn #=> String
    #   resp.session.tag_filter.tag_condition.key #=> String
    #   resp.session.tag_filter.tag_condition.value #=> String
    #   resp.session.tag_filter.and_conditions #=> Array
    #   resp.session.tag_filter.and_conditions[0].key #=> String
    #   resp.session.tag_filter.and_conditions[0].value #=> String
    #   resp.session.tag_filter.or_conditions #=> Array
    #   resp.session.tag_filter.or_conditions[0].and_conditions #=> Array
    #   resp.session.tag_filter.or_conditions[0].and_conditions[0].key #=> String
    #   resp.session.tag_filter.or_conditions[0].and_conditions[0].value #=> String
    #   resp.session.tag_filter.or_conditions[0].tag_condition.key #=> String
    #   resp.session.tag_filter.or_conditions[0].tag_condition.value #=> String
    #   resp.session.ai_agent_configuration #=> Hash
    #   resp.session.ai_agent_configuration["AIAgentType"].ai_agent_id #=> String
    #   resp.session.origin #=> String, one of "SYSTEM", "CUSTOMER"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetSession AWS API Documentation
    #
    # @overload get_session(params = {})
    # @param [Hash] params ({})
    def get_session(params = {}, options = {})
      req = build_request(:get_session, params)
      req.send_request(options)
    end

    # List AI Agent versions.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :ai_agent_id
    #   The identifier of the Amazon Q in Connect AI Agent for which versions
    #   are to be listed.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :origin
    #   The origin of the AI Agent versions to be listed. `SYSTEM` for a
    #   default AI Agent created by Q in Connect or `CUSTOMER` for an AI Agent
    #   created by calling AI Agent creation APIs.
    #
    # @return [Types::ListAIAgentVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAIAgentVersionsResponse#ai_agent_version_summaries #ai_agent_version_summaries} => Array&lt;Types::AIAgentVersionSummary&gt;
    #   * {Types::ListAIAgentVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ai_agent_versions({
    #     assistant_id: "UuidOrArn", # required
    #     ai_agent_id: "UuidOrArnOrEitherWithQualifier", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     origin: "SYSTEM", # accepts SYSTEM, CUSTOMER
    #   })
    #
    # @example Response structure
    #
    #   resp.ai_agent_version_summaries #=> Array
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.name #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.assistant_id #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.assistant_arn #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.ai_agent_id #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.type #=> String, one of "MANUAL_SEARCH", "ANSWER_RECOMMENDATION", "SELF_SERVICE"
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.ai_agent_arn #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.modified_time #=> Time
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.visibility_status #=> String, one of "SAVED", "PUBLISHED"
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.manual_search_ai_agent_configuration.answer_generation_ai_prompt_id #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.manual_search_ai_agent_configuration.answer_generation_ai_guardrail_id #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.manual_search_ai_agent_configuration.association_configurations #=> Array
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_id #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_type #=> String, one of "KNOWLEDGE_BASE"
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.key #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.value #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions #=> Array
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].key #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].value #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions #=> Array
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions #=> Array
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].key #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].value #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.key #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.value #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.max_results #=> Integer
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.override_knowledge_base_search_type #=> String, one of "HYBRID", "SEMANTIC"
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.manual_search_ai_agent_configuration.locale #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.answer_recommendation_ai_agent_configuration.intent_labeling_generation_ai_prompt_id #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.answer_recommendation_ai_agent_configuration.query_reformulation_ai_prompt_id #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.answer_recommendation_ai_agent_configuration.answer_generation_ai_prompt_id #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.answer_recommendation_ai_agent_configuration.answer_generation_ai_guardrail_id #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.answer_recommendation_ai_agent_configuration.association_configurations #=> Array
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_id #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_type #=> String, one of "KNOWLEDGE_BASE"
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.key #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.value #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions #=> Array
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].key #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].value #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions #=> Array
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions #=> Array
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].key #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].value #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.key #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.value #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.max_results #=> Integer
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.override_knowledge_base_search_type #=> String, one of "HYBRID", "SEMANTIC"
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.answer_recommendation_ai_agent_configuration.locale #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.self_service_ai_agent_configuration.self_service_pre_processing_ai_prompt_id #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.self_service_ai_agent_configuration.self_service_answer_generation_ai_prompt_id #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.self_service_ai_agent_configuration.self_service_ai_guardrail_id #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.self_service_ai_agent_configuration.association_configurations #=> Array
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.self_service_ai_agent_configuration.association_configurations[0].association_id #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.self_service_ai_agent_configuration.association_configurations[0].association_type #=> String, one of "KNOWLEDGE_BASE"
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.key #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.value #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions #=> Array
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].key #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].value #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions #=> Array
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions #=> Array
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].key #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].value #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.key #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.value #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.max_results #=> Integer
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.override_knowledge_base_search_type #=> String, one of "HYBRID", "SEMANTIC"
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.origin #=> String, one of "SYSTEM", "CUSTOMER"
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.description #=> String
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.tags #=> Hash
    #   resp.ai_agent_version_summaries[0].ai_agent_summary.tags["TagKey"] #=> String
    #   resp.ai_agent_version_summaries[0].version_number #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListAIAgentVersions AWS API Documentation
    #
    # @overload list_ai_agent_versions(params = {})
    # @param [Hash] params ({})
    def list_ai_agent_versions(params = {}, options = {})
      req = build_request(:list_ai_agent_versions, params)
      req.send_request(options)
    end

    # Lists AI Agents.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :origin
    #   The origin of the AI Agents to be listed. `SYSTEM` for a default AI
    #   Agent created by Q in Connect or `CUSTOMER` for an AI Agent created by
    #   calling AI Agent creation APIs.
    #
    # @return [Types::ListAIAgentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAIAgentsResponse#ai_agent_summaries #ai_agent_summaries} => Array&lt;Types::AIAgentSummary&gt;
    #   * {Types::ListAIAgentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ai_agents({
    #     assistant_id: "UuidOrArn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     origin: "SYSTEM", # accepts SYSTEM, CUSTOMER
    #   })
    #
    # @example Response structure
    #
    #   resp.ai_agent_summaries #=> Array
    #   resp.ai_agent_summaries[0].name #=> String
    #   resp.ai_agent_summaries[0].assistant_id #=> String
    #   resp.ai_agent_summaries[0].assistant_arn #=> String
    #   resp.ai_agent_summaries[0].ai_agent_id #=> String
    #   resp.ai_agent_summaries[0].type #=> String, one of "MANUAL_SEARCH", "ANSWER_RECOMMENDATION", "SELF_SERVICE"
    #   resp.ai_agent_summaries[0].ai_agent_arn #=> String
    #   resp.ai_agent_summaries[0].modified_time #=> Time
    #   resp.ai_agent_summaries[0].visibility_status #=> String, one of "SAVED", "PUBLISHED"
    #   resp.ai_agent_summaries[0].configuration.manual_search_ai_agent_configuration.answer_generation_ai_prompt_id #=> String
    #   resp.ai_agent_summaries[0].configuration.manual_search_ai_agent_configuration.answer_generation_ai_guardrail_id #=> String
    #   resp.ai_agent_summaries[0].configuration.manual_search_ai_agent_configuration.association_configurations #=> Array
    #   resp.ai_agent_summaries[0].configuration.manual_search_ai_agent_configuration.association_configurations[0].association_id #=> String
    #   resp.ai_agent_summaries[0].configuration.manual_search_ai_agent_configuration.association_configurations[0].association_type #=> String, one of "KNOWLEDGE_BASE"
    #   resp.ai_agent_summaries[0].configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.key #=> String
    #   resp.ai_agent_summaries[0].configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.value #=> String
    #   resp.ai_agent_summaries[0].configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions #=> Array
    #   resp.ai_agent_summaries[0].configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].key #=> String
    #   resp.ai_agent_summaries[0].configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].value #=> String
    #   resp.ai_agent_summaries[0].configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions #=> Array
    #   resp.ai_agent_summaries[0].configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions #=> Array
    #   resp.ai_agent_summaries[0].configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].key #=> String
    #   resp.ai_agent_summaries[0].configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].value #=> String
    #   resp.ai_agent_summaries[0].configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.key #=> String
    #   resp.ai_agent_summaries[0].configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.value #=> String
    #   resp.ai_agent_summaries[0].configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.max_results #=> Integer
    #   resp.ai_agent_summaries[0].configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.override_knowledge_base_search_type #=> String, one of "HYBRID", "SEMANTIC"
    #   resp.ai_agent_summaries[0].configuration.manual_search_ai_agent_configuration.locale #=> String
    #   resp.ai_agent_summaries[0].configuration.answer_recommendation_ai_agent_configuration.intent_labeling_generation_ai_prompt_id #=> String
    #   resp.ai_agent_summaries[0].configuration.answer_recommendation_ai_agent_configuration.query_reformulation_ai_prompt_id #=> String
    #   resp.ai_agent_summaries[0].configuration.answer_recommendation_ai_agent_configuration.answer_generation_ai_prompt_id #=> String
    #   resp.ai_agent_summaries[0].configuration.answer_recommendation_ai_agent_configuration.answer_generation_ai_guardrail_id #=> String
    #   resp.ai_agent_summaries[0].configuration.answer_recommendation_ai_agent_configuration.association_configurations #=> Array
    #   resp.ai_agent_summaries[0].configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_id #=> String
    #   resp.ai_agent_summaries[0].configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_type #=> String, one of "KNOWLEDGE_BASE"
    #   resp.ai_agent_summaries[0].configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.key #=> String
    #   resp.ai_agent_summaries[0].configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.value #=> String
    #   resp.ai_agent_summaries[0].configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions #=> Array
    #   resp.ai_agent_summaries[0].configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].key #=> String
    #   resp.ai_agent_summaries[0].configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].value #=> String
    #   resp.ai_agent_summaries[0].configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions #=> Array
    #   resp.ai_agent_summaries[0].configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions #=> Array
    #   resp.ai_agent_summaries[0].configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].key #=> String
    #   resp.ai_agent_summaries[0].configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].value #=> String
    #   resp.ai_agent_summaries[0].configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.key #=> String
    #   resp.ai_agent_summaries[0].configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.value #=> String
    #   resp.ai_agent_summaries[0].configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.max_results #=> Integer
    #   resp.ai_agent_summaries[0].configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.override_knowledge_base_search_type #=> String, one of "HYBRID", "SEMANTIC"
    #   resp.ai_agent_summaries[0].configuration.answer_recommendation_ai_agent_configuration.locale #=> String
    #   resp.ai_agent_summaries[0].configuration.self_service_ai_agent_configuration.self_service_pre_processing_ai_prompt_id #=> String
    #   resp.ai_agent_summaries[0].configuration.self_service_ai_agent_configuration.self_service_answer_generation_ai_prompt_id #=> String
    #   resp.ai_agent_summaries[0].configuration.self_service_ai_agent_configuration.self_service_ai_guardrail_id #=> String
    #   resp.ai_agent_summaries[0].configuration.self_service_ai_agent_configuration.association_configurations #=> Array
    #   resp.ai_agent_summaries[0].configuration.self_service_ai_agent_configuration.association_configurations[0].association_id #=> String
    #   resp.ai_agent_summaries[0].configuration.self_service_ai_agent_configuration.association_configurations[0].association_type #=> String, one of "KNOWLEDGE_BASE"
    #   resp.ai_agent_summaries[0].configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.key #=> String
    #   resp.ai_agent_summaries[0].configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.value #=> String
    #   resp.ai_agent_summaries[0].configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions #=> Array
    #   resp.ai_agent_summaries[0].configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].key #=> String
    #   resp.ai_agent_summaries[0].configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].value #=> String
    #   resp.ai_agent_summaries[0].configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions #=> Array
    #   resp.ai_agent_summaries[0].configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions #=> Array
    #   resp.ai_agent_summaries[0].configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].key #=> String
    #   resp.ai_agent_summaries[0].configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].value #=> String
    #   resp.ai_agent_summaries[0].configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.key #=> String
    #   resp.ai_agent_summaries[0].configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.value #=> String
    #   resp.ai_agent_summaries[0].configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.max_results #=> Integer
    #   resp.ai_agent_summaries[0].configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.override_knowledge_base_search_type #=> String, one of "HYBRID", "SEMANTIC"
    #   resp.ai_agent_summaries[0].origin #=> String, one of "SYSTEM", "CUSTOMER"
    #   resp.ai_agent_summaries[0].description #=> String
    #   resp.ai_agent_summaries[0].status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.ai_agent_summaries[0].tags #=> Hash
    #   resp.ai_agent_summaries[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListAIAgents AWS API Documentation
    #
    # @overload list_ai_agents(params = {})
    # @param [Hash] params ({})
    def list_ai_agents(params = {}, options = {})
      req = build_request(:list_ai_agents, params)
      req.send_request(options)
    end

    # Lists AI Guardrail versions.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :ai_guardrail_id
    #   The identifier of the Amazon Q in Connect AI Guardrail for which
    #   versions are to be listed.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListAIGuardrailVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAIGuardrailVersionsResponse#ai_guardrail_version_summaries #ai_guardrail_version_summaries} => Array&lt;Types::AIGuardrailVersionSummary&gt;
    #   * {Types::ListAIGuardrailVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ai_guardrail_versions({
    #     assistant_id: "UuidOrArn", # required
    #     ai_guardrail_id: "UuidOrArnOrEitherWithQualifier", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.ai_guardrail_version_summaries #=> Array
    #   resp.ai_guardrail_version_summaries[0].ai_guardrail_summary.name #=> String
    #   resp.ai_guardrail_version_summaries[0].ai_guardrail_summary.assistant_id #=> String
    #   resp.ai_guardrail_version_summaries[0].ai_guardrail_summary.assistant_arn #=> String
    #   resp.ai_guardrail_version_summaries[0].ai_guardrail_summary.ai_guardrail_id #=> String
    #   resp.ai_guardrail_version_summaries[0].ai_guardrail_summary.ai_guardrail_arn #=> String
    #   resp.ai_guardrail_version_summaries[0].ai_guardrail_summary.modified_time #=> Time
    #   resp.ai_guardrail_version_summaries[0].ai_guardrail_summary.visibility_status #=> String, one of "SAVED", "PUBLISHED"
    #   resp.ai_guardrail_version_summaries[0].ai_guardrail_summary.description #=> String
    #   resp.ai_guardrail_version_summaries[0].ai_guardrail_summary.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.ai_guardrail_version_summaries[0].ai_guardrail_summary.tags #=> Hash
    #   resp.ai_guardrail_version_summaries[0].ai_guardrail_summary.tags["TagKey"] #=> String
    #   resp.ai_guardrail_version_summaries[0].version_number #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListAIGuardrailVersions AWS API Documentation
    #
    # @overload list_ai_guardrail_versions(params = {})
    # @param [Hash] params ({})
    def list_ai_guardrail_versions(params = {}, options = {})
      req = build_request(:list_ai_guardrail_versions, params)
      req.send_request(options)
    end

    # Lists the AI Guardrails available on the Amazon Q in Connect
    # assistant.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListAIGuardrailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAIGuardrailsResponse#ai_guardrail_summaries #ai_guardrail_summaries} => Array&lt;Types::AIGuardrailSummary&gt;
    #   * {Types::ListAIGuardrailsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ai_guardrails({
    #     assistant_id: "UuidOrArn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.ai_guardrail_summaries #=> Array
    #   resp.ai_guardrail_summaries[0].name #=> String
    #   resp.ai_guardrail_summaries[0].assistant_id #=> String
    #   resp.ai_guardrail_summaries[0].assistant_arn #=> String
    #   resp.ai_guardrail_summaries[0].ai_guardrail_id #=> String
    #   resp.ai_guardrail_summaries[0].ai_guardrail_arn #=> String
    #   resp.ai_guardrail_summaries[0].modified_time #=> Time
    #   resp.ai_guardrail_summaries[0].visibility_status #=> String, one of "SAVED", "PUBLISHED"
    #   resp.ai_guardrail_summaries[0].description #=> String
    #   resp.ai_guardrail_summaries[0].status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.ai_guardrail_summaries[0].tags #=> Hash
    #   resp.ai_guardrail_summaries[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListAIGuardrails AWS API Documentation
    #
    # @overload list_ai_guardrails(params = {})
    # @param [Hash] params ({})
    def list_ai_guardrails(params = {}, options = {})
      req = build_request(:list_ai_guardrails, params)
      req.send_request(options)
    end

    # Lists AI Prompt versions.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :ai_prompt_id
    #   The identifier of the Amazon Q in Connect AI prompt for which versions
    #   are to be listed.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :origin
    #   The origin of the AI Prompt versions to be listed. `SYSTEM` for a
    #   default AI Agent created by Q in Connect or `CUSTOMER` for an AI Agent
    #   created by calling AI Agent creation APIs.
    #
    # @return [Types::ListAIPromptVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAIPromptVersionsResponse#ai_prompt_version_summaries #ai_prompt_version_summaries} => Array&lt;Types::AIPromptVersionSummary&gt;
    #   * {Types::ListAIPromptVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ai_prompt_versions({
    #     assistant_id: "UuidOrArn", # required
    #     ai_prompt_id: "UuidOrArnOrEitherWithQualifier", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     origin: "SYSTEM", # accepts SYSTEM, CUSTOMER
    #   })
    #
    # @example Response structure
    #
    #   resp.ai_prompt_version_summaries #=> Array
    #   resp.ai_prompt_version_summaries[0].ai_prompt_summary.name #=> String
    #   resp.ai_prompt_version_summaries[0].ai_prompt_summary.assistant_id #=> String
    #   resp.ai_prompt_version_summaries[0].ai_prompt_summary.assistant_arn #=> String
    #   resp.ai_prompt_version_summaries[0].ai_prompt_summary.ai_prompt_id #=> String
    #   resp.ai_prompt_version_summaries[0].ai_prompt_summary.type #=> String, one of "ANSWER_GENERATION", "INTENT_LABELING_GENERATION", "QUERY_REFORMULATION", "SELF_SERVICE_PRE_PROCESSING", "SELF_SERVICE_ANSWER_GENERATION"
    #   resp.ai_prompt_version_summaries[0].ai_prompt_summary.ai_prompt_arn #=> String
    #   resp.ai_prompt_version_summaries[0].ai_prompt_summary.modified_time #=> Time
    #   resp.ai_prompt_version_summaries[0].ai_prompt_summary.template_type #=> String, one of "TEXT"
    #   resp.ai_prompt_version_summaries[0].ai_prompt_summary.model_id #=> String
    #   resp.ai_prompt_version_summaries[0].ai_prompt_summary.api_format #=> String, one of "ANTHROPIC_CLAUDE_MESSAGES", "ANTHROPIC_CLAUDE_TEXT_COMPLETIONS", "MESSAGES", "TEXT_COMPLETIONS"
    #   resp.ai_prompt_version_summaries[0].ai_prompt_summary.visibility_status #=> String, one of "SAVED", "PUBLISHED"
    #   resp.ai_prompt_version_summaries[0].ai_prompt_summary.origin #=> String, one of "SYSTEM", "CUSTOMER"
    #   resp.ai_prompt_version_summaries[0].ai_prompt_summary.description #=> String
    #   resp.ai_prompt_version_summaries[0].ai_prompt_summary.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.ai_prompt_version_summaries[0].ai_prompt_summary.tags #=> Hash
    #   resp.ai_prompt_version_summaries[0].ai_prompt_summary.tags["TagKey"] #=> String
    #   resp.ai_prompt_version_summaries[0].version_number #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListAIPromptVersions AWS API Documentation
    #
    # @overload list_ai_prompt_versions(params = {})
    # @param [Hash] params ({})
    def list_ai_prompt_versions(params = {}, options = {})
      req = build_request(:list_ai_prompt_versions, params)
      req.send_request(options)
    end

    # Lists the AI Prompts available on the Amazon Q in Connect assistant.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :origin
    #   The origin of the AI Prompts to be listed. `SYSTEM` for a default AI
    #   Agent created by Q in Connect or `CUSTOMER` for an AI Agent created by
    #   calling AI Agent creation APIs.
    #
    # @return [Types::ListAIPromptsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAIPromptsResponse#ai_prompt_summaries #ai_prompt_summaries} => Array&lt;Types::AIPromptSummary&gt;
    #   * {Types::ListAIPromptsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ai_prompts({
    #     assistant_id: "UuidOrArn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     origin: "SYSTEM", # accepts SYSTEM, CUSTOMER
    #   })
    #
    # @example Response structure
    #
    #   resp.ai_prompt_summaries #=> Array
    #   resp.ai_prompt_summaries[0].name #=> String
    #   resp.ai_prompt_summaries[0].assistant_id #=> String
    #   resp.ai_prompt_summaries[0].assistant_arn #=> String
    #   resp.ai_prompt_summaries[0].ai_prompt_id #=> String
    #   resp.ai_prompt_summaries[0].type #=> String, one of "ANSWER_GENERATION", "INTENT_LABELING_GENERATION", "QUERY_REFORMULATION", "SELF_SERVICE_PRE_PROCESSING", "SELF_SERVICE_ANSWER_GENERATION"
    #   resp.ai_prompt_summaries[0].ai_prompt_arn #=> String
    #   resp.ai_prompt_summaries[0].modified_time #=> Time
    #   resp.ai_prompt_summaries[0].template_type #=> String, one of "TEXT"
    #   resp.ai_prompt_summaries[0].model_id #=> String
    #   resp.ai_prompt_summaries[0].api_format #=> String, one of "ANTHROPIC_CLAUDE_MESSAGES", "ANTHROPIC_CLAUDE_TEXT_COMPLETIONS", "MESSAGES", "TEXT_COMPLETIONS"
    #   resp.ai_prompt_summaries[0].visibility_status #=> String, one of "SAVED", "PUBLISHED"
    #   resp.ai_prompt_summaries[0].origin #=> String, one of "SYSTEM", "CUSTOMER"
    #   resp.ai_prompt_summaries[0].description #=> String
    #   resp.ai_prompt_summaries[0].status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.ai_prompt_summaries[0].tags #=> Hash
    #   resp.ai_prompt_summaries[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListAIPrompts AWS API Documentation
    #
    # @overload list_ai_prompts(params = {})
    # @param [Hash] params ({})
    def list_ai_prompts(params = {}, options = {})
      req = build_request(:list_ai_prompts, params)
      req.send_request(options)
    end

    # Lists information about assistant associations.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @return [Types::ListAssistantAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssistantAssociationsResponse#assistant_association_summaries #assistant_association_summaries} => Array&lt;Types::AssistantAssociationSummary&gt;
    #   * {Types::ListAssistantAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assistant_associations({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     assistant_id: "UuidOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.assistant_association_summaries #=> Array
    #   resp.assistant_association_summaries[0].assistant_association_id #=> String
    #   resp.assistant_association_summaries[0].assistant_association_arn #=> String
    #   resp.assistant_association_summaries[0].assistant_id #=> String
    #   resp.assistant_association_summaries[0].assistant_arn #=> String
    #   resp.assistant_association_summaries[0].association_type #=> String, one of "KNOWLEDGE_BASE"
    #   resp.assistant_association_summaries[0].association_data.knowledge_base_association.knowledge_base_id #=> String
    #   resp.assistant_association_summaries[0].association_data.knowledge_base_association.knowledge_base_arn #=> String
    #   resp.assistant_association_summaries[0].tags #=> Hash
    #   resp.assistant_association_summaries[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListAssistantAssociations AWS API Documentation
    #
    # @overload list_assistant_associations(params = {})
    # @param [Hash] params ({})
    def list_assistant_associations(params = {}, options = {})
      req = build_request(:list_assistant_associations, params)
      req.send_request(options)
    end

    # Lists information about assistants.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListAssistantsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssistantsResponse#assistant_summaries #assistant_summaries} => Array&lt;Types::AssistantSummary&gt;
    #   * {Types::ListAssistantsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assistants({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.assistant_summaries #=> Array
    #   resp.assistant_summaries[0].assistant_id #=> String
    #   resp.assistant_summaries[0].assistant_arn #=> String
    #   resp.assistant_summaries[0].name #=> String
    #   resp.assistant_summaries[0].type #=> String, one of "AGENT"
    #   resp.assistant_summaries[0].status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.assistant_summaries[0].description #=> String
    #   resp.assistant_summaries[0].tags #=> Hash
    #   resp.assistant_summaries[0].tags["TagKey"] #=> String
    #   resp.assistant_summaries[0].server_side_encryption_configuration.kms_key_id #=> String
    #   resp.assistant_summaries[0].integration_configuration.topic_integration_arn #=> String
    #   resp.assistant_summaries[0].capability_configuration.type #=> String, one of "V1", "V2"
    #   resp.assistant_summaries[0].ai_agent_configuration #=> Hash
    #   resp.assistant_summaries[0].ai_agent_configuration["AIAgentType"].ai_agent_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListAssistants AWS API Documentation
    #
    # @overload list_assistants(params = {})
    # @param [Hash] params ({})
    def list_assistants(params = {}, options = {})
      req = build_request(:list_assistants, params)
      req.send_request(options)
    end

    # Lists the content associations.
    #
    # For more information about content associations--what they are and
    # when they are used--see [Integrate Amazon Q in Connect with
    # step-by-step guides][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/integrate-q-with-guides.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base.
    #
    # @option params [required, String] :content_id
    #   The identifier of the content.
    #
    # @return [Types::ListContentAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListContentAssociationsResponse#content_association_summaries #content_association_summaries} => Array&lt;Types::ContentAssociationSummary&gt;
    #   * {Types::ListContentAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_content_associations({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     knowledge_base_id: "UuidOrArn", # required
    #     content_id: "UuidOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.content_association_summaries #=> Array
    #   resp.content_association_summaries[0].knowledge_base_id #=> String
    #   resp.content_association_summaries[0].knowledge_base_arn #=> String
    #   resp.content_association_summaries[0].content_id #=> String
    #   resp.content_association_summaries[0].content_arn #=> String
    #   resp.content_association_summaries[0].content_association_id #=> String
    #   resp.content_association_summaries[0].content_association_arn #=> String
    #   resp.content_association_summaries[0].association_type #=> String, one of "AMAZON_CONNECT_GUIDE"
    #   resp.content_association_summaries[0].association_data.amazon_connect_guide_association.flow_id #=> String
    #   resp.content_association_summaries[0].tags #=> Hash
    #   resp.content_association_summaries[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListContentAssociations AWS API Documentation
    #
    # @overload list_content_associations(params = {})
    # @param [Hash] params ({})
    def list_content_associations(params = {}, options = {})
      req = build_request(:list_content_associations, params)
      req.send_request(options)
    end

    # Lists the content.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @return [Types::ListContentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListContentsResponse#content_summaries #content_summaries} => Array&lt;Types::ContentSummary&gt;
    #   * {Types::ListContentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_contents({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     knowledge_base_id: "UuidOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.content_summaries #=> Array
    #   resp.content_summaries[0].content_arn #=> String
    #   resp.content_summaries[0].content_id #=> String
    #   resp.content_summaries[0].knowledge_base_arn #=> String
    #   resp.content_summaries[0].knowledge_base_id #=> String
    #   resp.content_summaries[0].name #=> String
    #   resp.content_summaries[0].revision_id #=> String
    #   resp.content_summaries[0].title #=> String
    #   resp.content_summaries[0].content_type #=> String
    #   resp.content_summaries[0].status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_FAILED"
    #   resp.content_summaries[0].metadata #=> Hash
    #   resp.content_summaries[0].metadata["NonEmptyString"] #=> String
    #   resp.content_summaries[0].tags #=> Hash
    #   resp.content_summaries[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListContents AWS API Documentation
    #
    # @overload list_contents(params = {})
    # @param [Hash] params ({})
    def list_contents(params = {}, options = {})
      req = build_request(:list_contents, params)
      req.send_request(options)
    end

    # Lists information about import jobs.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @return [Types::ListImportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImportJobsResponse#import_job_summaries #import_job_summaries} => Array&lt;Types::ImportJobSummary&gt;
    #   * {Types::ListImportJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_import_jobs({
    #     next_token: "NonEmptyString",
    #     max_results: 1,
    #     knowledge_base_id: "UuidOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.import_job_summaries #=> Array
    #   resp.import_job_summaries[0].import_job_id #=> String
    #   resp.import_job_summaries[0].knowledge_base_id #=> String
    #   resp.import_job_summaries[0].upload_id #=> String
    #   resp.import_job_summaries[0].knowledge_base_arn #=> String
    #   resp.import_job_summaries[0].import_job_type #=> String, one of "QUICK_RESPONSES"
    #   resp.import_job_summaries[0].status #=> String, one of "START_IN_PROGRESS", "FAILED", "COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.import_job_summaries[0].created_time #=> Time
    #   resp.import_job_summaries[0].last_modified_time #=> Time
    #   resp.import_job_summaries[0].metadata #=> Hash
    #   resp.import_job_summaries[0].metadata["NonEmptyString"] #=> String
    #   resp.import_job_summaries[0].external_source_configuration.source #=> String, one of "AMAZON_CONNECT"
    #   resp.import_job_summaries[0].external_source_configuration.configuration.connect_configuration.instance_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListImportJobs AWS API Documentation
    #
    # @overload list_import_jobs(params = {})
    # @param [Hash] params ({})
    def list_import_jobs(params = {}, options = {})
      req = build_request(:list_import_jobs, params)
      req.send_request(options)
    end

    # Lists the knowledge bases.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListKnowledgeBasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKnowledgeBasesResponse#knowledge_base_summaries #knowledge_base_summaries} => Array&lt;Types::KnowledgeBaseSummary&gt;
    #   * {Types::ListKnowledgeBasesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_knowledge_bases({
    #     next_token: "NonEmptyString",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.knowledge_base_summaries #=> Array
    #   resp.knowledge_base_summaries[0].knowledge_base_id #=> String
    #   resp.knowledge_base_summaries[0].knowledge_base_arn #=> String
    #   resp.knowledge_base_summaries[0].name #=> String
    #   resp.knowledge_base_summaries[0].knowledge_base_type #=> String, one of "EXTERNAL", "CUSTOM", "QUICK_RESPONSES", "MESSAGE_TEMPLATES", "MANAGED"
    #   resp.knowledge_base_summaries[0].status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.knowledge_base_summaries[0].source_configuration.app_integrations.app_integration_arn #=> String
    #   resp.knowledge_base_summaries[0].source_configuration.app_integrations.object_fields #=> Array
    #   resp.knowledge_base_summaries[0].source_configuration.app_integrations.object_fields[0] #=> String
    #   resp.knowledge_base_summaries[0].source_configuration.managed_source_configuration.web_crawler_configuration.url_configuration.seed_urls #=> Array
    #   resp.knowledge_base_summaries[0].source_configuration.managed_source_configuration.web_crawler_configuration.url_configuration.seed_urls[0].url #=> String
    #   resp.knowledge_base_summaries[0].source_configuration.managed_source_configuration.web_crawler_configuration.crawler_limits.rate_limit #=> Integer
    #   resp.knowledge_base_summaries[0].source_configuration.managed_source_configuration.web_crawler_configuration.inclusion_filters #=> Array
    #   resp.knowledge_base_summaries[0].source_configuration.managed_source_configuration.web_crawler_configuration.inclusion_filters[0] #=> String
    #   resp.knowledge_base_summaries[0].source_configuration.managed_source_configuration.web_crawler_configuration.exclusion_filters #=> Array
    #   resp.knowledge_base_summaries[0].source_configuration.managed_source_configuration.web_crawler_configuration.exclusion_filters[0] #=> String
    #   resp.knowledge_base_summaries[0].source_configuration.managed_source_configuration.web_crawler_configuration.scope #=> String, one of "HOST_ONLY", "SUBDOMAINS"
    #   resp.knowledge_base_summaries[0].vector_ingestion_configuration.chunking_configuration.chunking_strategy #=> String, one of "FIXED_SIZE", "NONE", "HIERARCHICAL", "SEMANTIC"
    #   resp.knowledge_base_summaries[0].vector_ingestion_configuration.chunking_configuration.fixed_size_chunking_configuration.max_tokens #=> Integer
    #   resp.knowledge_base_summaries[0].vector_ingestion_configuration.chunking_configuration.fixed_size_chunking_configuration.overlap_percentage #=> Integer
    #   resp.knowledge_base_summaries[0].vector_ingestion_configuration.chunking_configuration.hierarchical_chunking_configuration.level_configurations #=> Array
    #   resp.knowledge_base_summaries[0].vector_ingestion_configuration.chunking_configuration.hierarchical_chunking_configuration.level_configurations[0].max_tokens #=> Integer
    #   resp.knowledge_base_summaries[0].vector_ingestion_configuration.chunking_configuration.hierarchical_chunking_configuration.overlap_tokens #=> Integer
    #   resp.knowledge_base_summaries[0].vector_ingestion_configuration.chunking_configuration.semantic_chunking_configuration.max_tokens #=> Integer
    #   resp.knowledge_base_summaries[0].vector_ingestion_configuration.chunking_configuration.semantic_chunking_configuration.buffer_size #=> Integer
    #   resp.knowledge_base_summaries[0].vector_ingestion_configuration.chunking_configuration.semantic_chunking_configuration.breakpoint_percentile_threshold #=> Integer
    #   resp.knowledge_base_summaries[0].vector_ingestion_configuration.parsing_configuration.parsing_strategy #=> String, one of "BEDROCK_FOUNDATION_MODEL"
    #   resp.knowledge_base_summaries[0].vector_ingestion_configuration.parsing_configuration.bedrock_foundation_model_configuration.model_arn #=> String
    #   resp.knowledge_base_summaries[0].vector_ingestion_configuration.parsing_configuration.bedrock_foundation_model_configuration.parsing_prompt.parsing_prompt_text #=> String
    #   resp.knowledge_base_summaries[0].rendering_configuration.template_uri #=> String
    #   resp.knowledge_base_summaries[0].server_side_encryption_configuration.kms_key_id #=> String
    #   resp.knowledge_base_summaries[0].description #=> String
    #   resp.knowledge_base_summaries[0].tags #=> Hash
    #   resp.knowledge_base_summaries[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListKnowledgeBases AWS API Documentation
    #
    # @overload list_knowledge_bases(params = {})
    # @param [Hash] params ({})
    def list_knowledge_bases(params = {}, options = {})
      req = build_request(:list_knowledge_bases, params)
      req.send_request(options)
    end

    # Lists all the available versions for the specified Amazon Q in Connect
    # message template.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @option params [required, String] :message_template_id
    #   The identifier of the message template. Can be either the ID or the
    #   ARN. It cannot contain any qualifier.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListMessageTemplateVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMessageTemplateVersionsResponse#message_template_version_summaries #message_template_version_summaries} => Array&lt;Types::MessageTemplateVersionSummary&gt;
    #   * {Types::ListMessageTemplateVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_message_template_versions({
    #     knowledge_base_id: "UuidOrArn", # required
    #     message_template_id: "UuidOrArnOrEitherWithQualifier", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.message_template_version_summaries #=> Array
    #   resp.message_template_version_summaries[0].message_template_arn #=> String
    #   resp.message_template_version_summaries[0].message_template_id #=> String
    #   resp.message_template_version_summaries[0].knowledge_base_arn #=> String
    #   resp.message_template_version_summaries[0].knowledge_base_id #=> String
    #   resp.message_template_version_summaries[0].name #=> String
    #   resp.message_template_version_summaries[0].channel_subtype #=> String, one of "EMAIL", "SMS"
    #   resp.message_template_version_summaries[0].is_active #=> Boolean
    #   resp.message_template_version_summaries[0].version_number #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListMessageTemplateVersions AWS API Documentation
    #
    # @overload list_message_template_versions(params = {})
    # @param [Hash] params ({})
    def list_message_template_versions(params = {}, options = {})
      req = build_request(:list_message_template_versions, params)
      req.send_request(options)
    end

    # Lists all the available Amazon Q in Connect message templates for the
    # specified knowledge base.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @return [Types::ListMessageTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMessageTemplatesResponse#message_template_summaries #message_template_summaries} => Array&lt;Types::MessageTemplateSummary&gt;
    #   * {Types::ListMessageTemplatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_message_templates({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     knowledge_base_id: "UuidOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message_template_summaries #=> Array
    #   resp.message_template_summaries[0].message_template_arn #=> String
    #   resp.message_template_summaries[0].message_template_id #=> String
    #   resp.message_template_summaries[0].knowledge_base_arn #=> String
    #   resp.message_template_summaries[0].knowledge_base_id #=> String
    #   resp.message_template_summaries[0].name #=> String
    #   resp.message_template_summaries[0].channel_subtype #=> String, one of "EMAIL", "SMS"
    #   resp.message_template_summaries[0].created_time #=> Time
    #   resp.message_template_summaries[0].last_modified_time #=> Time
    #   resp.message_template_summaries[0].last_modified_by #=> String
    #   resp.message_template_summaries[0].active_version_number #=> Integer
    #   resp.message_template_summaries[0].description #=> String
    #   resp.message_template_summaries[0].tags #=> Hash
    #   resp.message_template_summaries[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListMessageTemplates AWS API Documentation
    #
    # @overload list_message_templates(params = {})
    # @param [Hash] params ({})
    def list_message_templates(params = {}, options = {})
      req = build_request(:list_message_templates, params)
      req.send_request(options)
    end

    # Lists messages on an Amazon Q in Connect session.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant.
    #
    # @option params [required, String] :session_id
    #   The identifier of the Amazon Q in Connect session.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListMessagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMessagesResponse#messages #messages} => Array&lt;Types::MessageOutput&gt;
    #   * {Types::ListMessagesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_messages({
    #     assistant_id: "UuidOrArn", # required
    #     session_id: "UuidOrArn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.messages #=> Array
    #   resp.messages[0].value.text.value #=> String
    #   resp.messages[0].message_id #=> String
    #   resp.messages[0].participant #=> String, one of "CUSTOMER", "AGENT", "BOT"
    #   resp.messages[0].timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListMessages AWS API Documentation
    #
    # @overload list_messages(params = {})
    # @param [Hash] params ({})
    def list_messages(params = {}, options = {})
      req = build_request(:list_messages, params)
      req.send_request(options)
    end

    # Lists information about quick response.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @return [Types::ListQuickResponsesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQuickResponsesResponse#quick_response_summaries #quick_response_summaries} => Array&lt;Types::QuickResponseSummary&gt;
    #   * {Types::ListQuickResponsesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_quick_responses({
    #     next_token: "NonEmptyString",
    #     max_results: 1,
    #     knowledge_base_id: "UuidOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.quick_response_summaries #=> Array
    #   resp.quick_response_summaries[0].quick_response_arn #=> String
    #   resp.quick_response_summaries[0].quick_response_id #=> String
    #   resp.quick_response_summaries[0].knowledge_base_arn #=> String
    #   resp.quick_response_summaries[0].knowledge_base_id #=> String
    #   resp.quick_response_summaries[0].name #=> String
    #   resp.quick_response_summaries[0].content_type #=> String
    #   resp.quick_response_summaries[0].status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"
    #   resp.quick_response_summaries[0].created_time #=> Time
    #   resp.quick_response_summaries[0].last_modified_time #=> Time
    #   resp.quick_response_summaries[0].description #=> String
    #   resp.quick_response_summaries[0].last_modified_by #=> String
    #   resp.quick_response_summaries[0].is_active #=> Boolean
    #   resp.quick_response_summaries[0].channels #=> Array
    #   resp.quick_response_summaries[0].channels[0] #=> String
    #   resp.quick_response_summaries[0].tags #=> Hash
    #   resp.quick_response_summaries[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListQuickResponses AWS API Documentation
    #
    # @overload list_quick_responses(params = {})
    # @param [Hash] params ({})
    def list_quick_responses(params = {}, options = {})
      req = build_request(:list_quick_responses, params)
      req.send_request(options)
    end

    # Lists the tags for the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
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
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Removes the specified recommendations from the specified assistant's
    # queue of newly available recommendations. You can use this API in
    # conjunction with [GetRecommendations][1] and a `waitTimeSeconds` input
    # for long-polling behavior and avoiding duplicate recommendations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_GetRecommendations.html
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :session_id
    #   The identifier of the session. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #
    # @option params [required, Array<String>] :recommendation_ids
    #   The identifiers of the recommendations.
    #
    # @return [Types::NotifyRecommendationsReceivedResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::NotifyRecommendationsReceivedResponse#recommendation_ids #recommendation_ids} => Array&lt;String&gt;
    #   * {Types::NotifyRecommendationsReceivedResponse#errors #errors} => Array&lt;Types::NotifyRecommendationsReceivedError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.notify_recommendations_received({
    #     assistant_id: "UuidOrArn", # required
    #     session_id: "UuidOrArn", # required
    #     recommendation_ids: ["RecommendationId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.recommendation_ids #=> Array
    #   resp.recommendation_ids[0] #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].recommendation_id #=> String
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/NotifyRecommendationsReceived AWS API Documentation
    #
    # @overload notify_recommendations_received(params = {})
    # @param [Hash] params ({})
    def notify_recommendations_received(params = {}, options = {})
      req = build_request(:notify_recommendations_received, params)
      req.send_request(options)
    end

    # Provides feedback against the specified assistant for the specified
    # target. This API only supports generative targets.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant.
    #
    # @option params [required, String] :target_id
    #   The identifier of the feedback target.
    #
    # @option params [required, String] :target_type
    #   The type of the feedback target.
    #
    # @option params [required, Types::ContentFeedbackData] :content_feedback
    #   Information about the feedback provided.
    #
    # @return [Types::PutFeedbackResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutFeedbackResponse#assistant_id #assistant_id} => String
    #   * {Types::PutFeedbackResponse#assistant_arn #assistant_arn} => String
    #   * {Types::PutFeedbackResponse#target_id #target_id} => String
    #   * {Types::PutFeedbackResponse#target_type #target_type} => String
    #   * {Types::PutFeedbackResponse#content_feedback #content_feedback} => Types::ContentFeedbackData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_feedback({
    #     assistant_id: "UuidOrArn", # required
    #     target_id: "Uuid", # required
    #     target_type: "RECOMMENDATION", # required, accepts RECOMMENDATION, RESULT
    #     content_feedback: { # required
    #       generative_content_feedback_data: {
    #         relevance: "HELPFUL", # required, accepts HELPFUL, NOT_HELPFUL
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.assistant_id #=> String
    #   resp.assistant_arn #=> String
    #   resp.target_id #=> String
    #   resp.target_type #=> String, one of "RECOMMENDATION", "RESULT"
    #   resp.content_feedback.generative_content_feedback_data.relevance #=> String, one of "HELPFUL", "NOT_HELPFUL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/PutFeedback AWS API Documentation
    #
    # @overload put_feedback(params = {})
    # @param [Hash] params ({})
    def put_feedback(params = {}, options = {})
      req = build_request(:put_feedback, params)
      req.send_request(options)
    end

    # This API will be discontinued starting June 1, 2024. To receive
    # generative responses after March 1, 2024, you will need to create a
    # new Assistant in the Amazon Connect console and integrate the Amazon Q
    # in Connect JavaScript library (amazon-q-connectjs) into your
    # applications.
    #
    #  Performs a manual search against the specified assistant. To retrieve
    # recommendations for an assistant, use [GetRecommendations][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_GetRecommendations.html
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [String] :query_text
    #   The text to search for.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :session_id
    #   The identifier of the Amazon Q in Connect session. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [Array<Types::QueryCondition>] :query_condition
    #   Information about how to query content.
    #
    # @option params [Types::QueryInputData] :query_input_data
    #   Information about the query.
    #
    # @option params [String] :override_knowledge_base_search_type
    #   The search type to be used against the Knowledge Base for this
    #   request. The values can be `SEMANTIC` which uses vector embeddings or
    #   `HYBRID` which use vector embeddings and raw text.
    #
    # @return [Types::QueryAssistantResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::QueryAssistantResponse#results #results} => Array&lt;Types::ResultData&gt;
    #   * {Types::QueryAssistantResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.query_assistant({
    #     assistant_id: "UuidOrArn", # required
    #     query_text: "QueryText",
    #     next_token: "NextToken",
    #     max_results: 1,
    #     session_id: "UuidOrArn",
    #     query_condition: [
    #       {
    #         single: {
    #           field: "RESULT_TYPE", # required, accepts RESULT_TYPE
    #           comparator: "EQUALS", # required, accepts EQUALS
    #           value: "NonEmptyString", # required
    #         },
    #       },
    #     ],
    #     query_input_data: {
    #       query_text_input_data: {
    #         text: "QueryText", # required
    #       },
    #       intent_input_data: {
    #         intent_id: "Uuid", # required
    #       },
    #     },
    #     override_knowledge_base_search_type: "HYBRID", # accepts HYBRID, SEMANTIC
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].result_id #=> String
    #   resp.results[0].document.content_reference.knowledge_base_arn #=> String
    #   resp.results[0].document.content_reference.knowledge_base_id #=> String
    #   resp.results[0].document.content_reference.content_arn #=> String
    #   resp.results[0].document.content_reference.content_id #=> String
    #   resp.results[0].document.content_reference.source_url #=> String
    #   resp.results[0].document.content_reference.reference_type #=> String, one of "WEB_CRAWLER", "KNOWLEDGE_BASE"
    #   resp.results[0].document.title.text #=> String
    #   resp.results[0].document.title.highlights #=> Array
    #   resp.results[0].document.title.highlights[0].begin_offset_inclusive #=> Integer
    #   resp.results[0].document.title.highlights[0].end_offset_exclusive #=> Integer
    #   resp.results[0].document.excerpt.text #=> String
    #   resp.results[0].document.excerpt.highlights #=> Array
    #   resp.results[0].document.excerpt.highlights[0].begin_offset_inclusive #=> Integer
    #   resp.results[0].document.excerpt.highlights[0].end_offset_exclusive #=> Integer
    #   resp.results[0].relevance_score #=> Float
    #   resp.results[0].data.reference.content_reference.knowledge_base_arn #=> String
    #   resp.results[0].data.reference.content_reference.knowledge_base_id #=> String
    #   resp.results[0].data.reference.content_reference.content_arn #=> String
    #   resp.results[0].data.reference.content_reference.content_id #=> String
    #   resp.results[0].data.reference.content_reference.source_url #=> String
    #   resp.results[0].data.reference.content_reference.reference_type #=> String, one of "WEB_CRAWLER", "KNOWLEDGE_BASE"
    #   resp.results[0].data.reference.generative_reference.model_id #=> String
    #   resp.results[0].data.reference.generative_reference.generation_id #=> String
    #   resp.results[0].data.details.content_data.text_data.title.text #=> String
    #   resp.results[0].data.details.content_data.text_data.title.highlights #=> Array
    #   resp.results[0].data.details.content_data.text_data.title.highlights[0].begin_offset_inclusive #=> Integer
    #   resp.results[0].data.details.content_data.text_data.title.highlights[0].end_offset_exclusive #=> Integer
    #   resp.results[0].data.details.content_data.text_data.excerpt.text #=> String
    #   resp.results[0].data.details.content_data.text_data.excerpt.highlights #=> Array
    #   resp.results[0].data.details.content_data.text_data.excerpt.highlights[0].begin_offset_inclusive #=> Integer
    #   resp.results[0].data.details.content_data.text_data.excerpt.highlights[0].end_offset_exclusive #=> Integer
    #   resp.results[0].data.details.content_data.ranking_data.relevance_score #=> Float
    #   resp.results[0].data.details.content_data.ranking_data.relevance_level #=> String, one of "HIGH", "MEDIUM", "LOW"
    #   resp.results[0].data.details.generative_data.completion #=> String
    #   resp.results[0].data.details.generative_data.references #=> Array
    #   resp.results[0].data.details.generative_data.references[0] #=> Types::DataSummary
    #   resp.results[0].data.details.generative_data.ranking_data.relevance_score #=> Float
    #   resp.results[0].data.details.generative_data.ranking_data.relevance_level #=> String, one of "HIGH", "MEDIUM", "LOW"
    #   resp.results[0].data.details.intent_detected_data.intent #=> String
    #   resp.results[0].data.details.intent_detected_data.intent_id #=> String
    #   resp.results[0].data.details.source_content_data.id #=> String
    #   resp.results[0].data.details.source_content_data.type #=> String, one of "KNOWLEDGE_CONTENT"
    #   resp.results[0].data.details.source_content_data.text_data.title.text #=> String
    #   resp.results[0].data.details.source_content_data.text_data.title.highlights #=> Array
    #   resp.results[0].data.details.source_content_data.text_data.title.highlights[0].begin_offset_inclusive #=> Integer
    #   resp.results[0].data.details.source_content_data.text_data.title.highlights[0].end_offset_exclusive #=> Integer
    #   resp.results[0].data.details.source_content_data.text_data.excerpt.text #=> String
    #   resp.results[0].data.details.source_content_data.text_data.excerpt.highlights #=> Array
    #   resp.results[0].data.details.source_content_data.text_data.excerpt.highlights[0].begin_offset_inclusive #=> Integer
    #   resp.results[0].data.details.source_content_data.text_data.excerpt.highlights[0].end_offset_exclusive #=> Integer
    #   resp.results[0].data.details.source_content_data.ranking_data.relevance_score #=> Float
    #   resp.results[0].data.details.source_content_data.ranking_data.relevance_level #=> String, one of "HIGH", "MEDIUM", "LOW"
    #   resp.results[0].data.details.source_content_data.citation_span.begin_offset_inclusive #=> Integer
    #   resp.results[0].data.details.source_content_data.citation_span.end_offset_exclusive #=> Integer
    #   resp.results[0].data.details.generative_chunk_data.completion #=> String
    #   resp.results[0].data.details.generative_chunk_data.references #=> Array
    #   resp.results[0].data.details.generative_chunk_data.references[0] #=> Types::DataSummary
    #   resp.results[0].data.details.generative_chunk_data.next_chunk_token #=> String
    #   resp.results[0].type #=> String, one of "KNOWLEDGE_CONTENT", "INTENT_ANSWER", "GENERATIVE_ANSWER", "GENERATIVE_ANSWER_CHUNK", "BLOCKED_GENERATIVE_ANSWER_CHUNK", "INTENT_ANSWER_CHUNK", "BLOCKED_INTENT_ANSWER_CHUNK"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/QueryAssistant AWS API Documentation
    #
    # @overload query_assistant(params = {})
    # @param [Hash] params ({})
    def query_assistant(params = {}, options = {})
      req = build_request(:query_assistant, params)
      req.send_request(options)
    end

    # Removes the AI Agent that is set for use by default on an Amazon Q in
    # Connect Assistant.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :ai_agent_type
    #   The type of the AI Agent being removed for use by default from the
    #   Amazon Q in Connect Assistant.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_assistant_ai_agent({
    #     assistant_id: "UuidOrArn", # required
    #     ai_agent_type: "MANUAL_SEARCH", # required, accepts MANUAL_SEARCH, ANSWER_RECOMMENDATION, SELF_SERVICE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/RemoveAssistantAIAgent AWS API Documentation
    #
    # @overload remove_assistant_ai_agent(params = {})
    # @param [Hash] params ({})
    def remove_assistant_ai_agent(params = {}, options = {})
      req = build_request(:remove_assistant_ai_agent, params)
      req.send_request(options)
    end

    # Removes a URI template from a knowledge base.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_knowledge_base_template_uri({
    #     knowledge_base_id: "UuidOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/RemoveKnowledgeBaseTemplateUri AWS API Documentation
    #
    # @overload remove_knowledge_base_template_uri(params = {})
    # @param [Hash] params ({})
    def remove_knowledge_base_template_uri(params = {}, options = {})
      req = build_request(:remove_knowledge_base_template_uri, params)
      req.send_request(options)
    end

    # Renders the Amazon Q in Connect message template based on the
    # attribute values provided and generates the message content. For any
    # variable present in the message template, if the attribute value is
    # neither provided in the attribute request parameter nor the default
    # attribute of the message template, the rendered message content will
    # keep the variable placeholder as it is and return the attribute keys
    # that are missing.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @option params [required, String] :message_template_id
    #   The identifier of the message template. Can be either the ID or the
    #   ARN.
    #
    # @option params [required, Types::MessageTemplateAttributes] :attributes
    #   An object that specifies the values to use for variables in the
    #   message template. This object contains different categories of
    #   key-value pairs. Each key defines a variable or placeholder in the
    #   message template. The corresponding value defines the value for that
    #   variable.
    #
    # @return [Types::RenderMessageTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RenderMessageTemplateResponse#content #content} => Types::MessageTemplateContentProvider
    #   * {Types::RenderMessageTemplateResponse#attributes_not_interpolated #attributes_not_interpolated} => Array&lt;String&gt;
    #   * {Types::RenderMessageTemplateResponse#attachments #attachments} => Array&lt;Types::MessageTemplateAttachment&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.render_message_template({
    #     knowledge_base_id: "UuidOrArn", # required
    #     message_template_id: "UuidOrArnOrEitherWithQualifier", # required
    #     attributes: { # required
    #       system_attributes: {
    #         name: "MessageTemplateAttributeValue",
    #         customer_endpoint: {
    #           address: "MessageTemplateAttributeValue",
    #         },
    #         system_endpoint: {
    #           address: "MessageTemplateAttributeValue",
    #         },
    #       },
    #       agent_attributes: {
    #         first_name: "MessageTemplateAttributeValue",
    #         last_name: "MessageTemplateAttributeValue",
    #       },
    #       customer_profile_attributes: {
    #         profile_id: "MessageTemplateAttributeValue",
    #         profile_arn: "MessageTemplateAttributeValue",
    #         first_name: "MessageTemplateAttributeValue",
    #         middle_name: "MessageTemplateAttributeValue",
    #         last_name: "MessageTemplateAttributeValue",
    #         account_number: "MessageTemplateAttributeValue",
    #         email_address: "MessageTemplateAttributeValue",
    #         phone_number: "MessageTemplateAttributeValue",
    #         additional_information: "MessageTemplateAttributeValue",
    #         party_type: "MessageTemplateAttributeValue",
    #         business_name: "MessageTemplateAttributeValue",
    #         birth_date: "MessageTemplateAttributeValue",
    #         gender: "MessageTemplateAttributeValue",
    #         mobile_phone_number: "MessageTemplateAttributeValue",
    #         home_phone_number: "MessageTemplateAttributeValue",
    #         business_phone_number: "MessageTemplateAttributeValue",
    #         business_email_address: "MessageTemplateAttributeValue",
    #         address1: "MessageTemplateAttributeValue",
    #         address2: "MessageTemplateAttributeValue",
    #         address3: "MessageTemplateAttributeValue",
    #         address4: "MessageTemplateAttributeValue",
    #         city: "MessageTemplateAttributeValue",
    #         county: "MessageTemplateAttributeValue",
    #         country: "MessageTemplateAttributeValue",
    #         postal_code: "MessageTemplateAttributeValue",
    #         province: "MessageTemplateAttributeValue",
    #         state: "MessageTemplateAttributeValue",
    #         shipping_address_1: "MessageTemplateAttributeValue",
    #         shipping_address_2: "MessageTemplateAttributeValue",
    #         shipping_address_3: "MessageTemplateAttributeValue",
    #         shipping_address_4: "MessageTemplateAttributeValue",
    #         shipping_city: "MessageTemplateAttributeValue",
    #         shipping_county: "MessageTemplateAttributeValue",
    #         shipping_country: "MessageTemplateAttributeValue",
    #         shipping_postal_code: "MessageTemplateAttributeValue",
    #         shipping_province: "MessageTemplateAttributeValue",
    #         shipping_state: "MessageTemplateAttributeValue",
    #         mailing_address_1: "MessageTemplateAttributeValue",
    #         mailing_address_2: "MessageTemplateAttributeValue",
    #         mailing_address_3: "MessageTemplateAttributeValue",
    #         mailing_address_4: "MessageTemplateAttributeValue",
    #         mailing_city: "MessageTemplateAttributeValue",
    #         mailing_county: "MessageTemplateAttributeValue",
    #         mailing_country: "MessageTemplateAttributeValue",
    #         mailing_postal_code: "MessageTemplateAttributeValue",
    #         mailing_province: "MessageTemplateAttributeValue",
    #         mailing_state: "MessageTemplateAttributeValue",
    #         billing_address_1: "MessageTemplateAttributeValue",
    #         billing_address_2: "MessageTemplateAttributeValue",
    #         billing_address_3: "MessageTemplateAttributeValue",
    #         billing_address_4: "MessageTemplateAttributeValue",
    #         billing_city: "MessageTemplateAttributeValue",
    #         billing_county: "MessageTemplateAttributeValue",
    #         billing_country: "MessageTemplateAttributeValue",
    #         billing_postal_code: "MessageTemplateAttributeValue",
    #         billing_province: "MessageTemplateAttributeValue",
    #         billing_state: "MessageTemplateAttributeValue",
    #         custom: {
    #           "MessageTemplateAttributeKey" => "MessageTemplateAttributeValue",
    #         },
    #       },
    #       custom_attributes: {
    #         "MessageTemplateAttributeKey" => "MessageTemplateAttributeValue",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.content.email.subject #=> String
    #   resp.content.email.body.plain_text.content #=> String
    #   resp.content.email.body.html.content #=> String
    #   resp.content.email.headers #=> Array
    #   resp.content.email.headers[0].name #=> String
    #   resp.content.email.headers[0].value #=> String
    #   resp.content.sms.body.plain_text.content #=> String
    #   resp.attributes_not_interpolated #=> Array
    #   resp.attributes_not_interpolated[0] #=> String
    #   resp.attachments #=> Array
    #   resp.attachments[0].content_disposition #=> String, one of "ATTACHMENT"
    #   resp.attachments[0].name #=> String
    #   resp.attachments[0].uploaded_time #=> Time
    #   resp.attachments[0].url #=> String
    #   resp.attachments[0].url_expiry #=> Time
    #   resp.attachments[0].attachment_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/RenderMessageTemplate AWS API Documentation
    #
    # @overload render_message_template(params = {})
    # @param [Hash] params ({})
    def render_message_template(params = {}, options = {})
      req = build_request(:render_message_template, params)
      req.send_request(options)
    end

    # Searches for content in a specified knowledge base. Can be used to get
    # a specific content resource by its name.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @option params [required, Types::SearchExpression] :search_expression
    #   The search expression to filter results.
    #
    # @return [Types::SearchContentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchContentResponse#content_summaries #content_summaries} => Array&lt;Types::ContentSummary&gt;
    #   * {Types::SearchContentResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_content({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     knowledge_base_id: "UuidOrArn", # required
    #     search_expression: { # required
    #       filters: [ # required
    #         {
    #           field: "NAME", # required, accepts NAME
    #           operator: "EQUALS", # required, accepts EQUALS
    #           value: "NonEmptyString", # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.content_summaries #=> Array
    #   resp.content_summaries[0].content_arn #=> String
    #   resp.content_summaries[0].content_id #=> String
    #   resp.content_summaries[0].knowledge_base_arn #=> String
    #   resp.content_summaries[0].knowledge_base_id #=> String
    #   resp.content_summaries[0].name #=> String
    #   resp.content_summaries[0].revision_id #=> String
    #   resp.content_summaries[0].title #=> String
    #   resp.content_summaries[0].content_type #=> String
    #   resp.content_summaries[0].status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_FAILED"
    #   resp.content_summaries[0].metadata #=> Hash
    #   resp.content_summaries[0].metadata["NonEmptyString"] #=> String
    #   resp.content_summaries[0].tags #=> Hash
    #   resp.content_summaries[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SearchContent AWS API Documentation
    #
    # @overload search_content(params = {})
    # @param [Hash] params ({})
    def search_content(params = {}, options = {})
      req = build_request(:search_content, params)
      req.send_request(options)
    end

    # Searches for Amazon Q in Connect message templates in the specified
    # knowledge base.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @option params [required, Types::MessageTemplateSearchExpression] :search_expression
    #   The search expression for querying the message template.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::SearchMessageTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchMessageTemplatesResponse#results #results} => Array&lt;Types::MessageTemplateSearchResultData&gt;
    #   * {Types::SearchMessageTemplatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_message_templates({
    #     knowledge_base_id: "UuidOrArn", # required
    #     search_expression: { # required
    #       queries: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: ["MessageTemplateQueryValue"], # required
    #           operator: "CONTAINS", # required, accepts CONTAINS, CONTAINS_AND_PREFIX
    #           allow_fuzziness: false,
    #           priority: "HIGH", # accepts HIGH, MEDIUM, LOW
    #         },
    #       ],
    #       filters: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: ["MessageTemplateFilterValue"],
    #           operator: "EQUALS", # required, accepts EQUALS, PREFIX
    #           include_no_existence: false,
    #         },
    #       ],
    #       order_on_field: {
    #         name: "NonEmptyString", # required
    #         order: "ASC", # accepts ASC, DESC
    #       },
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].message_template_arn #=> String
    #   resp.results[0].message_template_id #=> String
    #   resp.results[0].knowledge_base_arn #=> String
    #   resp.results[0].knowledge_base_id #=> String
    #   resp.results[0].name #=> String
    #   resp.results[0].channel_subtype #=> String, one of "EMAIL", "SMS"
    #   resp.results[0].created_time #=> Time
    #   resp.results[0].last_modified_time #=> Time
    #   resp.results[0].last_modified_by #=> String
    #   resp.results[0].is_active #=> Boolean
    #   resp.results[0].version_number #=> Integer
    #   resp.results[0].description #=> String
    #   resp.results[0].grouping_configuration.criteria #=> String
    #   resp.results[0].grouping_configuration.values #=> Array
    #   resp.results[0].grouping_configuration.values[0] #=> String
    #   resp.results[0].language #=> String
    #   resp.results[0].tags #=> Hash
    #   resp.results[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SearchMessageTemplates AWS API Documentation
    #
    # @overload search_message_templates(params = {})
    # @param [Hash] params ({})
    def search_message_templates(params = {}, options = {})
      req = build_request(:search_message_templates, params)
      req.send_request(options)
    end

    # Searches existing Amazon Q in Connect quick responses in an Amazon Q
    # in Connect knowledge base.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. This should be a
    #   QUICK\_RESPONSES type knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @option params [required, Types::QuickResponseSearchExpression] :search_expression
    #   The search expression for querying the quick response.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [Hash<String,String>] :attributes
    #   The [user-defined Amazon Connect contact attributes][1] to be resolved
    #   when search results are returned.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/connect-attrib-list.html#user-defined-attributes
    #
    # @return [Types::SearchQuickResponsesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchQuickResponsesResponse#results #results} => Array&lt;Types::QuickResponseSearchResultData&gt;
    #   * {Types::SearchQuickResponsesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_quick_responses({
    #     knowledge_base_id: "UuidOrArn", # required
    #     search_expression: { # required
    #       queries: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: ["QuickResponseQueryValue"], # required
    #           operator: "CONTAINS", # required, accepts CONTAINS, CONTAINS_AND_PREFIX
    #           allow_fuzziness: false,
    #           priority: "HIGH", # accepts HIGH, MEDIUM, LOW
    #         },
    #       ],
    #       filters: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: ["QuickResponseFilterValue"],
    #           operator: "EQUALS", # required, accepts EQUALS, PREFIX
    #           include_no_existence: false,
    #         },
    #       ],
    #       order_on_field: {
    #         name: "NonEmptyString", # required
    #         order: "ASC", # accepts ASC, DESC
    #       },
    #     },
    #     next_token: "NonEmptyString",
    #     max_results: 1,
    #     attributes: {
    #       "ContactAttributeKey" => "ContactAttributeValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].quick_response_arn #=> String
    #   resp.results[0].quick_response_id #=> String
    #   resp.results[0].knowledge_base_arn #=> String
    #   resp.results[0].knowledge_base_id #=> String
    #   resp.results[0].name #=> String
    #   resp.results[0].content_type #=> String
    #   resp.results[0].status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"
    #   resp.results[0].contents.plain_text.content #=> String
    #   resp.results[0].contents.markdown.content #=> String
    #   resp.results[0].created_time #=> Time
    #   resp.results[0].last_modified_time #=> Time
    #   resp.results[0].is_active #=> Boolean
    #   resp.results[0].description #=> String
    #   resp.results[0].grouping_configuration.criteria #=> String
    #   resp.results[0].grouping_configuration.values #=> Array
    #   resp.results[0].grouping_configuration.values[0] #=> String
    #   resp.results[0].shortcut_key #=> String
    #   resp.results[0].last_modified_by #=> String
    #   resp.results[0].channels #=> Array
    #   resp.results[0].channels[0] #=> String
    #   resp.results[0].language #=> String
    #   resp.results[0].attributes_not_interpolated #=> Array
    #   resp.results[0].attributes_not_interpolated[0] #=> String
    #   resp.results[0].attributes_interpolated #=> Array
    #   resp.results[0].attributes_interpolated[0] #=> String
    #   resp.results[0].tags #=> Hash
    #   resp.results[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SearchQuickResponses AWS API Documentation
    #
    # @overload search_quick_responses(params = {})
    # @param [Hash] params ({})
    def search_quick_responses(params = {}, options = {})
      req = build_request(:search_quick_responses, params)
      req.send_request(options)
    end

    # Searches for sessions.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, Types::SearchExpression] :search_expression
    #   The search expression to filter results.
    #
    # @return [Types::SearchSessionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchSessionsResponse#session_summaries #session_summaries} => Array&lt;Types::SessionSummary&gt;
    #   * {Types::SearchSessionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_sessions({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     assistant_id: "UuidOrArn", # required
    #     search_expression: { # required
    #       filters: [ # required
    #         {
    #           field: "NAME", # required, accepts NAME
    #           operator: "EQUALS", # required, accepts EQUALS
    #           value: "NonEmptyString", # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.session_summaries #=> Array
    #   resp.session_summaries[0].session_id #=> String
    #   resp.session_summaries[0].session_arn #=> String
    #   resp.session_summaries[0].assistant_id #=> String
    #   resp.session_summaries[0].assistant_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SearchSessions AWS API Documentation
    #
    # @overload search_sessions(params = {})
    # @param [Hash] params ({})
    def search_sessions(params = {}, options = {})
      req = build_request(:search_sessions, params)
      req.send_request(options)
    end

    # Submits a message to the Amazon Q in Connect session.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant.
    #
    # @option params [required, String] :session_id
    #   The identifier of the Amazon Q in Connect session.
    #
    # @option params [required, String] :type
    #   The message type.
    #
    # @option params [required, Types::MessageInput] :message
    #   The message data to submit to the Amazon Q in Connect session.
    #
    # @option params [Types::ConversationContext] :conversation_context
    #   The conversation context before the Amazon Q in Connect session.
    #
    # @option params [Types::MessageConfiguration] :configuration
    #   The configuration of the [SendMessage][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_amazon-q-connect_SendMessage.html
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the AWS SDK populates
    #   this field.For more information about idempotency, see Making retries
    #   safe with idempotent APIs.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::SendMessageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendMessageResponse#request_message_id #request_message_id} => String
    #   * {Types::SendMessageResponse#configuration #configuration} => Types::MessageConfiguration
    #   * {Types::SendMessageResponse#next_message_token #next_message_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_message({
    #     assistant_id: "UuidOrArn", # required
    #     session_id: "UuidOrArn", # required
    #     type: "TEXT", # required, accepts TEXT
    #     message: { # required
    #       value: { # required
    #         text: {
    #           value: "TextMessageValueString",
    #         },
    #       },
    #     },
    #     conversation_context: {
    #       self_service_conversation_history: [ # required
    #         {
    #           turn_number: 1, # required
    #           input_transcript: "SensitiveString",
    #           bot_response: "SensitiveString",
    #         },
    #       ],
    #     },
    #     configuration: {
    #       generate_filler_message: false,
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_message_id #=> String
    #   resp.configuration.generate_filler_message #=> Boolean
    #   resp.next_message_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SendMessage AWS API Documentation
    #
    # @overload send_message(params = {})
    # @param [Hash] params ({})
    def send_message(params = {}, options = {})
      req = build_request(:send_message, params)
      req.send_request(options)
    end

    # Get a URL to upload content to a knowledge base. To upload content,
    # first make a PUT request to the returned URL with your file, making
    # sure to include the required headers. Then use [CreateContent][1] to
    # finalize the content creation process or [UpdateContent][2] to modify
    # an existing resource. You can only upload content to a knowledge base
    # of type CUSTOM.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_CreateContent.html
    # [2]: https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_UpdateContent.html
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @option params [required, String] :content_type
    #   The type of content to upload.
    #
    # @option params [Integer] :presigned_url_time_to_live
    #   The expected expiration time of the generated presigned URL, specified
    #   in minutes.
    #
    # @return [Types::StartContentUploadResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartContentUploadResponse#upload_id #upload_id} => String
    #   * {Types::StartContentUploadResponse#url #url} => String
    #   * {Types::StartContentUploadResponse#url_expiry #url_expiry} => Time
    #   * {Types::StartContentUploadResponse#headers_to_include #headers_to_include} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_content_upload({
    #     knowledge_base_id: "UuidOrArn", # required
    #     content_type: "ContentType", # required
    #     presigned_url_time_to_live: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.upload_id #=> String
    #   resp.url #=> String
    #   resp.url_expiry #=> Time
    #   resp.headers_to_include #=> Hash
    #   resp.headers_to_include["NonEmptyString"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/StartContentUpload AWS API Documentation
    #
    # @overload start_content_upload(params = {})
    # @param [Hash] params ({})
    def start_content_upload(params = {}, options = {})
      req = build_request(:start_content_upload, params)
      req.send_request(options)
    end

    # Start an asynchronous job to import Amazon Q in Connect resources from
    # an uploaded source file. Before calling this API, use
    # [StartContentUpload][1] to upload an asset that contains the resource
    # data.
    #
    # * For importing Amazon Q in Connect quick responses, you need to
    #   upload a csv file including the quick responses. For information
    #   about how to format the csv file for importing quick responses, see
    #   [Import quick responses][2].
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html
    # [2]: https://docs.aws.amazon.com/console/connect/quick-responses/add-data
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    #   * For importing Amazon Q in Connect quick responses, this should be a
    #     `QUICK_RESPONSES` type knowledge base.
    #
    #   ^
    #
    # @option params [required, String] :import_job_type
    #   The type of the import job.
    #
    #   * For importing quick response resource, set the value to
    #     `QUICK_RESPONSES`.
    #
    #   ^
    #
    # @option params [required, String] :upload_id
    #   A pointer to the uploaded asset. This value is returned by
    #   [StartContentUpload][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html
    #
    # @option params [String] :client_token
    #   The tags used to organize, track, or control access for this resource.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :metadata
    #   The metadata fields of the imported Amazon Q in Connect resources.
    #
    # @option params [Types::ExternalSourceConfiguration] :external_source_configuration
    #   The configuration information of the external source that the resource
    #   data are imported from.
    #
    # @return [Types::StartImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartImportJobResponse#import_job #import_job} => Types::ImportJobData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_import_job({
    #     knowledge_base_id: "UuidOrArn", # required
    #     import_job_type: "QUICK_RESPONSES", # required, accepts QUICK_RESPONSES
    #     upload_id: "UploadId", # required
    #     client_token: "NonEmptyString",
    #     metadata: {
    #       "NonEmptyString" => "NonEmptyString",
    #     },
    #     external_source_configuration: {
    #       source: "AMAZON_CONNECT", # required, accepts AMAZON_CONNECT
    #       configuration: { # required
    #         connect_configuration: {
    #           instance_id: "NonEmptyString",
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.import_job.import_job_id #=> String
    #   resp.import_job.knowledge_base_id #=> String
    #   resp.import_job.upload_id #=> String
    #   resp.import_job.knowledge_base_arn #=> String
    #   resp.import_job.import_job_type #=> String, one of "QUICK_RESPONSES"
    #   resp.import_job.status #=> String, one of "START_IN_PROGRESS", "FAILED", "COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.import_job.url #=> String
    #   resp.import_job.failed_record_report #=> String
    #   resp.import_job.url_expiry #=> Time
    #   resp.import_job.created_time #=> Time
    #   resp.import_job.last_modified_time #=> Time
    #   resp.import_job.metadata #=> Hash
    #   resp.import_job.metadata["NonEmptyString"] #=> String
    #   resp.import_job.external_source_configuration.source #=> String, one of "AMAZON_CONNECT"
    #   resp.import_job.external_source_configuration.configuration.connect_configuration.instance_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/StartImportJob AWS API Documentation
    #
    # @overload start_import_job(params = {})
    # @param [Hash] params ({})
    def start_import_job(params = {}, options = {})
      req = build_request(:start_import_job, params)
      req.send_request(options)
    end

    # Adds the specified tags to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the specified tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an AI Agent.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1]..
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :ai_agent_id
    #   The identifier of the Amazon Q in Connect AI Agent.
    #
    # @option params [required, String] :visibility_status
    #   The visbility status of the Amazon Q in Connect AI Agent.
    #
    # @option params [Types::AIAgentConfiguration] :configuration
    #   The configuration of the Amazon Q in Connect AI Agent.
    #
    # @option params [String] :description
    #   The description of the Amazon Q in Connect AI Agent.
    #
    # @return [Types::UpdateAIAgentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAIAgentResponse#ai_agent #ai_agent} => Types::AIAgentData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ai_agent({
    #     client_token: "ClientToken",
    #     assistant_id: "UuidOrArn", # required
    #     ai_agent_id: "UuidOrArnOrEitherWithQualifier", # required
    #     visibility_status: "SAVED", # required, accepts SAVED, PUBLISHED
    #     configuration: {
    #       manual_search_ai_agent_configuration: {
    #         answer_generation_ai_prompt_id: "UuidWithQualifier",
    #         answer_generation_ai_guardrail_id: "UuidWithQualifier",
    #         association_configurations: [
    #           {
    #             association_id: "Uuid",
    #             association_type: "KNOWLEDGE_BASE", # accepts KNOWLEDGE_BASE
    #             association_configuration_data: {
    #               knowledge_base_association_configuration_data: {
    #                 content_tag_filter: {
    #                   tag_condition: {
    #                     key: "TagKey", # required
    #                     value: "TagValue",
    #                   },
    #                   and_conditions: [
    #                     {
    #                       key: "TagKey", # required
    #                       value: "TagValue",
    #                     },
    #                   ],
    #                   or_conditions: [
    #                     {
    #                       and_conditions: [
    #                         {
    #                           key: "TagKey", # required
    #                           value: "TagValue",
    #                         },
    #                       ],
    #                       tag_condition: {
    #                         key: "TagKey", # required
    #                         value: "TagValue",
    #                       },
    #                     },
    #                   ],
    #                 },
    #                 max_results: 1,
    #                 override_knowledge_base_search_type: "HYBRID", # accepts HYBRID, SEMANTIC
    #               },
    #             },
    #           },
    #         ],
    #         locale: "NonEmptyString",
    #       },
    #       answer_recommendation_ai_agent_configuration: {
    #         intent_labeling_generation_ai_prompt_id: "UuidWithQualifier",
    #         query_reformulation_ai_prompt_id: "UuidWithQualifier",
    #         answer_generation_ai_prompt_id: "UuidWithQualifier",
    #         answer_generation_ai_guardrail_id: "UuidWithQualifier",
    #         association_configurations: [
    #           {
    #             association_id: "Uuid",
    #             association_type: "KNOWLEDGE_BASE", # accepts KNOWLEDGE_BASE
    #             association_configuration_data: {
    #               knowledge_base_association_configuration_data: {
    #                 content_tag_filter: {
    #                   tag_condition: {
    #                     key: "TagKey", # required
    #                     value: "TagValue",
    #                   },
    #                   and_conditions: [
    #                     {
    #                       key: "TagKey", # required
    #                       value: "TagValue",
    #                     },
    #                   ],
    #                   or_conditions: [
    #                     {
    #                       and_conditions: [
    #                         {
    #                           key: "TagKey", # required
    #                           value: "TagValue",
    #                         },
    #                       ],
    #                       tag_condition: {
    #                         key: "TagKey", # required
    #                         value: "TagValue",
    #                       },
    #                     },
    #                   ],
    #                 },
    #                 max_results: 1,
    #                 override_knowledge_base_search_type: "HYBRID", # accepts HYBRID, SEMANTIC
    #               },
    #             },
    #           },
    #         ],
    #         locale: "NonEmptyString",
    #       },
    #       self_service_ai_agent_configuration: {
    #         self_service_pre_processing_ai_prompt_id: "UuidWithQualifier",
    #         self_service_answer_generation_ai_prompt_id: "UuidWithQualifier",
    #         self_service_ai_guardrail_id: "UuidWithQualifier",
    #         association_configurations: [
    #           {
    #             association_id: "Uuid",
    #             association_type: "KNOWLEDGE_BASE", # accepts KNOWLEDGE_BASE
    #             association_configuration_data: {
    #               knowledge_base_association_configuration_data: {
    #                 content_tag_filter: {
    #                   tag_condition: {
    #                     key: "TagKey", # required
    #                     value: "TagValue",
    #                   },
    #                   and_conditions: [
    #                     {
    #                       key: "TagKey", # required
    #                       value: "TagValue",
    #                     },
    #                   ],
    #                   or_conditions: [
    #                     {
    #                       and_conditions: [
    #                         {
    #                           key: "TagKey", # required
    #                           value: "TagValue",
    #                         },
    #                       ],
    #                       tag_condition: {
    #                         key: "TagKey", # required
    #                         value: "TagValue",
    #                       },
    #                     },
    #                   ],
    #                 },
    #                 max_results: 1,
    #                 override_knowledge_base_search_type: "HYBRID", # accepts HYBRID, SEMANTIC
    #               },
    #             },
    #           },
    #         ],
    #       },
    #     },
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.ai_agent.assistant_id #=> String
    #   resp.ai_agent.assistant_arn #=> String
    #   resp.ai_agent.ai_agent_id #=> String
    #   resp.ai_agent.ai_agent_arn #=> String
    #   resp.ai_agent.name #=> String
    #   resp.ai_agent.type #=> String, one of "MANUAL_SEARCH", "ANSWER_RECOMMENDATION", "SELF_SERVICE"
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.answer_generation_ai_prompt_id #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.answer_generation_ai_guardrail_id #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations #=> Array
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_id #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_type #=> String, one of "KNOWLEDGE_BASE"
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.key #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.value #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions #=> Array
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].key #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].value #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions #=> Array
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions #=> Array
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].key #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].value #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.key #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.value #=> String
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.max_results #=> Integer
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.override_knowledge_base_search_type #=> String, one of "HYBRID", "SEMANTIC"
    #   resp.ai_agent.configuration.manual_search_ai_agent_configuration.locale #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.intent_labeling_generation_ai_prompt_id #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.query_reformulation_ai_prompt_id #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.answer_generation_ai_prompt_id #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.answer_generation_ai_guardrail_id #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations #=> Array
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_id #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_type #=> String, one of "KNOWLEDGE_BASE"
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.key #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.value #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions #=> Array
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].key #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].value #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions #=> Array
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions #=> Array
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].key #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].value #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.key #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.value #=> String
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.max_results #=> Integer
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.override_knowledge_base_search_type #=> String, one of "HYBRID", "SEMANTIC"
    #   resp.ai_agent.configuration.answer_recommendation_ai_agent_configuration.locale #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.self_service_pre_processing_ai_prompt_id #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.self_service_answer_generation_ai_prompt_id #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.self_service_ai_guardrail_id #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations #=> Array
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_id #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_type #=> String, one of "KNOWLEDGE_BASE"
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.key #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.tag_condition.value #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions #=> Array
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].key #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.and_conditions[0].value #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions #=> Array
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions #=> Array
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].key #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].and_conditions[0].value #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.key #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.content_tag_filter.or_conditions[0].tag_condition.value #=> String
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.max_results #=> Integer
    #   resp.ai_agent.configuration.self_service_ai_agent_configuration.association_configurations[0].association_configuration_data.knowledge_base_association_configuration_data.override_knowledge_base_search_type #=> String, one of "HYBRID", "SEMANTIC"
    #   resp.ai_agent.modified_time #=> Time
    #   resp.ai_agent.description #=> String
    #   resp.ai_agent.visibility_status #=> String, one of "SAVED", "PUBLISHED"
    #   resp.ai_agent.tags #=> Hash
    #   resp.ai_agent.tags["TagKey"] #=> String
    #   resp.ai_agent.origin #=> String, one of "SYSTEM", "CUSTOMER"
    #   resp.ai_agent.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateAIAgent AWS API Documentation
    #
    # @overload update_ai_agent(params = {})
    # @param [Hash] params ({})
    def update_ai_agent(params = {}, options = {})
      req = build_request(:update_ai_agent, params)
      req.send_request(options)
    end

    # Updates an AI Guardrail.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1]..
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :ai_guardrail_id
    #   The identifier of the Amazon Q in Connect AI Guardrail.
    #
    # @option params [required, String] :visibility_status
    #   The visibility status of the Amazon Q in Connect AI Guardrail.
    #
    # @option params [required, String] :blocked_input_messaging
    #   The message to return when the AI Guardrail blocks a prompt.
    #
    # @option params [required, String] :blocked_outputs_messaging
    #   The message to return when the AI Guardrail blocks a model response.
    #
    # @option params [String] :description
    #   A description of the AI Guardrail.
    #
    # @option params [Types::AIGuardrailTopicPolicyConfig] :topic_policy_config
    #   The topic policies to configure for the AI Guardrail.
    #
    # @option params [Types::AIGuardrailContentPolicyConfig] :content_policy_config
    #   The content filter policies to configure for the AI Guardrail.
    #
    # @option params [Types::AIGuardrailWordPolicyConfig] :word_policy_config
    #   The word policy you configure for the AI Guardrail.
    #
    # @option params [Types::AIGuardrailSensitiveInformationPolicyConfig] :sensitive_information_policy_config
    #   The sensitive information policy to configure for the AI Guardrail.
    #
    # @option params [Types::AIGuardrailContextualGroundingPolicyConfig] :contextual_grounding_policy_config
    #   The contextual grounding policy configuration used to create an AI
    #   Guardrail.
    #
    # @return [Types::UpdateAIGuardrailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAIGuardrailResponse#ai_guardrail #ai_guardrail} => Types::AIGuardrailData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ai_guardrail({
    #     client_token: "ClientToken",
    #     assistant_id: "UuidOrArn", # required
    #     ai_guardrail_id: "UuidOrArnOrEitherWithQualifier", # required
    #     visibility_status: "SAVED", # required, accepts SAVED, PUBLISHED
    #     blocked_input_messaging: "AIGuardrailBlockedMessaging", # required
    #     blocked_outputs_messaging: "AIGuardrailBlockedMessaging", # required
    #     description: "AIGuardrailDescription",
    #     topic_policy_config: {
    #       topics_config: [ # required
    #         {
    #           name: "GuardrailTopicName", # required
    #           definition: "GuardrailTopicDefinition", # required
    #           examples: ["GuardrailTopicExample"],
    #           type: "DENY", # required, accepts DENY
    #         },
    #       ],
    #     },
    #     content_policy_config: {
    #       filters_config: [ # required
    #         {
    #           type: "SEXUAL", # required, accepts SEXUAL, VIOLENCE, HATE, INSULTS, MISCONDUCT, PROMPT_ATTACK
    #           input_strength: "NONE", # required, accepts NONE, LOW, MEDIUM, HIGH
    #           output_strength: "NONE", # required, accepts NONE, LOW, MEDIUM, HIGH
    #         },
    #       ],
    #     },
    #     word_policy_config: {
    #       words_config: [
    #         {
    #           text: "GuardrailWordText", # required
    #         },
    #       ],
    #       managed_word_lists_config: [
    #         {
    #           type: "PROFANITY", # required, accepts PROFANITY
    #         },
    #       ],
    #     },
    #     sensitive_information_policy_config: {
    #       pii_entities_config: [
    #         {
    #           type: "ADDRESS", # required, accepts ADDRESS, AGE, AWS_ACCESS_KEY, AWS_SECRET_KEY, CA_HEALTH_NUMBER, CA_SOCIAL_INSURANCE_NUMBER, CREDIT_DEBIT_CARD_CVV, CREDIT_DEBIT_CARD_EXPIRY, CREDIT_DEBIT_CARD_NUMBER, DRIVER_ID, EMAIL, INTERNATIONAL_BANK_ACCOUNT_NUMBER, IP_ADDRESS, LICENSE_PLATE, MAC_ADDRESS, NAME, PASSWORD, PHONE, PIN, SWIFT_CODE, UK_NATIONAL_HEALTH_SERVICE_NUMBER, UK_NATIONAL_INSURANCE_NUMBER, UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER, URL, USERNAME, US_BANK_ACCOUNT_NUMBER, US_BANK_ROUTING_NUMBER, US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER, US_PASSPORT_NUMBER, US_SOCIAL_SECURITY_NUMBER, VEHICLE_IDENTIFICATION_NUMBER
    #           action: "BLOCK", # required, accepts BLOCK, ANONYMIZE
    #         },
    #       ],
    #       regexes_config: [
    #         {
    #           name: "GuardrailRegexName", # required
    #           description: "GuardrailRegexDescription",
    #           pattern: "GuardrailRegexPattern", # required
    #           action: "BLOCK", # required, accepts BLOCK, ANONYMIZE
    #         },
    #       ],
    #     },
    #     contextual_grounding_policy_config: {
    #       filters_config: [ # required
    #         {
    #           type: "GROUNDING", # required, accepts GROUNDING, RELEVANCE
    #           threshold: 1.0, # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.ai_guardrail.assistant_id #=> String
    #   resp.ai_guardrail.assistant_arn #=> String
    #   resp.ai_guardrail.ai_guardrail_arn #=> String
    #   resp.ai_guardrail.ai_guardrail_id #=> String
    #   resp.ai_guardrail.name #=> String
    #   resp.ai_guardrail.visibility_status #=> String, one of "SAVED", "PUBLISHED"
    #   resp.ai_guardrail.blocked_input_messaging #=> String
    #   resp.ai_guardrail.blocked_outputs_messaging #=> String
    #   resp.ai_guardrail.description #=> String
    #   resp.ai_guardrail.topic_policy_config.topics_config #=> Array
    #   resp.ai_guardrail.topic_policy_config.topics_config[0].name #=> String
    #   resp.ai_guardrail.topic_policy_config.topics_config[0].definition #=> String
    #   resp.ai_guardrail.topic_policy_config.topics_config[0].examples #=> Array
    #   resp.ai_guardrail.topic_policy_config.topics_config[0].examples[0] #=> String
    #   resp.ai_guardrail.topic_policy_config.topics_config[0].type #=> String, one of "DENY"
    #   resp.ai_guardrail.content_policy_config.filters_config #=> Array
    #   resp.ai_guardrail.content_policy_config.filters_config[0].type #=> String, one of "SEXUAL", "VIOLENCE", "HATE", "INSULTS", "MISCONDUCT", "PROMPT_ATTACK"
    #   resp.ai_guardrail.content_policy_config.filters_config[0].input_strength #=> String, one of "NONE", "LOW", "MEDIUM", "HIGH"
    #   resp.ai_guardrail.content_policy_config.filters_config[0].output_strength #=> String, one of "NONE", "LOW", "MEDIUM", "HIGH"
    #   resp.ai_guardrail.word_policy_config.words_config #=> Array
    #   resp.ai_guardrail.word_policy_config.words_config[0].text #=> String
    #   resp.ai_guardrail.word_policy_config.managed_word_lists_config #=> Array
    #   resp.ai_guardrail.word_policy_config.managed_word_lists_config[0].type #=> String, one of "PROFANITY"
    #   resp.ai_guardrail.sensitive_information_policy_config.pii_entities_config #=> Array
    #   resp.ai_guardrail.sensitive_information_policy_config.pii_entities_config[0].type #=> String, one of "ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"
    #   resp.ai_guardrail.sensitive_information_policy_config.pii_entities_config[0].action #=> String, one of "BLOCK", "ANONYMIZE"
    #   resp.ai_guardrail.sensitive_information_policy_config.regexes_config #=> Array
    #   resp.ai_guardrail.sensitive_information_policy_config.regexes_config[0].name #=> String
    #   resp.ai_guardrail.sensitive_information_policy_config.regexes_config[0].description #=> String
    #   resp.ai_guardrail.sensitive_information_policy_config.regexes_config[0].pattern #=> String
    #   resp.ai_guardrail.sensitive_information_policy_config.regexes_config[0].action #=> String, one of "BLOCK", "ANONYMIZE"
    #   resp.ai_guardrail.contextual_grounding_policy_config.filters_config #=> Array
    #   resp.ai_guardrail.contextual_grounding_policy_config.filters_config[0].type #=> String, one of "GROUNDING", "RELEVANCE"
    #   resp.ai_guardrail.contextual_grounding_policy_config.filters_config[0].threshold #=> Float
    #   resp.ai_guardrail.tags #=> Hash
    #   resp.ai_guardrail.tags["TagKey"] #=> String
    #   resp.ai_guardrail.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.ai_guardrail.modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateAIGuardrail AWS API Documentation
    #
    # @overload update_ai_guardrail(params = {})
    # @param [Hash] params ({})
    def update_ai_guardrail(params = {}, options = {})
      req = build_request(:update_ai_guardrail, params)
      req.send_request(options)
    end

    # Updates an AI Prompt.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1]..
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :ai_prompt_id
    #   The identifier of the Amazon Q in Connect AI Prompt.
    #
    # @option params [required, String] :visibility_status
    #   The visibility status of the Amazon Q in Connect AI prompt.
    #
    # @option params [Types::AIPromptTemplateConfiguration] :template_configuration
    #   The configuration of the prompt template for this AI Prompt.
    #
    # @option params [String] :description
    #   The description of the Amazon Q in Connect AI Prompt.
    #
    # @return [Types::UpdateAIPromptResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAIPromptResponse#ai_prompt #ai_prompt} => Types::AIPromptData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ai_prompt({
    #     client_token: "ClientToken",
    #     assistant_id: "UuidOrArn", # required
    #     ai_prompt_id: "UuidOrArnOrEitherWithQualifier", # required
    #     visibility_status: "SAVED", # required, accepts SAVED, PUBLISHED
    #     template_configuration: {
    #       text_full_ai_prompt_edit_template_configuration: {
    #         text: "TextAIPrompt", # required
    #       },
    #     },
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.ai_prompt.assistant_id #=> String
    #   resp.ai_prompt.assistant_arn #=> String
    #   resp.ai_prompt.ai_prompt_id #=> String
    #   resp.ai_prompt.ai_prompt_arn #=> String
    #   resp.ai_prompt.name #=> String
    #   resp.ai_prompt.type #=> String, one of "ANSWER_GENERATION", "INTENT_LABELING_GENERATION", "QUERY_REFORMULATION", "SELF_SERVICE_PRE_PROCESSING", "SELF_SERVICE_ANSWER_GENERATION"
    #   resp.ai_prompt.template_type #=> String, one of "TEXT"
    #   resp.ai_prompt.model_id #=> String
    #   resp.ai_prompt.api_format #=> String, one of "ANTHROPIC_CLAUDE_MESSAGES", "ANTHROPIC_CLAUDE_TEXT_COMPLETIONS", "MESSAGES", "TEXT_COMPLETIONS"
    #   resp.ai_prompt.template_configuration.text_full_ai_prompt_edit_template_configuration.text #=> String
    #   resp.ai_prompt.modified_time #=> Time
    #   resp.ai_prompt.description #=> String
    #   resp.ai_prompt.visibility_status #=> String, one of "SAVED", "PUBLISHED"
    #   resp.ai_prompt.tags #=> Hash
    #   resp.ai_prompt.tags["TagKey"] #=> String
    #   resp.ai_prompt.origin #=> String, one of "SYSTEM", "CUSTOMER"
    #   resp.ai_prompt.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateAIPrompt AWS API Documentation
    #
    # @overload update_ai_prompt(params = {})
    # @param [Hash] params ({})
    def update_ai_prompt(params = {}, options = {})
      req = build_request(:update_ai_prompt, params)
      req.send_request(options)
    end

    # Updates the AI Agent that is set for use by default on an Amazon Q in
    # Connect Assistant.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :ai_agent_type
    #   The type of the AI Agent being updated for use by default on the
    #   Amazon Q in Connect Assistant.
    #
    # @option params [required, Types::AIAgentConfigurationData] :configuration
    #   The configuration of the AI Agent being updated for use by default on
    #   the Amazon Q in Connect Assistant.
    #
    # @return [Types::UpdateAssistantAIAgentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAssistantAIAgentResponse#assistant #assistant} => Types::AssistantData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_assistant_ai_agent({
    #     assistant_id: "UuidOrArn", # required
    #     ai_agent_type: "MANUAL_SEARCH", # required, accepts MANUAL_SEARCH, ANSWER_RECOMMENDATION, SELF_SERVICE
    #     configuration: { # required
    #       ai_agent_id: "UuidWithQualifier", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.assistant.assistant_id #=> String
    #   resp.assistant.assistant_arn #=> String
    #   resp.assistant.name #=> String
    #   resp.assistant.type #=> String, one of "AGENT"
    #   resp.assistant.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.assistant.description #=> String
    #   resp.assistant.tags #=> Hash
    #   resp.assistant.tags["TagKey"] #=> String
    #   resp.assistant.server_side_encryption_configuration.kms_key_id #=> String
    #   resp.assistant.integration_configuration.topic_integration_arn #=> String
    #   resp.assistant.capability_configuration.type #=> String, one of "V1", "V2"
    #   resp.assistant.ai_agent_configuration #=> Hash
    #   resp.assistant.ai_agent_configuration["AIAgentType"].ai_agent_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateAssistantAIAgent AWS API Documentation
    #
    # @overload update_assistant_ai_agent(params = {})
    # @param [Hash] params ({})
    def update_assistant_ai_agent(params = {}, options = {})
      req = build_request(:update_assistant_ai_agent, params)
      req.send_request(options)
    end

    # Updates information about the content.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base. Can be either the ID or the ARN
    #
    # @option params [required, String] :content_id
    #   The identifier of the content. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #
    # @option params [String] :revision_id
    #   The `revisionId` of the content resource to update, taken from an
    #   earlier call to `GetContent`, `GetContentSummary`, `SearchContent`, or
    #   `ListContents`. If included, this argument acts as an optimistic lock
    #   to ensure content was not modified since it was last read. If it has
    #   been modified, this API throws a `PreconditionFailedException`.
    #
    # @option params [String] :title
    #   The title of the content.
    #
    # @option params [String] :override_link_out_uri
    #   The URI for the article. If the knowledge base has a templateUri,
    #   setting this argument overrides it for this piece of content. To
    #   remove an existing `overrideLinkOurUri`, exclude this argument and set
    #   `removeOverrideLinkOutUri` to true.
    #
    # @option params [Boolean] :remove_override_link_out_uri
    #   Unset the existing `overrideLinkOutUri` if it exists.
    #
    # @option params [Hash<String,String>] :metadata
    #   A key/value map to store attributes without affecting tagging or
    #   recommendations. For example, when synchronizing data between an
    #   external system and Amazon Q in Connect, you can store an external
    #   version identifier as metadata to utilize for determining drift.
    #
    # @option params [String] :upload_id
    #   A pointer to the uploaded asset. This value is returned by
    #   [StartContentUpload][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_StartContentUpload.html
    #
    # @return [Types::UpdateContentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateContentResponse#content #content} => Types::ContentData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_content({
    #     knowledge_base_id: "UuidOrArn", # required
    #     content_id: "UuidOrArn", # required
    #     revision_id: "NonEmptyString",
    #     title: "ContentTitle",
    #     override_link_out_uri: "Uri",
    #     remove_override_link_out_uri: false,
    #     metadata: {
    #       "NonEmptyString" => "NonEmptyString",
    #     },
    #     upload_id: "UploadId",
    #   })
    #
    # @example Response structure
    #
    #   resp.content.content_arn #=> String
    #   resp.content.content_id #=> String
    #   resp.content.knowledge_base_arn #=> String
    #   resp.content.knowledge_base_id #=> String
    #   resp.content.name #=> String
    #   resp.content.revision_id #=> String
    #   resp.content.title #=> String
    #   resp.content.content_type #=> String
    #   resp.content.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_FAILED"
    #   resp.content.metadata #=> Hash
    #   resp.content.metadata["NonEmptyString"] #=> String
    #   resp.content.tags #=> Hash
    #   resp.content.tags["TagKey"] #=> String
    #   resp.content.link_out_uri #=> String
    #   resp.content.url #=> String
    #   resp.content.url_expiry #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateContent AWS API Documentation
    #
    # @overload update_content(params = {})
    # @param [Hash] params ({})
    def update_content(params = {}, options = {})
      req = build_request(:update_content, params)
      req.send_request(options)
    end

    # Updates the template URI of a knowledge base. This is only supported
    # for knowledge bases of type EXTERNAL. Include a single variable in
    # `${variable}` format; this interpolated by Amazon Q in Connect using
    # ingested content. For example, if you ingest a Salesforce article, it
    # has an `Id` value, and you can set the template URI to
    # `https://myInstanceName.lightning.force.com/lightning/r/Knowledge__kav/*${Id}*/view`.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @option params [required, String] :template_uri
    #   The template URI to update.
    #
    # @return [Types::UpdateKnowledgeBaseTemplateUriResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateKnowledgeBaseTemplateUriResponse#knowledge_base #knowledge_base} => Types::KnowledgeBaseData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_knowledge_base_template_uri({
    #     knowledge_base_id: "UuidOrArn", # required
    #     template_uri: "Uri", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.knowledge_base.knowledge_base_id #=> String
    #   resp.knowledge_base.knowledge_base_arn #=> String
    #   resp.knowledge_base.name #=> String
    #   resp.knowledge_base.knowledge_base_type #=> String, one of "EXTERNAL", "CUSTOM", "QUICK_RESPONSES", "MESSAGE_TEMPLATES", "MANAGED"
    #   resp.knowledge_base.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.knowledge_base.last_content_modification_time #=> Time
    #   resp.knowledge_base.vector_ingestion_configuration.chunking_configuration.chunking_strategy #=> String, one of "FIXED_SIZE", "NONE", "HIERARCHICAL", "SEMANTIC"
    #   resp.knowledge_base.vector_ingestion_configuration.chunking_configuration.fixed_size_chunking_configuration.max_tokens #=> Integer
    #   resp.knowledge_base.vector_ingestion_configuration.chunking_configuration.fixed_size_chunking_configuration.overlap_percentage #=> Integer
    #   resp.knowledge_base.vector_ingestion_configuration.chunking_configuration.hierarchical_chunking_configuration.level_configurations #=> Array
    #   resp.knowledge_base.vector_ingestion_configuration.chunking_configuration.hierarchical_chunking_configuration.level_configurations[0].max_tokens #=> Integer
    #   resp.knowledge_base.vector_ingestion_configuration.chunking_configuration.hierarchical_chunking_configuration.overlap_tokens #=> Integer
    #   resp.knowledge_base.vector_ingestion_configuration.chunking_configuration.semantic_chunking_configuration.max_tokens #=> Integer
    #   resp.knowledge_base.vector_ingestion_configuration.chunking_configuration.semantic_chunking_configuration.buffer_size #=> Integer
    #   resp.knowledge_base.vector_ingestion_configuration.chunking_configuration.semantic_chunking_configuration.breakpoint_percentile_threshold #=> Integer
    #   resp.knowledge_base.vector_ingestion_configuration.parsing_configuration.parsing_strategy #=> String, one of "BEDROCK_FOUNDATION_MODEL"
    #   resp.knowledge_base.vector_ingestion_configuration.parsing_configuration.bedrock_foundation_model_configuration.model_arn #=> String
    #   resp.knowledge_base.vector_ingestion_configuration.parsing_configuration.bedrock_foundation_model_configuration.parsing_prompt.parsing_prompt_text #=> String
    #   resp.knowledge_base.source_configuration.app_integrations.app_integration_arn #=> String
    #   resp.knowledge_base.source_configuration.app_integrations.object_fields #=> Array
    #   resp.knowledge_base.source_configuration.app_integrations.object_fields[0] #=> String
    #   resp.knowledge_base.source_configuration.managed_source_configuration.web_crawler_configuration.url_configuration.seed_urls #=> Array
    #   resp.knowledge_base.source_configuration.managed_source_configuration.web_crawler_configuration.url_configuration.seed_urls[0].url #=> String
    #   resp.knowledge_base.source_configuration.managed_source_configuration.web_crawler_configuration.crawler_limits.rate_limit #=> Integer
    #   resp.knowledge_base.source_configuration.managed_source_configuration.web_crawler_configuration.inclusion_filters #=> Array
    #   resp.knowledge_base.source_configuration.managed_source_configuration.web_crawler_configuration.inclusion_filters[0] #=> String
    #   resp.knowledge_base.source_configuration.managed_source_configuration.web_crawler_configuration.exclusion_filters #=> Array
    #   resp.knowledge_base.source_configuration.managed_source_configuration.web_crawler_configuration.exclusion_filters[0] #=> String
    #   resp.knowledge_base.source_configuration.managed_source_configuration.web_crawler_configuration.scope #=> String, one of "HOST_ONLY", "SUBDOMAINS"
    #   resp.knowledge_base.rendering_configuration.template_uri #=> String
    #   resp.knowledge_base.server_side_encryption_configuration.kms_key_id #=> String
    #   resp.knowledge_base.description #=> String
    #   resp.knowledge_base.tags #=> Hash
    #   resp.knowledge_base.tags["TagKey"] #=> String
    #   resp.knowledge_base.ingestion_status #=> String, one of "SYNC_FAILED", "SYNCING_IN_PROGRESS", "SYNC_SUCCESS", "CREATE_IN_PROGRESS"
    #   resp.knowledge_base.ingestion_failure_reasons #=> Array
    #   resp.knowledge_base.ingestion_failure_reasons[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateKnowledgeBaseTemplateUri AWS API Documentation
    #
    # @overload update_knowledge_base_template_uri(params = {})
    # @param [Hash] params ({})
    def update_knowledge_base_template_uri(params = {}, options = {})
      req = build_request(:update_knowledge_base_template_uri, params)
      req.send_request(options)
    end

    # Updates the Amazon Q in Connect message template. Partial update is
    # supported. If any field is not supplied, it will remain unchanged for
    # the message template that is referenced by the `$LATEST` qualifier.
    # Any modification will only apply to the message template that is
    # referenced by the `$LATEST` qualifier. The fields for all available
    # versions will remain unchanged.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @option params [required, String] :message_template_id
    #   The identifier of the message template. Can be either the ID or the
    #   ARN. It cannot contain any qualifier.
    #
    # @option params [Types::MessageTemplateContentProvider] :content
    #   The content of the message template.
    #
    # @option params [String] :language
    #   The language code value for the language in which the quick response
    #   is written. The supported language codes include `de_DE`, `en_US`,
    #   `es_ES`, `fr_FR`, `id_ID`, `it_IT`, `ja_JP`, `ko_KR`, `pt_BR`,
    #   `zh_CN`, `zh_TW`
    #
    # @option params [Types::MessageTemplateAttributes] :default_attributes
    #   An object that specifies the default values to use for variables in
    #   the message template. This object contains different categories of
    #   key-value pairs. Each key defines a variable or placeholder in the
    #   message template. The corresponding value defines the default value
    #   for that variable.
    #
    # @return [Types::UpdateMessageTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMessageTemplateResponse#message_template #message_template} => Types::MessageTemplateData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_message_template({
    #     knowledge_base_id: "UuidOrArn", # required
    #     message_template_id: "UuidOrArnOrEitherWithQualifier", # required
    #     content: {
    #       email: {
    #         subject: "NonEmptyUnlimitedString",
    #         body: {
    #           plain_text: {
    #             content: "NonEmptyUnlimitedString",
    #           },
    #           html: {
    #             content: "NonEmptyUnlimitedString",
    #           },
    #         },
    #         headers: [
    #           {
    #             name: "EmailHeaderKey",
    #             value: "EmailHeaderValue",
    #           },
    #         ],
    #       },
    #       sms: {
    #         body: {
    #           plain_text: {
    #             content: "NonEmptyUnlimitedString",
    #           },
    #         },
    #       },
    #     },
    #     language: "LanguageCode",
    #     default_attributes: {
    #       system_attributes: {
    #         name: "MessageTemplateAttributeValue",
    #         customer_endpoint: {
    #           address: "MessageTemplateAttributeValue",
    #         },
    #         system_endpoint: {
    #           address: "MessageTemplateAttributeValue",
    #         },
    #       },
    #       agent_attributes: {
    #         first_name: "MessageTemplateAttributeValue",
    #         last_name: "MessageTemplateAttributeValue",
    #       },
    #       customer_profile_attributes: {
    #         profile_id: "MessageTemplateAttributeValue",
    #         profile_arn: "MessageTemplateAttributeValue",
    #         first_name: "MessageTemplateAttributeValue",
    #         middle_name: "MessageTemplateAttributeValue",
    #         last_name: "MessageTemplateAttributeValue",
    #         account_number: "MessageTemplateAttributeValue",
    #         email_address: "MessageTemplateAttributeValue",
    #         phone_number: "MessageTemplateAttributeValue",
    #         additional_information: "MessageTemplateAttributeValue",
    #         party_type: "MessageTemplateAttributeValue",
    #         business_name: "MessageTemplateAttributeValue",
    #         birth_date: "MessageTemplateAttributeValue",
    #         gender: "MessageTemplateAttributeValue",
    #         mobile_phone_number: "MessageTemplateAttributeValue",
    #         home_phone_number: "MessageTemplateAttributeValue",
    #         business_phone_number: "MessageTemplateAttributeValue",
    #         business_email_address: "MessageTemplateAttributeValue",
    #         address1: "MessageTemplateAttributeValue",
    #         address2: "MessageTemplateAttributeValue",
    #         address3: "MessageTemplateAttributeValue",
    #         address4: "MessageTemplateAttributeValue",
    #         city: "MessageTemplateAttributeValue",
    #         county: "MessageTemplateAttributeValue",
    #         country: "MessageTemplateAttributeValue",
    #         postal_code: "MessageTemplateAttributeValue",
    #         province: "MessageTemplateAttributeValue",
    #         state: "MessageTemplateAttributeValue",
    #         shipping_address_1: "MessageTemplateAttributeValue",
    #         shipping_address_2: "MessageTemplateAttributeValue",
    #         shipping_address_3: "MessageTemplateAttributeValue",
    #         shipping_address_4: "MessageTemplateAttributeValue",
    #         shipping_city: "MessageTemplateAttributeValue",
    #         shipping_county: "MessageTemplateAttributeValue",
    #         shipping_country: "MessageTemplateAttributeValue",
    #         shipping_postal_code: "MessageTemplateAttributeValue",
    #         shipping_province: "MessageTemplateAttributeValue",
    #         shipping_state: "MessageTemplateAttributeValue",
    #         mailing_address_1: "MessageTemplateAttributeValue",
    #         mailing_address_2: "MessageTemplateAttributeValue",
    #         mailing_address_3: "MessageTemplateAttributeValue",
    #         mailing_address_4: "MessageTemplateAttributeValue",
    #         mailing_city: "MessageTemplateAttributeValue",
    #         mailing_county: "MessageTemplateAttributeValue",
    #         mailing_country: "MessageTemplateAttributeValue",
    #         mailing_postal_code: "MessageTemplateAttributeValue",
    #         mailing_province: "MessageTemplateAttributeValue",
    #         mailing_state: "MessageTemplateAttributeValue",
    #         billing_address_1: "MessageTemplateAttributeValue",
    #         billing_address_2: "MessageTemplateAttributeValue",
    #         billing_address_3: "MessageTemplateAttributeValue",
    #         billing_address_4: "MessageTemplateAttributeValue",
    #         billing_city: "MessageTemplateAttributeValue",
    #         billing_county: "MessageTemplateAttributeValue",
    #         billing_country: "MessageTemplateAttributeValue",
    #         billing_postal_code: "MessageTemplateAttributeValue",
    #         billing_province: "MessageTemplateAttributeValue",
    #         billing_state: "MessageTemplateAttributeValue",
    #         custom: {
    #           "MessageTemplateAttributeKey" => "MessageTemplateAttributeValue",
    #         },
    #       },
    #       custom_attributes: {
    #         "MessageTemplateAttributeKey" => "MessageTemplateAttributeValue",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.message_template.message_template_arn #=> String
    #   resp.message_template.message_template_id #=> String
    #   resp.message_template.knowledge_base_arn #=> String
    #   resp.message_template.knowledge_base_id #=> String
    #   resp.message_template.name #=> String
    #   resp.message_template.channel_subtype #=> String, one of "EMAIL", "SMS"
    #   resp.message_template.created_time #=> Time
    #   resp.message_template.last_modified_time #=> Time
    #   resp.message_template.last_modified_by #=> String
    #   resp.message_template.content.email.subject #=> String
    #   resp.message_template.content.email.body.plain_text.content #=> String
    #   resp.message_template.content.email.body.html.content #=> String
    #   resp.message_template.content.email.headers #=> Array
    #   resp.message_template.content.email.headers[0].name #=> String
    #   resp.message_template.content.email.headers[0].value #=> String
    #   resp.message_template.content.sms.body.plain_text.content #=> String
    #   resp.message_template.description #=> String
    #   resp.message_template.language #=> String
    #   resp.message_template.grouping_configuration.criteria #=> String
    #   resp.message_template.grouping_configuration.values #=> Array
    #   resp.message_template.grouping_configuration.values[0] #=> String
    #   resp.message_template.default_attributes.system_attributes.name #=> String
    #   resp.message_template.default_attributes.system_attributes.customer_endpoint.address #=> String
    #   resp.message_template.default_attributes.system_attributes.system_endpoint.address #=> String
    #   resp.message_template.default_attributes.agent_attributes.first_name #=> String
    #   resp.message_template.default_attributes.agent_attributes.last_name #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.profile_id #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.profile_arn #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.first_name #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.middle_name #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.last_name #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.account_number #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.email_address #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.phone_number #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.additional_information #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.party_type #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.business_name #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.birth_date #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.gender #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mobile_phone_number #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.home_phone_number #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.business_phone_number #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.business_email_address #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.address1 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.address2 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.address3 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.address4 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.city #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.county #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.country #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.postal_code #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.province #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.state #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_address_1 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_address_2 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_address_3 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_address_4 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_city #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_county #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_country #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_postal_code #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_province #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_state #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_address_1 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_address_2 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_address_3 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_address_4 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_city #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_county #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_country #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_postal_code #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_province #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_state #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_address_1 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_address_2 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_address_3 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_address_4 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_city #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_county #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_country #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_postal_code #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_province #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_state #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.custom #=> Hash
    #   resp.message_template.default_attributes.customer_profile_attributes.custom["MessageTemplateAttributeKey"] #=> String
    #   resp.message_template.default_attributes.custom_attributes #=> Hash
    #   resp.message_template.default_attributes.custom_attributes["MessageTemplateAttributeKey"] #=> String
    #   resp.message_template.attribute_types #=> Array
    #   resp.message_template.attribute_types[0] #=> String, one of "SYSTEM", "AGENT", "CUSTOMER_PROFILE", "CUSTOM"
    #   resp.message_template.message_template_content_sha_256 #=> String
    #   resp.message_template.tags #=> Hash
    #   resp.message_template.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateMessageTemplate AWS API Documentation
    #
    # @overload update_message_template(params = {})
    # @param [Hash] params ({})
    def update_message_template(params = {}, options = {})
      req = build_request(:update_message_template, params)
      req.send_request(options)
    end

    # Updates the Amazon Q in Connect message template metadata. Note that
    # any modification to the message template’s name, description and
    # grouping configuration will applied to the message template pointed by
    # the `$LATEST` qualifier and all available versions. Partial update is
    # supported. If any field is not supplied, it will remain unchanged for
    # the message template.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @option params [required, String] :message_template_id
    #   The identifier of the message template. Can be either the ID or the
    #   ARN. It cannot contain any qualifier.
    #
    # @option params [String] :name
    #   The name of the message template.
    #
    # @option params [String] :description
    #   The description of the message template.
    #
    # @option params [Types::GroupingConfiguration] :grouping_configuration
    #   The configuration information of the grouping of Amazon Q in Connect
    #   users.
    #
    # @return [Types::UpdateMessageTemplateMetadataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMessageTemplateMetadataResponse#message_template #message_template} => Types::MessageTemplateData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_message_template_metadata({
    #     knowledge_base_id: "UuidOrArn", # required
    #     message_template_id: "UuidOrArnOrEitherWithQualifier", # required
    #     name: "Name",
    #     description: "Description",
    #     grouping_configuration: {
    #       criteria: "GroupingCriteria",
    #       values: ["GroupingValue"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.message_template.message_template_arn #=> String
    #   resp.message_template.message_template_id #=> String
    #   resp.message_template.knowledge_base_arn #=> String
    #   resp.message_template.knowledge_base_id #=> String
    #   resp.message_template.name #=> String
    #   resp.message_template.channel_subtype #=> String, one of "EMAIL", "SMS"
    #   resp.message_template.created_time #=> Time
    #   resp.message_template.last_modified_time #=> Time
    #   resp.message_template.last_modified_by #=> String
    #   resp.message_template.content.email.subject #=> String
    #   resp.message_template.content.email.body.plain_text.content #=> String
    #   resp.message_template.content.email.body.html.content #=> String
    #   resp.message_template.content.email.headers #=> Array
    #   resp.message_template.content.email.headers[0].name #=> String
    #   resp.message_template.content.email.headers[0].value #=> String
    #   resp.message_template.content.sms.body.plain_text.content #=> String
    #   resp.message_template.description #=> String
    #   resp.message_template.language #=> String
    #   resp.message_template.grouping_configuration.criteria #=> String
    #   resp.message_template.grouping_configuration.values #=> Array
    #   resp.message_template.grouping_configuration.values[0] #=> String
    #   resp.message_template.default_attributes.system_attributes.name #=> String
    #   resp.message_template.default_attributes.system_attributes.customer_endpoint.address #=> String
    #   resp.message_template.default_attributes.system_attributes.system_endpoint.address #=> String
    #   resp.message_template.default_attributes.agent_attributes.first_name #=> String
    #   resp.message_template.default_attributes.agent_attributes.last_name #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.profile_id #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.profile_arn #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.first_name #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.middle_name #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.last_name #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.account_number #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.email_address #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.phone_number #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.additional_information #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.party_type #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.business_name #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.birth_date #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.gender #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mobile_phone_number #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.home_phone_number #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.business_phone_number #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.business_email_address #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.address1 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.address2 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.address3 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.address4 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.city #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.county #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.country #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.postal_code #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.province #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.state #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_address_1 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_address_2 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_address_3 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_address_4 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_city #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_county #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_country #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_postal_code #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_province #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.shipping_state #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_address_1 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_address_2 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_address_3 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_address_4 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_city #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_county #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_country #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_postal_code #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_province #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.mailing_state #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_address_1 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_address_2 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_address_3 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_address_4 #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_city #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_county #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_country #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_postal_code #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_province #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.billing_state #=> String
    #   resp.message_template.default_attributes.customer_profile_attributes.custom #=> Hash
    #   resp.message_template.default_attributes.customer_profile_attributes.custom["MessageTemplateAttributeKey"] #=> String
    #   resp.message_template.default_attributes.custom_attributes #=> Hash
    #   resp.message_template.default_attributes.custom_attributes["MessageTemplateAttributeKey"] #=> String
    #   resp.message_template.attribute_types #=> Array
    #   resp.message_template.attribute_types[0] #=> String, one of "SYSTEM", "AGENT", "CUSTOMER_PROFILE", "CUSTOM"
    #   resp.message_template.message_template_content_sha_256 #=> String
    #   resp.message_template.tags #=> Hash
    #   resp.message_template.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateMessageTemplateMetadata AWS API Documentation
    #
    # @overload update_message_template_metadata(params = {})
    # @param [Hash] params ({})
    def update_message_template_metadata(params = {}, options = {})
      req = build_request(:update_message_template_metadata, params)
      req.send_request(options)
    end

    # Updates an existing Amazon Q in Connect quick response.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @option params [required, String] :quick_response_id
    #   The identifier of the quick response.
    #
    # @option params [String] :name
    #   The name of the quick response.
    #
    # @option params [Types::QuickResponseDataProvider] :content
    #   The updated content of the quick response.
    #
    # @option params [String] :content_type
    #   The media type of the quick response content.
    #
    #   * Use `application/x.quickresponse;format=plain` for quick response
    #     written in plain text.
    #
    #   * Use `application/x.quickresponse;format=markdown` for quick response
    #     written in richtext.
    #
    # @option params [Types::GroupingConfiguration] :grouping_configuration
    #   The updated grouping configuration of the quick response.
    #
    # @option params [Boolean] :remove_grouping_configuration
    #   Whether to remove the grouping configuration of the quick response.
    #
    # @option params [String] :description
    #   The updated description of the quick response.
    #
    # @option params [Boolean] :remove_description
    #   Whether to remove the description from the quick response.
    #
    # @option params [String] :shortcut_key
    #   The shortcut key of the quick response. The value should be unique
    #   across the knowledge base.
    #
    # @option params [Boolean] :remove_shortcut_key
    #   Whether to remove the shortcut key of the quick response.
    #
    # @option params [Boolean] :is_active
    #   Whether the quick response is active.
    #
    # @option params [Array<String>] :channels
    #   The Amazon Connect contact channels this quick response applies to.
    #   The supported contact channel types include `Chat`.
    #
    # @option params [String] :language
    #   The language code value for the language in which the quick response
    #   is written. The supported language codes include `de_DE`, `en_US`,
    #   `es_ES`, `fr_FR`, `id_ID`, `it_IT`, `ja_JP`, `ko_KR`, `pt_BR`,
    #   `zh_CN`, `zh_TW`
    #
    # @return [Types::UpdateQuickResponseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateQuickResponseResponse#quick_response #quick_response} => Types::QuickResponseData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_quick_response({
    #     knowledge_base_id: "UuidOrArn", # required
    #     quick_response_id: "UuidOrArn", # required
    #     name: "QuickResponseName",
    #     content: {
    #       content: "QuickResponseContent",
    #     },
    #     content_type: "QuickResponseType",
    #     grouping_configuration: {
    #       criteria: "GroupingCriteria",
    #       values: ["GroupingValue"],
    #     },
    #     remove_grouping_configuration: false,
    #     description: "QuickResponseDescription",
    #     remove_description: false,
    #     shortcut_key: "ShortCutKey",
    #     remove_shortcut_key: false,
    #     is_active: false,
    #     channels: ["Channel"],
    #     language: "LanguageCode",
    #   })
    #
    # @example Response structure
    #
    #   resp.quick_response.quick_response_arn #=> String
    #   resp.quick_response.quick_response_id #=> String
    #   resp.quick_response.knowledge_base_arn #=> String
    #   resp.quick_response.knowledge_base_id #=> String
    #   resp.quick_response.name #=> String
    #   resp.quick_response.content_type #=> String
    #   resp.quick_response.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"
    #   resp.quick_response.created_time #=> Time
    #   resp.quick_response.last_modified_time #=> Time
    #   resp.quick_response.contents.plain_text.content #=> String
    #   resp.quick_response.contents.markdown.content #=> String
    #   resp.quick_response.description #=> String
    #   resp.quick_response.grouping_configuration.criteria #=> String
    #   resp.quick_response.grouping_configuration.values #=> Array
    #   resp.quick_response.grouping_configuration.values[0] #=> String
    #   resp.quick_response.shortcut_key #=> String
    #   resp.quick_response.last_modified_by #=> String
    #   resp.quick_response.is_active #=> Boolean
    #   resp.quick_response.channels #=> Array
    #   resp.quick_response.channels[0] #=> String
    #   resp.quick_response.language #=> String
    #   resp.quick_response.tags #=> Hash
    #   resp.quick_response.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateQuickResponse AWS API Documentation
    #
    # @overload update_quick_response(params = {})
    # @param [Hash] params ({})
    def update_quick_response(params = {}, options = {})
      req = build_request(:update_quick_response, params)
      req.send_request(options)
    end

    # Updates a session. A session is a contextual container used for
    # generating recommendations. Amazon Connect updates the existing Amazon
    # Q in Connect session for each contact on which Amazon Q in Connect is
    # enabled.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :session_id
    #   The identifier of the session. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #
    # @option params [String] :description
    #   The description.
    #
    # @option params [Types::TagFilter] :tag_filter
    #   An object that can be used to specify Tag conditions.
    #
    # @option params [Hash<String,Types::AIAgentConfigurationData>] :ai_agent_configuration
    #   The configuration of the AI Agents (mapped by AI Agent Type to AI
    #   Agent version) that should be used by Amazon Q in Connect for this
    #   Session.
    #
    # @return [Types::UpdateSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSessionResponse#session #session} => Types::SessionData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_session({
    #     assistant_id: "UuidOrArn", # required
    #     session_id: "UuidOrArn", # required
    #     description: "Description",
    #     tag_filter: {
    #       tag_condition: {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #       and_conditions: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue",
    #         },
    #       ],
    #       or_conditions: [
    #         {
    #           and_conditions: [
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue",
    #             },
    #           ],
    #           tag_condition: {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         },
    #       ],
    #     },
    #     ai_agent_configuration: {
    #       "MANUAL_SEARCH" => {
    #         ai_agent_id: "UuidWithQualifier", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.session.session_arn #=> String
    #   resp.session.session_id #=> String
    #   resp.session.name #=> String
    #   resp.session.description #=> String
    #   resp.session.tags #=> Hash
    #   resp.session.tags["TagKey"] #=> String
    #   resp.session.integration_configuration.topic_integration_arn #=> String
    #   resp.session.tag_filter.tag_condition.key #=> String
    #   resp.session.tag_filter.tag_condition.value #=> String
    #   resp.session.tag_filter.and_conditions #=> Array
    #   resp.session.tag_filter.and_conditions[0].key #=> String
    #   resp.session.tag_filter.and_conditions[0].value #=> String
    #   resp.session.tag_filter.or_conditions #=> Array
    #   resp.session.tag_filter.or_conditions[0].and_conditions #=> Array
    #   resp.session.tag_filter.or_conditions[0].and_conditions[0].key #=> String
    #   resp.session.tag_filter.or_conditions[0].and_conditions[0].value #=> String
    #   resp.session.tag_filter.or_conditions[0].tag_condition.key #=> String
    #   resp.session.tag_filter.or_conditions[0].tag_condition.value #=> String
    #   resp.session.ai_agent_configuration #=> Hash
    #   resp.session.ai_agent_configuration["AIAgentType"].ai_agent_id #=> String
    #   resp.session.origin #=> String, one of "SYSTEM", "CUSTOMER"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateSession AWS API Documentation
    #
    # @overload update_session(params = {})
    # @param [Hash] params ({})
    def update_session(params = {}, options = {})
      req = build_request(:update_session, params)
      req.send_request(options)
    end

    # Updates the data stored on an Amazon Q in Connect Session.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :session_id
    #   The identifier of the session. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #
    # @option params [String] :namespace
    #   The namespace into which the session data is stored. Supported
    #   namespaces are: Custom
    #
    # @option params [required, Array<Types::RuntimeSessionData>] :data
    #   The data stored on the Amazon Q in Connect Session.
    #
    # @return [Types::UpdateSessionDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSessionDataResponse#session_arn #session_arn} => String
    #   * {Types::UpdateSessionDataResponse#session_id #session_id} => String
    #   * {Types::UpdateSessionDataResponse#namespace #namespace} => String
    #   * {Types::UpdateSessionDataResponse#data #data} => Array&lt;Types::RuntimeSessionData&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_session_data({
    #     assistant_id: "UuidOrArn", # required
    #     session_id: "UuidOrArn", # required
    #     namespace: "Custom", # accepts Custom
    #     data: [ # required
    #       {
    #         key: "NonEmptySensitiveString", # required
    #         value: { # required
    #           string_value: "NonEmptySensitiveString",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.session_arn #=> String
    #   resp.session_id #=> String
    #   resp.namespace #=> String, one of "Custom"
    #   resp.data #=> Array
    #   resp.data[0].key #=> String
    #   resp.data[0].value.string_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateSessionData AWS API Documentation
    #
    # @overload update_session_data(params = {})
    # @param [Hash] params ({})
    def update_session_data(params = {}, options = {})
      req = build_request(:update_session_data, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::QConnect')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-qconnect'
      context[:gem_version] = '1.36.0'
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
