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

module Aws::NovaAct
  # An API client for NovaAct.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::NovaAct::Client.new(
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

    @identifier = :novaact

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
    add_plugin(Aws::NovaAct::Plugins::Endpoints)

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
    #   @option options [Aws::NovaAct::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::NovaAct::EndpointParameters`.
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

    # Creates a new AI task (act) within a session that can interact with
    # tools and perform specific actions.
    #
    # @option params [required, String] :workflow_definition_name
    #   The name of the workflow definition containing the session.
    #
    # @option params [required, String] :workflow_run_id
    #   The unique identifier of the workflow run containing the session.
    #
    # @option params [required, String] :session_id
    #   The unique identifier of the session to create the act in.
    #
    # @option params [required, String] :task
    #   The task description that defines what the act should accomplish.
    #
    # @option params [Array<Types::ToolSpec>] :tool_specs
    #   A list of tool specifications that the act can invoke to complete its
    #   task.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateActResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateActResponse#act_id #act_id} => String
    #   * {Types::CreateActResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_act({
    #     workflow_definition_name: "WorkflowDefinitionName", # required
    #     workflow_run_id: "UuidString", # required
    #     session_id: "UuidString", # required
    #     task: "Task", # required
    #     tool_specs: [
    #       {
    #         name: "ToolName", # required
    #         description: "ToolDescription", # required
    #         input_schema: { # required
    #           json: {
    #           },
    #         },
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.act_id #=> String
    #   resp.status #=> String, one of "RUNNING", "PENDING_CLIENT_ACTION", "PENDING_HUMAN_ACTION", "SUCCEEDED", "FAILED", "TIMED_OUT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/CreateAct AWS API Documentation
    #
    # @overload create_act(params = {})
    # @param [Hash] params ({})
    def create_act(params = {}, options = {})
      req = build_request(:create_act, params)
      req.send_request(options)
    end

    # Creates a new session context within a workflow run to manage
    # conversation state and acts.
    #
    # @option params [required, String] :workflow_definition_name
    #   The name of the workflow definition containing the workflow run.
    #
    # @option params [required, String] :workflow_run_id
    #   The unique identifier of the workflow run to create the session in.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSessionResponse#session_id #session_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_session({
    #     workflow_definition_name: "WorkflowDefinitionName", # required
    #     workflow_run_id: "UuidString", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.session_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/CreateSession AWS API Documentation
    #
    # @overload create_session(params = {})
    # @param [Hash] params ({})
    def create_session(params = {}, options = {})
      req = build_request(:create_session, params)
      req.send_request(options)
    end

    # Creates a new workflow definition template that can be used to execute
    # multiple workflow runs.
    #
    # @option params [required, String] :name
    #   The name of the workflow definition. Must be unique within your
    #   account and region.
    #
    # @option params [String] :description
    #   An optional description of the workflow definition's purpose and
    #   functionality.
    #
    # @option params [Types::WorkflowExportConfig] :export_config
    #   Configuration for exporting workflow execution data to Amazon Simple
    #   Storage Service.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateWorkflowDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkflowDefinitionResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workflow_definition({
    #     name: "WorkflowDefinitionName", # required
    #     description: "WorkflowDescription",
    #     export_config: {
    #       s3_bucket_name: "S3BucketName", # required
    #       s3_key_prefix: "S3KeyPrefix",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "ACTIVE", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/CreateWorkflowDefinition AWS API Documentation
    #
    # @overload create_workflow_definition(params = {})
    # @param [Hash] params ({})
    def create_workflow_definition(params = {}, options = {})
      req = build_request(:create_workflow_definition, params)
      req.send_request(options)
    end

    # Creates a new execution instance of a workflow definition with
    # specified parameters.
    #
    # @option params [required, String] :workflow_definition_name
    #   The name of the workflow definition to execute.
    #
    # @option params [required, String] :model_id
    #   The ID of the AI model to use for workflow execution.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :log_group_name
    #   The CloudWatch log group name for storing workflow execution logs.
    #
    # @option params [required, Types::ClientInfo] :client_info
    #   Information about the client making the request, including
    #   compatibility version and SDK version.
    #
    # @return [Types::CreateWorkflowRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkflowRunResponse#workflow_run_id #workflow_run_id} => String
    #   * {Types::CreateWorkflowRunResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workflow_run({
    #     workflow_definition_name: "WorkflowDefinitionName", # required
    #     model_id: "ModelId", # required
    #     client_token: "ClientToken",
    #     log_group_name: "CloudWatchLogGroupName",
    #     client_info: { # required
    #       compatibility_version: 1, # required
    #       sdk_version: "NonBlankString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_run_id #=> String
    #   resp.status #=> String, one of "RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/CreateWorkflowRun AWS API Documentation
    #
    # @overload create_workflow_run(params = {})
    # @param [Hash] params ({})
    def create_workflow_run(params = {}, options = {})
      req = build_request(:create_workflow_run, params)
      req.send_request(options)
    end

    # Deletes a workflow definition and all associated resources. This
    # operation cannot be undone.
    #
    # @option params [required, String] :workflow_definition_name
    #   The name of the workflow definition to delete.
    #
    # @return [Types::DeleteWorkflowDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteWorkflowDefinitionResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workflow_definition({
    #     workflow_definition_name: "WorkflowDefinitionName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "ACTIVE", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/DeleteWorkflowDefinition AWS API Documentation
    #
    # @overload delete_workflow_definition(params = {})
    # @param [Hash] params ({})
    def delete_workflow_definition(params = {}, options = {})
      req = build_request(:delete_workflow_definition, params)
      req.send_request(options)
    end

    # Terminates and cleans up a workflow run, stopping all associated acts
    # and sessions.
    #
    # @option params [required, String] :workflow_definition_name
    #   The name of the workflow definition containing the workflow run.
    #
    # @option params [required, String] :workflow_run_id
    #   The unique identifier of the workflow run to delete.
    #
    # @return [Types::DeleteWorkflowRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteWorkflowRunResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workflow_run({
    #     workflow_definition_name: "WorkflowDefinitionName", # required
    #     workflow_run_id: "UuidString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/DeleteWorkflowRun AWS API Documentation
    #
    # @overload delete_workflow_run(params = {})
    # @param [Hash] params ({})
    def delete_workflow_run(params = {}, options = {})
      req = build_request(:delete_workflow_run, params)
      req.send_request(options)
    end

    # Retrieves the details and configuration of a specific workflow
    # definition.
    #
    # @option params [required, String] :workflow_definition_name
    #   The name of the workflow definition to retrieve.
    #
    # @return [Types::GetWorkflowDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkflowDefinitionResponse#name #name} => String
    #   * {Types::GetWorkflowDefinitionResponse#arn #arn} => String
    #   * {Types::GetWorkflowDefinitionResponse#created_at #created_at} => Time
    #   * {Types::GetWorkflowDefinitionResponse#description #description} => String
    #   * {Types::GetWorkflowDefinitionResponse#export_config #export_config} => Types::WorkflowExportConfig
    #   * {Types::GetWorkflowDefinitionResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow_definition({
    #     workflow_definition_name: "WorkflowDefinitionName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.created_at #=> Time
    #   resp.description #=> String
    #   resp.export_config.s3_bucket_name #=> String
    #   resp.export_config.s3_key_prefix #=> String
    #   resp.status #=> String, one of "ACTIVE", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/GetWorkflowDefinition AWS API Documentation
    #
    # @overload get_workflow_definition(params = {})
    # @param [Hash] params ({})
    def get_workflow_definition(params = {}, options = {})
      req = build_request(:get_workflow_definition, params)
      req.send_request(options)
    end

    # Retrieves the current state, configuration, and execution details of a
    # workflow run.
    #
    # @option params [required, String] :workflow_definition_name
    #   The name of the workflow definition containing the workflow run.
    #
    # @option params [required, String] :workflow_run_id
    #   The unique identifier of the workflow run to retrieve.
    #
    # @return [Types::GetWorkflowRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkflowRunResponse#workflow_run_arn #workflow_run_arn} => String
    #   * {Types::GetWorkflowRunResponse#workflow_run_id #workflow_run_id} => String
    #   * {Types::GetWorkflowRunResponse#status #status} => String
    #   * {Types::GetWorkflowRunResponse#started_at #started_at} => Time
    #   * {Types::GetWorkflowRunResponse#ended_at #ended_at} => Time
    #   * {Types::GetWorkflowRunResponse#model_id #model_id} => String
    #   * {Types::GetWorkflowRunResponse#log_group_name #log_group_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow_run({
    #     workflow_definition_name: "WorkflowDefinitionName", # required
    #     workflow_run_id: "UuidString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_run_arn #=> String
    #   resp.workflow_run_id #=> String
    #   resp.status #=> String, one of "RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT", "DELETING"
    #   resp.started_at #=> Time
    #   resp.ended_at #=> Time
    #   resp.model_id #=> String
    #   resp.log_group_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/GetWorkflowRun AWS API Documentation
    #
    # @overload get_workflow_run(params = {})
    # @param [Hash] params ({})
    def get_workflow_run(params = {}, options = {})
      req = build_request(:get_workflow_run, params)
      req.send_request(options)
    end

    # Executes the next step of an act, processing tool call results and
    # returning new tool calls if needed.
    #
    # @option params [required, String] :workflow_definition_name
    #   The name of the workflow definition containing the act.
    #
    # @option params [required, String] :workflow_run_id
    #   The unique identifier of the workflow run containing the act.
    #
    # @option params [required, String] :session_id
    #   The unique identifier of the session containing the act.
    #
    # @option params [required, String] :act_id
    #   The unique identifier of the act to invoke the next step for.
    #
    # @option params [required, Array<Types::CallResult>] :call_results
    #   The results from previous tool calls that the act requested.
    #
    # @option params [String] :previous_step_id
    #   The identifier of the previous step, used for tracking execution flow.
    #
    # @return [Types::InvokeActStepResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvokeActStepResponse#calls #calls} => Array&lt;Types::Call&gt;
    #   * {Types::InvokeActStepResponse#step_id #step_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke_act_step({
    #     workflow_definition_name: "WorkflowDefinitionName", # required
    #     workflow_run_id: "UuidString", # required
    #     session_id: "UuidString", # required
    #     act_id: "UuidString", # required
    #     call_results: [ # required
    #       {
    #         call_id: "CallId",
    #         content: [ # required
    #           {
    #             text: "String",
    #           },
    #         ],
    #       },
    #     ],
    #     previous_step_id: "UuidString",
    #   })
    #
    # @example Response structure
    #
    #   resp.calls #=> Array
    #   resp.calls[0].call_id #=> String
    #   resp.calls[0].name #=> String
    #   resp.step_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/InvokeActStep AWS API Documentation
    #
    # @overload invoke_act_step(params = {})
    # @param [Hash] params ({})
    def invoke_act_step(params = {}, options = {})
      req = build_request(:invoke_act_step, params)
      req.send_request(options)
    end

    # Lists all acts within a specific session with their current status and
    # execution details.
    #
    # @option params [required, String] :workflow_definition_name
    #   The name of the workflow definition containing the session.
    #
    # @option params [String] :workflow_run_id
    #   The unique identifier of the workflow run containing the session.
    #
    # @option params [String] :session_id
    #   The unique identifier of the session to list acts for.
    #
    # @option params [Integer] :max_results
    #   The maximum number of acts to return in a single response.
    #
    # @option params [String] :next_token
    #   The token for retrieving the next page of results.
    #
    # @option params [String] :sort_order
    #   The sort order for the returned acts (ascending or descending).
    #
    # @return [Types::ListActsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListActsResponse#act_summaries #act_summaries} => Array&lt;Types::ActSummary&gt;
    #   * {Types::ListActsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_acts({
    #     workflow_definition_name: "WorkflowDefinitionName", # required
    #     workflow_run_id: "UuidString",
    #     session_id: "UuidString",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #   })
    #
    # @example Response structure
    #
    #   resp.act_summaries #=> Array
    #   resp.act_summaries[0].workflow_run_id #=> String
    #   resp.act_summaries[0].session_id #=> String
    #   resp.act_summaries[0].act_id #=> String
    #   resp.act_summaries[0].status #=> String, one of "RUNNING", "PENDING_CLIENT_ACTION", "PENDING_HUMAN_ACTION", "SUCCEEDED", "FAILED", "TIMED_OUT"
    #   resp.act_summaries[0].started_at #=> Time
    #   resp.act_summaries[0].ended_at #=> Time
    #   resp.act_summaries[0].trace_location.location_type #=> String, one of "S3"
    #   resp.act_summaries[0].trace_location.location #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/ListActs AWS API Documentation
    #
    # @overload list_acts(params = {})
    # @param [Hash] params ({})
    def list_acts(params = {}, options = {})
      req = build_request(:list_acts, params)
      req.send_request(options)
    end

    # Lists all available AI models that can be used for workflow execution,
    # including their status and compatibility information.
    #
    # @option params [required, Integer] :client_compatibility_version
    #   The client compatibility version to filter models by compatibility.
    #
    # @return [Types::ListModelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListModelsResponse#model_summaries #model_summaries} => Array&lt;Types::ModelSummary&gt;
    #   * {Types::ListModelsResponse#model_aliases #model_aliases} => Array&lt;Types::ModelAlias&gt;
    #   * {Types::ListModelsResponse#compatibility_information #compatibility_information} => Types::CompatibilityInformation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_models({
    #     client_compatibility_version: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.model_summaries #=> Array
    #   resp.model_summaries[0].model_id #=> String
    #   resp.model_summaries[0].model_lifecycle.status #=> String, one of "ACTIVE", "LEGACY", "DEPRECATED", "PREVIEW"
    #   resp.model_summaries[0].minimum_compatibility_version #=> Integer
    #   resp.model_aliases #=> Array
    #   resp.model_aliases[0].alias_name #=> String
    #   resp.model_aliases[0].latest_model_id #=> String
    #   resp.model_aliases[0].resolved_model_id #=> String
    #   resp.compatibility_information.client_compatibility_version #=> Integer
    #   resp.compatibility_information.supported_model_ids #=> Array
    #   resp.compatibility_information.supported_model_ids[0] #=> String
    #   resp.compatibility_information.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/ListModels AWS API Documentation
    #
    # @overload list_models(params = {})
    # @param [Hash] params ({})
    def list_models(params = {}, options = {})
      req = build_request(:list_models, params)
      req.send_request(options)
    end

    # Lists all sessions within a specific workflow run.
    #
    # @option params [required, String] :workflow_definition_name
    #   The name of the workflow definition containing the workflow run.
    #
    # @option params [required, String] :workflow_run_id
    #   The unique identifier of the workflow run to list sessions for.
    #
    # @option params [Integer] :max_results
    #   The maximum number of sessions to return in a single response.
    #
    # @option params [String] :next_token
    #   The token for retrieving the next page of results.
    #
    # @option params [String] :sort_order
    #   The sort order for the returned sessions (ascending or descending).
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
    #     workflow_definition_name: "WorkflowDefinitionName", # required
    #     workflow_run_id: "UuidString", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #   })
    #
    # @example Response structure
    #
    #   resp.session_summaries #=> Array
    #   resp.session_summaries[0].session_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/ListSessions AWS API Documentation
    #
    # @overload list_sessions(params = {})
    # @param [Hash] params ({})
    def list_sessions(params = {}, options = {})
      req = build_request(:list_sessions, params)
      req.send_request(options)
    end

    # Lists all workflow definitions in your account with optional filtering
    # and pagination.
    #
    # @option params [Integer] :max_results
    #   The maximum number of workflow definitions to return in a single
    #   response.
    #
    # @option params [String] :next_token
    #   The token for retrieving the next page of results.
    #
    # @option params [String] :sort_order
    #   The sort order for the returned workflow definitions (ascending or
    #   descending).
    #
    # @return [Types::ListWorkflowDefinitionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkflowDefinitionsResponse#workflow_definition_summaries #workflow_definition_summaries} => Array&lt;Types::WorkflowDefinitionSummary&gt;
    #   * {Types::ListWorkflowDefinitionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workflow_definitions({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_definition_summaries #=> Array
    #   resp.workflow_definition_summaries[0].workflow_definition_arn #=> String
    #   resp.workflow_definition_summaries[0].workflow_definition_name #=> String
    #   resp.workflow_definition_summaries[0].created_at #=> Time
    #   resp.workflow_definition_summaries[0].status #=> String, one of "ACTIVE", "DELETING"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/ListWorkflowDefinitions AWS API Documentation
    #
    # @overload list_workflow_definitions(params = {})
    # @param [Hash] params ({})
    def list_workflow_definitions(params = {}, options = {})
      req = build_request(:list_workflow_definitions, params)
      req.send_request(options)
    end

    # Lists all workflow runs for a specific workflow definition with
    # optional filtering and pagination.
    #
    # @option params [required, String] :workflow_definition_name
    #   The name of the workflow definition to list workflow runs for.
    #
    # @option params [Integer] :max_results
    #   The maximum number of workflow runs to return in a single response.
    #
    # @option params [String] :next_token
    #   The token for retrieving the next page of results.
    #
    # @option params [String] :sort_order
    #   The sort order for the returned workflow runs (ascending or
    #   descending).
    #
    # @return [Types::ListWorkflowRunsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkflowRunsResponse#workflow_run_summaries #workflow_run_summaries} => Array&lt;Types::WorkflowRunSummary&gt;
    #   * {Types::ListWorkflowRunsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workflow_runs({
    #     workflow_definition_name: "WorkflowDefinitionName", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_run_summaries #=> Array
    #   resp.workflow_run_summaries[0].workflow_run_arn #=> String
    #   resp.workflow_run_summaries[0].workflow_run_id #=> String
    #   resp.workflow_run_summaries[0].status #=> String, one of "RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT", "DELETING"
    #   resp.workflow_run_summaries[0].started_at #=> Time
    #   resp.workflow_run_summaries[0].ended_at #=> Time
    #   resp.workflow_run_summaries[0].trace_location.location_type #=> String, one of "S3"
    #   resp.workflow_run_summaries[0].trace_location.location #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/ListWorkflowRuns AWS API Documentation
    #
    # @overload list_workflow_runs(params = {})
    # @param [Hash] params ({})
    def list_workflow_runs(params = {}, options = {})
      req = build_request(:list_workflow_runs, params)
      req.send_request(options)
    end

    # Updates an existing act's configuration, status, or error
    # information.
    #
    # @option params [required, String] :workflow_definition_name
    #   The name of the workflow definition containing the act.
    #
    # @option params [required, String] :workflow_run_id
    #   The unique identifier of the workflow run containing the act.
    #
    # @option params [required, String] :session_id
    #   The unique identifier of the session containing the act.
    #
    # @option params [required, String] :act_id
    #   The unique identifier of the act to update.
    #
    # @option params [required, String] :status
    #   The new status to set for the act.
    #
    # @option params [Types::ActError] :error
    #   Error information to associate with the act, if applicable.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_act({
    #     workflow_definition_name: "WorkflowDefinitionName", # required
    #     workflow_run_id: "UuidString", # required
    #     session_id: "UuidString", # required
    #     act_id: "UuidString", # required
    #     status: "RUNNING", # required, accepts RUNNING, PENDING_CLIENT_ACTION, PENDING_HUMAN_ACTION, SUCCEEDED, FAILED, TIMED_OUT
    #     error: {
    #       message: "ActErrorMessageString", # required
    #       type: "ActErrorTypeString",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/UpdateAct AWS API Documentation
    #
    # @overload update_act(params = {})
    # @param [Hash] params ({})
    def update_act(params = {}, options = {})
      req = build_request(:update_act, params)
      req.send_request(options)
    end

    # Updates the configuration or state of an active workflow run.
    #
    # @option params [required, String] :workflow_definition_name
    #   The name of the workflow definition containing the workflow run.
    #
    # @option params [required, String] :workflow_run_id
    #   The unique identifier of the workflow run to update.
    #
    # @option params [required, String] :status
    #   The new status to set for the workflow run.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workflow_run({
    #     workflow_definition_name: "WorkflowDefinitionName", # required
    #     workflow_run_id: "UuidString", # required
    #     status: "RUNNING", # required, accepts RUNNING, SUCCEEDED, FAILED, TIMED_OUT, DELETING
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nova-act-2025-08-22/UpdateWorkflowRun AWS API Documentation
    #
    # @overload update_workflow_run(params = {})
    # @param [Hash] params ({})
    def update_workflow_run(params = {}, options = {})
      req = build_request(:update_workflow_run, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::NovaAct')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-novaact'
      context[:gem_version] = '1.0.0'
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
