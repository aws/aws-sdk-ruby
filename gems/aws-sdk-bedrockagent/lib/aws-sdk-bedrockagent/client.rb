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

module Aws::BedrockAgent
  # An API client for BedrockAgent.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::BedrockAgent::Client.new(
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

    @identifier = :bedrockagent

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
    add_plugin(Aws::BedrockAgent::Plugins::Endpoints)

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
    #   @option options [Aws::BedrockAgent::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::BedrockAgent::EndpointParameters`.
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

    # Makes an agent a collaborator for another agent.
    #
    # @option params [required, String] :agent_id
    #   The agent's ID.
    #
    # @option params [required, String] :agent_version
    #   An agent version.
    #
    # @option params [required, Types::AgentDescriptor] :agent_descriptor
    #   The alias of the collaborator agent.
    #
    # @option params [required, String] :collaborator_name
    #   A name for the collaborator.
    #
    # @option params [required, String] :collaboration_instruction
    #   Instruction for the collaborator.
    #
    # @option params [String] :relay_conversation_history
    #   A relay conversation history for the collaborator.
    #
    # @option params [String] :client_token
    #   A client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::AssociateAgentCollaboratorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateAgentCollaboratorResponse#agent_collaborator #agent_collaborator} => Types::AgentCollaborator
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_agent_collaborator({
    #     agent_id: "Id", # required
    #     agent_version: "DraftVersion", # required
    #     agent_descriptor: { # required
    #       alias_arn: "AgentAliasArn",
    #     },
    #     collaborator_name: "Name", # required
    #     collaboration_instruction: "CollaborationInstruction", # required
    #     relay_conversation_history: "TO_COLLABORATOR", # accepts TO_COLLABORATOR, DISABLED
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_collaborator.agent_id #=> String
    #   resp.agent_collaborator.agent_version #=> String
    #   resp.agent_collaborator.agent_descriptor.alias_arn #=> String
    #   resp.agent_collaborator.collaborator_id #=> String
    #   resp.agent_collaborator.collaboration_instruction #=> String
    #   resp.agent_collaborator.collaborator_name #=> String
    #   resp.agent_collaborator.created_at #=> Time
    #   resp.agent_collaborator.last_updated_at #=> Time
    #   resp.agent_collaborator.relay_conversation_history #=> String, one of "TO_COLLABORATOR", "DISABLED"
    #   resp.agent_collaborator.client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AssociateAgentCollaborator AWS API Documentation
    #
    # @overload associate_agent_collaborator(params = {})
    # @param [Hash] params ({})
    def associate_agent_collaborator(params = {}, options = {})
      req = build_request(:associate_agent_collaborator, params)
      req.send_request(options)
    end

    # Associates a knowledge base with an agent. If a knowledge base is
    # associated and its `indexState` is set to `Enabled`, the agent queries
    # the knowledge base for information to augment its response to the
    # user.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent with which you want to associate
    #   the knowledge base.
    #
    # @option params [required, String] :agent_version
    #   The version of the agent with which you want to associate the
    #   knowledge base.
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base to associate with the
    #   agent.
    #
    # @option params [required, String] :description
    #   A description of what the agent should use the knowledge base for.
    #
    # @option params [String] :knowledge_base_state
    #   Specifies whether to use the knowledge base or not when sending an
    #   [InvokeAgent][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html
    #
    # @return [Types::AssociateAgentKnowledgeBaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateAgentKnowledgeBaseResponse#agent_knowledge_base #agent_knowledge_base} => Types::AgentKnowledgeBase
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_agent_knowledge_base({
    #     agent_id: "Id", # required
    #     agent_version: "DraftVersion", # required
    #     knowledge_base_id: "Id", # required
    #     description: "Description", # required
    #     knowledge_base_state: "ENABLED", # accepts ENABLED, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_knowledge_base.agent_id #=> String
    #   resp.agent_knowledge_base.agent_version #=> String
    #   resp.agent_knowledge_base.knowledge_base_id #=> String
    #   resp.agent_knowledge_base.description #=> String
    #   resp.agent_knowledge_base.created_at #=> Time
    #   resp.agent_knowledge_base.updated_at #=> Time
    #   resp.agent_knowledge_base.knowledge_base_state #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AssociateAgentKnowledgeBase AWS API Documentation
    #
    # @overload associate_agent_knowledge_base(params = {})
    # @param [Hash] params ({})
    def associate_agent_knowledge_base(params = {}, options = {})
      req = build_request(:associate_agent_knowledge_base, params)
      req.send_request(options)
    end

    # Creates an agent that orchestrates interactions between foundation
    # models, data sources, software applications, user conversations, and
    # APIs to carry out tasks to help customers.
    #
    # * Specify the following fields for security purposes.
    #
    #   * `agentResourceRoleArn` – The Amazon Resource Name (ARN) of the
    #     role with permissions to invoke API operations on an agent.
    #
    #   * (Optional) `customerEncryptionKeyArn` – The Amazon Resource Name
    #     (ARN) of a KMS key to encrypt the creation of the agent.
    #
    #   * (Optional) `idleSessionTTLinSeconds` – Specify the number of
    #     seconds for which the agent should maintain session information.
    #     After this time expires, the subsequent `InvokeAgent` request
    #     begins a new session.
    # * To enable your agent to retain conversational context across
    #   multiple sessions, include a `memoryConfiguration` object. For more
    #   information, see [Configure memory][1].
    #
    # * To override the default prompt behavior for agent orchestration and
    #   to use advanced prompts, include a `promptOverrideConfiguration`
    #   object. For more information, see [Advanced prompts][2].
    #
    # * If your agent fails to be created, the response returns a list of
    #   `failureReasons` alongside a list of `recommendedActions` for you to
    #   troubleshoot.
    #
    # * The agent instructions will not be honored if your agent has only
    #   one knowledge base, uses default prompts, has no action group, and
    #   user input is disabled.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-configure-memory.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html
    #
    # @option params [required, String] :agent_name
    #   A name for the agent that you create.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [String] :instruction
    #   Instructions that tell the agent what it should do and how it should
    #   interact with users.
    #
    # @option params [String] :foundation_model
    #   The identifier for the model that you want to be used for
    #   orchestration by the agent you create.
    #
    #   The `modelId` to provide depends on the type of model or throughput
    #   that you use:
    #
    #   * If you use a base model, specify the model ID or its ARN. For a list
    #     of model IDs for base models, see [Amazon Bedrock base model IDs
    #     (on-demand throughput)][1] in the Amazon Bedrock User Guide.
    #
    #   * If you use an inference profile, specify the inference profile ID or
    #     its ARN. For a list of inference profile IDs, see [Supported Regions
    #     and models for cross-region inference][2] in the Amazon Bedrock User
    #     Guide.
    #
    #   * If you use a provisioned model, specify the ARN of the Provisioned
    #     Throughput. For more information, see [Run inference using a
    #     Provisioned Throughput][3] in the Amazon Bedrock User Guide.
    #
    #   * If you use a custom model, first purchase Provisioned Throughput for
    #     it. Then specify the ARN of the resulting provisioned model. For
    #     more information, see [Use a custom model in Amazon Bedrock][4] in
    #     the Amazon Bedrock User Guide.
    #
    #   * If you use an [imported model][5], specify the ARN of the imported
    #     model. You can get the model ARN from a successful call to
    #     [CreateModelImportJob][6] or from the Imported models page in the
    #     Amazon Bedrock console.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html
    #   [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html
    #   [4]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html
    #   [5]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html
    #   [6]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateModelImportJob.html
    #
    # @option params [String] :description
    #   A description of the agent.
    #
    # @option params [String] :orchestration_type
    #   Specifies the type of orchestration strategy for the agent. This is
    #   set to `DEFAULT` orchestration type, by default.
    #
    # @option params [Types::CustomOrchestration] :custom_orchestration
    #   Contains details of the custom orchestration configured for the agent.
    #
    # @option params [Integer] :idle_session_ttl_in_seconds
    #   The number of seconds for which Amazon Bedrock keeps information about
    #   a user's conversation with the agent.
    #
    #   A user interaction remains active for the amount of time specified. If
    #   no conversation occurs during this time, the session expires and
    #   Amazon Bedrock deletes any data provided before the timeout.
    #
    # @option params [String] :agent_resource_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role with permissions to
    #   invoke API operations on the agent.
    #
    # @option params [String] :customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key with which to encrypt
    #   the agent.
    #
    # @option params [Hash<String,String>] :tags
    #   Any tags that you want to attach to the agent.
    #
    # @option params [Types::PromptOverrideConfiguration] :prompt_override_configuration
    #   Contains configurations to override prompts in different parts of an
    #   agent sequence. For more information, see [Advanced prompts][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html
    #
    # @option params [Types::GuardrailConfiguration] :guardrail_configuration
    #   The unique Guardrail configuration assigned to the agent when it is
    #   created.
    #
    # @option params [Types::MemoryConfiguration] :memory_configuration
    #   Contains the details of the memory configured for the agent.
    #
    # @option params [String] :agent_collaboration
    #   The agent's collaboration role.
    #
    # @return [Types::CreateAgentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAgentResponse#agent #agent} => Types::Agent
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_agent({
    #     agent_name: "Name", # required
    #     client_token: "ClientToken",
    #     instruction: "Instruction",
    #     foundation_model: "ModelIdentifier",
    #     description: "Description",
    #     orchestration_type: "DEFAULT", # accepts DEFAULT, CUSTOM_ORCHESTRATION
    #     custom_orchestration: {
    #       executor: {
    #         lambda: "LambdaArn",
    #       },
    #     },
    #     idle_session_ttl_in_seconds: 1,
    #     agent_resource_role_arn: "AgentRoleArn",
    #     customer_encryption_key_arn: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     prompt_override_configuration: {
    #       prompt_configurations: [ # required
    #         {
    #           prompt_type: "PRE_PROCESSING", # accepts PRE_PROCESSING, ORCHESTRATION, POST_PROCESSING, KNOWLEDGE_BASE_RESPONSE_GENERATION, MEMORY_SUMMARIZATION
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
    #       override_lambda: "LambdaArn",
    #     },
    #     guardrail_configuration: {
    #       guardrail_identifier: "GuardrailIdentifier",
    #       guardrail_version: "GuardrailVersion",
    #     },
    #     memory_configuration: {
    #       enabled_memory_types: ["SESSION_SUMMARY"], # required, accepts SESSION_SUMMARY
    #       storage_days: 1,
    #       session_summary_configuration: {
    #         max_recent_sessions: 1,
    #       },
    #     },
    #     agent_collaboration: "SUPERVISOR", # accepts SUPERVISOR, SUPERVISOR_ROUTER, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.agent.agent_id #=> String
    #   resp.agent.agent_name #=> String
    #   resp.agent.agent_arn #=> String
    #   resp.agent.agent_version #=> String
    #   resp.agent.client_token #=> String
    #   resp.agent.instruction #=> String
    #   resp.agent.agent_status #=> String, one of "CREATING", "PREPARING", "PREPARED", "NOT_PREPARED", "DELETING", "FAILED", "VERSIONING", "UPDATING"
    #   resp.agent.foundation_model #=> String
    #   resp.agent.description #=> String
    #   resp.agent.orchestration_type #=> String, one of "DEFAULT", "CUSTOM_ORCHESTRATION"
    #   resp.agent.custom_orchestration.executor.lambda #=> String
    #   resp.agent.idle_session_ttl_in_seconds #=> Integer
    #   resp.agent.agent_resource_role_arn #=> String
    #   resp.agent.customer_encryption_key_arn #=> String
    #   resp.agent.created_at #=> Time
    #   resp.agent.updated_at #=> Time
    #   resp.agent.prepared_at #=> Time
    #   resp.agent.failure_reasons #=> Array
    #   resp.agent.failure_reasons[0] #=> String
    #   resp.agent.recommended_actions #=> Array
    #   resp.agent.recommended_actions[0] #=> String
    #   resp.agent.prompt_override_configuration.prompt_configurations #=> Array
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].prompt_type #=> String, one of "PRE_PROCESSING", "ORCHESTRATION", "POST_PROCESSING", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "MEMORY_SUMMARIZATION"
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].prompt_creation_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].prompt_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].base_prompt_template #=> String
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.temperature #=> Float
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.top_p #=> Float
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.top_k #=> Integer
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.maximum_length #=> Integer
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.stop_sequences #=> Array
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.stop_sequences[0] #=> String
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].parser_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].foundation_model #=> String
    #   resp.agent.prompt_override_configuration.override_lambda #=> String
    #   resp.agent.guardrail_configuration.guardrail_identifier #=> String
    #   resp.agent.guardrail_configuration.guardrail_version #=> String
    #   resp.agent.memory_configuration.enabled_memory_types #=> Array
    #   resp.agent.memory_configuration.enabled_memory_types[0] #=> String, one of "SESSION_SUMMARY"
    #   resp.agent.memory_configuration.storage_days #=> Integer
    #   resp.agent.memory_configuration.session_summary_configuration.max_recent_sessions #=> Integer
    #   resp.agent.agent_collaboration #=> String, one of "SUPERVISOR", "SUPERVISOR_ROUTER", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateAgent AWS API Documentation
    #
    # @overload create_agent(params = {})
    # @param [Hash] params ({})
    def create_agent(params = {}, options = {})
      req = build_request(:create_agent, params)
      req.send_request(options)
    end

    # Creates an action group for an agent. An action group represents the
    # actions that an agent can carry out for the customer by defining the
    # APIs that an agent can call and the logic for calling them.
    #
    # To allow your agent to request the user for additional information
    # when trying to complete a task, add an action group with the
    # `parentActionGroupSignature` field set to `AMAZON.UserInput`.
    #
    # To allow your agent to generate, run, and troubleshoot code when
    # trying to complete a task, add an action group with the
    # `parentActionGroupSignature` field set to `AMAZON.CodeInterpreter`.
    #
    # You must leave the `description`, `apiSchema`, and
    # `actionGroupExecutor` fields blank for this action group. During
    # orchestration, if your agent determines that it needs to invoke an API
    # in an action group, but doesn't have enough information to complete
    # the API request, it will invoke this action group instead and return
    # an [Observation][1] reprompting the user for more information.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Observation.html
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent for which to create the action
    #   group.
    #
    # @option params [required, String] :agent_version
    #   The version of the agent for which to create the action group.
    #
    # @option params [required, String] :action_group_name
    #   The name to give the action group.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
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
    #   A description of the action group.
    #
    # @option params [String] :parent_action_group_signature
    #   Specify a built-in or computer use action for this action group. If
    #   you specify a value, you must leave the `description`, `apiSchema`,
    #   and `actionGroupExecutor` fields empty for this action group.
    #
    #   * To allow your agent to request the user for additional information
    #     when trying to complete a task, set this field to
    #     `AMAZON.UserInput`.
    #
    #   * To allow your agent to generate, run, and troubleshoot code when
    #     trying to complete a task, set this field to
    #     `AMAZON.CodeInterpreter`.
    #
    #   * To allow your agent to use an Anthropic computer use tool, specify
    #     one of the following values.
    #
    #     Computer use is a new Anthropic Claude model capability (in beta)
    #     available with Anthropic Claude 3.7 Sonnet and Claude 3.5 Sonnet v2
    #     only. When operating computer use functionality, we recommend taking
    #     additional security precautions, such as executing computer actions
    #     in virtual environments with restricted data access and limited
    #     internet connectivity. For more information, see [Configure an
    #     Amazon Bedrock Agent to complete tasks with computer use tools][1].
    #
    #     * `ANTHROPIC.Computer` - Gives the agent permission to use the mouse
    #       and keyboard and take screenshots.
    #
    #     * `ANTHROPIC.TextEditor` - Gives the agent permission to view,
    #       create and edit files.
    #
    #     * `ANTHROPIC.Bash` - Gives the agent permission to run commands in a
    #       bash shell.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-computer-use.html
    #
    # @option params [Hash<String,String>] :parent_action_group_signature_params
    #   The configuration settings for a computer use action.
    #
    #   Computer use is a new Anthropic Claude model capability (in beta)
    #   available with Anthropic Claude 3.7 Sonnet and Claude 3.5 Sonnet v2
    #   only. For more information, see [Configure an Amazon Bedrock Agent to
    #   complete tasks with computer use tools][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-computer-use.html
    #
    # @option params [Types::ActionGroupExecutor] :action_group_executor
    #   The Amazon Resource Name (ARN) of the Lambda function containing the
    #   business logic that is carried out upon invoking the action or the
    #   custom control method for handling the information elicited from the
    #   user.
    #
    # @option params [Types::APISchema] :api_schema
    #   Contains either details about the S3 object containing the OpenAPI
    #   schema for the action group or the JSON or YAML-formatted payload
    #   defining the schema. For more information, see [Action group OpenAPI
    #   schemas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html
    #
    # @option params [String] :action_group_state
    #   Specifies whether the action group is available for the agent to
    #   invoke or not when sending an [InvokeAgent][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html
    #
    # @option params [Types::FunctionSchema] :function_schema
    #   Contains details about the function schema for the action group or the
    #   JSON or YAML-formatted payload defining the schema.
    #
    # @return [Types::CreateAgentActionGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAgentActionGroupResponse#agent_action_group #agent_action_group} => Types::AgentActionGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_agent_action_group({
    #     agent_id: "Id", # required
    #     agent_version: "DraftVersion", # required
    #     action_group_name: "Name", # required
    #     client_token: "ClientToken",
    #     description: "Description",
    #     parent_action_group_signature: "AMAZON.UserInput", # accepts AMAZON.UserInput, AMAZON.CodeInterpreter, ANTHROPIC.Computer, ANTHROPIC.Bash, ANTHROPIC.TextEditor
    #     parent_action_group_signature_params: {
    #       "ActionGroupSignatureParamsKeyString" => "ActionGroupSignatureParamsValueString",
    #     },
    #     action_group_executor: {
    #       lambda: "LambdaArn",
    #       custom_control: "RETURN_CONTROL", # accepts RETURN_CONTROL
    #     },
    #     api_schema: {
    #       s3: {
    #         s3_bucket_name: "S3BucketName",
    #         s3_object_key: "S3ObjectKey",
    #       },
    #       payload: "Payload",
    #     },
    #     action_group_state: "ENABLED", # accepts ENABLED, DISABLED
    #     function_schema: {
    #       functions: [
    #         {
    #           name: "Name", # required
    #           description: "FunctionDescription",
    #           parameters: {
    #             "Name" => {
    #               description: "ParameterDescription",
    #               type: "string", # required, accepts string, number, integer, boolean, array
    #               required: false,
    #             },
    #           },
    #           require_confirmation: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_action_group.agent_id #=> String
    #   resp.agent_action_group.agent_version #=> String
    #   resp.agent_action_group.action_group_id #=> String
    #   resp.agent_action_group.action_group_name #=> String
    #   resp.agent_action_group.client_token #=> String
    #   resp.agent_action_group.description #=> String
    #   resp.agent_action_group.created_at #=> Time
    #   resp.agent_action_group.updated_at #=> Time
    #   resp.agent_action_group.parent_action_signature #=> String, one of "AMAZON.UserInput", "AMAZON.CodeInterpreter", "ANTHROPIC.Computer", "ANTHROPIC.Bash", "ANTHROPIC.TextEditor"
    #   resp.agent_action_group.parent_action_group_signature_params #=> Hash
    #   resp.agent_action_group.parent_action_group_signature_params["ActionGroupSignatureParamsKeyString"] #=> String
    #   resp.agent_action_group.action_group_executor.lambda #=> String
    #   resp.agent_action_group.action_group_executor.custom_control #=> String, one of "RETURN_CONTROL"
    #   resp.agent_action_group.api_schema.s3.s3_bucket_name #=> String
    #   resp.agent_action_group.api_schema.s3.s3_object_key #=> String
    #   resp.agent_action_group.api_schema.payload #=> String
    #   resp.agent_action_group.function_schema.functions #=> Array
    #   resp.agent_action_group.function_schema.functions[0].name #=> String
    #   resp.agent_action_group.function_schema.functions[0].description #=> String
    #   resp.agent_action_group.function_schema.functions[0].parameters #=> Hash
    #   resp.agent_action_group.function_schema.functions[0].parameters["Name"].description #=> String
    #   resp.agent_action_group.function_schema.functions[0].parameters["Name"].type #=> String, one of "string", "number", "integer", "boolean", "array"
    #   resp.agent_action_group.function_schema.functions[0].parameters["Name"].required #=> Boolean
    #   resp.agent_action_group.function_schema.functions[0].require_confirmation #=> String, one of "ENABLED", "DISABLED"
    #   resp.agent_action_group.action_group_state #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateAgentActionGroup AWS API Documentation
    #
    # @overload create_agent_action_group(params = {})
    # @param [Hash] params ({})
    def create_agent_action_group(params = {}, options = {})
      req = build_request(:create_agent_action_group, params)
      req.send_request(options)
    end

    # Creates an alias of an agent that can be used to deploy the agent.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent.
    #
    # @option params [required, String] :agent_alias_name
    #   The name of the alias.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
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
    #   A description of the alias of the agent.
    #
    # @option params [Array<Types::AgentAliasRoutingConfigurationListItem>] :routing_configuration
    #   Contains details about the routing configuration of the alias.
    #
    # @option params [Hash<String,String>] :tags
    #   Any tags that you want to attach to the alias of the agent.
    #
    # @return [Types::CreateAgentAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAgentAliasResponse#agent_alias #agent_alias} => Types::AgentAlias
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_agent_alias({
    #     agent_id: "Id", # required
    #     agent_alias_name: "Name", # required
    #     client_token: "ClientToken",
    #     description: "Description",
    #     routing_configuration: [
    #       {
    #         agent_version: "Version",
    #         provisioned_throughput: "ProvisionedModelIdentifier",
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_alias.agent_id #=> String
    #   resp.agent_alias.agent_alias_id #=> String
    #   resp.agent_alias.agent_alias_name #=> String
    #   resp.agent_alias.agent_alias_arn #=> String
    #   resp.agent_alias.client_token #=> String
    #   resp.agent_alias.description #=> String
    #   resp.agent_alias.routing_configuration #=> Array
    #   resp.agent_alias.routing_configuration[0].agent_version #=> String
    #   resp.agent_alias.routing_configuration[0].provisioned_throughput #=> String
    #   resp.agent_alias.created_at #=> Time
    #   resp.agent_alias.updated_at #=> Time
    #   resp.agent_alias.agent_alias_history_events #=> Array
    #   resp.agent_alias.agent_alias_history_events[0].routing_configuration #=> Array
    #   resp.agent_alias.agent_alias_history_events[0].routing_configuration[0].agent_version #=> String
    #   resp.agent_alias.agent_alias_history_events[0].routing_configuration[0].provisioned_throughput #=> String
    #   resp.agent_alias.agent_alias_history_events[0].end_date #=> Time
    #   resp.agent_alias.agent_alias_history_events[0].start_date #=> Time
    #   resp.agent_alias.agent_alias_status #=> String, one of "CREATING", "PREPARED", "FAILED", "UPDATING", "DELETING", "DISSOCIATED"
    #   resp.agent_alias.failure_reasons #=> Array
    #   resp.agent_alias.failure_reasons[0] #=> String
    #   resp.agent_alias.alias_invocation_state #=> String, one of "ACCEPT_INVOCATIONS", "REJECT_INVOCATIONS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateAgentAlias AWS API Documentation
    #
    # @overload create_agent_alias(params = {})
    # @param [Hash] params ({})
    def create_agent_alias(params = {}, options = {})
      req = build_request(:create_agent_alias, params)
      req.send_request(options)
    end

    # Connects a knowledge base to a data source. You specify the
    # configuration for the specific data source service in the
    # `dataSourceConfiguration` field.
    #
    # You can't change the `chunkingConfiguration` after you create the
    # data source connector.
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base to which to add the data
    #   source.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, String] :name
    #   The name of the data source.
    #
    # @option params [String] :description
    #   A description of the data source.
    #
    # @option params [required, Types::DataSourceConfiguration] :data_source_configuration
    #   The connection configuration for the data source.
    #
    # @option params [String] :data_deletion_policy
    #   The data deletion policy for the data source.
    #
    #   You can set the data deletion policy to:
    #
    #   * DELETE: Deletes all data from your data source that’s converted into
    #     vector embeddings upon deletion of a knowledge base or data source
    #     resource. Note that the **vector store itself is not deleted**, only
    #     the data. This flag is ignored if an Amazon Web Services account is
    #     deleted.
    #
    #   * RETAIN: Retains all data from your data source that’s converted into
    #     vector embeddings upon deletion of a knowledge base or data source
    #     resource. Note that the **vector store itself is not deleted** if
    #     you delete a knowledge base or data source resource.
    #
    # @option params [Types::ServerSideEncryptionConfiguration] :server_side_encryption_configuration
    #   Contains details about the server-side encryption for the data source.
    #
    # @option params [Types::VectorIngestionConfiguration] :vector_ingestion_configuration
    #   Contains details about how to ingest the documents in the data source.
    #
    # @return [Types::CreateDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataSourceResponse#data_source #data_source} => Types::DataSource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_source({
    #     knowledge_base_id: "Id", # required
    #     client_token: "ClientToken",
    #     name: "Name", # required
    #     description: "Description",
    #     data_source_configuration: { # required
    #       type: "S3", # required, accepts S3, WEB, CONFLUENCE, SALESFORCE, SHAREPOINT, CUSTOM, REDSHIFT_METADATA
    #       s3_configuration: {
    #         bucket_arn: "S3BucketArn", # required
    #         inclusion_prefixes: ["S3Prefix"],
    #         bucket_owner_account_id: "BucketOwnerAccountId",
    #       },
    #       web_configuration: {
    #         source_configuration: { # required
    #           url_configuration: { # required
    #             seed_urls: [
    #               {
    #                 url: "Url",
    #               },
    #             ],
    #           },
    #         },
    #         crawler_configuration: {
    #           crawler_limits: {
    #             rate_limit: 1,
    #             max_pages: 1,
    #           },
    #           inclusion_filters: ["FilterPattern"],
    #           exclusion_filters: ["FilterPattern"],
    #           scope: "HOST_ONLY", # accepts HOST_ONLY, SUBDOMAINS
    #           user_agent: "UserAgent",
    #           user_agent_header: "UserAgentHeader",
    #         },
    #       },
    #       confluence_configuration: {
    #         source_configuration: { # required
    #           host_url: "HttpsUrl", # required
    #           host_type: "SAAS", # required, accepts SAAS
    #           auth_type: "BASIC", # required, accepts BASIC, OAUTH2_CLIENT_CREDENTIALS
    #           credentials_secret_arn: "SecretArn", # required
    #         },
    #         crawler_configuration: {
    #           filter_configuration: {
    #             type: "PATTERN", # required, accepts PATTERN
    #             pattern_object_filter: {
    #               filters: [ # required
    #                 {
    #                   object_type: "FilteredObjectType", # required
    #                   inclusion_filters: ["FilterPattern"],
    #                   exclusion_filters: ["FilterPattern"],
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #       },
    #       salesforce_configuration: {
    #         source_configuration: { # required
    #           host_url: "HttpsUrl", # required
    #           auth_type: "OAUTH2_CLIENT_CREDENTIALS", # required, accepts OAUTH2_CLIENT_CREDENTIALS
    #           credentials_secret_arn: "SecretArn", # required
    #         },
    #         crawler_configuration: {
    #           filter_configuration: {
    #             type: "PATTERN", # required, accepts PATTERN
    #             pattern_object_filter: {
    #               filters: [ # required
    #                 {
    #                   object_type: "FilteredObjectType", # required
    #                   inclusion_filters: ["FilterPattern"],
    #                   exclusion_filters: ["FilterPattern"],
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #       },
    #       share_point_configuration: {
    #         source_configuration: { # required
    #           tenant_id: "Microsoft365TenantId",
    #           domain: "SharePointDomain", # required
    #           site_urls: ["HttpsUrl"], # required
    #           host_type: "ONLINE", # required, accepts ONLINE
    #           auth_type: "OAUTH2_CLIENT_CREDENTIALS", # required, accepts OAUTH2_CLIENT_CREDENTIALS, OAUTH2_SHAREPOINT_APP_ONLY_CLIENT_CREDENTIALS
    #           credentials_secret_arn: "SecretArn", # required
    #         },
    #         crawler_configuration: {
    #           filter_configuration: {
    #             type: "PATTERN", # required, accepts PATTERN
    #             pattern_object_filter: {
    #               filters: [ # required
    #                 {
    #                   object_type: "FilteredObjectType", # required
    #                   inclusion_filters: ["FilterPattern"],
    #                   exclusion_filters: ["FilterPattern"],
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #       },
    #     },
    #     data_deletion_policy: "RETAIN", # accepts RETAIN, DELETE
    #     server_side_encryption_configuration: {
    #       kms_key_arn: "KmsKeyArn",
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
    #       custom_transformation_configuration: {
    #         intermediate_storage: { # required
    #           s3_location: { # required
    #             uri: "S3BucketUri", # required
    #           },
    #         },
    #         transformations: [ # required
    #           {
    #             transformation_function: { # required
    #               transformation_lambda_configuration: { # required
    #                 lambda_arn: "LambdaArn", # required
    #               },
    #             },
    #             step_to_apply: "POST_CHUNKING", # required, accepts POST_CHUNKING
    #           },
    #         ],
    #       },
    #       parsing_configuration: {
    #         parsing_strategy: "BEDROCK_FOUNDATION_MODEL", # required, accepts BEDROCK_FOUNDATION_MODEL, BEDROCK_DATA_AUTOMATION
    #         bedrock_foundation_model_configuration: {
    #           model_arn: "BedrockModelArn", # required
    #           parsing_prompt: {
    #             parsing_prompt_text: "ParsingPromptText", # required
    #           },
    #           parsing_modality: "MULTIMODAL", # accepts MULTIMODAL
    #         },
    #         bedrock_data_automation_configuration: {
    #           parsing_modality: "MULTIMODAL", # accepts MULTIMODAL
    #         },
    #       },
    #       context_enrichment_configuration: {
    #         type: "BEDROCK_FOUNDATION_MODEL", # required, accepts BEDROCK_FOUNDATION_MODEL
    #         bedrock_foundation_model_configuration: {
    #           enrichment_strategy_configuration: { # required
    #             method: "CHUNK_ENTITY_EXTRACTION", # required, accepts CHUNK_ENTITY_EXTRACTION
    #           },
    #           model_arn: "BedrockModelArn", # required
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source.knowledge_base_id #=> String
    #   resp.data_source.data_source_id #=> String
    #   resp.data_source.name #=> String
    #   resp.data_source.status #=> String, one of "AVAILABLE", "DELETING", "DELETE_UNSUCCESSFUL"
    #   resp.data_source.description #=> String
    #   resp.data_source.data_source_configuration.type #=> String, one of "S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "REDSHIFT_METADATA"
    #   resp.data_source.data_source_configuration.s3_configuration.bucket_arn #=> String
    #   resp.data_source.data_source_configuration.s3_configuration.inclusion_prefixes #=> Array
    #   resp.data_source.data_source_configuration.s3_configuration.inclusion_prefixes[0] #=> String
    #   resp.data_source.data_source_configuration.s3_configuration.bucket_owner_account_id #=> String
    #   resp.data_source.data_source_configuration.web_configuration.source_configuration.url_configuration.seed_urls #=> Array
    #   resp.data_source.data_source_configuration.web_configuration.source_configuration.url_configuration.seed_urls[0].url #=> String
    #   resp.data_source.data_source_configuration.web_configuration.crawler_configuration.crawler_limits.rate_limit #=> Integer
    #   resp.data_source.data_source_configuration.web_configuration.crawler_configuration.crawler_limits.max_pages #=> Integer
    #   resp.data_source.data_source_configuration.web_configuration.crawler_configuration.inclusion_filters #=> Array
    #   resp.data_source.data_source_configuration.web_configuration.crawler_configuration.inclusion_filters[0] #=> String
    #   resp.data_source.data_source_configuration.web_configuration.crawler_configuration.exclusion_filters #=> Array
    #   resp.data_source.data_source_configuration.web_configuration.crawler_configuration.exclusion_filters[0] #=> String
    #   resp.data_source.data_source_configuration.web_configuration.crawler_configuration.scope #=> String, one of "HOST_ONLY", "SUBDOMAINS"
    #   resp.data_source.data_source_configuration.web_configuration.crawler_configuration.user_agent #=> String
    #   resp.data_source.data_source_configuration.web_configuration.crawler_configuration.user_agent_header #=> String
    #   resp.data_source.data_source_configuration.confluence_configuration.source_configuration.host_url #=> String
    #   resp.data_source.data_source_configuration.confluence_configuration.source_configuration.host_type #=> String, one of "SAAS"
    #   resp.data_source.data_source_configuration.confluence_configuration.source_configuration.auth_type #=> String, one of "BASIC", "OAUTH2_CLIENT_CREDENTIALS"
    #   resp.data_source.data_source_configuration.confluence_configuration.source_configuration.credentials_secret_arn #=> String
    #   resp.data_source.data_source_configuration.confluence_configuration.crawler_configuration.filter_configuration.type #=> String, one of "PATTERN"
    #   resp.data_source.data_source_configuration.confluence_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters #=> Array
    #   resp.data_source.data_source_configuration.confluence_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].object_type #=> String
    #   resp.data_source.data_source_configuration.confluence_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].inclusion_filters #=> Array
    #   resp.data_source.data_source_configuration.confluence_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].inclusion_filters[0] #=> String
    #   resp.data_source.data_source_configuration.confluence_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].exclusion_filters #=> Array
    #   resp.data_source.data_source_configuration.confluence_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].exclusion_filters[0] #=> String
    #   resp.data_source.data_source_configuration.salesforce_configuration.source_configuration.host_url #=> String
    #   resp.data_source.data_source_configuration.salesforce_configuration.source_configuration.auth_type #=> String, one of "OAUTH2_CLIENT_CREDENTIALS"
    #   resp.data_source.data_source_configuration.salesforce_configuration.source_configuration.credentials_secret_arn #=> String
    #   resp.data_source.data_source_configuration.salesforce_configuration.crawler_configuration.filter_configuration.type #=> String, one of "PATTERN"
    #   resp.data_source.data_source_configuration.salesforce_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters #=> Array
    #   resp.data_source.data_source_configuration.salesforce_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].object_type #=> String
    #   resp.data_source.data_source_configuration.salesforce_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].inclusion_filters #=> Array
    #   resp.data_source.data_source_configuration.salesforce_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].inclusion_filters[0] #=> String
    #   resp.data_source.data_source_configuration.salesforce_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].exclusion_filters #=> Array
    #   resp.data_source.data_source_configuration.salesforce_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].exclusion_filters[0] #=> String
    #   resp.data_source.data_source_configuration.share_point_configuration.source_configuration.tenant_id #=> String
    #   resp.data_source.data_source_configuration.share_point_configuration.source_configuration.domain #=> String
    #   resp.data_source.data_source_configuration.share_point_configuration.source_configuration.site_urls #=> Array
    #   resp.data_source.data_source_configuration.share_point_configuration.source_configuration.site_urls[0] #=> String
    #   resp.data_source.data_source_configuration.share_point_configuration.source_configuration.host_type #=> String, one of "ONLINE"
    #   resp.data_source.data_source_configuration.share_point_configuration.source_configuration.auth_type #=> String, one of "OAUTH2_CLIENT_CREDENTIALS", "OAUTH2_SHAREPOINT_APP_ONLY_CLIENT_CREDENTIALS"
    #   resp.data_source.data_source_configuration.share_point_configuration.source_configuration.credentials_secret_arn #=> String
    #   resp.data_source.data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration.type #=> String, one of "PATTERN"
    #   resp.data_source.data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters #=> Array
    #   resp.data_source.data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].object_type #=> String
    #   resp.data_source.data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].inclusion_filters #=> Array
    #   resp.data_source.data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].inclusion_filters[0] #=> String
    #   resp.data_source.data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].exclusion_filters #=> Array
    #   resp.data_source.data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].exclusion_filters[0] #=> String
    #   resp.data_source.server_side_encryption_configuration.kms_key_arn #=> String
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.chunking_strategy #=> String, one of "FIXED_SIZE", "NONE", "HIERARCHICAL", "SEMANTIC"
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.fixed_size_chunking_configuration.max_tokens #=> Integer
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.fixed_size_chunking_configuration.overlap_percentage #=> Integer
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.hierarchical_chunking_configuration.level_configurations #=> Array
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.hierarchical_chunking_configuration.level_configurations[0].max_tokens #=> Integer
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.hierarchical_chunking_configuration.overlap_tokens #=> Integer
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.semantic_chunking_configuration.max_tokens #=> Integer
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.semantic_chunking_configuration.buffer_size #=> Integer
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.semantic_chunking_configuration.breakpoint_percentile_threshold #=> Integer
    #   resp.data_source.vector_ingestion_configuration.custom_transformation_configuration.intermediate_storage.s3_location.uri #=> String
    #   resp.data_source.vector_ingestion_configuration.custom_transformation_configuration.transformations #=> Array
    #   resp.data_source.vector_ingestion_configuration.custom_transformation_configuration.transformations[0].transformation_function.transformation_lambda_configuration.lambda_arn #=> String
    #   resp.data_source.vector_ingestion_configuration.custom_transformation_configuration.transformations[0].step_to_apply #=> String, one of "POST_CHUNKING"
    #   resp.data_source.vector_ingestion_configuration.parsing_configuration.parsing_strategy #=> String, one of "BEDROCK_FOUNDATION_MODEL", "BEDROCK_DATA_AUTOMATION"
    #   resp.data_source.vector_ingestion_configuration.parsing_configuration.bedrock_foundation_model_configuration.model_arn #=> String
    #   resp.data_source.vector_ingestion_configuration.parsing_configuration.bedrock_foundation_model_configuration.parsing_prompt.parsing_prompt_text #=> String
    #   resp.data_source.vector_ingestion_configuration.parsing_configuration.bedrock_foundation_model_configuration.parsing_modality #=> String, one of "MULTIMODAL"
    #   resp.data_source.vector_ingestion_configuration.parsing_configuration.bedrock_data_automation_configuration.parsing_modality #=> String, one of "MULTIMODAL"
    #   resp.data_source.vector_ingestion_configuration.context_enrichment_configuration.type #=> String, one of "BEDROCK_FOUNDATION_MODEL"
    #   resp.data_source.vector_ingestion_configuration.context_enrichment_configuration.bedrock_foundation_model_configuration.enrichment_strategy_configuration.method #=> String, one of "CHUNK_ENTITY_EXTRACTION"
    #   resp.data_source.vector_ingestion_configuration.context_enrichment_configuration.bedrock_foundation_model_configuration.model_arn #=> String
    #   resp.data_source.data_deletion_policy #=> String, one of "RETAIN", "DELETE"
    #   resp.data_source.created_at #=> Time
    #   resp.data_source.updated_at #=> Time
    #   resp.data_source.failure_reasons #=> Array
    #   resp.data_source.failure_reasons[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateDataSource AWS API Documentation
    #
    # @overload create_data_source(params = {})
    # @param [Hash] params ({})
    def create_data_source(params = {}, options = {})
      req = build_request(:create_data_source, params)
      req.send_request(options)
    end

    # Creates a prompt flow that you can use to send an input through
    # various steps to yield an output. Configure nodes, each of which
    # corresponds to a step of the flow, and create connections between the
    # nodes to create paths to different outputs. For more information, see
    # [How it works][1] and [Create a flow in Amazon Bedrock][2] in the
    # Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-how-it-works.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-create.html
    #
    # @option params [required, String] :name
    #   A name for the flow.
    #
    # @option params [String] :description
    #   A description for the flow.
    #
    # @option params [required, String] :execution_role_arn
    #   The Amazon Resource Name (ARN) of the service role with permissions to
    #   create and manage a flow. For more information, see [Create a service
    #   role for flows in Amazon Bedrock][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html
    #
    # @option params [String] :customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key to encrypt the flow.
    #
    # @option params [Types::FlowDefinition] :definition
    #   A definition of the nodes and connections between nodes in the flow.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
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
    #   Any tags that you want to attach to the flow. For more information,
    #   see [Tagging resources in Amazon Bedrock][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html
    #
    # @return [Types::CreateFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFlowResponse#name #name} => String
    #   * {Types::CreateFlowResponse#description #description} => String
    #   * {Types::CreateFlowResponse#execution_role_arn #execution_role_arn} => String
    #   * {Types::CreateFlowResponse#customer_encryption_key_arn #customer_encryption_key_arn} => String
    #   * {Types::CreateFlowResponse#id #id} => String
    #   * {Types::CreateFlowResponse#arn #arn} => String
    #   * {Types::CreateFlowResponse#status #status} => String
    #   * {Types::CreateFlowResponse#created_at #created_at} => Time
    #   * {Types::CreateFlowResponse#updated_at #updated_at} => Time
    #   * {Types::CreateFlowResponse#version #version} => String
    #   * {Types::CreateFlowResponse#definition #definition} => Types::FlowDefinition
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_flow({
    #     name: "FlowName", # required
    #     description: "FlowDescription",
    #     execution_role_arn: "FlowExecutionRoleArn", # required
    #     customer_encryption_key_arn: "KmsKeyArn",
    #     definition: {
    #       nodes: [
    #         {
    #           name: "FlowNodeName", # required
    #           type: "Input", # required, accepts Input, Output, KnowledgeBase, Condition, Lex, Prompt, LambdaFunction, Storage, Agent, Retrieval, Iterator, Collector, InlineCode, Loop, LoopInput, LoopController
    #           configuration: {
    #             input: {
    #             },
    #             output: {
    #             },
    #             knowledge_base: {
    #               knowledge_base_id: "FlowKnowledgeBaseId", # required
    #               model_id: "KnowledgeBaseModelIdentifier",
    #               guardrail_configuration: {
    #                 guardrail_identifier: "GuardrailIdentifier",
    #                 guardrail_version: "GuardrailVersion",
    #               },
    #               number_of_results: 1,
    #               prompt_template: {
    #                 text_prompt_template: "KnowledgeBaseTextPrompt",
    #               },
    #               inference_configuration: {
    #                 text: {
    #                   temperature: 1.0,
    #                   top_p: 1.0,
    #                   max_tokens: 1,
    #                   stop_sequences: ["String"],
    #                 },
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
    #               orchestration_configuration: {
    #                 prompt_template: {
    #                   text_prompt_template: "KnowledgeBaseTextPrompt",
    #                 },
    #                 inference_config: {
    #                   text: {
    #                     temperature: 1.0,
    #                     top_p: 1.0,
    #                     max_tokens: 1,
    #                     stop_sequences: ["String"],
    #                   },
    #                 },
    #                 additional_model_request_fields: {
    #                   "AdditionalModelRequestFieldsKey" => {
    #                   },
    #                 },
    #                 performance_config: {
    #                   latency: "standard", # accepts standard, optimized
    #                 },
    #               },
    #             },
    #             condition: {
    #               conditions: [ # required
    #                 {
    #                   name: "FlowConditionName", # required
    #                   expression: "FlowConditionExpression",
    #                 },
    #               ],
    #             },
    #             lex: {
    #               bot_alias_arn: "FlowLexBotAliasArn", # required
    #               locale_id: "FlowLexBotLocaleId", # required
    #             },
    #             prompt: {
    #               source_configuration: { # required
    #                 resource: {
    #                   prompt_arn: "FlowPromptArn", # required
    #                 },
    #                 inline: {
    #                   template_type: "TEXT", # required, accepts TEXT, CHAT
    #                   template_configuration: { # required
    #                     text: {
    #                       text: "TextPrompt", # required
    #                       cache_point: {
    #                         type: "default", # required, accepts default
    #                       },
    #                       input_variables: [
    #                         {
    #                           name: "PromptInputVariableName",
    #                         },
    #                       ],
    #                     },
    #                     chat: {
    #                       messages: [ # required
    #                         {
    #                           role: "user", # required, accepts user, assistant
    #                           content: [ # required
    #                             {
    #                               text: "String",
    #                               cache_point: {
    #                                 type: "default", # required, accepts default
    #                               },
    #                             },
    #                           ],
    #                         },
    #                       ],
    #                       system: [
    #                         {
    #                           text: "NonEmptyString",
    #                           cache_point: {
    #                             type: "default", # required, accepts default
    #                           },
    #                         },
    #                       ],
    #                       input_variables: [
    #                         {
    #                           name: "PromptInputVariableName",
    #                         },
    #                       ],
    #                       tool_configuration: {
    #                         tools: [ # required
    #                           {
    #                             tool_spec: {
    #                               name: "ToolName", # required
    #                               description: "NonEmptyString",
    #                               input_schema: { # required
    #                                 json: {
    #                                 },
    #                               },
    #                             },
    #                             cache_point: {
    #                               type: "default", # required, accepts default
    #                             },
    #                           },
    #                         ],
    #                         tool_choice: {
    #                           auto: {
    #                           },
    #                           any: {
    #                           },
    #                           tool: {
    #                             name: "ToolName", # required
    #                           },
    #                         },
    #                       },
    #                     },
    #                   },
    #                   model_id: "FlowPromptModelIdentifier", # required
    #                   inference_configuration: {
    #                     text: {
    #                       temperature: 1.0,
    #                       top_p: 1.0,
    #                       max_tokens: 1,
    #                       stop_sequences: ["String"],
    #                     },
    #                   },
    #                   additional_model_request_fields: {
    #                   },
    #                 },
    #               },
    #               guardrail_configuration: {
    #                 guardrail_identifier: "GuardrailIdentifier",
    #                 guardrail_version: "GuardrailVersion",
    #               },
    #             },
    #             lambda_function: {
    #               lambda_arn: "FlowLambdaArn", # required
    #             },
    #             storage: {
    #               service_configuration: { # required
    #                 s3: {
    #                   bucket_name: "FlowS3BucketName", # required
    #                 },
    #               },
    #             },
    #             agent: {
    #               agent_alias_arn: "FlowAgentAliasArn", # required
    #             },
    #             retrieval: {
    #               service_configuration: { # required
    #                 s3: {
    #                   bucket_name: "FlowS3BucketName", # required
    #                 },
    #               },
    #             },
    #             iterator: {
    #             },
    #             collector: {
    #             },
    #             inline_code: {
    #               code: "InlineCode", # required
    #               language: "Python_3", # required, accepts Python_3
    #             },
    #             loop: {
    #               definition: { # required
    #                 # recursive FlowDefinition
    #               },
    #             },
    #             loop_input: {
    #             },
    #             loop_controller: {
    #               continue_condition: { # required
    #                 name: "FlowConditionName", # required
    #                 expression: "FlowConditionExpression",
    #               },
    #               max_iterations: 1,
    #             },
    #           },
    #           inputs: [
    #             {
    #               name: "FlowNodeInputName", # required
    #               type: "String", # required, accepts String, Number, Boolean, Object, Array
    #               expression: "FlowNodeInputExpression", # required
    #               category: "LoopCondition", # accepts LoopCondition, ReturnValueToLoopStart, ExitLoop
    #             },
    #           ],
    #           outputs: [
    #             {
    #               name: "FlowNodeOutputName", # required
    #               type: "String", # required, accepts String, Number, Boolean, Object, Array
    #             },
    #           ],
    #         },
    #       ],
    #       connections: [
    #         {
    #           type: "Data", # required, accepts Data, Conditional
    #           name: "FlowConnectionName", # required
    #           source: "FlowNodeName", # required
    #           target: "FlowNodeName", # required
    #           configuration: {
    #             data: {
    #               source_output: "FlowNodeOutputName", # required
    #               target_input: "FlowNodeInputName", # required
    #             },
    #             conditional: {
    #               condition: "FlowConditionName", # required
    #             },
    #           },
    #         },
    #       ],
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.execution_role_arn #=> String
    #   resp.customer_encryption_key_arn #=> String
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.status #=> String, one of "Failed", "Prepared", "Preparing", "NotPrepared"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.version #=> String
    #   resp.definition.nodes #=> Array
    #   resp.definition.nodes[0].name #=> String
    #   resp.definition.nodes[0].type #=> String, one of "Input", "Output", "KnowledgeBase", "Condition", "Lex", "Prompt", "LambdaFunction", "Storage", "Agent", "Retrieval", "Iterator", "Collector", "InlineCode", "Loop", "LoopInput", "LoopController"
    #   resp.definition.nodes[0].configuration.knowledge_base.knowledge_base_id #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.model_id #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.guardrail_configuration.guardrail_identifier #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.guardrail_configuration.guardrail_version #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.number_of_results #=> Integer
    #   resp.definition.nodes[0].configuration.knowledge_base.prompt_template.text_prompt_template #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.inference_configuration.text.temperature #=> Float
    #   resp.definition.nodes[0].configuration.knowledge_base.inference_configuration.text.top_p #=> Float
    #   resp.definition.nodes[0].configuration.knowledge_base.inference_configuration.text.max_tokens #=> Integer
    #   resp.definition.nodes[0].configuration.knowledge_base.inference_configuration.text.stop_sequences #=> Array
    #   resp.definition.nodes[0].configuration.knowledge_base.inference_configuration.text.stop_sequences[0] #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.type #=> String, one of "BEDROCK_RERANKING_MODEL"
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.model_configuration.model_arn #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.model_configuration.additional_model_request_fields #=> Hash
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.number_of_reranked_results #=> Integer
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.metadata_configuration.selection_mode #=> String, one of "SELECTIVE", "ALL"
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.metadata_configuration.selective_mode_configuration.fields_to_include #=> Array
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.metadata_configuration.selective_mode_configuration.fields_to_include[0].field_name #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.metadata_configuration.selective_mode_configuration.fields_to_exclude #=> Array
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.metadata_configuration.selective_mode_configuration.fields_to_exclude[0].field_name #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.prompt_template.text_prompt_template #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.inference_config.text.temperature #=> Float
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.inference_config.text.top_p #=> Float
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.inference_config.text.max_tokens #=> Integer
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.inference_config.text.stop_sequences #=> Array
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.inference_config.text.stop_sequences[0] #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.additional_model_request_fields #=> Hash
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.performance_config.latency #=> String, one of "standard", "optimized"
    #   resp.definition.nodes[0].configuration.condition.conditions #=> Array
    #   resp.definition.nodes[0].configuration.condition.conditions[0].name #=> String
    #   resp.definition.nodes[0].configuration.condition.conditions[0].expression #=> String
    #   resp.definition.nodes[0].configuration.lex.bot_alias_arn #=> String
    #   resp.definition.nodes[0].configuration.lex.locale_id #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.resource.prompt_arn #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_type #=> String, one of "TEXT", "CHAT"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.text.text #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.text.cache_point.type #=> String, one of "default"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.text.input_variables #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.text.input_variables[0].name #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.messages #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.messages[0].role #=> String, one of "user", "assistant"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.messages[0].content #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.messages[0].content[0].text #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.messages[0].content[0].cache_point.type #=> String, one of "default"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.system #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.system[0].text #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.system[0].cache_point.type #=> String, one of "default"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.input_variables #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.input_variables[0].name #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tools #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tools[0].tool_spec.name #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tools[0].tool_spec.description #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tools[0].cache_point.type #=> String, one of "default"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool_choice.tool.name #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.model_id #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.inference_configuration.text.temperature #=> Float
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.inference_configuration.text.top_p #=> Float
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.inference_configuration.text.max_tokens #=> Integer
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.inference_configuration.text.stop_sequences #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.inference_configuration.text.stop_sequences[0] #=> String
    #   resp.definition.nodes[0].configuration.prompt.guardrail_configuration.guardrail_identifier #=> String
    #   resp.definition.nodes[0].configuration.prompt.guardrail_configuration.guardrail_version #=> String
    #   resp.definition.nodes[0].configuration.lambda_function.lambda_arn #=> String
    #   resp.definition.nodes[0].configuration.storage.service_configuration.s3.bucket_name #=> String
    #   resp.definition.nodes[0].configuration.agent.agent_alias_arn #=> String
    #   resp.definition.nodes[0].configuration.retrieval.service_configuration.s3.bucket_name #=> String
    #   resp.definition.nodes[0].configuration.inline_code.code #=> String
    #   resp.definition.nodes[0].configuration.inline_code.language #=> String, one of "Python_3"
    #   resp.definition.nodes[0].configuration.loop.definition #=> Types::FlowDefinition
    #   resp.definition.nodes[0].configuration.loop_controller.continue_condition.name #=> String
    #   resp.definition.nodes[0].configuration.loop_controller.continue_condition.expression #=> String
    #   resp.definition.nodes[0].configuration.loop_controller.max_iterations #=> Integer
    #   resp.definition.nodes[0].inputs #=> Array
    #   resp.definition.nodes[0].inputs[0].name #=> String
    #   resp.definition.nodes[0].inputs[0].type #=> String, one of "String", "Number", "Boolean", "Object", "Array"
    #   resp.definition.nodes[0].inputs[0].expression #=> String
    #   resp.definition.nodes[0].inputs[0].category #=> String, one of "LoopCondition", "ReturnValueToLoopStart", "ExitLoop"
    #   resp.definition.nodes[0].outputs #=> Array
    #   resp.definition.nodes[0].outputs[0].name #=> String
    #   resp.definition.nodes[0].outputs[0].type #=> String, one of "String", "Number", "Boolean", "Object", "Array"
    #   resp.definition.connections #=> Array
    #   resp.definition.connections[0].type #=> String, one of "Data", "Conditional"
    #   resp.definition.connections[0].name #=> String
    #   resp.definition.connections[0].source #=> String
    #   resp.definition.connections[0].target #=> String
    #   resp.definition.connections[0].configuration.data.source_output #=> String
    #   resp.definition.connections[0].configuration.data.target_input #=> String
    #   resp.definition.connections[0].configuration.conditional.condition #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateFlow AWS API Documentation
    #
    # @overload create_flow(params = {})
    # @param [Hash] params ({})
    def create_flow(params = {}, options = {})
      req = build_request(:create_flow, params)
      req.send_request(options)
    end

    # Creates an alias of a flow for deployment. For more information, see
    # [Deploy a flow in Amazon Bedrock][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html
    #
    # @option params [required, String] :name
    #   A name for the alias.
    #
    # @option params [String] :description
    #   A description for the alias.
    #
    # @option params [required, Array<Types::FlowAliasRoutingConfigurationListItem>] :routing_configuration
    #   Contains information about the version to which to map the alias.
    #
    # @option params [Types::FlowAliasConcurrencyConfiguration] :concurrency_configuration
    #   The configuration that specifies how nodes in the flow are executed in
    #   parallel.
    #
    # @option params [required, String] :flow_identifier
    #   The unique identifier of the flow for which to create an alias.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
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
    #   Any tags that you want to attach to the alias of the flow. For more
    #   information, see [Tagging resources in Amazon Bedrock][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html
    #
    # @return [Types::CreateFlowAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFlowAliasResponse#name #name} => String
    #   * {Types::CreateFlowAliasResponse#description #description} => String
    #   * {Types::CreateFlowAliasResponse#routing_configuration #routing_configuration} => Array&lt;Types::FlowAliasRoutingConfigurationListItem&gt;
    #   * {Types::CreateFlowAliasResponse#concurrency_configuration #concurrency_configuration} => Types::FlowAliasConcurrencyConfiguration
    #   * {Types::CreateFlowAliasResponse#flow_id #flow_id} => String
    #   * {Types::CreateFlowAliasResponse#id #id} => String
    #   * {Types::CreateFlowAliasResponse#arn #arn} => String
    #   * {Types::CreateFlowAliasResponse#created_at #created_at} => Time
    #   * {Types::CreateFlowAliasResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_flow_alias({
    #     name: "Name", # required
    #     description: "Description",
    #     routing_configuration: [ # required
    #       {
    #         flow_version: "Version",
    #       },
    #     ],
    #     concurrency_configuration: {
    #       type: "Automatic", # required, accepts Automatic, Manual
    #       max_concurrency: 1,
    #     },
    #     flow_identifier: "FlowIdentifier", # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.routing_configuration #=> Array
    #   resp.routing_configuration[0].flow_version #=> String
    #   resp.concurrency_configuration.type #=> String, one of "Automatic", "Manual"
    #   resp.concurrency_configuration.max_concurrency #=> Integer
    #   resp.flow_id #=> String
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateFlowAlias AWS API Documentation
    #
    # @overload create_flow_alias(params = {})
    # @param [Hash] params ({})
    def create_flow_alias(params = {}, options = {})
      req = build_request(:create_flow_alias, params)
      req.send_request(options)
    end

    # Creates a version of the flow that you can deploy. For more
    # information, see [Deploy a flow in Amazon Bedrock][1] in the Amazon
    # Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html
    #
    # @option params [required, String] :flow_identifier
    #   The unique identifier of the flow that you want to create a version
    #   of.
    #
    # @option params [String] :description
    #   A description of the version of the flow.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @return [Types::CreateFlowVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFlowVersionResponse#name #name} => String
    #   * {Types::CreateFlowVersionResponse#description #description} => String
    #   * {Types::CreateFlowVersionResponse#execution_role_arn #execution_role_arn} => String
    #   * {Types::CreateFlowVersionResponse#customer_encryption_key_arn #customer_encryption_key_arn} => String
    #   * {Types::CreateFlowVersionResponse#id #id} => String
    #   * {Types::CreateFlowVersionResponse#arn #arn} => String
    #   * {Types::CreateFlowVersionResponse#status #status} => String
    #   * {Types::CreateFlowVersionResponse#created_at #created_at} => Time
    #   * {Types::CreateFlowVersionResponse#version #version} => String
    #   * {Types::CreateFlowVersionResponse#definition #definition} => Types::FlowDefinition
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_flow_version({
    #     flow_identifier: "FlowIdentifier", # required
    #     description: "FlowDescription",
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.execution_role_arn #=> String
    #   resp.customer_encryption_key_arn #=> String
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.status #=> String, one of "Failed", "Prepared", "Preparing", "NotPrepared"
    #   resp.created_at #=> Time
    #   resp.version #=> String
    #   resp.definition.nodes #=> Array
    #   resp.definition.nodes[0].name #=> String
    #   resp.definition.nodes[0].type #=> String, one of "Input", "Output", "KnowledgeBase", "Condition", "Lex", "Prompt", "LambdaFunction", "Storage", "Agent", "Retrieval", "Iterator", "Collector", "InlineCode", "Loop", "LoopInput", "LoopController"
    #   resp.definition.nodes[0].configuration.knowledge_base.knowledge_base_id #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.model_id #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.guardrail_configuration.guardrail_identifier #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.guardrail_configuration.guardrail_version #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.number_of_results #=> Integer
    #   resp.definition.nodes[0].configuration.knowledge_base.prompt_template.text_prompt_template #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.inference_configuration.text.temperature #=> Float
    #   resp.definition.nodes[0].configuration.knowledge_base.inference_configuration.text.top_p #=> Float
    #   resp.definition.nodes[0].configuration.knowledge_base.inference_configuration.text.max_tokens #=> Integer
    #   resp.definition.nodes[0].configuration.knowledge_base.inference_configuration.text.stop_sequences #=> Array
    #   resp.definition.nodes[0].configuration.knowledge_base.inference_configuration.text.stop_sequences[0] #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.type #=> String, one of "BEDROCK_RERANKING_MODEL"
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.model_configuration.model_arn #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.model_configuration.additional_model_request_fields #=> Hash
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.number_of_reranked_results #=> Integer
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.metadata_configuration.selection_mode #=> String, one of "SELECTIVE", "ALL"
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.metadata_configuration.selective_mode_configuration.fields_to_include #=> Array
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.metadata_configuration.selective_mode_configuration.fields_to_include[0].field_name #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.metadata_configuration.selective_mode_configuration.fields_to_exclude #=> Array
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.metadata_configuration.selective_mode_configuration.fields_to_exclude[0].field_name #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.prompt_template.text_prompt_template #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.inference_config.text.temperature #=> Float
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.inference_config.text.top_p #=> Float
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.inference_config.text.max_tokens #=> Integer
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.inference_config.text.stop_sequences #=> Array
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.inference_config.text.stop_sequences[0] #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.additional_model_request_fields #=> Hash
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.performance_config.latency #=> String, one of "standard", "optimized"
    #   resp.definition.nodes[0].configuration.condition.conditions #=> Array
    #   resp.definition.nodes[0].configuration.condition.conditions[0].name #=> String
    #   resp.definition.nodes[0].configuration.condition.conditions[0].expression #=> String
    #   resp.definition.nodes[0].configuration.lex.bot_alias_arn #=> String
    #   resp.definition.nodes[0].configuration.lex.locale_id #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.resource.prompt_arn #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_type #=> String, one of "TEXT", "CHAT"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.text.text #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.text.cache_point.type #=> String, one of "default"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.text.input_variables #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.text.input_variables[0].name #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.messages #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.messages[0].role #=> String, one of "user", "assistant"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.messages[0].content #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.messages[0].content[0].text #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.messages[0].content[0].cache_point.type #=> String, one of "default"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.system #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.system[0].text #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.system[0].cache_point.type #=> String, one of "default"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.input_variables #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.input_variables[0].name #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tools #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tools[0].tool_spec.name #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tools[0].tool_spec.description #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tools[0].cache_point.type #=> String, one of "default"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool_choice.tool.name #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.model_id #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.inference_configuration.text.temperature #=> Float
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.inference_configuration.text.top_p #=> Float
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.inference_configuration.text.max_tokens #=> Integer
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.inference_configuration.text.stop_sequences #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.inference_configuration.text.stop_sequences[0] #=> String
    #   resp.definition.nodes[0].configuration.prompt.guardrail_configuration.guardrail_identifier #=> String
    #   resp.definition.nodes[0].configuration.prompt.guardrail_configuration.guardrail_version #=> String
    #   resp.definition.nodes[0].configuration.lambda_function.lambda_arn #=> String
    #   resp.definition.nodes[0].configuration.storage.service_configuration.s3.bucket_name #=> String
    #   resp.definition.nodes[0].configuration.agent.agent_alias_arn #=> String
    #   resp.definition.nodes[0].configuration.retrieval.service_configuration.s3.bucket_name #=> String
    #   resp.definition.nodes[0].configuration.inline_code.code #=> String
    #   resp.definition.nodes[0].configuration.inline_code.language #=> String, one of "Python_3"
    #   resp.definition.nodes[0].configuration.loop.definition #=> Types::FlowDefinition
    #   resp.definition.nodes[0].configuration.loop_controller.continue_condition.name #=> String
    #   resp.definition.nodes[0].configuration.loop_controller.continue_condition.expression #=> String
    #   resp.definition.nodes[0].configuration.loop_controller.max_iterations #=> Integer
    #   resp.definition.nodes[0].inputs #=> Array
    #   resp.definition.nodes[0].inputs[0].name #=> String
    #   resp.definition.nodes[0].inputs[0].type #=> String, one of "String", "Number", "Boolean", "Object", "Array"
    #   resp.definition.nodes[0].inputs[0].expression #=> String
    #   resp.definition.nodes[0].inputs[0].category #=> String, one of "LoopCondition", "ReturnValueToLoopStart", "ExitLoop"
    #   resp.definition.nodes[0].outputs #=> Array
    #   resp.definition.nodes[0].outputs[0].name #=> String
    #   resp.definition.nodes[0].outputs[0].type #=> String, one of "String", "Number", "Boolean", "Object", "Array"
    #   resp.definition.connections #=> Array
    #   resp.definition.connections[0].type #=> String, one of "Data", "Conditional"
    #   resp.definition.connections[0].name #=> String
    #   resp.definition.connections[0].source #=> String
    #   resp.definition.connections[0].target #=> String
    #   resp.definition.connections[0].configuration.data.source_output #=> String
    #   resp.definition.connections[0].configuration.data.target_input #=> String
    #   resp.definition.connections[0].configuration.conditional.condition #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateFlowVersion AWS API Documentation
    #
    # @overload create_flow_version(params = {})
    # @param [Hash] params ({})
    def create_flow_version(params = {}, options = {})
      req = build_request(:create_flow_version, params)
      req.send_request(options)
    end

    # Creates a knowledge base. A knowledge base contains your data sources
    # so that Large Language Models (LLMs) can use your data. To create a
    # knowledge base, you must first set up your data sources and configure
    # a supported vector store. For more information, see [Set up a
    # knowledge base][1].
    #
    # <note markdown="1"> If you prefer to let Amazon Bedrock create and manage a vector store
    # for you in Amazon OpenSearch Service, use the console. For more
    # information, see [Create a knowledge base][2].
    #
    #  </note>
    #
    # * Provide the `name` and an optional `description`.
    #
    # * Provide the Amazon Resource Name (ARN) with permissions to create a
    #   knowledge base in the `roleArn` field.
    #
    # * Provide the embedding model to use in the `embeddingModelArn` field
    #   in the `knowledgeBaseConfiguration` object.
    #
    # * Provide the configuration for your vector store in the
    #   `storageConfiguration` object.
    #
    #   * For an Amazon OpenSearch Service database, use the
    #     `opensearchServerlessConfiguration` object. For more information,
    #     see [Create a vector store in Amazon OpenSearch Service][3].
    #
    #   * For an Amazon Aurora database, use the `RdsConfiguration` object.
    #     For more information, see [Create a vector store in Amazon
    #     Aurora][4].
    #
    #   * For a Pinecone database, use the `pineconeConfiguration` object.
    #     For more information, see [Create a vector store in Pinecone][5].
    #
    #   * For a Redis Enterprise Cloud database, use the
    #     `redisEnterpriseCloudConfiguration` object. For more information,
    #     see [Create a vector store in Redis Enterprise Cloud][6].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowlege-base-prereq.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-create
    # [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-oss.html
    # [4]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-rds.html
    # [5]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-pinecone.html
    # [6]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-redis.html
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, String] :name
    #   A name for the knowledge base.
    #
    # @option params [String] :description
    #   A description of the knowledge base.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role with permissions to
    #   invoke API operations on the knowledge base.
    #
    # @option params [required, Types::KnowledgeBaseConfiguration] :knowledge_base_configuration
    #   Contains details about the embeddings model used for the knowledge
    #   base.
    #
    # @option params [Types::StorageConfiguration] :storage_configuration
    #   Contains details about the configuration of the vector database used
    #   for the knowledge base.
    #
    # @option params [Hash<String,String>] :tags
    #   Specify the key-value pairs for the tags that you want to attach to
    #   your knowledge base in this object.
    #
    # @return [Types::CreateKnowledgeBaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKnowledgeBaseResponse#knowledge_base #knowledge_base} => Types::KnowledgeBase
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_knowledge_base({
    #     client_token: "ClientToken",
    #     name: "Name", # required
    #     description: "Description",
    #     role_arn: "KnowledgeBaseRoleArn", # required
    #     knowledge_base_configuration: { # required
    #       type: "VECTOR", # required, accepts VECTOR, KENDRA, SQL
    #       vector_knowledge_base_configuration: {
    #         embedding_model_arn: "BedrockEmbeddingModelArn", # required
    #         embedding_model_configuration: {
    #           bedrock_embedding_model_configuration: {
    #             dimensions: 1,
    #             embedding_data_type: "FLOAT32", # accepts FLOAT32, BINARY
    #             audio: [
    #               {
    #                 segmentation_configuration: { # required
    #                   fixed_length_duration: 1, # required
    #                 },
    #               },
    #             ],
    #             video: [
    #               {
    #                 segmentation_configuration: { # required
    #                   fixed_length_duration: 1, # required
    #                 },
    #               },
    #             ],
    #           },
    #         },
    #         supplemental_data_storage_configuration: {
    #           storage_locations: [ # required
    #             {
    #               type: "S3", # required, accepts S3
    #               s3_location: {
    #                 uri: "S3BucketUri", # required
    #               },
    #             },
    #           ],
    #         },
    #       },
    #       kendra_knowledge_base_configuration: {
    #         kendra_index_arn: "KendraIndexArn", # required
    #       },
    #       sql_knowledge_base_configuration: {
    #         type: "REDSHIFT", # required, accepts REDSHIFT
    #         redshift_configuration: {
    #           storage_configurations: [ # required
    #             {
    #               type: "REDSHIFT", # required, accepts REDSHIFT, AWS_DATA_CATALOG
    #               aws_data_catalog_configuration: {
    #                 table_names: ["AwsDataCatalogTableName"], # required
    #               },
    #               redshift_configuration: {
    #                 database_name: "RedshiftDatabase", # required
    #               },
    #             },
    #           ],
    #           query_engine_configuration: { # required
    #             type: "SERVERLESS", # required, accepts SERVERLESS, PROVISIONED
    #             serverless_configuration: {
    #               workgroup_arn: "WorkgroupArn", # required
    #               auth_configuration: { # required
    #                 type: "IAM", # required, accepts IAM, USERNAME_PASSWORD
    #                 username_password_secret_arn: "SecretArn",
    #               },
    #             },
    #             provisioned_configuration: {
    #               cluster_identifier: "RedshiftClusterIdentifier", # required
    #               auth_configuration: { # required
    #                 type: "IAM", # required, accepts IAM, USERNAME_PASSWORD, USERNAME
    #                 database_user: "String",
    #                 username_password_secret_arn: "SecretArn",
    #               },
    #             },
    #           },
    #           query_generation_configuration: {
    #             execution_timeout_seconds: 1,
    #             generation_context: {
    #               tables: [
    #                 {
    #                   name: "QueryGenerationTableName", # required
    #                   description: "DescriptionString",
    #                   inclusion: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   columns: [
    #                     {
    #                       name: "QueryGenerationColumnName",
    #                       description: "DescriptionString",
    #                       inclusion: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                     },
    #                   ],
    #                 },
    #               ],
    #               curated_queries: [
    #                 {
    #                   natural_language: "NaturalLanguageString", # required
    #                   sql: "SqlString", # required
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #       },
    #     },
    #     storage_configuration: {
    #       type: "OPENSEARCH_SERVERLESS", # required, accepts OPENSEARCH_SERVERLESS, PINECONE, REDIS_ENTERPRISE_CLOUD, RDS, MONGO_DB_ATLAS, NEPTUNE_ANALYTICS, OPENSEARCH_MANAGED_CLUSTER, S3_VECTORS
    #       opensearch_serverless_configuration: {
    #         collection_arn: "OpenSearchServerlessCollectionArn", # required
    #         vector_index_name: "OpenSearchServerlessIndexName", # required
    #         field_mapping: { # required
    #           vector_field: "FieldName", # required
    #           text_field: "FieldName", # required
    #           metadata_field: "FieldName", # required
    #         },
    #       },
    #       opensearch_managed_cluster_configuration: {
    #         domain_endpoint: "OpenSearchManagedClusterDomainEndpoint", # required
    #         domain_arn: "OpenSearchManagedClusterDomainArn", # required
    #         vector_index_name: "OpenSearchManagedClusterIndexName", # required
    #         field_mapping: { # required
    #           vector_field: "FieldName", # required
    #           text_field: "FieldName", # required
    #           metadata_field: "FieldName", # required
    #         },
    #       },
    #       pinecone_configuration: {
    #         connection_string: "PineconeConnectionString", # required
    #         credentials_secret_arn: "SecretArn", # required
    #         namespace: "PineconeNamespace",
    #         field_mapping: { # required
    #           text_field: "FieldName", # required
    #           metadata_field: "FieldName", # required
    #         },
    #       },
    #       redis_enterprise_cloud_configuration: {
    #         endpoint: "RedisEnterpriseCloudEndpoint", # required
    #         vector_index_name: "RedisEnterpriseCloudIndexName", # required
    #         credentials_secret_arn: "SecretArn", # required
    #         field_mapping: { # required
    #           vector_field: "FieldName", # required
    #           text_field: "FieldName", # required
    #           metadata_field: "FieldName", # required
    #         },
    #       },
    #       rds_configuration: {
    #         resource_arn: "RdsArn", # required
    #         credentials_secret_arn: "SecretArn", # required
    #         database_name: "RdsDatabaseName", # required
    #         table_name: "RdsTableName", # required
    #         field_mapping: { # required
    #           primary_key_field: "ColumnName", # required
    #           vector_field: "ColumnName", # required
    #           text_field: "ColumnName", # required
    #           metadata_field: "ColumnName", # required
    #           custom_metadata_field: "ColumnName",
    #         },
    #       },
    #       mongo_db_atlas_configuration: {
    #         endpoint: "MongoDbAtlasEndpoint", # required
    #         database_name: "MongoDbAtlasDatabaseName", # required
    #         collection_name: "MongoDbAtlasCollectionName", # required
    #         vector_index_name: "MongoDbAtlasIndexName", # required
    #         credentials_secret_arn: "SecretArn", # required
    #         field_mapping: { # required
    #           vector_field: "FieldName", # required
    #           text_field: "FieldName", # required
    #           metadata_field: "FieldName", # required
    #         },
    #         endpoint_service_name: "MongoDbAtlasEndpointServiceName",
    #         text_index_name: "MongoDbAtlasIndexName",
    #       },
    #       neptune_analytics_configuration: {
    #         graph_arn: "GraphArn", # required
    #         field_mapping: { # required
    #           text_field: "FieldName", # required
    #           metadata_field: "FieldName", # required
    #         },
    #       },
    #       s3_vectors_configuration: {
    #         vector_bucket_arn: "VectorBucketArn",
    #         index_arn: "IndexArn",
    #         index_name: "IndexName",
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.knowledge_base.knowledge_base_id #=> String
    #   resp.knowledge_base.name #=> String
    #   resp.knowledge_base.knowledge_base_arn #=> String
    #   resp.knowledge_base.description #=> String
    #   resp.knowledge_base.role_arn #=> String
    #   resp.knowledge_base.knowledge_base_configuration.type #=> String, one of "VECTOR", "KENDRA", "SQL"
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_arn #=> String
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration.dimensions #=> Integer
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration.embedding_data_type #=> String, one of "FLOAT32", "BINARY"
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration.audio #=> Array
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration.audio[0].segmentation_configuration.fixed_length_duration #=> Integer
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration.video #=> Array
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration.video[0].segmentation_configuration.fixed_length_duration #=> Integer
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.supplemental_data_storage_configuration.storage_locations #=> Array
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.supplemental_data_storage_configuration.storage_locations[0].type #=> String, one of "S3"
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.supplemental_data_storage_configuration.storage_locations[0].s3_location.uri #=> String
    #   resp.knowledge_base.knowledge_base_configuration.kendra_knowledge_base_configuration.kendra_index_arn #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.type #=> String, one of "REDSHIFT"
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.storage_configurations #=> Array
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.storage_configurations[0].type #=> String, one of "REDSHIFT", "AWS_DATA_CATALOG"
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.storage_configurations[0].aws_data_catalog_configuration.table_names #=> Array
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.storage_configurations[0].aws_data_catalog_configuration.table_names[0] #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.storage_configurations[0].redshift_configuration.database_name #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.type #=> String, one of "SERVERLESS", "PROVISIONED"
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.serverless_configuration.workgroup_arn #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.serverless_configuration.auth_configuration.type #=> String, one of "IAM", "USERNAME_PASSWORD"
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.serverless_configuration.auth_configuration.username_password_secret_arn #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.provisioned_configuration.cluster_identifier #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.provisioned_configuration.auth_configuration.type #=> String, one of "IAM", "USERNAME_PASSWORD", "USERNAME"
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.provisioned_configuration.auth_configuration.database_user #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.provisioned_configuration.auth_configuration.username_password_secret_arn #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.execution_timeout_seconds #=> Integer
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.tables #=> Array
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.tables[0].name #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.tables[0].description #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.tables[0].inclusion #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.tables[0].columns #=> Array
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.tables[0].columns[0].name #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.tables[0].columns[0].description #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.tables[0].columns[0].inclusion #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.curated_queries #=> Array
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.curated_queries[0].natural_language #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.curated_queries[0].sql #=> String
    #   resp.knowledge_base.storage_configuration.type #=> String, one of "OPENSEARCH_SERVERLESS", "PINECONE", "REDIS_ENTERPRISE_CLOUD", "RDS", "MONGO_DB_ATLAS", "NEPTUNE_ANALYTICS", "OPENSEARCH_MANAGED_CLUSTER", "S3_VECTORS"
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.collection_arn #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.vector_index_name #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.field_mapping.vector_field #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_managed_cluster_configuration.domain_endpoint #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_managed_cluster_configuration.domain_arn #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_managed_cluster_configuration.vector_index_name #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_managed_cluster_configuration.field_mapping.vector_field #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_managed_cluster_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_managed_cluster_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.connection_string #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.credentials_secret_arn #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.namespace #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.endpoint #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.vector_index_name #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.credentials_secret_arn #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.field_mapping.vector_field #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.resource_arn #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.credentials_secret_arn #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.database_name #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.table_name #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.field_mapping.primary_key_field #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.field_mapping.vector_field #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.field_mapping.custom_metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.endpoint #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.database_name #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.collection_name #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.vector_index_name #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.credentials_secret_arn #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.field_mapping.vector_field #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.endpoint_service_name #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.text_index_name #=> String
    #   resp.knowledge_base.storage_configuration.neptune_analytics_configuration.graph_arn #=> String
    #   resp.knowledge_base.storage_configuration.neptune_analytics_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.neptune_analytics_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.s3_vectors_configuration.vector_bucket_arn #=> String
    #   resp.knowledge_base.storage_configuration.s3_vectors_configuration.index_arn #=> String
    #   resp.knowledge_base.storage_configuration.s3_vectors_configuration.index_name #=> String
    #   resp.knowledge_base.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "UPDATING", "FAILED", "DELETE_UNSUCCESSFUL"
    #   resp.knowledge_base.created_at #=> Time
    #   resp.knowledge_base.updated_at #=> Time
    #   resp.knowledge_base.failure_reasons #=> Array
    #   resp.knowledge_base.failure_reasons[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateKnowledgeBase AWS API Documentation
    #
    # @overload create_knowledge_base(params = {})
    # @param [Hash] params ({})
    def create_knowledge_base(params = {}, options = {})
      req = build_request(:create_knowledge_base, params)
      req.send_request(options)
    end

    # Creates a prompt in your prompt library that you can add to a flow.
    # For more information, see [Prompt management in Amazon Bedrock][1],
    # [Create a prompt using Prompt management][2] and [Prompt flows in
    # Amazon Bedrock][3] in the Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-create.html
    # [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows.html
    #
    # @option params [required, String] :name
    #   A name for the prompt.
    #
    # @option params [String] :description
    #   A description for the prompt.
    #
    # @option params [String] :customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key to encrypt the prompt.
    #
    # @option params [String] :default_variant
    #   The name of the default variant for the prompt. This value must match
    #   the `name` field in the relevant [PromptVariant][1] object.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptVariant.html
    #
    # @option params [Array<Types::PromptVariant>] :variants
    #   A list of objects, each containing details about a variant of the
    #   prompt.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
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
    #   Any tags that you want to attach to the prompt. For more information,
    #   see [Tagging resources in Amazon Bedrock][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html
    #
    # @return [Types::CreatePromptResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePromptResponse#name #name} => String
    #   * {Types::CreatePromptResponse#description #description} => String
    #   * {Types::CreatePromptResponse#customer_encryption_key_arn #customer_encryption_key_arn} => String
    #   * {Types::CreatePromptResponse#default_variant #default_variant} => String
    #   * {Types::CreatePromptResponse#variants #variants} => Array&lt;Types::PromptVariant&gt;
    #   * {Types::CreatePromptResponse#id #id} => String
    #   * {Types::CreatePromptResponse#arn #arn} => String
    #   * {Types::CreatePromptResponse#version #version} => String
    #   * {Types::CreatePromptResponse#created_at #created_at} => Time
    #   * {Types::CreatePromptResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_prompt({
    #     name: "PromptName", # required
    #     description: "PromptDescription",
    #     customer_encryption_key_arn: "KmsKeyArn",
    #     default_variant: "PromptVariantName",
    #     variants: [
    #       {
    #         name: "PromptVariantName", # required
    #         template_type: "TEXT", # required, accepts TEXT, CHAT
    #         template_configuration: { # required
    #           text: {
    #             text: "TextPrompt", # required
    #             cache_point: {
    #               type: "default", # required, accepts default
    #             },
    #             input_variables: [
    #               {
    #                 name: "PromptInputVariableName",
    #               },
    #             ],
    #           },
    #           chat: {
    #             messages: [ # required
    #               {
    #                 role: "user", # required, accepts user, assistant
    #                 content: [ # required
    #                   {
    #                     text: "String",
    #                     cache_point: {
    #                       type: "default", # required, accepts default
    #                     },
    #                   },
    #                 ],
    #               },
    #             ],
    #             system: [
    #               {
    #                 text: "NonEmptyString",
    #                 cache_point: {
    #                   type: "default", # required, accepts default
    #                 },
    #               },
    #             ],
    #             input_variables: [
    #               {
    #                 name: "PromptInputVariableName",
    #               },
    #             ],
    #             tool_configuration: {
    #               tools: [ # required
    #                 {
    #                   tool_spec: {
    #                     name: "ToolName", # required
    #                     description: "NonEmptyString",
    #                     input_schema: { # required
    #                       json: {
    #                       },
    #                     },
    #                   },
    #                   cache_point: {
    #                     type: "default", # required, accepts default
    #                   },
    #                 },
    #               ],
    #               tool_choice: {
    #                 auto: {
    #                 },
    #                 any: {
    #                 },
    #                 tool: {
    #                   name: "ToolName", # required
    #                 },
    #               },
    #             },
    #           },
    #         },
    #         model_id: "PromptModelIdentifier",
    #         inference_configuration: {
    #           text: {
    #             temperature: 1.0,
    #             top_p: 1.0,
    #             max_tokens: 1,
    #             stop_sequences: ["String"],
    #           },
    #         },
    #         metadata: [
    #           {
    #             key: "PromptMetadataKey", # required
    #             value: "PromptMetadataValue", # required
    #           },
    #         ],
    #         additional_model_request_fields: {
    #         },
    #         gen_ai_resource: {
    #           agent: {
    #             agent_identifier: "AgentAliasArn", # required
    #           },
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
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.customer_encryption_key_arn #=> String
    #   resp.default_variant #=> String
    #   resp.variants #=> Array
    #   resp.variants[0].name #=> String
    #   resp.variants[0].template_type #=> String, one of "TEXT", "CHAT"
    #   resp.variants[0].template_configuration.text.text #=> String
    #   resp.variants[0].template_configuration.text.cache_point.type #=> String, one of "default"
    #   resp.variants[0].template_configuration.text.input_variables #=> Array
    #   resp.variants[0].template_configuration.text.input_variables[0].name #=> String
    #   resp.variants[0].template_configuration.chat.messages #=> Array
    #   resp.variants[0].template_configuration.chat.messages[0].role #=> String, one of "user", "assistant"
    #   resp.variants[0].template_configuration.chat.messages[0].content #=> Array
    #   resp.variants[0].template_configuration.chat.messages[0].content[0].text #=> String
    #   resp.variants[0].template_configuration.chat.messages[0].content[0].cache_point.type #=> String, one of "default"
    #   resp.variants[0].template_configuration.chat.system #=> Array
    #   resp.variants[0].template_configuration.chat.system[0].text #=> String
    #   resp.variants[0].template_configuration.chat.system[0].cache_point.type #=> String, one of "default"
    #   resp.variants[0].template_configuration.chat.input_variables #=> Array
    #   resp.variants[0].template_configuration.chat.input_variables[0].name #=> String
    #   resp.variants[0].template_configuration.chat.tool_configuration.tools #=> Array
    #   resp.variants[0].template_configuration.chat.tool_configuration.tools[0].tool_spec.name #=> String
    #   resp.variants[0].template_configuration.chat.tool_configuration.tools[0].tool_spec.description #=> String
    #   resp.variants[0].template_configuration.chat.tool_configuration.tools[0].cache_point.type #=> String, one of "default"
    #   resp.variants[0].template_configuration.chat.tool_configuration.tool_choice.tool.name #=> String
    #   resp.variants[0].model_id #=> String
    #   resp.variants[0].inference_configuration.text.temperature #=> Float
    #   resp.variants[0].inference_configuration.text.top_p #=> Float
    #   resp.variants[0].inference_configuration.text.max_tokens #=> Integer
    #   resp.variants[0].inference_configuration.text.stop_sequences #=> Array
    #   resp.variants[0].inference_configuration.text.stop_sequences[0] #=> String
    #   resp.variants[0].metadata #=> Array
    #   resp.variants[0].metadata[0].key #=> String
    #   resp.variants[0].metadata[0].value #=> String
    #   resp.variants[0].gen_ai_resource.agent.agent_identifier #=> String
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.version #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreatePrompt AWS API Documentation
    #
    # @overload create_prompt(params = {})
    # @param [Hash] params ({})
    def create_prompt(params = {}, options = {})
      req = build_request(:create_prompt, params)
      req.send_request(options)
    end

    # Creates a static snapshot of your prompt that can be deployed to
    # production. For more information, see [Deploy prompts using Prompt
    # management by creating versions][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-deploy.html
    #
    # @option params [required, String] :prompt_identifier
    #   The unique identifier of the prompt that you want to create a version
    #   of.
    #
    # @option params [String] :description
    #   A description for the version of the prompt.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
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
    #   Any tags that you want to attach to the version of the prompt. For
    #   more information, see [Tagging resources in Amazon Bedrock][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html
    #
    # @return [Types::CreatePromptVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePromptVersionResponse#name #name} => String
    #   * {Types::CreatePromptVersionResponse#description #description} => String
    #   * {Types::CreatePromptVersionResponse#customer_encryption_key_arn #customer_encryption_key_arn} => String
    #   * {Types::CreatePromptVersionResponse#default_variant #default_variant} => String
    #   * {Types::CreatePromptVersionResponse#variants #variants} => Array&lt;Types::PromptVariant&gt;
    #   * {Types::CreatePromptVersionResponse#id #id} => String
    #   * {Types::CreatePromptVersionResponse#arn #arn} => String
    #   * {Types::CreatePromptVersionResponse#version #version} => String
    #   * {Types::CreatePromptVersionResponse#created_at #created_at} => Time
    #   * {Types::CreatePromptVersionResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_prompt_version({
    #     prompt_identifier: "PromptIdentifier", # required
    #     description: "PromptDescription",
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.customer_encryption_key_arn #=> String
    #   resp.default_variant #=> String
    #   resp.variants #=> Array
    #   resp.variants[0].name #=> String
    #   resp.variants[0].template_type #=> String, one of "TEXT", "CHAT"
    #   resp.variants[0].template_configuration.text.text #=> String
    #   resp.variants[0].template_configuration.text.cache_point.type #=> String, one of "default"
    #   resp.variants[0].template_configuration.text.input_variables #=> Array
    #   resp.variants[0].template_configuration.text.input_variables[0].name #=> String
    #   resp.variants[0].template_configuration.chat.messages #=> Array
    #   resp.variants[0].template_configuration.chat.messages[0].role #=> String, one of "user", "assistant"
    #   resp.variants[0].template_configuration.chat.messages[0].content #=> Array
    #   resp.variants[0].template_configuration.chat.messages[0].content[0].text #=> String
    #   resp.variants[0].template_configuration.chat.messages[0].content[0].cache_point.type #=> String, one of "default"
    #   resp.variants[0].template_configuration.chat.system #=> Array
    #   resp.variants[0].template_configuration.chat.system[0].text #=> String
    #   resp.variants[0].template_configuration.chat.system[0].cache_point.type #=> String, one of "default"
    #   resp.variants[0].template_configuration.chat.input_variables #=> Array
    #   resp.variants[0].template_configuration.chat.input_variables[0].name #=> String
    #   resp.variants[0].template_configuration.chat.tool_configuration.tools #=> Array
    #   resp.variants[0].template_configuration.chat.tool_configuration.tools[0].tool_spec.name #=> String
    #   resp.variants[0].template_configuration.chat.tool_configuration.tools[0].tool_spec.description #=> String
    #   resp.variants[0].template_configuration.chat.tool_configuration.tools[0].cache_point.type #=> String, one of "default"
    #   resp.variants[0].template_configuration.chat.tool_configuration.tool_choice.tool.name #=> String
    #   resp.variants[0].model_id #=> String
    #   resp.variants[0].inference_configuration.text.temperature #=> Float
    #   resp.variants[0].inference_configuration.text.top_p #=> Float
    #   resp.variants[0].inference_configuration.text.max_tokens #=> Integer
    #   resp.variants[0].inference_configuration.text.stop_sequences #=> Array
    #   resp.variants[0].inference_configuration.text.stop_sequences[0] #=> String
    #   resp.variants[0].metadata #=> Array
    #   resp.variants[0].metadata[0].key #=> String
    #   resp.variants[0].metadata[0].value #=> String
    #   resp.variants[0].gen_ai_resource.agent.agent_identifier #=> String
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.version #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreatePromptVersion AWS API Documentation
    #
    # @overload create_prompt_version(params = {})
    # @param [Hash] params ({})
    def create_prompt_version(params = {}, options = {})
      req = build_request(:create_prompt_version, params)
      req.send_request(options)
    end

    # Deletes an agent.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent to delete.
    #
    # @option params [Boolean] :skip_resource_in_use_check
    #   By default, this value is `false` and deletion is stopped if the
    #   resource is in use. If you set it to `true`, the resource will be
    #   deleted even if the resource is in use.
    #
    # @return [Types::DeleteAgentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAgentResponse#agent_id #agent_id} => String
    #   * {Types::DeleteAgentResponse#agent_status #agent_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_agent({
    #     agent_id: "Id", # required
    #     skip_resource_in_use_check: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_id #=> String
    #   resp.agent_status #=> String, one of "CREATING", "PREPARING", "PREPARED", "NOT_PREPARED", "DELETING", "FAILED", "VERSIONING", "UPDATING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteAgent AWS API Documentation
    #
    # @overload delete_agent(params = {})
    # @param [Hash] params ({})
    def delete_agent(params = {}, options = {})
      req = build_request(:delete_agent, params)
      req.send_request(options)
    end

    # Deletes an action group in an agent.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent that the action group belongs to.
    #
    # @option params [required, String] :agent_version
    #   The version of the agent that the action group belongs to.
    #
    # @option params [required, String] :action_group_id
    #   The unique identifier of the action group to delete.
    #
    # @option params [Boolean] :skip_resource_in_use_check
    #   By default, this value is `false` and deletion is stopped if the
    #   resource is in use. If you set it to `true`, the resource will be
    #   deleted even if the resource is in use.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_agent_action_group({
    #     agent_id: "Id", # required
    #     agent_version: "DraftVersion", # required
    #     action_group_id: "Id", # required
    #     skip_resource_in_use_check: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteAgentActionGroup AWS API Documentation
    #
    # @overload delete_agent_action_group(params = {})
    # @param [Hash] params ({})
    def delete_agent_action_group(params = {}, options = {})
      req = build_request(:delete_agent_action_group, params)
      req.send_request(options)
    end

    # Deletes an alias of an agent.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent that the alias belongs to.
    #
    # @option params [required, String] :agent_alias_id
    #   The unique identifier of the alias to delete.
    #
    # @return [Types::DeleteAgentAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAgentAliasResponse#agent_id #agent_id} => String
    #   * {Types::DeleteAgentAliasResponse#agent_alias_id #agent_alias_id} => String
    #   * {Types::DeleteAgentAliasResponse#agent_alias_status #agent_alias_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_agent_alias({
    #     agent_id: "Id", # required
    #     agent_alias_id: "AgentAliasId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_id #=> String
    #   resp.agent_alias_id #=> String
    #   resp.agent_alias_status #=> String, one of "CREATING", "PREPARED", "FAILED", "UPDATING", "DELETING", "DISSOCIATED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteAgentAlias AWS API Documentation
    #
    # @overload delete_agent_alias(params = {})
    # @param [Hash] params ({})
    def delete_agent_alias(params = {}, options = {})
      req = build_request(:delete_agent_alias, params)
      req.send_request(options)
    end

    # Deletes a version of an agent.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent that the version belongs to.
    #
    # @option params [required, String] :agent_version
    #   The version of the agent to delete.
    #
    # @option params [Boolean] :skip_resource_in_use_check
    #   By default, this value is `false` and deletion is stopped if the
    #   resource is in use. If you set it to `true`, the resource will be
    #   deleted even if the resource is in use.
    #
    # @return [Types::DeleteAgentVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAgentVersionResponse#agent_id #agent_id} => String
    #   * {Types::DeleteAgentVersionResponse#agent_version #agent_version} => String
    #   * {Types::DeleteAgentVersionResponse#agent_status #agent_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_agent_version({
    #     agent_id: "Id", # required
    #     agent_version: "NumericalVersion", # required
    #     skip_resource_in_use_check: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_id #=> String
    #   resp.agent_version #=> String
    #   resp.agent_status #=> String, one of "CREATING", "PREPARING", "PREPARED", "NOT_PREPARED", "DELETING", "FAILED", "VERSIONING", "UPDATING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteAgentVersion AWS API Documentation
    #
    # @overload delete_agent_version(params = {})
    # @param [Hash] params ({})
    def delete_agent_version(params = {}, options = {})
      req = build_request(:delete_agent_version, params)
      req.send_request(options)
    end

    # Deletes a data source from a knowledge base.
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base from which to delete the
    #   data source.
    #
    # @option params [required, String] :data_source_id
    #   The unique identifier of the data source to delete.
    #
    # @return [Types::DeleteDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDataSourceResponse#knowledge_base_id #knowledge_base_id} => String
    #   * {Types::DeleteDataSourceResponse#data_source_id #data_source_id} => String
    #   * {Types::DeleteDataSourceResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_source({
    #     knowledge_base_id: "Id", # required
    #     data_source_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.knowledge_base_id #=> String
    #   resp.data_source_id #=> String
    #   resp.status #=> String, one of "AVAILABLE", "DELETING", "DELETE_UNSUCCESSFUL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteDataSource AWS API Documentation
    #
    # @overload delete_data_source(params = {})
    # @param [Hash] params ({})
    def delete_data_source(params = {}, options = {})
      req = build_request(:delete_data_source, params)
      req.send_request(options)
    end

    # Deletes a flow.
    #
    # @option params [required, String] :flow_identifier
    #   The unique identifier of the flow.
    #
    # @option params [Boolean] :skip_resource_in_use_check
    #   By default, this value is `false` and deletion is stopped if the
    #   resource is in use. If you set it to `true`, the resource will be
    #   deleted even if the resource is in use.
    #
    # @return [Types::DeleteFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFlowResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_flow({
    #     flow_identifier: "FlowIdentifier", # required
    #     skip_resource_in_use_check: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteFlow AWS API Documentation
    #
    # @overload delete_flow(params = {})
    # @param [Hash] params ({})
    def delete_flow(params = {}, options = {})
      req = build_request(:delete_flow, params)
      req.send_request(options)
    end

    # Deletes an alias of a flow.
    #
    # @option params [required, String] :flow_identifier
    #   The unique identifier of the flow that the alias belongs to.
    #
    # @option params [required, String] :alias_identifier
    #   The unique identifier of the alias to be deleted.
    #
    # @return [Types::DeleteFlowAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFlowAliasResponse#flow_id #flow_id} => String
    #   * {Types::DeleteFlowAliasResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_flow_alias({
    #     flow_identifier: "FlowIdentifier", # required
    #     alias_identifier: "FlowAliasIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_id #=> String
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteFlowAlias AWS API Documentation
    #
    # @overload delete_flow_alias(params = {})
    # @param [Hash] params ({})
    def delete_flow_alias(params = {}, options = {})
      req = build_request(:delete_flow_alias, params)
      req.send_request(options)
    end

    # Deletes a version of a flow.
    #
    # @option params [required, String] :flow_identifier
    #   The unique identifier of the flow whose version that you want to
    #   delete
    #
    # @option params [required, String] :flow_version
    #   The version of the flow that you want to delete.
    #
    # @option params [Boolean] :skip_resource_in_use_check
    #   By default, this value is `false` and deletion is stopped if the
    #   resource is in use. If you set it to `true`, the resource will be
    #   deleted even if the resource is in use.
    #
    # @return [Types::DeleteFlowVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFlowVersionResponse#id #id} => String
    #   * {Types::DeleteFlowVersionResponse#version #version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_flow_version({
    #     flow_identifier: "FlowIdentifier", # required
    #     flow_version: "NumericalVersion", # required
    #     skip_resource_in_use_check: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteFlowVersion AWS API Documentation
    #
    # @overload delete_flow_version(params = {})
    # @param [Hash] params ({})
    def delete_flow_version(params = {}, options = {})
      req = build_request(:delete_flow_version, params)
      req.send_request(options)
    end

    # Deletes a knowledge base. Before deleting a knowledge base, you should
    # disassociate the knowledge base from any agents that it is associated
    # with by making a [DisassociateAgentKnowledgeBase][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_DisassociateAgentKnowledgeBase.html
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base to delete.
    #
    # @return [Types::DeleteKnowledgeBaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteKnowledgeBaseResponse#knowledge_base_id #knowledge_base_id} => String
    #   * {Types::DeleteKnowledgeBaseResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_knowledge_base({
    #     knowledge_base_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.knowledge_base_id #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "UPDATING", "FAILED", "DELETE_UNSUCCESSFUL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteKnowledgeBase AWS API Documentation
    #
    # @overload delete_knowledge_base(params = {})
    # @param [Hash] params ({})
    def delete_knowledge_base(params = {}, options = {})
      req = build_request(:delete_knowledge_base, params)
      req.send_request(options)
    end

    # Deletes documents from a data source and syncs the changes to the
    # knowledge base that is connected to it. For more information, see
    # [Ingest changes directly into a knowledge base][1] in the Amazon
    # Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/kb-direct-ingestion.html
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base that is connected to the
    #   data source.
    #
    # @option params [required, String] :data_source_id
    #   The unique identifier of the data source that contains the documents.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, Array<Types::DocumentIdentifier>] :document_identifiers
    #   A list of objects, each of which contains information to identify a
    #   document to delete.
    #
    # @return [Types::DeleteKnowledgeBaseDocumentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteKnowledgeBaseDocumentsResponse#document_details #document_details} => Array&lt;Types::KnowledgeBaseDocumentDetail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_knowledge_base_documents({
    #     knowledge_base_id: "Id", # required
    #     data_source_id: "Id", # required
    #     client_token: "ClientToken",
    #     document_identifiers: [ # required
    #       {
    #         data_source_type: "CUSTOM", # required, accepts CUSTOM, S3
    #         s3: {
    #           uri: "S3BucketUri", # required
    #         },
    #         custom: {
    #           id: "CustomDocumentIdentifierIdString", # required
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.document_details #=> Array
    #   resp.document_details[0].knowledge_base_id #=> String
    #   resp.document_details[0].data_source_id #=> String
    #   resp.document_details[0].status #=> String, one of "INDEXED", "PARTIALLY_INDEXED", "PENDING", "FAILED", "METADATA_PARTIALLY_INDEXED", "METADATA_UPDATE_FAILED", "IGNORED", "NOT_FOUND", "STARTING", "IN_PROGRESS", "DELETING", "DELETE_IN_PROGRESS"
    #   resp.document_details[0].identifier.data_source_type #=> String, one of "CUSTOM", "S3"
    #   resp.document_details[0].identifier.s3.uri #=> String
    #   resp.document_details[0].identifier.custom.id #=> String
    #   resp.document_details[0].status_reason #=> String
    #   resp.document_details[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteKnowledgeBaseDocuments AWS API Documentation
    #
    # @overload delete_knowledge_base_documents(params = {})
    # @param [Hash] params ({})
    def delete_knowledge_base_documents(params = {}, options = {})
      req = build_request(:delete_knowledge_base_documents, params)
      req.send_request(options)
    end

    # Deletes a prompt or a version of it, depending on whether you include
    # the `promptVersion` field or not. For more information, see [Delete
    # prompts from the Prompt management tool][1] and [Delete a version of a
    # prompt from the Prompt management tool][2] in the Amazon Bedrock User
    # Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-manage.html#prompt-management-delete.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-deploy.html#prompt-management-versions-delete.html
    #
    # @option params [required, String] :prompt_identifier
    #   The unique identifier of the prompt.
    #
    # @option params [String] :prompt_version
    #   The version of the prompt to delete. To delete the prompt, omit this
    #   field.
    #
    # @return [Types::DeletePromptResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePromptResponse#id #id} => String
    #   * {Types::DeletePromptResponse#version #version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_prompt({
    #     prompt_identifier: "PromptIdentifier", # required
    #     prompt_version: "NumericalVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeletePrompt AWS API Documentation
    #
    # @overload delete_prompt(params = {})
    # @param [Hash] params ({})
    def delete_prompt(params = {}, options = {})
      req = build_request(:delete_prompt, params)
      req.send_request(options)
    end

    # Disassociates an agent collaborator.
    #
    # @option params [required, String] :agent_id
    #   An agent ID.
    #
    # @option params [required, String] :agent_version
    #   The agent's version.
    #
    # @option params [required, String] :collaborator_id
    #   The collaborator's ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_agent_collaborator({
    #     agent_id: "Id", # required
    #     agent_version: "DraftVersion", # required
    #     collaborator_id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DisassociateAgentCollaborator AWS API Documentation
    #
    # @overload disassociate_agent_collaborator(params = {})
    # @param [Hash] params ({})
    def disassociate_agent_collaborator(params = {}, options = {})
      req = build_request(:disassociate_agent_collaborator, params)
      req.send_request(options)
    end

    # Disassociates a knowledge base from an agent.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent from which to disassociate the
    #   knowledge base.
    #
    # @option params [required, String] :agent_version
    #   The version of the agent from which to disassociate the knowledge
    #   base.
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base to disassociate.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_agent_knowledge_base({
    #     agent_id: "Id", # required
    #     agent_version: "DraftVersion", # required
    #     knowledge_base_id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DisassociateAgentKnowledgeBase AWS API Documentation
    #
    # @overload disassociate_agent_knowledge_base(params = {})
    # @param [Hash] params ({})
    def disassociate_agent_knowledge_base(params = {}, options = {})
      req = build_request(:disassociate_agent_knowledge_base, params)
      req.send_request(options)
    end

    # Gets information about an agent.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent.
    #
    # @return [Types::GetAgentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAgentResponse#agent #agent} => Types::Agent
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_agent({
    #     agent_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agent.agent_id #=> String
    #   resp.agent.agent_name #=> String
    #   resp.agent.agent_arn #=> String
    #   resp.agent.agent_version #=> String
    #   resp.agent.client_token #=> String
    #   resp.agent.instruction #=> String
    #   resp.agent.agent_status #=> String, one of "CREATING", "PREPARING", "PREPARED", "NOT_PREPARED", "DELETING", "FAILED", "VERSIONING", "UPDATING"
    #   resp.agent.foundation_model #=> String
    #   resp.agent.description #=> String
    #   resp.agent.orchestration_type #=> String, one of "DEFAULT", "CUSTOM_ORCHESTRATION"
    #   resp.agent.custom_orchestration.executor.lambda #=> String
    #   resp.agent.idle_session_ttl_in_seconds #=> Integer
    #   resp.agent.agent_resource_role_arn #=> String
    #   resp.agent.customer_encryption_key_arn #=> String
    #   resp.agent.created_at #=> Time
    #   resp.agent.updated_at #=> Time
    #   resp.agent.prepared_at #=> Time
    #   resp.agent.failure_reasons #=> Array
    #   resp.agent.failure_reasons[0] #=> String
    #   resp.agent.recommended_actions #=> Array
    #   resp.agent.recommended_actions[0] #=> String
    #   resp.agent.prompt_override_configuration.prompt_configurations #=> Array
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].prompt_type #=> String, one of "PRE_PROCESSING", "ORCHESTRATION", "POST_PROCESSING", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "MEMORY_SUMMARIZATION"
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].prompt_creation_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].prompt_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].base_prompt_template #=> String
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.temperature #=> Float
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.top_p #=> Float
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.top_k #=> Integer
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.maximum_length #=> Integer
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.stop_sequences #=> Array
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.stop_sequences[0] #=> String
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].parser_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].foundation_model #=> String
    #   resp.agent.prompt_override_configuration.override_lambda #=> String
    #   resp.agent.guardrail_configuration.guardrail_identifier #=> String
    #   resp.agent.guardrail_configuration.guardrail_version #=> String
    #   resp.agent.memory_configuration.enabled_memory_types #=> Array
    #   resp.agent.memory_configuration.enabled_memory_types[0] #=> String, one of "SESSION_SUMMARY"
    #   resp.agent.memory_configuration.storage_days #=> Integer
    #   resp.agent.memory_configuration.session_summary_configuration.max_recent_sessions #=> Integer
    #   resp.agent.agent_collaboration #=> String, one of "SUPERVISOR", "SUPERVISOR_ROUTER", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgent AWS API Documentation
    #
    # @overload get_agent(params = {})
    # @param [Hash] params ({})
    def get_agent(params = {}, options = {})
      req = build_request(:get_agent, params)
      req.send_request(options)
    end

    # Gets information about an action group for an agent.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent that the action group belongs to.
    #
    # @option params [required, String] :agent_version
    #   The version of the agent that the action group belongs to.
    #
    # @option params [required, String] :action_group_id
    #   The unique identifier of the action group for which to get
    #   information.
    #
    # @return [Types::GetAgentActionGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAgentActionGroupResponse#agent_action_group #agent_action_group} => Types::AgentActionGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_agent_action_group({
    #     agent_id: "Id", # required
    #     agent_version: "Version", # required
    #     action_group_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_action_group.agent_id #=> String
    #   resp.agent_action_group.agent_version #=> String
    #   resp.agent_action_group.action_group_id #=> String
    #   resp.agent_action_group.action_group_name #=> String
    #   resp.agent_action_group.client_token #=> String
    #   resp.agent_action_group.description #=> String
    #   resp.agent_action_group.created_at #=> Time
    #   resp.agent_action_group.updated_at #=> Time
    #   resp.agent_action_group.parent_action_signature #=> String, one of "AMAZON.UserInput", "AMAZON.CodeInterpreter", "ANTHROPIC.Computer", "ANTHROPIC.Bash", "ANTHROPIC.TextEditor"
    #   resp.agent_action_group.parent_action_group_signature_params #=> Hash
    #   resp.agent_action_group.parent_action_group_signature_params["ActionGroupSignatureParamsKeyString"] #=> String
    #   resp.agent_action_group.action_group_executor.lambda #=> String
    #   resp.agent_action_group.action_group_executor.custom_control #=> String, one of "RETURN_CONTROL"
    #   resp.agent_action_group.api_schema.s3.s3_bucket_name #=> String
    #   resp.agent_action_group.api_schema.s3.s3_object_key #=> String
    #   resp.agent_action_group.api_schema.payload #=> String
    #   resp.agent_action_group.function_schema.functions #=> Array
    #   resp.agent_action_group.function_schema.functions[0].name #=> String
    #   resp.agent_action_group.function_schema.functions[0].description #=> String
    #   resp.agent_action_group.function_schema.functions[0].parameters #=> Hash
    #   resp.agent_action_group.function_schema.functions[0].parameters["Name"].description #=> String
    #   resp.agent_action_group.function_schema.functions[0].parameters["Name"].type #=> String, one of "string", "number", "integer", "boolean", "array"
    #   resp.agent_action_group.function_schema.functions[0].parameters["Name"].required #=> Boolean
    #   resp.agent_action_group.function_schema.functions[0].require_confirmation #=> String, one of "ENABLED", "DISABLED"
    #   resp.agent_action_group.action_group_state #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgentActionGroup AWS API Documentation
    #
    # @overload get_agent_action_group(params = {})
    # @param [Hash] params ({})
    def get_agent_action_group(params = {}, options = {})
      req = build_request(:get_agent_action_group, params)
      req.send_request(options)
    end

    # Gets information about an alias of an agent.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent to which the alias to get
    #   information belongs.
    #
    # @option params [required, String] :agent_alias_id
    #   The unique identifier of the alias for which to get information.
    #
    # @return [Types::GetAgentAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAgentAliasResponse#agent_alias #agent_alias} => Types::AgentAlias
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_agent_alias({
    #     agent_id: "Id", # required
    #     agent_alias_id: "AgentAliasId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_alias.agent_id #=> String
    #   resp.agent_alias.agent_alias_id #=> String
    #   resp.agent_alias.agent_alias_name #=> String
    #   resp.agent_alias.agent_alias_arn #=> String
    #   resp.agent_alias.client_token #=> String
    #   resp.agent_alias.description #=> String
    #   resp.agent_alias.routing_configuration #=> Array
    #   resp.agent_alias.routing_configuration[0].agent_version #=> String
    #   resp.agent_alias.routing_configuration[0].provisioned_throughput #=> String
    #   resp.agent_alias.created_at #=> Time
    #   resp.agent_alias.updated_at #=> Time
    #   resp.agent_alias.agent_alias_history_events #=> Array
    #   resp.agent_alias.agent_alias_history_events[0].routing_configuration #=> Array
    #   resp.agent_alias.agent_alias_history_events[0].routing_configuration[0].agent_version #=> String
    #   resp.agent_alias.agent_alias_history_events[0].routing_configuration[0].provisioned_throughput #=> String
    #   resp.agent_alias.agent_alias_history_events[0].end_date #=> Time
    #   resp.agent_alias.agent_alias_history_events[0].start_date #=> Time
    #   resp.agent_alias.agent_alias_status #=> String, one of "CREATING", "PREPARED", "FAILED", "UPDATING", "DELETING", "DISSOCIATED"
    #   resp.agent_alias.failure_reasons #=> Array
    #   resp.agent_alias.failure_reasons[0] #=> String
    #   resp.agent_alias.alias_invocation_state #=> String, one of "ACCEPT_INVOCATIONS", "REJECT_INVOCATIONS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgentAlias AWS API Documentation
    #
    # @overload get_agent_alias(params = {})
    # @param [Hash] params ({})
    def get_agent_alias(params = {}, options = {})
      req = build_request(:get_agent_alias, params)
      req.send_request(options)
    end

    # Retrieves information about an agent's collaborator.
    #
    # @option params [required, String] :agent_id
    #   The agent's ID.
    #
    # @option params [required, String] :agent_version
    #   The agent's version.
    #
    # @option params [required, String] :collaborator_id
    #   The collaborator's ID.
    #
    # @return [Types::GetAgentCollaboratorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAgentCollaboratorResponse#agent_collaborator #agent_collaborator} => Types::AgentCollaborator
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_agent_collaborator({
    #     agent_id: "Id", # required
    #     agent_version: "Version", # required
    #     collaborator_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_collaborator.agent_id #=> String
    #   resp.agent_collaborator.agent_version #=> String
    #   resp.agent_collaborator.agent_descriptor.alias_arn #=> String
    #   resp.agent_collaborator.collaborator_id #=> String
    #   resp.agent_collaborator.collaboration_instruction #=> String
    #   resp.agent_collaborator.collaborator_name #=> String
    #   resp.agent_collaborator.created_at #=> Time
    #   resp.agent_collaborator.last_updated_at #=> Time
    #   resp.agent_collaborator.relay_conversation_history #=> String, one of "TO_COLLABORATOR", "DISABLED"
    #   resp.agent_collaborator.client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgentCollaborator AWS API Documentation
    #
    # @overload get_agent_collaborator(params = {})
    # @param [Hash] params ({})
    def get_agent_collaborator(params = {}, options = {})
      req = build_request(:get_agent_collaborator, params)
      req.send_request(options)
    end

    # Gets information about a knowledge base associated with an agent.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent with which the knowledge base is
    #   associated.
    #
    # @option params [required, String] :agent_version
    #   The version of the agent with which the knowledge base is associated.
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base associated with the agent.
    #
    # @return [Types::GetAgentKnowledgeBaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAgentKnowledgeBaseResponse#agent_knowledge_base #agent_knowledge_base} => Types::AgentKnowledgeBase
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_agent_knowledge_base({
    #     agent_id: "Id", # required
    #     agent_version: "Version", # required
    #     knowledge_base_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_knowledge_base.agent_id #=> String
    #   resp.agent_knowledge_base.agent_version #=> String
    #   resp.agent_knowledge_base.knowledge_base_id #=> String
    #   resp.agent_knowledge_base.description #=> String
    #   resp.agent_knowledge_base.created_at #=> Time
    #   resp.agent_knowledge_base.updated_at #=> Time
    #   resp.agent_knowledge_base.knowledge_base_state #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgentKnowledgeBase AWS API Documentation
    #
    # @overload get_agent_knowledge_base(params = {})
    # @param [Hash] params ({})
    def get_agent_knowledge_base(params = {}, options = {})
      req = build_request(:get_agent_knowledge_base, params)
      req.send_request(options)
    end

    # Gets details about a version of an agent.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent.
    #
    # @option params [required, String] :agent_version
    #   The version of the agent.
    #
    # @return [Types::GetAgentVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAgentVersionResponse#agent_version #agent_version} => Types::AgentVersion
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_agent_version({
    #     agent_id: "Id", # required
    #     agent_version: "NumericalVersion", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_version.agent_id #=> String
    #   resp.agent_version.agent_name #=> String
    #   resp.agent_version.agent_arn #=> String
    #   resp.agent_version.version #=> String
    #   resp.agent_version.instruction #=> String
    #   resp.agent_version.agent_status #=> String, one of "CREATING", "PREPARING", "PREPARED", "NOT_PREPARED", "DELETING", "FAILED", "VERSIONING", "UPDATING"
    #   resp.agent_version.foundation_model #=> String
    #   resp.agent_version.description #=> String
    #   resp.agent_version.idle_session_ttl_in_seconds #=> Integer
    #   resp.agent_version.agent_resource_role_arn #=> String
    #   resp.agent_version.customer_encryption_key_arn #=> String
    #   resp.agent_version.created_at #=> Time
    #   resp.agent_version.updated_at #=> Time
    #   resp.agent_version.failure_reasons #=> Array
    #   resp.agent_version.failure_reasons[0] #=> String
    #   resp.agent_version.recommended_actions #=> Array
    #   resp.agent_version.recommended_actions[0] #=> String
    #   resp.agent_version.prompt_override_configuration.prompt_configurations #=> Array
    #   resp.agent_version.prompt_override_configuration.prompt_configurations[0].prompt_type #=> String, one of "PRE_PROCESSING", "ORCHESTRATION", "POST_PROCESSING", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "MEMORY_SUMMARIZATION"
    #   resp.agent_version.prompt_override_configuration.prompt_configurations[0].prompt_creation_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   resp.agent_version.prompt_override_configuration.prompt_configurations[0].prompt_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.agent_version.prompt_override_configuration.prompt_configurations[0].base_prompt_template #=> String
    #   resp.agent_version.prompt_override_configuration.prompt_configurations[0].inference_configuration.temperature #=> Float
    #   resp.agent_version.prompt_override_configuration.prompt_configurations[0].inference_configuration.top_p #=> Float
    #   resp.agent_version.prompt_override_configuration.prompt_configurations[0].inference_configuration.top_k #=> Integer
    #   resp.agent_version.prompt_override_configuration.prompt_configurations[0].inference_configuration.maximum_length #=> Integer
    #   resp.agent_version.prompt_override_configuration.prompt_configurations[0].inference_configuration.stop_sequences #=> Array
    #   resp.agent_version.prompt_override_configuration.prompt_configurations[0].inference_configuration.stop_sequences[0] #=> String
    #   resp.agent_version.prompt_override_configuration.prompt_configurations[0].parser_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   resp.agent_version.prompt_override_configuration.prompt_configurations[0].foundation_model #=> String
    #   resp.agent_version.prompt_override_configuration.override_lambda #=> String
    #   resp.agent_version.guardrail_configuration.guardrail_identifier #=> String
    #   resp.agent_version.guardrail_configuration.guardrail_version #=> String
    #   resp.agent_version.memory_configuration.enabled_memory_types #=> Array
    #   resp.agent_version.memory_configuration.enabled_memory_types[0] #=> String, one of "SESSION_SUMMARY"
    #   resp.agent_version.memory_configuration.storage_days #=> Integer
    #   resp.agent_version.memory_configuration.session_summary_configuration.max_recent_sessions #=> Integer
    #   resp.agent_version.agent_collaboration #=> String, one of "SUPERVISOR", "SUPERVISOR_ROUTER", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgentVersion AWS API Documentation
    #
    # @overload get_agent_version(params = {})
    # @param [Hash] params ({})
    def get_agent_version(params = {}, options = {})
      req = build_request(:get_agent_version, params)
      req.send_request(options)
    end

    # Gets information about a data source.
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base for the data source.
    #
    # @option params [required, String] :data_source_id
    #   The unique identifier of the data source.
    #
    # @return [Types::GetDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataSourceResponse#data_source #data_source} => Types::DataSource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_source({
    #     knowledge_base_id: "Id", # required
    #     data_source_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source.knowledge_base_id #=> String
    #   resp.data_source.data_source_id #=> String
    #   resp.data_source.name #=> String
    #   resp.data_source.status #=> String, one of "AVAILABLE", "DELETING", "DELETE_UNSUCCESSFUL"
    #   resp.data_source.description #=> String
    #   resp.data_source.data_source_configuration.type #=> String, one of "S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "REDSHIFT_METADATA"
    #   resp.data_source.data_source_configuration.s3_configuration.bucket_arn #=> String
    #   resp.data_source.data_source_configuration.s3_configuration.inclusion_prefixes #=> Array
    #   resp.data_source.data_source_configuration.s3_configuration.inclusion_prefixes[0] #=> String
    #   resp.data_source.data_source_configuration.s3_configuration.bucket_owner_account_id #=> String
    #   resp.data_source.data_source_configuration.web_configuration.source_configuration.url_configuration.seed_urls #=> Array
    #   resp.data_source.data_source_configuration.web_configuration.source_configuration.url_configuration.seed_urls[0].url #=> String
    #   resp.data_source.data_source_configuration.web_configuration.crawler_configuration.crawler_limits.rate_limit #=> Integer
    #   resp.data_source.data_source_configuration.web_configuration.crawler_configuration.crawler_limits.max_pages #=> Integer
    #   resp.data_source.data_source_configuration.web_configuration.crawler_configuration.inclusion_filters #=> Array
    #   resp.data_source.data_source_configuration.web_configuration.crawler_configuration.inclusion_filters[0] #=> String
    #   resp.data_source.data_source_configuration.web_configuration.crawler_configuration.exclusion_filters #=> Array
    #   resp.data_source.data_source_configuration.web_configuration.crawler_configuration.exclusion_filters[0] #=> String
    #   resp.data_source.data_source_configuration.web_configuration.crawler_configuration.scope #=> String, one of "HOST_ONLY", "SUBDOMAINS"
    #   resp.data_source.data_source_configuration.web_configuration.crawler_configuration.user_agent #=> String
    #   resp.data_source.data_source_configuration.web_configuration.crawler_configuration.user_agent_header #=> String
    #   resp.data_source.data_source_configuration.confluence_configuration.source_configuration.host_url #=> String
    #   resp.data_source.data_source_configuration.confluence_configuration.source_configuration.host_type #=> String, one of "SAAS"
    #   resp.data_source.data_source_configuration.confluence_configuration.source_configuration.auth_type #=> String, one of "BASIC", "OAUTH2_CLIENT_CREDENTIALS"
    #   resp.data_source.data_source_configuration.confluence_configuration.source_configuration.credentials_secret_arn #=> String
    #   resp.data_source.data_source_configuration.confluence_configuration.crawler_configuration.filter_configuration.type #=> String, one of "PATTERN"
    #   resp.data_source.data_source_configuration.confluence_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters #=> Array
    #   resp.data_source.data_source_configuration.confluence_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].object_type #=> String
    #   resp.data_source.data_source_configuration.confluence_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].inclusion_filters #=> Array
    #   resp.data_source.data_source_configuration.confluence_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].inclusion_filters[0] #=> String
    #   resp.data_source.data_source_configuration.confluence_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].exclusion_filters #=> Array
    #   resp.data_source.data_source_configuration.confluence_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].exclusion_filters[0] #=> String
    #   resp.data_source.data_source_configuration.salesforce_configuration.source_configuration.host_url #=> String
    #   resp.data_source.data_source_configuration.salesforce_configuration.source_configuration.auth_type #=> String, one of "OAUTH2_CLIENT_CREDENTIALS"
    #   resp.data_source.data_source_configuration.salesforce_configuration.source_configuration.credentials_secret_arn #=> String
    #   resp.data_source.data_source_configuration.salesforce_configuration.crawler_configuration.filter_configuration.type #=> String, one of "PATTERN"
    #   resp.data_source.data_source_configuration.salesforce_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters #=> Array
    #   resp.data_source.data_source_configuration.salesforce_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].object_type #=> String
    #   resp.data_source.data_source_configuration.salesforce_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].inclusion_filters #=> Array
    #   resp.data_source.data_source_configuration.salesforce_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].inclusion_filters[0] #=> String
    #   resp.data_source.data_source_configuration.salesforce_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].exclusion_filters #=> Array
    #   resp.data_source.data_source_configuration.salesforce_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].exclusion_filters[0] #=> String
    #   resp.data_source.data_source_configuration.share_point_configuration.source_configuration.tenant_id #=> String
    #   resp.data_source.data_source_configuration.share_point_configuration.source_configuration.domain #=> String
    #   resp.data_source.data_source_configuration.share_point_configuration.source_configuration.site_urls #=> Array
    #   resp.data_source.data_source_configuration.share_point_configuration.source_configuration.site_urls[0] #=> String
    #   resp.data_source.data_source_configuration.share_point_configuration.source_configuration.host_type #=> String, one of "ONLINE"
    #   resp.data_source.data_source_configuration.share_point_configuration.source_configuration.auth_type #=> String, one of "OAUTH2_CLIENT_CREDENTIALS", "OAUTH2_SHAREPOINT_APP_ONLY_CLIENT_CREDENTIALS"
    #   resp.data_source.data_source_configuration.share_point_configuration.source_configuration.credentials_secret_arn #=> String
    #   resp.data_source.data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration.type #=> String, one of "PATTERN"
    #   resp.data_source.data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters #=> Array
    #   resp.data_source.data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].object_type #=> String
    #   resp.data_source.data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].inclusion_filters #=> Array
    #   resp.data_source.data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].inclusion_filters[0] #=> String
    #   resp.data_source.data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].exclusion_filters #=> Array
    #   resp.data_source.data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].exclusion_filters[0] #=> String
    #   resp.data_source.server_side_encryption_configuration.kms_key_arn #=> String
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.chunking_strategy #=> String, one of "FIXED_SIZE", "NONE", "HIERARCHICAL", "SEMANTIC"
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.fixed_size_chunking_configuration.max_tokens #=> Integer
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.fixed_size_chunking_configuration.overlap_percentage #=> Integer
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.hierarchical_chunking_configuration.level_configurations #=> Array
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.hierarchical_chunking_configuration.level_configurations[0].max_tokens #=> Integer
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.hierarchical_chunking_configuration.overlap_tokens #=> Integer
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.semantic_chunking_configuration.max_tokens #=> Integer
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.semantic_chunking_configuration.buffer_size #=> Integer
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.semantic_chunking_configuration.breakpoint_percentile_threshold #=> Integer
    #   resp.data_source.vector_ingestion_configuration.custom_transformation_configuration.intermediate_storage.s3_location.uri #=> String
    #   resp.data_source.vector_ingestion_configuration.custom_transformation_configuration.transformations #=> Array
    #   resp.data_source.vector_ingestion_configuration.custom_transformation_configuration.transformations[0].transformation_function.transformation_lambda_configuration.lambda_arn #=> String
    #   resp.data_source.vector_ingestion_configuration.custom_transformation_configuration.transformations[0].step_to_apply #=> String, one of "POST_CHUNKING"
    #   resp.data_source.vector_ingestion_configuration.parsing_configuration.parsing_strategy #=> String, one of "BEDROCK_FOUNDATION_MODEL", "BEDROCK_DATA_AUTOMATION"
    #   resp.data_source.vector_ingestion_configuration.parsing_configuration.bedrock_foundation_model_configuration.model_arn #=> String
    #   resp.data_source.vector_ingestion_configuration.parsing_configuration.bedrock_foundation_model_configuration.parsing_prompt.parsing_prompt_text #=> String
    #   resp.data_source.vector_ingestion_configuration.parsing_configuration.bedrock_foundation_model_configuration.parsing_modality #=> String, one of "MULTIMODAL"
    #   resp.data_source.vector_ingestion_configuration.parsing_configuration.bedrock_data_automation_configuration.parsing_modality #=> String, one of "MULTIMODAL"
    #   resp.data_source.vector_ingestion_configuration.context_enrichment_configuration.type #=> String, one of "BEDROCK_FOUNDATION_MODEL"
    #   resp.data_source.vector_ingestion_configuration.context_enrichment_configuration.bedrock_foundation_model_configuration.enrichment_strategy_configuration.method #=> String, one of "CHUNK_ENTITY_EXTRACTION"
    #   resp.data_source.vector_ingestion_configuration.context_enrichment_configuration.bedrock_foundation_model_configuration.model_arn #=> String
    #   resp.data_source.data_deletion_policy #=> String, one of "RETAIN", "DELETE"
    #   resp.data_source.created_at #=> Time
    #   resp.data_source.updated_at #=> Time
    #   resp.data_source.failure_reasons #=> Array
    #   resp.data_source.failure_reasons[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetDataSource AWS API Documentation
    #
    # @overload get_data_source(params = {})
    # @param [Hash] params ({})
    def get_data_source(params = {}, options = {})
      req = build_request(:get_data_source, params)
      req.send_request(options)
    end

    # Retrieves information about a flow. For more information, see [Manage
    # a flow in Amazon Bedrock][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-manage.html
    #
    # @option params [required, String] :flow_identifier
    #   The unique identifier of the flow.
    #
    # @return [Types::GetFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFlowResponse#name #name} => String
    #   * {Types::GetFlowResponse#description #description} => String
    #   * {Types::GetFlowResponse#execution_role_arn #execution_role_arn} => String
    #   * {Types::GetFlowResponse#customer_encryption_key_arn #customer_encryption_key_arn} => String
    #   * {Types::GetFlowResponse#id #id} => String
    #   * {Types::GetFlowResponse#arn #arn} => String
    #   * {Types::GetFlowResponse#status #status} => String
    #   * {Types::GetFlowResponse#created_at #created_at} => Time
    #   * {Types::GetFlowResponse#updated_at #updated_at} => Time
    #   * {Types::GetFlowResponse#version #version} => String
    #   * {Types::GetFlowResponse#definition #definition} => Types::FlowDefinition
    #   * {Types::GetFlowResponse#validations #validations} => Array&lt;Types::FlowValidation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_flow({
    #     flow_identifier: "FlowIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.execution_role_arn #=> String
    #   resp.customer_encryption_key_arn #=> String
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.status #=> String, one of "Failed", "Prepared", "Preparing", "NotPrepared"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.version #=> String
    #   resp.definition.nodes #=> Array
    #   resp.definition.nodes[0].name #=> String
    #   resp.definition.nodes[0].type #=> String, one of "Input", "Output", "KnowledgeBase", "Condition", "Lex", "Prompt", "LambdaFunction", "Storage", "Agent", "Retrieval", "Iterator", "Collector", "InlineCode", "Loop", "LoopInput", "LoopController"
    #   resp.definition.nodes[0].configuration.knowledge_base.knowledge_base_id #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.model_id #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.guardrail_configuration.guardrail_identifier #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.guardrail_configuration.guardrail_version #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.number_of_results #=> Integer
    #   resp.definition.nodes[0].configuration.knowledge_base.prompt_template.text_prompt_template #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.inference_configuration.text.temperature #=> Float
    #   resp.definition.nodes[0].configuration.knowledge_base.inference_configuration.text.top_p #=> Float
    #   resp.definition.nodes[0].configuration.knowledge_base.inference_configuration.text.max_tokens #=> Integer
    #   resp.definition.nodes[0].configuration.knowledge_base.inference_configuration.text.stop_sequences #=> Array
    #   resp.definition.nodes[0].configuration.knowledge_base.inference_configuration.text.stop_sequences[0] #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.type #=> String, one of "BEDROCK_RERANKING_MODEL"
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.model_configuration.model_arn #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.model_configuration.additional_model_request_fields #=> Hash
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.number_of_reranked_results #=> Integer
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.metadata_configuration.selection_mode #=> String, one of "SELECTIVE", "ALL"
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.metadata_configuration.selective_mode_configuration.fields_to_include #=> Array
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.metadata_configuration.selective_mode_configuration.fields_to_include[0].field_name #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.metadata_configuration.selective_mode_configuration.fields_to_exclude #=> Array
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.metadata_configuration.selective_mode_configuration.fields_to_exclude[0].field_name #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.prompt_template.text_prompt_template #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.inference_config.text.temperature #=> Float
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.inference_config.text.top_p #=> Float
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.inference_config.text.max_tokens #=> Integer
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.inference_config.text.stop_sequences #=> Array
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.inference_config.text.stop_sequences[0] #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.additional_model_request_fields #=> Hash
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.performance_config.latency #=> String, one of "standard", "optimized"
    #   resp.definition.nodes[0].configuration.condition.conditions #=> Array
    #   resp.definition.nodes[0].configuration.condition.conditions[0].name #=> String
    #   resp.definition.nodes[0].configuration.condition.conditions[0].expression #=> String
    #   resp.definition.nodes[0].configuration.lex.bot_alias_arn #=> String
    #   resp.definition.nodes[0].configuration.lex.locale_id #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.resource.prompt_arn #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_type #=> String, one of "TEXT", "CHAT"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.text.text #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.text.cache_point.type #=> String, one of "default"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.text.input_variables #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.text.input_variables[0].name #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.messages #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.messages[0].role #=> String, one of "user", "assistant"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.messages[0].content #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.messages[0].content[0].text #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.messages[0].content[0].cache_point.type #=> String, one of "default"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.system #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.system[0].text #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.system[0].cache_point.type #=> String, one of "default"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.input_variables #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.input_variables[0].name #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tools #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tools[0].tool_spec.name #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tools[0].tool_spec.description #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tools[0].cache_point.type #=> String, one of "default"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool_choice.tool.name #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.model_id #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.inference_configuration.text.temperature #=> Float
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.inference_configuration.text.top_p #=> Float
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.inference_configuration.text.max_tokens #=> Integer
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.inference_configuration.text.stop_sequences #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.inference_configuration.text.stop_sequences[0] #=> String
    #   resp.definition.nodes[0].configuration.prompt.guardrail_configuration.guardrail_identifier #=> String
    #   resp.definition.nodes[0].configuration.prompt.guardrail_configuration.guardrail_version #=> String
    #   resp.definition.nodes[0].configuration.lambda_function.lambda_arn #=> String
    #   resp.definition.nodes[0].configuration.storage.service_configuration.s3.bucket_name #=> String
    #   resp.definition.nodes[0].configuration.agent.agent_alias_arn #=> String
    #   resp.definition.nodes[0].configuration.retrieval.service_configuration.s3.bucket_name #=> String
    #   resp.definition.nodes[0].configuration.inline_code.code #=> String
    #   resp.definition.nodes[0].configuration.inline_code.language #=> String, one of "Python_3"
    #   resp.definition.nodes[0].configuration.loop.definition #=> Types::FlowDefinition
    #   resp.definition.nodes[0].configuration.loop_controller.continue_condition.name #=> String
    #   resp.definition.nodes[0].configuration.loop_controller.continue_condition.expression #=> String
    #   resp.definition.nodes[0].configuration.loop_controller.max_iterations #=> Integer
    #   resp.definition.nodes[0].inputs #=> Array
    #   resp.definition.nodes[0].inputs[0].name #=> String
    #   resp.definition.nodes[0].inputs[0].type #=> String, one of "String", "Number", "Boolean", "Object", "Array"
    #   resp.definition.nodes[0].inputs[0].expression #=> String
    #   resp.definition.nodes[0].inputs[0].category #=> String, one of "LoopCondition", "ReturnValueToLoopStart", "ExitLoop"
    #   resp.definition.nodes[0].outputs #=> Array
    #   resp.definition.nodes[0].outputs[0].name #=> String
    #   resp.definition.nodes[0].outputs[0].type #=> String, one of "String", "Number", "Boolean", "Object", "Array"
    #   resp.definition.connections #=> Array
    #   resp.definition.connections[0].type #=> String, one of "Data", "Conditional"
    #   resp.definition.connections[0].name #=> String
    #   resp.definition.connections[0].source #=> String
    #   resp.definition.connections[0].target #=> String
    #   resp.definition.connections[0].configuration.data.source_output #=> String
    #   resp.definition.connections[0].configuration.data.target_input #=> String
    #   resp.definition.connections[0].configuration.conditional.condition #=> String
    #   resp.validations #=> Array
    #   resp.validations[0].message #=> String
    #   resp.validations[0].severity #=> String, one of "Warning", "Error"
    #   resp.validations[0].details.cyclic_connection.connection #=> String
    #   resp.validations[0].details.duplicate_connections.source #=> String
    #   resp.validations[0].details.duplicate_connections.target #=> String
    #   resp.validations[0].details.duplicate_condition_expression.node #=> String
    #   resp.validations[0].details.duplicate_condition_expression.expression #=> String
    #   resp.validations[0].details.unreachable_node.node #=> String
    #   resp.validations[0].details.unknown_connection_source.connection #=> String
    #   resp.validations[0].details.unknown_connection_source_output.connection #=> String
    #   resp.validations[0].details.unknown_connection_target.connection #=> String
    #   resp.validations[0].details.unknown_connection_target_input.connection #=> String
    #   resp.validations[0].details.unknown_connection_condition.connection #=> String
    #   resp.validations[0].details.malformed_condition_expression.node #=> String
    #   resp.validations[0].details.malformed_condition_expression.condition #=> String
    #   resp.validations[0].details.malformed_condition_expression.cause #=> String
    #   resp.validations[0].details.malformed_node_input_expression.node #=> String
    #   resp.validations[0].details.malformed_node_input_expression.input #=> String
    #   resp.validations[0].details.malformed_node_input_expression.cause #=> String
    #   resp.validations[0].details.mismatched_node_input_type.node #=> String
    #   resp.validations[0].details.mismatched_node_input_type.input #=> String
    #   resp.validations[0].details.mismatched_node_input_type.expected_type #=> String, one of "String", "Number", "Boolean", "Object", "Array"
    #   resp.validations[0].details.mismatched_node_output_type.node #=> String
    #   resp.validations[0].details.mismatched_node_output_type.output #=> String
    #   resp.validations[0].details.mismatched_node_output_type.expected_type #=> String, one of "String", "Number", "Boolean", "Object", "Array"
    #   resp.validations[0].details.incompatible_connection_data_type.connection #=> String
    #   resp.validations[0].details.missing_connection_configuration.connection #=> String
    #   resp.validations[0].details.missing_default_condition.node #=> String
    #   resp.validations[0].details.missing_node_configuration.node #=> String
    #   resp.validations[0].details.missing_node_input.node #=> String
    #   resp.validations[0].details.missing_node_input.input #=> String
    #   resp.validations[0].details.missing_node_output.node #=> String
    #   resp.validations[0].details.missing_node_output.output #=> String
    #   resp.validations[0].details.multiple_node_input_connections.node #=> String
    #   resp.validations[0].details.multiple_node_input_connections.input #=> String
    #   resp.validations[0].details.unfulfilled_node_input.node #=> String
    #   resp.validations[0].details.unfulfilled_node_input.input #=> String
    #   resp.validations[0].details.unsatisfied_connection_conditions.connection #=> String
    #   resp.validations[0].details.unknown_node_input.node #=> String
    #   resp.validations[0].details.unknown_node_input.input #=> String
    #   resp.validations[0].details.unknown_node_output.node #=> String
    #   resp.validations[0].details.unknown_node_output.output #=> String
    #   resp.validations[0].details.missing_loop_input_node.loop_node #=> String
    #   resp.validations[0].details.missing_loop_controller_node.loop_node #=> String
    #   resp.validations[0].details.multiple_loop_input_nodes.loop_node #=> String
    #   resp.validations[0].details.multiple_loop_controller_nodes.loop_node #=> String
    #   resp.validations[0].details.loop_incompatible_node_type.node #=> String
    #   resp.validations[0].details.loop_incompatible_node_type.incompatible_node_type #=> String, one of "Input", "Condition", "Iterator", "Collector"
    #   resp.validations[0].details.loop_incompatible_node_type.incompatible_node_name #=> String
    #   resp.validations[0].details.invalid_loop_boundary.connection #=> String
    #   resp.validations[0].details.invalid_loop_boundary.source #=> String
    #   resp.validations[0].details.invalid_loop_boundary.target #=> String
    #   resp.validations[0].type #=> String, one of "CyclicConnection", "DuplicateConnections", "DuplicateConditionExpression", "UnreachableNode", "UnknownConnectionSource", "UnknownConnectionSourceOutput", "UnknownConnectionTarget", "UnknownConnectionTargetInput", "UnknownConnectionCondition", "MalformedConditionExpression", "MalformedNodeInputExpression", "MismatchedNodeInputType", "MismatchedNodeOutputType", "IncompatibleConnectionDataType", "MissingConnectionConfiguration", "MissingDefaultCondition", "MissingEndingNodes", "MissingNodeConfiguration", "MissingNodeInput", "MissingNodeOutput", "MissingStartingNodes", "MultipleNodeInputConnections", "UnfulfilledNodeInput", "UnsatisfiedConnectionConditions", "Unspecified", "UnknownNodeInput", "UnknownNodeOutput", "MissingLoopInputNode", "MissingLoopControllerNode", "MultipleLoopInputNodes", "MultipleLoopControllerNodes", "LoopIncompatibleNodeType", "InvalidLoopBoundary"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetFlow AWS API Documentation
    #
    # @overload get_flow(params = {})
    # @param [Hash] params ({})
    def get_flow(params = {}, options = {})
      req = build_request(:get_flow, params)
      req.send_request(options)
    end

    # Retrieves information about a flow. For more information, see [Deploy
    # a flow in Amazon Bedrock][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html
    #
    # @option params [required, String] :flow_identifier
    #   The unique identifier of the flow that the alias belongs to.
    #
    # @option params [required, String] :alias_identifier
    #   The unique identifier of the alias for which to retrieve information.
    #
    # @return [Types::GetFlowAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFlowAliasResponse#name #name} => String
    #   * {Types::GetFlowAliasResponse#description #description} => String
    #   * {Types::GetFlowAliasResponse#routing_configuration #routing_configuration} => Array&lt;Types::FlowAliasRoutingConfigurationListItem&gt;
    #   * {Types::GetFlowAliasResponse#concurrency_configuration #concurrency_configuration} => Types::FlowAliasConcurrencyConfiguration
    #   * {Types::GetFlowAliasResponse#flow_id #flow_id} => String
    #   * {Types::GetFlowAliasResponse#id #id} => String
    #   * {Types::GetFlowAliasResponse#arn #arn} => String
    #   * {Types::GetFlowAliasResponse#created_at #created_at} => Time
    #   * {Types::GetFlowAliasResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_flow_alias({
    #     flow_identifier: "FlowIdentifier", # required
    #     alias_identifier: "FlowAliasIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.routing_configuration #=> Array
    #   resp.routing_configuration[0].flow_version #=> String
    #   resp.concurrency_configuration.type #=> String, one of "Automatic", "Manual"
    #   resp.concurrency_configuration.max_concurrency #=> Integer
    #   resp.flow_id #=> String
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetFlowAlias AWS API Documentation
    #
    # @overload get_flow_alias(params = {})
    # @param [Hash] params ({})
    def get_flow_alias(params = {}, options = {})
      req = build_request(:get_flow_alias, params)
      req.send_request(options)
    end

    # Retrieves information about a version of a flow. For more information,
    # see [Deploy a flow in Amazon Bedrock][1] in the Amazon Bedrock User
    # Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html
    #
    # @option params [required, String] :flow_identifier
    #   The unique identifier of the flow for which to get information.
    #
    # @option params [required, String] :flow_version
    #   The version of the flow for which to get information.
    #
    # @return [Types::GetFlowVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFlowVersionResponse#name #name} => String
    #   * {Types::GetFlowVersionResponse#description #description} => String
    #   * {Types::GetFlowVersionResponse#execution_role_arn #execution_role_arn} => String
    #   * {Types::GetFlowVersionResponse#customer_encryption_key_arn #customer_encryption_key_arn} => String
    #   * {Types::GetFlowVersionResponse#id #id} => String
    #   * {Types::GetFlowVersionResponse#arn #arn} => String
    #   * {Types::GetFlowVersionResponse#status #status} => String
    #   * {Types::GetFlowVersionResponse#created_at #created_at} => Time
    #   * {Types::GetFlowVersionResponse#version #version} => String
    #   * {Types::GetFlowVersionResponse#definition #definition} => Types::FlowDefinition
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_flow_version({
    #     flow_identifier: "FlowIdentifier", # required
    #     flow_version: "NumericalVersion", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.execution_role_arn #=> String
    #   resp.customer_encryption_key_arn #=> String
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.status #=> String, one of "Failed", "Prepared", "Preparing", "NotPrepared"
    #   resp.created_at #=> Time
    #   resp.version #=> String
    #   resp.definition.nodes #=> Array
    #   resp.definition.nodes[0].name #=> String
    #   resp.definition.nodes[0].type #=> String, one of "Input", "Output", "KnowledgeBase", "Condition", "Lex", "Prompt", "LambdaFunction", "Storage", "Agent", "Retrieval", "Iterator", "Collector", "InlineCode", "Loop", "LoopInput", "LoopController"
    #   resp.definition.nodes[0].configuration.knowledge_base.knowledge_base_id #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.model_id #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.guardrail_configuration.guardrail_identifier #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.guardrail_configuration.guardrail_version #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.number_of_results #=> Integer
    #   resp.definition.nodes[0].configuration.knowledge_base.prompt_template.text_prompt_template #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.inference_configuration.text.temperature #=> Float
    #   resp.definition.nodes[0].configuration.knowledge_base.inference_configuration.text.top_p #=> Float
    #   resp.definition.nodes[0].configuration.knowledge_base.inference_configuration.text.max_tokens #=> Integer
    #   resp.definition.nodes[0].configuration.knowledge_base.inference_configuration.text.stop_sequences #=> Array
    #   resp.definition.nodes[0].configuration.knowledge_base.inference_configuration.text.stop_sequences[0] #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.type #=> String, one of "BEDROCK_RERANKING_MODEL"
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.model_configuration.model_arn #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.model_configuration.additional_model_request_fields #=> Hash
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.number_of_reranked_results #=> Integer
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.metadata_configuration.selection_mode #=> String, one of "SELECTIVE", "ALL"
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.metadata_configuration.selective_mode_configuration.fields_to_include #=> Array
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.metadata_configuration.selective_mode_configuration.fields_to_include[0].field_name #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.metadata_configuration.selective_mode_configuration.fields_to_exclude #=> Array
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.metadata_configuration.selective_mode_configuration.fields_to_exclude[0].field_name #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.prompt_template.text_prompt_template #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.inference_config.text.temperature #=> Float
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.inference_config.text.top_p #=> Float
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.inference_config.text.max_tokens #=> Integer
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.inference_config.text.stop_sequences #=> Array
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.inference_config.text.stop_sequences[0] #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.additional_model_request_fields #=> Hash
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.performance_config.latency #=> String, one of "standard", "optimized"
    #   resp.definition.nodes[0].configuration.condition.conditions #=> Array
    #   resp.definition.nodes[0].configuration.condition.conditions[0].name #=> String
    #   resp.definition.nodes[0].configuration.condition.conditions[0].expression #=> String
    #   resp.definition.nodes[0].configuration.lex.bot_alias_arn #=> String
    #   resp.definition.nodes[0].configuration.lex.locale_id #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.resource.prompt_arn #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_type #=> String, one of "TEXT", "CHAT"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.text.text #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.text.cache_point.type #=> String, one of "default"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.text.input_variables #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.text.input_variables[0].name #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.messages #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.messages[0].role #=> String, one of "user", "assistant"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.messages[0].content #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.messages[0].content[0].text #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.messages[0].content[0].cache_point.type #=> String, one of "default"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.system #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.system[0].text #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.system[0].cache_point.type #=> String, one of "default"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.input_variables #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.input_variables[0].name #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tools #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tools[0].tool_spec.name #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tools[0].tool_spec.description #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tools[0].cache_point.type #=> String, one of "default"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool_choice.tool.name #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.model_id #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.inference_configuration.text.temperature #=> Float
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.inference_configuration.text.top_p #=> Float
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.inference_configuration.text.max_tokens #=> Integer
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.inference_configuration.text.stop_sequences #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.inference_configuration.text.stop_sequences[0] #=> String
    #   resp.definition.nodes[0].configuration.prompt.guardrail_configuration.guardrail_identifier #=> String
    #   resp.definition.nodes[0].configuration.prompt.guardrail_configuration.guardrail_version #=> String
    #   resp.definition.nodes[0].configuration.lambda_function.lambda_arn #=> String
    #   resp.definition.nodes[0].configuration.storage.service_configuration.s3.bucket_name #=> String
    #   resp.definition.nodes[0].configuration.agent.agent_alias_arn #=> String
    #   resp.definition.nodes[0].configuration.retrieval.service_configuration.s3.bucket_name #=> String
    #   resp.definition.nodes[0].configuration.inline_code.code #=> String
    #   resp.definition.nodes[0].configuration.inline_code.language #=> String, one of "Python_3"
    #   resp.definition.nodes[0].configuration.loop.definition #=> Types::FlowDefinition
    #   resp.definition.nodes[0].configuration.loop_controller.continue_condition.name #=> String
    #   resp.definition.nodes[0].configuration.loop_controller.continue_condition.expression #=> String
    #   resp.definition.nodes[0].configuration.loop_controller.max_iterations #=> Integer
    #   resp.definition.nodes[0].inputs #=> Array
    #   resp.definition.nodes[0].inputs[0].name #=> String
    #   resp.definition.nodes[0].inputs[0].type #=> String, one of "String", "Number", "Boolean", "Object", "Array"
    #   resp.definition.nodes[0].inputs[0].expression #=> String
    #   resp.definition.nodes[0].inputs[0].category #=> String, one of "LoopCondition", "ReturnValueToLoopStart", "ExitLoop"
    #   resp.definition.nodes[0].outputs #=> Array
    #   resp.definition.nodes[0].outputs[0].name #=> String
    #   resp.definition.nodes[0].outputs[0].type #=> String, one of "String", "Number", "Boolean", "Object", "Array"
    #   resp.definition.connections #=> Array
    #   resp.definition.connections[0].type #=> String, one of "Data", "Conditional"
    #   resp.definition.connections[0].name #=> String
    #   resp.definition.connections[0].source #=> String
    #   resp.definition.connections[0].target #=> String
    #   resp.definition.connections[0].configuration.data.source_output #=> String
    #   resp.definition.connections[0].configuration.data.target_input #=> String
    #   resp.definition.connections[0].configuration.conditional.condition #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetFlowVersion AWS API Documentation
    #
    # @overload get_flow_version(params = {})
    # @param [Hash] params ({})
    def get_flow_version(params = {}, options = {})
      req = build_request(:get_flow_version, params)
      req.send_request(options)
    end

    # Gets information about a data ingestion job. Data sources are ingested
    # into your knowledge base so that Large Language Models (LLMs) can use
    # your data.
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base for the data ingestion job
    #   you want to get information on.
    #
    # @option params [required, String] :data_source_id
    #   The unique identifier of the data source for the data ingestion job
    #   you want to get information on.
    #
    # @option params [required, String] :ingestion_job_id
    #   The unique identifier of the data ingestion job you want to get
    #   information on.
    #
    # @return [Types::GetIngestionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIngestionJobResponse#ingestion_job #ingestion_job} => Types::IngestionJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ingestion_job({
    #     knowledge_base_id: "Id", # required
    #     data_source_id: "Id", # required
    #     ingestion_job_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ingestion_job.knowledge_base_id #=> String
    #   resp.ingestion_job.data_source_id #=> String
    #   resp.ingestion_job.ingestion_job_id #=> String
    #   resp.ingestion_job.description #=> String
    #   resp.ingestion_job.status #=> String, one of "STARTING", "IN_PROGRESS", "COMPLETE", "FAILED", "STOPPING", "STOPPED"
    #   resp.ingestion_job.statistics.number_of_documents_scanned #=> Integer
    #   resp.ingestion_job.statistics.number_of_metadata_documents_scanned #=> Integer
    #   resp.ingestion_job.statistics.number_of_new_documents_indexed #=> Integer
    #   resp.ingestion_job.statistics.number_of_modified_documents_indexed #=> Integer
    #   resp.ingestion_job.statistics.number_of_metadata_documents_modified #=> Integer
    #   resp.ingestion_job.statistics.number_of_documents_deleted #=> Integer
    #   resp.ingestion_job.statistics.number_of_documents_failed #=> Integer
    #   resp.ingestion_job.failure_reasons #=> Array
    #   resp.ingestion_job.failure_reasons[0] #=> String
    #   resp.ingestion_job.started_at #=> Time
    #   resp.ingestion_job.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetIngestionJob AWS API Documentation
    #
    # @overload get_ingestion_job(params = {})
    # @param [Hash] params ({})
    def get_ingestion_job(params = {}, options = {})
      req = build_request(:get_ingestion_job, params)
      req.send_request(options)
    end

    # Gets information about a knowledge base.
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base you want to get
    #   information on.
    #
    # @return [Types::GetKnowledgeBaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKnowledgeBaseResponse#knowledge_base #knowledge_base} => Types::KnowledgeBase
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_knowledge_base({
    #     knowledge_base_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.knowledge_base.knowledge_base_id #=> String
    #   resp.knowledge_base.name #=> String
    #   resp.knowledge_base.knowledge_base_arn #=> String
    #   resp.knowledge_base.description #=> String
    #   resp.knowledge_base.role_arn #=> String
    #   resp.knowledge_base.knowledge_base_configuration.type #=> String, one of "VECTOR", "KENDRA", "SQL"
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_arn #=> String
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration.dimensions #=> Integer
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration.embedding_data_type #=> String, one of "FLOAT32", "BINARY"
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration.audio #=> Array
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration.audio[0].segmentation_configuration.fixed_length_duration #=> Integer
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration.video #=> Array
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration.video[0].segmentation_configuration.fixed_length_duration #=> Integer
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.supplemental_data_storage_configuration.storage_locations #=> Array
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.supplemental_data_storage_configuration.storage_locations[0].type #=> String, one of "S3"
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.supplemental_data_storage_configuration.storage_locations[0].s3_location.uri #=> String
    #   resp.knowledge_base.knowledge_base_configuration.kendra_knowledge_base_configuration.kendra_index_arn #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.type #=> String, one of "REDSHIFT"
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.storage_configurations #=> Array
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.storage_configurations[0].type #=> String, one of "REDSHIFT", "AWS_DATA_CATALOG"
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.storage_configurations[0].aws_data_catalog_configuration.table_names #=> Array
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.storage_configurations[0].aws_data_catalog_configuration.table_names[0] #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.storage_configurations[0].redshift_configuration.database_name #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.type #=> String, one of "SERVERLESS", "PROVISIONED"
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.serverless_configuration.workgroup_arn #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.serverless_configuration.auth_configuration.type #=> String, one of "IAM", "USERNAME_PASSWORD"
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.serverless_configuration.auth_configuration.username_password_secret_arn #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.provisioned_configuration.cluster_identifier #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.provisioned_configuration.auth_configuration.type #=> String, one of "IAM", "USERNAME_PASSWORD", "USERNAME"
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.provisioned_configuration.auth_configuration.database_user #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.provisioned_configuration.auth_configuration.username_password_secret_arn #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.execution_timeout_seconds #=> Integer
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.tables #=> Array
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.tables[0].name #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.tables[0].description #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.tables[0].inclusion #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.tables[0].columns #=> Array
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.tables[0].columns[0].name #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.tables[0].columns[0].description #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.tables[0].columns[0].inclusion #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.curated_queries #=> Array
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.curated_queries[0].natural_language #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.curated_queries[0].sql #=> String
    #   resp.knowledge_base.storage_configuration.type #=> String, one of "OPENSEARCH_SERVERLESS", "PINECONE", "REDIS_ENTERPRISE_CLOUD", "RDS", "MONGO_DB_ATLAS", "NEPTUNE_ANALYTICS", "OPENSEARCH_MANAGED_CLUSTER", "S3_VECTORS"
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.collection_arn #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.vector_index_name #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.field_mapping.vector_field #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_managed_cluster_configuration.domain_endpoint #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_managed_cluster_configuration.domain_arn #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_managed_cluster_configuration.vector_index_name #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_managed_cluster_configuration.field_mapping.vector_field #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_managed_cluster_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_managed_cluster_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.connection_string #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.credentials_secret_arn #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.namespace #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.endpoint #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.vector_index_name #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.credentials_secret_arn #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.field_mapping.vector_field #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.resource_arn #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.credentials_secret_arn #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.database_name #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.table_name #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.field_mapping.primary_key_field #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.field_mapping.vector_field #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.field_mapping.custom_metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.endpoint #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.database_name #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.collection_name #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.vector_index_name #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.credentials_secret_arn #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.field_mapping.vector_field #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.endpoint_service_name #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.text_index_name #=> String
    #   resp.knowledge_base.storage_configuration.neptune_analytics_configuration.graph_arn #=> String
    #   resp.knowledge_base.storage_configuration.neptune_analytics_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.neptune_analytics_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.s3_vectors_configuration.vector_bucket_arn #=> String
    #   resp.knowledge_base.storage_configuration.s3_vectors_configuration.index_arn #=> String
    #   resp.knowledge_base.storage_configuration.s3_vectors_configuration.index_name #=> String
    #   resp.knowledge_base.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "UPDATING", "FAILED", "DELETE_UNSUCCESSFUL"
    #   resp.knowledge_base.created_at #=> Time
    #   resp.knowledge_base.updated_at #=> Time
    #   resp.knowledge_base.failure_reasons #=> Array
    #   resp.knowledge_base.failure_reasons[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetKnowledgeBase AWS API Documentation
    #
    # @overload get_knowledge_base(params = {})
    # @param [Hash] params ({})
    def get_knowledge_base(params = {}, options = {})
      req = build_request(:get_knowledge_base, params)
      req.send_request(options)
    end

    # Retrieves specific documents from a data source that is connected to a
    # knowledge base. For more information, see [Ingest changes directly
    # into a knowledge base][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/kb-direct-ingestion.html
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base that is connected to the
    #   data source.
    #
    # @option params [required, String] :data_source_id
    #   The unique identifier of the data source that contains the documents.
    #
    # @option params [required, Array<Types::DocumentIdentifier>] :document_identifiers
    #   A list of objects, each of which contains information to identify a
    #   document for which to retrieve information.
    #
    # @return [Types::GetKnowledgeBaseDocumentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKnowledgeBaseDocumentsResponse#document_details #document_details} => Array&lt;Types::KnowledgeBaseDocumentDetail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_knowledge_base_documents({
    #     knowledge_base_id: "Id", # required
    #     data_source_id: "Id", # required
    #     document_identifiers: [ # required
    #       {
    #         data_source_type: "CUSTOM", # required, accepts CUSTOM, S3
    #         s3: {
    #           uri: "S3BucketUri", # required
    #         },
    #         custom: {
    #           id: "CustomDocumentIdentifierIdString", # required
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.document_details #=> Array
    #   resp.document_details[0].knowledge_base_id #=> String
    #   resp.document_details[0].data_source_id #=> String
    #   resp.document_details[0].status #=> String, one of "INDEXED", "PARTIALLY_INDEXED", "PENDING", "FAILED", "METADATA_PARTIALLY_INDEXED", "METADATA_UPDATE_FAILED", "IGNORED", "NOT_FOUND", "STARTING", "IN_PROGRESS", "DELETING", "DELETE_IN_PROGRESS"
    #   resp.document_details[0].identifier.data_source_type #=> String, one of "CUSTOM", "S3"
    #   resp.document_details[0].identifier.s3.uri #=> String
    #   resp.document_details[0].identifier.custom.id #=> String
    #   resp.document_details[0].status_reason #=> String
    #   resp.document_details[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetKnowledgeBaseDocuments AWS API Documentation
    #
    # @overload get_knowledge_base_documents(params = {})
    # @param [Hash] params ({})
    def get_knowledge_base_documents(params = {}, options = {})
      req = build_request(:get_knowledge_base_documents, params)
      req.send_request(options)
    end

    # Retrieves information about the working draft (`DRAFT` version) of a
    # prompt or a version of it, depending on whether you include the
    # `promptVersion` field or not. For more information, see [View
    # information about prompts using Prompt management][1] and [View
    # information about a version of your prompt][2] in the Amazon Bedrock
    # User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-manage.html#prompt-management-view.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-deploy.html#prompt-management-versions-view.html
    #
    # @option params [required, String] :prompt_identifier
    #   The unique identifier of the prompt.
    #
    # @option params [String] :prompt_version
    #   The version of the prompt about which you want to retrieve
    #   information. Omit this field to return information about the working
    #   draft of the prompt.
    #
    # @return [Types::GetPromptResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPromptResponse#name #name} => String
    #   * {Types::GetPromptResponse#description #description} => String
    #   * {Types::GetPromptResponse#customer_encryption_key_arn #customer_encryption_key_arn} => String
    #   * {Types::GetPromptResponse#default_variant #default_variant} => String
    #   * {Types::GetPromptResponse#variants #variants} => Array&lt;Types::PromptVariant&gt;
    #   * {Types::GetPromptResponse#id #id} => String
    #   * {Types::GetPromptResponse#arn #arn} => String
    #   * {Types::GetPromptResponse#version #version} => String
    #   * {Types::GetPromptResponse#created_at #created_at} => Time
    #   * {Types::GetPromptResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_prompt({
    #     prompt_identifier: "PromptIdentifier", # required
    #     prompt_version: "Version",
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.customer_encryption_key_arn #=> String
    #   resp.default_variant #=> String
    #   resp.variants #=> Array
    #   resp.variants[0].name #=> String
    #   resp.variants[0].template_type #=> String, one of "TEXT", "CHAT"
    #   resp.variants[0].template_configuration.text.text #=> String
    #   resp.variants[0].template_configuration.text.cache_point.type #=> String, one of "default"
    #   resp.variants[0].template_configuration.text.input_variables #=> Array
    #   resp.variants[0].template_configuration.text.input_variables[0].name #=> String
    #   resp.variants[0].template_configuration.chat.messages #=> Array
    #   resp.variants[0].template_configuration.chat.messages[0].role #=> String, one of "user", "assistant"
    #   resp.variants[0].template_configuration.chat.messages[0].content #=> Array
    #   resp.variants[0].template_configuration.chat.messages[0].content[0].text #=> String
    #   resp.variants[0].template_configuration.chat.messages[0].content[0].cache_point.type #=> String, one of "default"
    #   resp.variants[0].template_configuration.chat.system #=> Array
    #   resp.variants[0].template_configuration.chat.system[0].text #=> String
    #   resp.variants[0].template_configuration.chat.system[0].cache_point.type #=> String, one of "default"
    #   resp.variants[0].template_configuration.chat.input_variables #=> Array
    #   resp.variants[0].template_configuration.chat.input_variables[0].name #=> String
    #   resp.variants[0].template_configuration.chat.tool_configuration.tools #=> Array
    #   resp.variants[0].template_configuration.chat.tool_configuration.tools[0].tool_spec.name #=> String
    #   resp.variants[0].template_configuration.chat.tool_configuration.tools[0].tool_spec.description #=> String
    #   resp.variants[0].template_configuration.chat.tool_configuration.tools[0].cache_point.type #=> String, one of "default"
    #   resp.variants[0].template_configuration.chat.tool_configuration.tool_choice.tool.name #=> String
    #   resp.variants[0].model_id #=> String
    #   resp.variants[0].inference_configuration.text.temperature #=> Float
    #   resp.variants[0].inference_configuration.text.top_p #=> Float
    #   resp.variants[0].inference_configuration.text.max_tokens #=> Integer
    #   resp.variants[0].inference_configuration.text.stop_sequences #=> Array
    #   resp.variants[0].inference_configuration.text.stop_sequences[0] #=> String
    #   resp.variants[0].metadata #=> Array
    #   resp.variants[0].metadata[0].key #=> String
    #   resp.variants[0].metadata[0].value #=> String
    #   resp.variants[0].gen_ai_resource.agent.agent_identifier #=> String
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.version #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetPrompt AWS API Documentation
    #
    # @overload get_prompt(params = {})
    # @param [Hash] params ({})
    def get_prompt(params = {}, options = {})
      req = build_request(:get_prompt, params)
      req.send_request(options)
    end

    # Ingests documents directly into the knowledge base that is connected
    # to the data source. The `dataSourceType` specified in the content for
    # each document must match the type of the data source that you specify
    # in the header. For more information, see [Ingest changes directly into
    # a knowledge base][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/kb-direct-ingestion.html
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base to ingest the documents
    #   into.
    #
    # @option params [required, String] :data_source_id
    #   The unique identifier of the data source connected to the knowledge
    #   base that you're adding documents to.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, Array<Types::KnowledgeBaseDocument>] :documents
    #   A list of objects, each of which contains information about the
    #   documents to add.
    #
    # @return [Types::IngestKnowledgeBaseDocumentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::IngestKnowledgeBaseDocumentsResponse#document_details #document_details} => Array&lt;Types::KnowledgeBaseDocumentDetail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.ingest_knowledge_base_documents({
    #     knowledge_base_id: "Id", # required
    #     data_source_id: "Id", # required
    #     client_token: "ClientToken",
    #     documents: [ # required
    #       {
    #         metadata: {
    #           type: "IN_LINE_ATTRIBUTE", # required, accepts IN_LINE_ATTRIBUTE, S3_LOCATION
    #           inline_attributes: [
    #             {
    #               key: "Key", # required
    #               value: { # required
    #                 type: "BOOLEAN", # required, accepts BOOLEAN, NUMBER, STRING, STRING_LIST
    #                 number_value: 1.0,
    #                 boolean_value: false,
    #                 string_value: "StringValue",
    #                 string_list_value: ["StringValue"],
    #               },
    #             },
    #           ],
    #           s3_location: {
    #             uri: "S3ObjectUri", # required
    #             bucket_owner_account_id: "BucketOwnerAccountId",
    #           },
    #         },
    #         content: { # required
    #           data_source_type: "CUSTOM", # required, accepts CUSTOM, S3
    #           custom: {
    #             custom_document_identifier: { # required
    #               id: "CustomDocumentIdentifierIdString", # required
    #             },
    #             source_type: "IN_LINE", # required, accepts IN_LINE, S3_LOCATION
    #             s3_location: {
    #               uri: "S3ObjectUri", # required
    #               bucket_owner_account_id: "BucketOwnerAccountId",
    #             },
    #             inline_content: {
    #               type: "BYTE", # required, accepts BYTE, TEXT
    #               byte_content: {
    #                 mime_type: "ByteContentDocMimeTypeString", # required
    #                 data: "data", # required
    #               },
    #               text_content: {
    #                 data: "Data", # required
    #               },
    #             },
    #           },
    #           s3: {
    #             s3_location: { # required
    #               uri: "S3BucketUri", # required
    #             },
    #           },
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.document_details #=> Array
    #   resp.document_details[0].knowledge_base_id #=> String
    #   resp.document_details[0].data_source_id #=> String
    #   resp.document_details[0].status #=> String, one of "INDEXED", "PARTIALLY_INDEXED", "PENDING", "FAILED", "METADATA_PARTIALLY_INDEXED", "METADATA_UPDATE_FAILED", "IGNORED", "NOT_FOUND", "STARTING", "IN_PROGRESS", "DELETING", "DELETE_IN_PROGRESS"
    #   resp.document_details[0].identifier.data_source_type #=> String, one of "CUSTOM", "S3"
    #   resp.document_details[0].identifier.s3.uri #=> String
    #   resp.document_details[0].identifier.custom.id #=> String
    #   resp.document_details[0].status_reason #=> String
    #   resp.document_details[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/IngestKnowledgeBaseDocuments AWS API Documentation
    #
    # @overload ingest_knowledge_base_documents(params = {})
    # @param [Hash] params ({})
    def ingest_knowledge_base_documents(params = {}, options = {})
      req = build_request(:ingest_knowledge_base_documents, params)
      req.send_request(options)
    end

    # Lists the action groups for an agent and information about each one.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent.
    #
    # @option params [required, String] :agent_version
    #   The version of the agent.
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
    # @return [Types::ListAgentActionGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAgentActionGroupsResponse#action_group_summaries #action_group_summaries} => Array&lt;Types::ActionGroupSummary&gt;
    #   * {Types::ListAgentActionGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_agent_action_groups({
    #     agent_id: "Id", # required
    #     agent_version: "Version", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.action_group_summaries #=> Array
    #   resp.action_group_summaries[0].action_group_id #=> String
    #   resp.action_group_summaries[0].action_group_name #=> String
    #   resp.action_group_summaries[0].action_group_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.action_group_summaries[0].description #=> String
    #   resp.action_group_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListAgentActionGroups AWS API Documentation
    #
    # @overload list_agent_action_groups(params = {})
    # @param [Hash] params ({})
    def list_agent_action_groups(params = {}, options = {})
      req = build_request(:list_agent_action_groups, params)
      req.send_request(options)
    end

    # Lists the aliases of an agent and information about each one.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent.
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
    # @return [Types::ListAgentAliasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAgentAliasesResponse#agent_alias_summaries #agent_alias_summaries} => Array&lt;Types::AgentAliasSummary&gt;
    #   * {Types::ListAgentAliasesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_agent_aliases({
    #     agent_id: "Id", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_alias_summaries #=> Array
    #   resp.agent_alias_summaries[0].agent_alias_id #=> String
    #   resp.agent_alias_summaries[0].agent_alias_name #=> String
    #   resp.agent_alias_summaries[0].description #=> String
    #   resp.agent_alias_summaries[0].routing_configuration #=> Array
    #   resp.agent_alias_summaries[0].routing_configuration[0].agent_version #=> String
    #   resp.agent_alias_summaries[0].routing_configuration[0].provisioned_throughput #=> String
    #   resp.agent_alias_summaries[0].agent_alias_status #=> String, one of "CREATING", "PREPARED", "FAILED", "UPDATING", "DELETING", "DISSOCIATED"
    #   resp.agent_alias_summaries[0].created_at #=> Time
    #   resp.agent_alias_summaries[0].updated_at #=> Time
    #   resp.agent_alias_summaries[0].alias_invocation_state #=> String, one of "ACCEPT_INVOCATIONS", "REJECT_INVOCATIONS"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListAgentAliases AWS API Documentation
    #
    # @overload list_agent_aliases(params = {})
    # @param [Hash] params ({})
    def list_agent_aliases(params = {}, options = {})
      req = build_request(:list_agent_aliases, params)
      req.send_request(options)
    end

    # Retrieve a list of an agent's collaborators.
    #
    # @option params [required, String] :agent_id
    #   The agent's ID.
    #
    # @option params [required, String] :agent_version
    #   The agent's version.
    #
    # @option params [Integer] :max_results
    #   The maximum number of agent collaborators to return in one page of
    #   results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @return [Types::ListAgentCollaboratorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAgentCollaboratorsResponse#agent_collaborator_summaries #agent_collaborator_summaries} => Array&lt;Types::AgentCollaboratorSummary&gt;
    #   * {Types::ListAgentCollaboratorsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_agent_collaborators({
    #     agent_id: "Id", # required
    #     agent_version: "Version", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_collaborator_summaries #=> Array
    #   resp.agent_collaborator_summaries[0].agent_id #=> String
    #   resp.agent_collaborator_summaries[0].agent_version #=> String
    #   resp.agent_collaborator_summaries[0].collaborator_id #=> String
    #   resp.agent_collaborator_summaries[0].agent_descriptor.alias_arn #=> String
    #   resp.agent_collaborator_summaries[0].collaboration_instruction #=> String
    #   resp.agent_collaborator_summaries[0].relay_conversation_history #=> String, one of "TO_COLLABORATOR", "DISABLED"
    #   resp.agent_collaborator_summaries[0].collaborator_name #=> String
    #   resp.agent_collaborator_summaries[0].created_at #=> Time
    #   resp.agent_collaborator_summaries[0].last_updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListAgentCollaborators AWS API Documentation
    #
    # @overload list_agent_collaborators(params = {})
    # @param [Hash] params ({})
    def list_agent_collaborators(params = {}, options = {})
      req = build_request(:list_agent_collaborators, params)
      req.send_request(options)
    end

    # Lists knowledge bases associated with an agent and information about
    # each one.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent for which to return information
    #   about knowledge bases associated with it.
    #
    # @option params [required, String] :agent_version
    #   The version of the agent for which to return information about
    #   knowledge bases associated with it.
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
    # @return [Types::ListAgentKnowledgeBasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAgentKnowledgeBasesResponse#agent_knowledge_base_summaries #agent_knowledge_base_summaries} => Array&lt;Types::AgentKnowledgeBaseSummary&gt;
    #   * {Types::ListAgentKnowledgeBasesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_agent_knowledge_bases({
    #     agent_id: "Id", # required
    #     agent_version: "Version", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_knowledge_base_summaries #=> Array
    #   resp.agent_knowledge_base_summaries[0].knowledge_base_id #=> String
    #   resp.agent_knowledge_base_summaries[0].description #=> String
    #   resp.agent_knowledge_base_summaries[0].knowledge_base_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.agent_knowledge_base_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListAgentKnowledgeBases AWS API Documentation
    #
    # @overload list_agent_knowledge_bases(params = {})
    # @param [Hash] params ({})
    def list_agent_knowledge_bases(params = {}, options = {})
      req = build_request(:list_agent_knowledge_bases, params)
      req.send_request(options)
    end

    # Lists the versions of an agent and information about each version.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent.
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
    # @return [Types::ListAgentVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAgentVersionsResponse#agent_version_summaries #agent_version_summaries} => Array&lt;Types::AgentVersionSummary&gt;
    #   * {Types::ListAgentVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_agent_versions({
    #     agent_id: "Id", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_version_summaries #=> Array
    #   resp.agent_version_summaries[0].agent_name #=> String
    #   resp.agent_version_summaries[0].agent_status #=> String, one of "CREATING", "PREPARING", "PREPARED", "NOT_PREPARED", "DELETING", "FAILED", "VERSIONING", "UPDATING"
    #   resp.agent_version_summaries[0].agent_version #=> String
    #   resp.agent_version_summaries[0].created_at #=> Time
    #   resp.agent_version_summaries[0].updated_at #=> Time
    #   resp.agent_version_summaries[0].description #=> String
    #   resp.agent_version_summaries[0].guardrail_configuration.guardrail_identifier #=> String
    #   resp.agent_version_summaries[0].guardrail_configuration.guardrail_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListAgentVersions AWS API Documentation
    #
    # @overload list_agent_versions(params = {})
    # @param [Hash] params ({})
    def list_agent_versions(params = {}, options = {})
      req = build_request(:list_agent_versions, params)
      req.send_request(options)
    end

    # Lists the agents belonging to an account and information about each
    # agent.
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
    # @return [Types::ListAgentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAgentsResponse#agent_summaries #agent_summaries} => Array&lt;Types::AgentSummary&gt;
    #   * {Types::ListAgentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_agents({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_summaries #=> Array
    #   resp.agent_summaries[0].agent_id #=> String
    #   resp.agent_summaries[0].agent_name #=> String
    #   resp.agent_summaries[0].agent_status #=> String, one of "CREATING", "PREPARING", "PREPARED", "NOT_PREPARED", "DELETING", "FAILED", "VERSIONING", "UPDATING"
    #   resp.agent_summaries[0].description #=> String
    #   resp.agent_summaries[0].updated_at #=> Time
    #   resp.agent_summaries[0].latest_agent_version #=> String
    #   resp.agent_summaries[0].guardrail_configuration.guardrail_identifier #=> String
    #   resp.agent_summaries[0].guardrail_configuration.guardrail_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListAgents AWS API Documentation
    #
    # @overload list_agents(params = {})
    # @param [Hash] params ({})
    def list_agents(params = {}, options = {})
      req = build_request(:list_agents, params)
      req.send_request(options)
    end

    # Lists the data sources in a knowledge base and information about each
    # one.
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base for which to return a list
    #   of information.
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
    # @return [Types::ListDataSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataSourcesResponse#data_source_summaries #data_source_summaries} => Array&lt;Types::DataSourceSummary&gt;
    #   * {Types::ListDataSourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_sources({
    #     knowledge_base_id: "Id", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source_summaries #=> Array
    #   resp.data_source_summaries[0].knowledge_base_id #=> String
    #   resp.data_source_summaries[0].data_source_id #=> String
    #   resp.data_source_summaries[0].name #=> String
    #   resp.data_source_summaries[0].status #=> String, one of "AVAILABLE", "DELETING", "DELETE_UNSUCCESSFUL"
    #   resp.data_source_summaries[0].description #=> String
    #   resp.data_source_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListDataSources AWS API Documentation
    #
    # @overload list_data_sources(params = {})
    # @param [Hash] params ({})
    def list_data_sources(params = {}, options = {})
      req = build_request(:list_data_sources, params)
      req.send_request(options)
    end

    # Returns a list of aliases for a flow.
    #
    # @option params [required, String] :flow_identifier
    #   The unique identifier of the flow for which aliases are being
    #   returned.
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
    # @return [Types::ListFlowAliasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFlowAliasesResponse#flow_alias_summaries #flow_alias_summaries} => Array&lt;Types::FlowAliasSummary&gt;
    #   * {Types::ListFlowAliasesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_flow_aliases({
    #     flow_identifier: "FlowIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_alias_summaries #=> Array
    #   resp.flow_alias_summaries[0].name #=> String
    #   resp.flow_alias_summaries[0].description #=> String
    #   resp.flow_alias_summaries[0].routing_configuration #=> Array
    #   resp.flow_alias_summaries[0].routing_configuration[0].flow_version #=> String
    #   resp.flow_alias_summaries[0].concurrency_configuration.type #=> String, one of "Automatic", "Manual"
    #   resp.flow_alias_summaries[0].concurrency_configuration.max_concurrency #=> Integer
    #   resp.flow_alias_summaries[0].flow_id #=> String
    #   resp.flow_alias_summaries[0].id #=> String
    #   resp.flow_alias_summaries[0].arn #=> String
    #   resp.flow_alias_summaries[0].created_at #=> Time
    #   resp.flow_alias_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListFlowAliases AWS API Documentation
    #
    # @overload list_flow_aliases(params = {})
    # @param [Hash] params ({})
    def list_flow_aliases(params = {}, options = {})
      req = build_request(:list_flow_aliases, params)
      req.send_request(options)
    end

    # Returns a list of information about each flow. For more information,
    # see [Deploy a flow in Amazon Bedrock][1] in the Amazon Bedrock User
    # Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html
    #
    # @option params [required, String] :flow_identifier
    #   The unique identifier of the flow.
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
    # @return [Types::ListFlowVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFlowVersionsResponse#flow_version_summaries #flow_version_summaries} => Array&lt;Types::FlowVersionSummary&gt;
    #   * {Types::ListFlowVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_flow_versions({
    #     flow_identifier: "FlowIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_version_summaries #=> Array
    #   resp.flow_version_summaries[0].id #=> String
    #   resp.flow_version_summaries[0].arn #=> String
    #   resp.flow_version_summaries[0].status #=> String, one of "Failed", "Prepared", "Preparing", "NotPrepared"
    #   resp.flow_version_summaries[0].created_at #=> Time
    #   resp.flow_version_summaries[0].version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListFlowVersions AWS API Documentation
    #
    # @overload list_flow_versions(params = {})
    # @param [Hash] params ({})
    def list_flow_versions(params = {}, options = {})
      req = build_request(:list_flow_versions, params)
      req.send_request(options)
    end

    # Returns a list of flows and information about each flow. For more
    # information, see [Manage a flow in Amazon Bedrock][1] in the Amazon
    # Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-manage.html
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
    # @return [Types::ListFlowsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFlowsResponse#flow_summaries #flow_summaries} => Array&lt;Types::FlowSummary&gt;
    #   * {Types::ListFlowsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_flows({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_summaries #=> Array
    #   resp.flow_summaries[0].name #=> String
    #   resp.flow_summaries[0].description #=> String
    #   resp.flow_summaries[0].id #=> String
    #   resp.flow_summaries[0].arn #=> String
    #   resp.flow_summaries[0].status #=> String, one of "Failed", "Prepared", "Preparing", "NotPrepared"
    #   resp.flow_summaries[0].created_at #=> Time
    #   resp.flow_summaries[0].updated_at #=> Time
    #   resp.flow_summaries[0].version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListFlows AWS API Documentation
    #
    # @overload list_flows(params = {})
    # @param [Hash] params ({})
    def list_flows(params = {}, options = {})
      req = build_request(:list_flows, params)
      req.send_request(options)
    end

    # Lists the data ingestion jobs for a data source. The list also
    # includes information about each job.
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base for the list of data
    #   ingestion jobs.
    #
    # @option params [required, String] :data_source_id
    #   The unique identifier of the data source for the list of data
    #   ingestion jobs.
    #
    # @option params [Array<Types::IngestionJobFilter>] :filters
    #   Contains information about the filters for filtering the data.
    #
    # @option params [Types::IngestionJobSortBy] :sort_by
    #   Contains details about how to sort the data.
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
    # @return [Types::ListIngestionJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIngestionJobsResponse#ingestion_job_summaries #ingestion_job_summaries} => Array&lt;Types::IngestionJobSummary&gt;
    #   * {Types::ListIngestionJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ingestion_jobs({
    #     knowledge_base_id: "Id", # required
    #     data_source_id: "Id", # required
    #     filters: [
    #       {
    #         attribute: "STATUS", # required, accepts STATUS
    #         operator: "EQ", # required, accepts EQ
    #         values: ["IngestionJobFilterValue"], # required
    #       },
    #     ],
    #     sort_by: {
    #       attribute: "STATUS", # required, accepts STATUS, STARTED_AT
    #       order: "ASCENDING", # required, accepts ASCENDING, DESCENDING
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.ingestion_job_summaries #=> Array
    #   resp.ingestion_job_summaries[0].knowledge_base_id #=> String
    #   resp.ingestion_job_summaries[0].data_source_id #=> String
    #   resp.ingestion_job_summaries[0].ingestion_job_id #=> String
    #   resp.ingestion_job_summaries[0].description #=> String
    #   resp.ingestion_job_summaries[0].status #=> String, one of "STARTING", "IN_PROGRESS", "COMPLETE", "FAILED", "STOPPING", "STOPPED"
    #   resp.ingestion_job_summaries[0].started_at #=> Time
    #   resp.ingestion_job_summaries[0].updated_at #=> Time
    #   resp.ingestion_job_summaries[0].statistics.number_of_documents_scanned #=> Integer
    #   resp.ingestion_job_summaries[0].statistics.number_of_metadata_documents_scanned #=> Integer
    #   resp.ingestion_job_summaries[0].statistics.number_of_new_documents_indexed #=> Integer
    #   resp.ingestion_job_summaries[0].statistics.number_of_modified_documents_indexed #=> Integer
    #   resp.ingestion_job_summaries[0].statistics.number_of_metadata_documents_modified #=> Integer
    #   resp.ingestion_job_summaries[0].statistics.number_of_documents_deleted #=> Integer
    #   resp.ingestion_job_summaries[0].statistics.number_of_documents_failed #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListIngestionJobs AWS API Documentation
    #
    # @overload list_ingestion_jobs(params = {})
    # @param [Hash] params ({})
    def list_ingestion_jobs(params = {}, options = {})
      req = build_request(:list_ingestion_jobs, params)
      req.send_request(options)
    end

    # Retrieves all the documents contained in a data source that is
    # connected to a knowledge base. For more information, see [Ingest
    # changes directly into a knowledge base][1] in the Amazon Bedrock User
    # Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/kb-direct-ingestion.html
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base that is connected to the
    #   data source.
    #
    # @option params [required, String] :data_source_id
    #   The unique identifier of the data source that contains the documents.
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
    # @return [Types::ListKnowledgeBaseDocumentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKnowledgeBaseDocumentsResponse#document_details #document_details} => Array&lt;Types::KnowledgeBaseDocumentDetail&gt;
    #   * {Types::ListKnowledgeBaseDocumentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_knowledge_base_documents({
    #     knowledge_base_id: "Id", # required
    #     data_source_id: "Id", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.document_details #=> Array
    #   resp.document_details[0].knowledge_base_id #=> String
    #   resp.document_details[0].data_source_id #=> String
    #   resp.document_details[0].status #=> String, one of "INDEXED", "PARTIALLY_INDEXED", "PENDING", "FAILED", "METADATA_PARTIALLY_INDEXED", "METADATA_UPDATE_FAILED", "IGNORED", "NOT_FOUND", "STARTING", "IN_PROGRESS", "DELETING", "DELETE_IN_PROGRESS"
    #   resp.document_details[0].identifier.data_source_type #=> String, one of "CUSTOM", "S3"
    #   resp.document_details[0].identifier.s3.uri #=> String
    #   resp.document_details[0].identifier.custom.id #=> String
    #   resp.document_details[0].status_reason #=> String
    #   resp.document_details[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListKnowledgeBaseDocuments AWS API Documentation
    #
    # @overload list_knowledge_base_documents(params = {})
    # @param [Hash] params ({})
    def list_knowledge_base_documents(params = {}, options = {})
      req = build_request(:list_knowledge_base_documents, params)
      req.send_request(options)
    end

    # Lists the knowledge bases in an account. The list also
    # includesinformation about each knowledge base.
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
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.knowledge_base_summaries #=> Array
    #   resp.knowledge_base_summaries[0].knowledge_base_id #=> String
    #   resp.knowledge_base_summaries[0].name #=> String
    #   resp.knowledge_base_summaries[0].description #=> String
    #   resp.knowledge_base_summaries[0].status #=> String, one of "CREATING", "ACTIVE", "DELETING", "UPDATING", "FAILED", "DELETE_UNSUCCESSFUL"
    #   resp.knowledge_base_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListKnowledgeBases AWS API Documentation
    #
    # @overload list_knowledge_bases(params = {})
    # @param [Hash] params ({})
    def list_knowledge_bases(params = {}, options = {})
      req = build_request(:list_knowledge_bases, params)
      req.send_request(options)
    end

    # Returns either information about the working draft (`DRAFT` version)
    # of each prompt in an account, or information about of all versions of
    # a prompt, depending on whether you include the `promptIdentifier`
    # field or not. For more information, see [View information about
    # prompts using Prompt management][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-manage.html#prompt-management-view.html
    #
    # @option params [String] :prompt_identifier
    #   The unique identifier of the prompt for whose versions you want to
    #   return information. Omit this field to list information about all
    #   prompts in an account.
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
    # @return [Types::ListPromptsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPromptsResponse#prompt_summaries #prompt_summaries} => Array&lt;Types::PromptSummary&gt;
    #   * {Types::ListPromptsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_prompts({
    #     prompt_identifier: "PromptIdentifier",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.prompt_summaries #=> Array
    #   resp.prompt_summaries[0].name #=> String
    #   resp.prompt_summaries[0].description #=> String
    #   resp.prompt_summaries[0].id #=> String
    #   resp.prompt_summaries[0].arn #=> String
    #   resp.prompt_summaries[0].version #=> String
    #   resp.prompt_summaries[0].created_at #=> Time
    #   resp.prompt_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListPrompts AWS API Documentation
    #
    # @overload list_prompts(params = {})
    # @param [Hash] params ({})
    def list_prompts(params = {}, options = {})
      req = build_request(:list_prompts, params)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Creates a `DRAFT` version of the agent that can be used for internal
    # testing.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent for which to create a `DRAFT`
    #   version.
    #
    # @return [Types::PrepareAgentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PrepareAgentResponse#agent_id #agent_id} => String
    #   * {Types::PrepareAgentResponse#agent_status #agent_status} => String
    #   * {Types::PrepareAgentResponse#agent_version #agent_version} => String
    #   * {Types::PrepareAgentResponse#prepared_at #prepared_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.prepare_agent({
    #     agent_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_id #=> String
    #   resp.agent_status #=> String, one of "CREATING", "PREPARING", "PREPARED", "NOT_PREPARED", "DELETING", "FAILED", "VERSIONING", "UPDATING"
    #   resp.agent_version #=> String
    #   resp.prepared_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PrepareAgent AWS API Documentation
    #
    # @overload prepare_agent(params = {})
    # @param [Hash] params ({})
    def prepare_agent(params = {}, options = {})
      req = build_request(:prepare_agent, params)
      req.send_request(options)
    end

    # Prepares the `DRAFT` version of a flow so that it can be invoked. For
    # more information, see [Test a flow in Amazon Bedrock][1] in the Amazon
    # Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-test.html
    #
    # @option params [required, String] :flow_identifier
    #   The unique identifier of the flow.
    #
    # @return [Types::PrepareFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PrepareFlowResponse#id #id} => String
    #   * {Types::PrepareFlowResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.prepare_flow({
    #     flow_identifier: "FlowIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.status #=> String, one of "Failed", "Prepared", "Preparing", "NotPrepared"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PrepareFlow AWS API Documentation
    #
    # @overload prepare_flow(params = {})
    # @param [Hash] params ({})
    def prepare_flow(params = {}, options = {})
      req = build_request(:prepare_flow, params)
      req.send_request(options)
    end

    # Begins a data ingestion job. Data sources are ingested into your
    # knowledge base so that Large Language Models (LLMs) can use your data.
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base for the data ingestion
    #   job.
    #
    # @option params [required, String] :data_source_id
    #   The unique identifier of the data source you want to ingest into your
    #   knowledge base.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
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
    #   A description of the data ingestion job.
    #
    # @return [Types::StartIngestionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartIngestionJobResponse#ingestion_job #ingestion_job} => Types::IngestionJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_ingestion_job({
    #     knowledge_base_id: "Id", # required
    #     data_source_id: "Id", # required
    #     client_token: "ClientToken",
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.ingestion_job.knowledge_base_id #=> String
    #   resp.ingestion_job.data_source_id #=> String
    #   resp.ingestion_job.ingestion_job_id #=> String
    #   resp.ingestion_job.description #=> String
    #   resp.ingestion_job.status #=> String, one of "STARTING", "IN_PROGRESS", "COMPLETE", "FAILED", "STOPPING", "STOPPED"
    #   resp.ingestion_job.statistics.number_of_documents_scanned #=> Integer
    #   resp.ingestion_job.statistics.number_of_metadata_documents_scanned #=> Integer
    #   resp.ingestion_job.statistics.number_of_new_documents_indexed #=> Integer
    #   resp.ingestion_job.statistics.number_of_modified_documents_indexed #=> Integer
    #   resp.ingestion_job.statistics.number_of_metadata_documents_modified #=> Integer
    #   resp.ingestion_job.statistics.number_of_documents_deleted #=> Integer
    #   resp.ingestion_job.statistics.number_of_documents_failed #=> Integer
    #   resp.ingestion_job.failure_reasons #=> Array
    #   resp.ingestion_job.failure_reasons[0] #=> String
    #   resp.ingestion_job.started_at #=> Time
    #   resp.ingestion_job.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/StartIngestionJob AWS API Documentation
    #
    # @overload start_ingestion_job(params = {})
    # @param [Hash] params ({})
    def start_ingestion_job(params = {}, options = {})
      req = build_request(:start_ingestion_job, params)
      req.send_request(options)
    end

    # Stops a currently running data ingestion job. You can send a
    # `StartIngestionJob` request again to ingest the rest of your data when
    # you are ready.
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base for the data ingestion job
    #   you want to stop.
    #
    # @option params [required, String] :data_source_id
    #   The unique identifier of the data source for the data ingestion job
    #   you want to stop.
    #
    # @option params [required, String] :ingestion_job_id
    #   The unique identifier of the data ingestion job you want to stop.
    #
    # @return [Types::StopIngestionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopIngestionJobResponse#ingestion_job #ingestion_job} => Types::IngestionJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_ingestion_job({
    #     knowledge_base_id: "Id", # required
    #     data_source_id: "Id", # required
    #     ingestion_job_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ingestion_job.knowledge_base_id #=> String
    #   resp.ingestion_job.data_source_id #=> String
    #   resp.ingestion_job.ingestion_job_id #=> String
    #   resp.ingestion_job.description #=> String
    #   resp.ingestion_job.status #=> String, one of "STARTING", "IN_PROGRESS", "COMPLETE", "FAILED", "STOPPING", "STOPPED"
    #   resp.ingestion_job.statistics.number_of_documents_scanned #=> Integer
    #   resp.ingestion_job.statistics.number_of_metadata_documents_scanned #=> Integer
    #   resp.ingestion_job.statistics.number_of_new_documents_indexed #=> Integer
    #   resp.ingestion_job.statistics.number_of_modified_documents_indexed #=> Integer
    #   resp.ingestion_job.statistics.number_of_metadata_documents_modified #=> Integer
    #   resp.ingestion_job.statistics.number_of_documents_deleted #=> Integer
    #   resp.ingestion_job.statistics.number_of_documents_failed #=> Integer
    #   resp.ingestion_job.failure_reasons #=> Array
    #   resp.ingestion_job.failure_reasons[0] #=> String
    #   resp.ingestion_job.started_at #=> Time
    #   resp.ingestion_job.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/StopIngestionJob AWS API Documentation
    #
    # @overload stop_ingestion_job(params = {})
    # @param [Hash] params ({})
    def stop_ingestion_job(params = {}, options = {})
      req = build_request(:stop_ingestion_job, params)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/TagResource AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the configuration of an agent.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent.
    #
    # @option params [required, String] :agent_name
    #   Specifies a new name for the agent.
    #
    # @option params [String] :instruction
    #   Specifies new instructions that tell the agent what it should do and
    #   how it should interact with users.
    #
    # @option params [required, String] :foundation_model
    #   The identifier for the model that you want to be used for
    #   orchestration by the agent you create.
    #
    #   The `modelId` to provide depends on the type of model or throughput
    #   that you use:
    #
    #   * If you use a base model, specify the model ID or its ARN. For a list
    #     of model IDs for base models, see [Amazon Bedrock base model IDs
    #     (on-demand throughput)][1] in the Amazon Bedrock User Guide.
    #
    #   * If you use an inference profile, specify the inference profile ID or
    #     its ARN. For a list of inference profile IDs, see [Supported Regions
    #     and models for cross-region inference][2] in the Amazon Bedrock User
    #     Guide.
    #
    #   * If you use a provisioned model, specify the ARN of the Provisioned
    #     Throughput. For more information, see [Run inference using a
    #     Provisioned Throughput][3] in the Amazon Bedrock User Guide.
    #
    #   * If you use a custom model, first purchase Provisioned Throughput for
    #     it. Then specify the ARN of the resulting provisioned model. For
    #     more information, see [Use a custom model in Amazon Bedrock][4] in
    #     the Amazon Bedrock User Guide.
    #
    #   * If you use an [imported model][5], specify the ARN of the imported
    #     model. You can get the model ARN from a successful call to
    #     [CreateModelImportJob][6] or from the Imported models page in the
    #     Amazon Bedrock console.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html
    #   [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html
    #   [4]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html
    #   [5]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html
    #   [6]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateModelImportJob.html
    #
    # @option params [String] :description
    #   Specifies a new description of the agent.
    #
    # @option params [String] :orchestration_type
    #   Specifies the type of orchestration strategy for the agent. This is
    #   set to `DEFAULT` orchestration type, by default.
    #
    # @option params [Types::CustomOrchestration] :custom_orchestration
    #   Contains details of the custom orchestration configured for the agent.
    #
    # @option params [Integer] :idle_session_ttl_in_seconds
    #   The number of seconds for which Amazon Bedrock keeps information about
    #   a user's conversation with the agent.
    #
    #   A user interaction remains active for the amount of time specified. If
    #   no conversation occurs during this time, the session expires and
    #   Amazon Bedrock deletes any data provided before the timeout.
    #
    # @option params [required, String] :agent_resource_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role with permissions to
    #   invoke API operations on the agent.
    #
    # @option params [String] :customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key with which to encrypt
    #   the agent.
    #
    # @option params [Types::PromptOverrideConfiguration] :prompt_override_configuration
    #   Contains configurations to override prompts in different parts of an
    #   agent sequence. For more information, see [Advanced prompts][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html
    #
    # @option params [Types::GuardrailConfiguration] :guardrail_configuration
    #   The unique Guardrail configuration assigned to the agent when it is
    #   updated.
    #
    # @option params [Types::MemoryConfiguration] :memory_configuration
    #   Specifies the new memory configuration for the agent.
    #
    # @option params [String] :agent_collaboration
    #   The agent's collaboration role.
    #
    # @return [Types::UpdateAgentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAgentResponse#agent #agent} => Types::Agent
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_agent({
    #     agent_id: "Id", # required
    #     agent_name: "Name", # required
    #     instruction: "Instruction",
    #     foundation_model: "ModelIdentifier", # required
    #     description: "Description",
    #     orchestration_type: "DEFAULT", # accepts DEFAULT, CUSTOM_ORCHESTRATION
    #     custom_orchestration: {
    #       executor: {
    #         lambda: "LambdaArn",
    #       },
    #     },
    #     idle_session_ttl_in_seconds: 1,
    #     agent_resource_role_arn: "AgentRoleArn", # required
    #     customer_encryption_key_arn: "KmsKeyArn",
    #     prompt_override_configuration: {
    #       prompt_configurations: [ # required
    #         {
    #           prompt_type: "PRE_PROCESSING", # accepts PRE_PROCESSING, ORCHESTRATION, POST_PROCESSING, KNOWLEDGE_BASE_RESPONSE_GENERATION, MEMORY_SUMMARIZATION
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
    #       override_lambda: "LambdaArn",
    #     },
    #     guardrail_configuration: {
    #       guardrail_identifier: "GuardrailIdentifier",
    #       guardrail_version: "GuardrailVersion",
    #     },
    #     memory_configuration: {
    #       enabled_memory_types: ["SESSION_SUMMARY"], # required, accepts SESSION_SUMMARY
    #       storage_days: 1,
    #       session_summary_configuration: {
    #         max_recent_sessions: 1,
    #       },
    #     },
    #     agent_collaboration: "SUPERVISOR", # accepts SUPERVISOR, SUPERVISOR_ROUTER, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.agent.agent_id #=> String
    #   resp.agent.agent_name #=> String
    #   resp.agent.agent_arn #=> String
    #   resp.agent.agent_version #=> String
    #   resp.agent.client_token #=> String
    #   resp.agent.instruction #=> String
    #   resp.agent.agent_status #=> String, one of "CREATING", "PREPARING", "PREPARED", "NOT_PREPARED", "DELETING", "FAILED", "VERSIONING", "UPDATING"
    #   resp.agent.foundation_model #=> String
    #   resp.agent.description #=> String
    #   resp.agent.orchestration_type #=> String, one of "DEFAULT", "CUSTOM_ORCHESTRATION"
    #   resp.agent.custom_orchestration.executor.lambda #=> String
    #   resp.agent.idle_session_ttl_in_seconds #=> Integer
    #   resp.agent.agent_resource_role_arn #=> String
    #   resp.agent.customer_encryption_key_arn #=> String
    #   resp.agent.created_at #=> Time
    #   resp.agent.updated_at #=> Time
    #   resp.agent.prepared_at #=> Time
    #   resp.agent.failure_reasons #=> Array
    #   resp.agent.failure_reasons[0] #=> String
    #   resp.agent.recommended_actions #=> Array
    #   resp.agent.recommended_actions[0] #=> String
    #   resp.agent.prompt_override_configuration.prompt_configurations #=> Array
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].prompt_type #=> String, one of "PRE_PROCESSING", "ORCHESTRATION", "POST_PROCESSING", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "MEMORY_SUMMARIZATION"
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].prompt_creation_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].prompt_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].base_prompt_template #=> String
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.temperature #=> Float
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.top_p #=> Float
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.top_k #=> Integer
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.maximum_length #=> Integer
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.stop_sequences #=> Array
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.stop_sequences[0] #=> String
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].parser_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].foundation_model #=> String
    #   resp.agent.prompt_override_configuration.override_lambda #=> String
    #   resp.agent.guardrail_configuration.guardrail_identifier #=> String
    #   resp.agent.guardrail_configuration.guardrail_version #=> String
    #   resp.agent.memory_configuration.enabled_memory_types #=> Array
    #   resp.agent.memory_configuration.enabled_memory_types[0] #=> String, one of "SESSION_SUMMARY"
    #   resp.agent.memory_configuration.storage_days #=> Integer
    #   resp.agent.memory_configuration.session_summary_configuration.max_recent_sessions #=> Integer
    #   resp.agent.agent_collaboration #=> String, one of "SUPERVISOR", "SUPERVISOR_ROUTER", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateAgent AWS API Documentation
    #
    # @overload update_agent(params = {})
    # @param [Hash] params ({})
    def update_agent(params = {}, options = {})
      req = build_request(:update_agent, params)
      req.send_request(options)
    end

    # Updates the configuration for an action group for an agent.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent for which to update the action
    #   group.
    #
    # @option params [required, String] :agent_version
    #   The unique identifier of the agent version for which to update the
    #   action group.
    #
    # @option params [required, String] :action_group_id
    #   The unique identifier of the action group.
    #
    # @option params [required, String] :action_group_name
    #   Specifies a new name for the action group.
    #
    # @option params [String] :description
    #   Specifies a new name for the action group.
    #
    # @option params [String] :parent_action_group_signature
    #   Update the built-in or computer use action for this action group. If
    #   you specify a value, you must leave the `description`, `apiSchema`,
    #   and `actionGroupExecutor` fields empty for this action group.
    #
    #   * To allow your agent to request the user for additional information
    #     when trying to complete a task, set this field to
    #     `AMAZON.UserInput`.
    #
    #   * To allow your agent to generate, run, and troubleshoot code when
    #     trying to complete a task, set this field to
    #     `AMAZON.CodeInterpreter`.
    #
    #   * To allow your agent to use an Anthropic computer use tool, specify
    #     one of the following values.
    #
    #     Computer use is a new Anthropic Claude model capability (in beta)
    #     available with Anthropic Claude 3.7 Sonnet and Claude 3.5 Sonnet v2
    #     only. When operating computer use functionality, we recommend taking
    #     additional security precautions, such as executing computer actions
    #     in virtual environments with restricted data access and limited
    #     internet connectivity. For more information, see [Configure an
    #     Amazon Bedrock Agent to complete tasks with computer use tools][1].
    #
    #     * `ANTHROPIC.Computer` - Gives the agent permission to use the mouse
    #       and keyboard and take screenshots.
    #
    #     * `ANTHROPIC.TextEditor` - Gives the agent permission to view,
    #       create and edit files.
    #
    #     * `ANTHROPIC.Bash` - Gives the agent permission to run commands in a
    #       bash shell.
    #
    #   During orchestration, if your agent determines that it needs to invoke
    #   an API in an action group, but doesn't have enough information to
    #   complete the API request, it will invoke this action group instead and
    #   return an [Observation][2] reprompting the user for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-computer-use.html
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Observation.html
    #
    # @option params [Hash<String,String>] :parent_action_group_signature_params
    #   The configuration settings for a computer use action.
    #
    #   Computer use is a new Anthropic Claude model capability (in beta)
    #   available with Claude 3.7 Sonnet and Claude 3.5 Sonnet v2 only. For
    #   more information, see [Configure an Amazon Bedrock Agent to complete
    #   tasks with computer use tools][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-computer-use.html
    #
    # @option params [Types::ActionGroupExecutor] :action_group_executor
    #   The Amazon Resource Name (ARN) of the Lambda function containing the
    #   business logic that is carried out upon invoking the action.
    #
    # @option params [String] :action_group_state
    #   Specifies whether the action group is available for the agent to
    #   invoke or not when sending an [InvokeAgent][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html
    #
    # @option params [Types::APISchema] :api_schema
    #   Contains either details about the S3 object containing the OpenAPI
    #   schema for the action group or the JSON or YAML-formatted payload
    #   defining the schema. For more information, see [Action group OpenAPI
    #   schemas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html
    #
    # @option params [Types::FunctionSchema] :function_schema
    #   Contains details about the function schema for the action group or the
    #   JSON or YAML-formatted payload defining the schema.
    #
    # @return [Types::UpdateAgentActionGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAgentActionGroupResponse#agent_action_group #agent_action_group} => Types::AgentActionGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_agent_action_group({
    #     agent_id: "Id", # required
    #     agent_version: "DraftVersion", # required
    #     action_group_id: "Id", # required
    #     action_group_name: "Name", # required
    #     description: "Description",
    #     parent_action_group_signature: "AMAZON.UserInput", # accepts AMAZON.UserInput, AMAZON.CodeInterpreter, ANTHROPIC.Computer, ANTHROPIC.Bash, ANTHROPIC.TextEditor
    #     parent_action_group_signature_params: {
    #       "ActionGroupSignatureParamsKeyString" => "ActionGroupSignatureParamsValueString",
    #     },
    #     action_group_executor: {
    #       lambda: "LambdaArn",
    #       custom_control: "RETURN_CONTROL", # accepts RETURN_CONTROL
    #     },
    #     action_group_state: "ENABLED", # accepts ENABLED, DISABLED
    #     api_schema: {
    #       s3: {
    #         s3_bucket_name: "S3BucketName",
    #         s3_object_key: "S3ObjectKey",
    #       },
    #       payload: "Payload",
    #     },
    #     function_schema: {
    #       functions: [
    #         {
    #           name: "Name", # required
    #           description: "FunctionDescription",
    #           parameters: {
    #             "Name" => {
    #               description: "ParameterDescription",
    #               type: "string", # required, accepts string, number, integer, boolean, array
    #               required: false,
    #             },
    #           },
    #           require_confirmation: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_action_group.agent_id #=> String
    #   resp.agent_action_group.agent_version #=> String
    #   resp.agent_action_group.action_group_id #=> String
    #   resp.agent_action_group.action_group_name #=> String
    #   resp.agent_action_group.client_token #=> String
    #   resp.agent_action_group.description #=> String
    #   resp.agent_action_group.created_at #=> Time
    #   resp.agent_action_group.updated_at #=> Time
    #   resp.agent_action_group.parent_action_signature #=> String, one of "AMAZON.UserInput", "AMAZON.CodeInterpreter", "ANTHROPIC.Computer", "ANTHROPIC.Bash", "ANTHROPIC.TextEditor"
    #   resp.agent_action_group.parent_action_group_signature_params #=> Hash
    #   resp.agent_action_group.parent_action_group_signature_params["ActionGroupSignatureParamsKeyString"] #=> String
    #   resp.agent_action_group.action_group_executor.lambda #=> String
    #   resp.agent_action_group.action_group_executor.custom_control #=> String, one of "RETURN_CONTROL"
    #   resp.agent_action_group.api_schema.s3.s3_bucket_name #=> String
    #   resp.agent_action_group.api_schema.s3.s3_object_key #=> String
    #   resp.agent_action_group.api_schema.payload #=> String
    #   resp.agent_action_group.function_schema.functions #=> Array
    #   resp.agent_action_group.function_schema.functions[0].name #=> String
    #   resp.agent_action_group.function_schema.functions[0].description #=> String
    #   resp.agent_action_group.function_schema.functions[0].parameters #=> Hash
    #   resp.agent_action_group.function_schema.functions[0].parameters["Name"].description #=> String
    #   resp.agent_action_group.function_schema.functions[0].parameters["Name"].type #=> String, one of "string", "number", "integer", "boolean", "array"
    #   resp.agent_action_group.function_schema.functions[0].parameters["Name"].required #=> Boolean
    #   resp.agent_action_group.function_schema.functions[0].require_confirmation #=> String, one of "ENABLED", "DISABLED"
    #   resp.agent_action_group.action_group_state #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateAgentActionGroup AWS API Documentation
    #
    # @overload update_agent_action_group(params = {})
    # @param [Hash] params ({})
    def update_agent_action_group(params = {}, options = {})
      req = build_request(:update_agent_action_group, params)
      req.send_request(options)
    end

    # Updates configurations for an alias of an agent.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent.
    #
    # @option params [required, String] :agent_alias_id
    #   The unique identifier of the alias.
    #
    # @option params [required, String] :agent_alias_name
    #   Specifies a new name for the alias.
    #
    # @option params [String] :description
    #   Specifies a new description for the alias.
    #
    # @option params [Array<Types::AgentAliasRoutingConfigurationListItem>] :routing_configuration
    #   Contains details about the routing configuration of the alias.
    #
    # @option params [String] :alias_invocation_state
    #   The invocation state for the agent alias. To pause the agent alias,
    #   set the value to `REJECT_INVOCATIONS`. To start the agent alias
    #   running again, set the value to `ACCEPT_INVOCATIONS`. Use the
    #   `GetAgentAlias`, or `ListAgentAliases`, operation to get the
    #   invocation state of an agent alias.
    #
    # @return [Types::UpdateAgentAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAgentAliasResponse#agent_alias #agent_alias} => Types::AgentAlias
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_agent_alias({
    #     agent_id: "Id", # required
    #     agent_alias_id: "AgentAliasId", # required
    #     agent_alias_name: "Name", # required
    #     description: "Description",
    #     routing_configuration: [
    #       {
    #         agent_version: "Version",
    #         provisioned_throughput: "ProvisionedModelIdentifier",
    #       },
    #     ],
    #     alias_invocation_state: "ACCEPT_INVOCATIONS", # accepts ACCEPT_INVOCATIONS, REJECT_INVOCATIONS
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_alias.agent_id #=> String
    #   resp.agent_alias.agent_alias_id #=> String
    #   resp.agent_alias.agent_alias_name #=> String
    #   resp.agent_alias.agent_alias_arn #=> String
    #   resp.agent_alias.client_token #=> String
    #   resp.agent_alias.description #=> String
    #   resp.agent_alias.routing_configuration #=> Array
    #   resp.agent_alias.routing_configuration[0].agent_version #=> String
    #   resp.agent_alias.routing_configuration[0].provisioned_throughput #=> String
    #   resp.agent_alias.created_at #=> Time
    #   resp.agent_alias.updated_at #=> Time
    #   resp.agent_alias.agent_alias_history_events #=> Array
    #   resp.agent_alias.agent_alias_history_events[0].routing_configuration #=> Array
    #   resp.agent_alias.agent_alias_history_events[0].routing_configuration[0].agent_version #=> String
    #   resp.agent_alias.agent_alias_history_events[0].routing_configuration[0].provisioned_throughput #=> String
    #   resp.agent_alias.agent_alias_history_events[0].end_date #=> Time
    #   resp.agent_alias.agent_alias_history_events[0].start_date #=> Time
    #   resp.agent_alias.agent_alias_status #=> String, one of "CREATING", "PREPARED", "FAILED", "UPDATING", "DELETING", "DISSOCIATED"
    #   resp.agent_alias.failure_reasons #=> Array
    #   resp.agent_alias.failure_reasons[0] #=> String
    #   resp.agent_alias.alias_invocation_state #=> String, one of "ACCEPT_INVOCATIONS", "REJECT_INVOCATIONS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateAgentAlias AWS API Documentation
    #
    # @overload update_agent_alias(params = {})
    # @param [Hash] params ({})
    def update_agent_alias(params = {}, options = {})
      req = build_request(:update_agent_alias, params)
      req.send_request(options)
    end

    # Updates an agent's collaborator.
    #
    # @option params [required, String] :agent_id
    #   The agent's ID.
    #
    # @option params [required, String] :agent_version
    #   The agent's version.
    #
    # @option params [required, String] :collaborator_id
    #   The collaborator's ID.
    #
    # @option params [required, Types::AgentDescriptor] :agent_descriptor
    #   An agent descriptor for the agent collaborator.
    #
    # @option params [required, String] :collaborator_name
    #   The collaborator's name.
    #
    # @option params [required, String] :collaboration_instruction
    #   Instruction for the collaborator.
    #
    # @option params [String] :relay_conversation_history
    #   A relay conversation history for the collaborator.
    #
    # @return [Types::UpdateAgentCollaboratorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAgentCollaboratorResponse#agent_collaborator #agent_collaborator} => Types::AgentCollaborator
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_agent_collaborator({
    #     agent_id: "Id", # required
    #     agent_version: "DraftVersion", # required
    #     collaborator_id: "Id", # required
    #     agent_descriptor: { # required
    #       alias_arn: "AgentAliasArn",
    #     },
    #     collaborator_name: "Name", # required
    #     collaboration_instruction: "CollaborationInstruction", # required
    #     relay_conversation_history: "TO_COLLABORATOR", # accepts TO_COLLABORATOR, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_collaborator.agent_id #=> String
    #   resp.agent_collaborator.agent_version #=> String
    #   resp.agent_collaborator.agent_descriptor.alias_arn #=> String
    #   resp.agent_collaborator.collaborator_id #=> String
    #   resp.agent_collaborator.collaboration_instruction #=> String
    #   resp.agent_collaborator.collaborator_name #=> String
    #   resp.agent_collaborator.created_at #=> Time
    #   resp.agent_collaborator.last_updated_at #=> Time
    #   resp.agent_collaborator.relay_conversation_history #=> String, one of "TO_COLLABORATOR", "DISABLED"
    #   resp.agent_collaborator.client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateAgentCollaborator AWS API Documentation
    #
    # @overload update_agent_collaborator(params = {})
    # @param [Hash] params ({})
    def update_agent_collaborator(params = {}, options = {})
      req = build_request(:update_agent_collaborator, params)
      req.send_request(options)
    end

    # Updates the configuration for a knowledge base that has been
    # associated with an agent.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent associated with the knowledge base
    #   that you want to update.
    #
    # @option params [required, String] :agent_version
    #   The version of the agent associated with the knowledge base that you
    #   want to update.
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base that has been associated
    #   with an agent.
    #
    # @option params [String] :description
    #   Specifies a new description for the knowledge base associated with an
    #   agent.
    #
    # @option params [String] :knowledge_base_state
    #   Specifies whether the agent uses the knowledge base or not when
    #   sending an [InvokeAgent][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html
    #
    # @return [Types::UpdateAgentKnowledgeBaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAgentKnowledgeBaseResponse#agent_knowledge_base #agent_knowledge_base} => Types::AgentKnowledgeBase
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_agent_knowledge_base({
    #     agent_id: "Id", # required
    #     agent_version: "DraftVersion", # required
    #     knowledge_base_id: "Id", # required
    #     description: "Description",
    #     knowledge_base_state: "ENABLED", # accepts ENABLED, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_knowledge_base.agent_id #=> String
    #   resp.agent_knowledge_base.agent_version #=> String
    #   resp.agent_knowledge_base.knowledge_base_id #=> String
    #   resp.agent_knowledge_base.description #=> String
    #   resp.agent_knowledge_base.created_at #=> Time
    #   resp.agent_knowledge_base.updated_at #=> Time
    #   resp.agent_knowledge_base.knowledge_base_state #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateAgentKnowledgeBase AWS API Documentation
    #
    # @overload update_agent_knowledge_base(params = {})
    # @param [Hash] params ({})
    def update_agent_knowledge_base(params = {}, options = {})
      req = build_request(:update_agent_knowledge_base, params)
      req.send_request(options)
    end

    # Updates the configurations for a data source connector.
    #
    # You can't change the `chunkingConfiguration` after you create the
    # data source connector. Specify the existing `chunkingConfiguration`.
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base for the data source.
    #
    # @option params [required, String] :data_source_id
    #   The unique identifier of the data source.
    #
    # @option params [required, String] :name
    #   Specifies a new name for the data source.
    #
    # @option params [String] :description
    #   Specifies a new description for the data source.
    #
    # @option params [required, Types::DataSourceConfiguration] :data_source_configuration
    #   The connection configuration for the data source that you want to
    #   update.
    #
    # @option params [String] :data_deletion_policy
    #   The data deletion policy for the data source that you want to update.
    #
    # @option params [Types::ServerSideEncryptionConfiguration] :server_side_encryption_configuration
    #   Contains details about server-side encryption of the data source.
    #
    # @option params [Types::VectorIngestionConfiguration] :vector_ingestion_configuration
    #   Contains details about how to ingest the documents in the data source.
    #
    # @return [Types::UpdateDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDataSourceResponse#data_source #data_source} => Types::DataSource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_source({
    #     knowledge_base_id: "Id", # required
    #     data_source_id: "Id", # required
    #     name: "Name", # required
    #     description: "Description",
    #     data_source_configuration: { # required
    #       type: "S3", # required, accepts S3, WEB, CONFLUENCE, SALESFORCE, SHAREPOINT, CUSTOM, REDSHIFT_METADATA
    #       s3_configuration: {
    #         bucket_arn: "S3BucketArn", # required
    #         inclusion_prefixes: ["S3Prefix"],
    #         bucket_owner_account_id: "BucketOwnerAccountId",
    #       },
    #       web_configuration: {
    #         source_configuration: { # required
    #           url_configuration: { # required
    #             seed_urls: [
    #               {
    #                 url: "Url",
    #               },
    #             ],
    #           },
    #         },
    #         crawler_configuration: {
    #           crawler_limits: {
    #             rate_limit: 1,
    #             max_pages: 1,
    #           },
    #           inclusion_filters: ["FilterPattern"],
    #           exclusion_filters: ["FilterPattern"],
    #           scope: "HOST_ONLY", # accepts HOST_ONLY, SUBDOMAINS
    #           user_agent: "UserAgent",
    #           user_agent_header: "UserAgentHeader",
    #         },
    #       },
    #       confluence_configuration: {
    #         source_configuration: { # required
    #           host_url: "HttpsUrl", # required
    #           host_type: "SAAS", # required, accepts SAAS
    #           auth_type: "BASIC", # required, accepts BASIC, OAUTH2_CLIENT_CREDENTIALS
    #           credentials_secret_arn: "SecretArn", # required
    #         },
    #         crawler_configuration: {
    #           filter_configuration: {
    #             type: "PATTERN", # required, accepts PATTERN
    #             pattern_object_filter: {
    #               filters: [ # required
    #                 {
    #                   object_type: "FilteredObjectType", # required
    #                   inclusion_filters: ["FilterPattern"],
    #                   exclusion_filters: ["FilterPattern"],
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #       },
    #       salesforce_configuration: {
    #         source_configuration: { # required
    #           host_url: "HttpsUrl", # required
    #           auth_type: "OAUTH2_CLIENT_CREDENTIALS", # required, accepts OAUTH2_CLIENT_CREDENTIALS
    #           credentials_secret_arn: "SecretArn", # required
    #         },
    #         crawler_configuration: {
    #           filter_configuration: {
    #             type: "PATTERN", # required, accepts PATTERN
    #             pattern_object_filter: {
    #               filters: [ # required
    #                 {
    #                   object_type: "FilteredObjectType", # required
    #                   inclusion_filters: ["FilterPattern"],
    #                   exclusion_filters: ["FilterPattern"],
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #       },
    #       share_point_configuration: {
    #         source_configuration: { # required
    #           tenant_id: "Microsoft365TenantId",
    #           domain: "SharePointDomain", # required
    #           site_urls: ["HttpsUrl"], # required
    #           host_type: "ONLINE", # required, accepts ONLINE
    #           auth_type: "OAUTH2_CLIENT_CREDENTIALS", # required, accepts OAUTH2_CLIENT_CREDENTIALS, OAUTH2_SHAREPOINT_APP_ONLY_CLIENT_CREDENTIALS
    #           credentials_secret_arn: "SecretArn", # required
    #         },
    #         crawler_configuration: {
    #           filter_configuration: {
    #             type: "PATTERN", # required, accepts PATTERN
    #             pattern_object_filter: {
    #               filters: [ # required
    #                 {
    #                   object_type: "FilteredObjectType", # required
    #                   inclusion_filters: ["FilterPattern"],
    #                   exclusion_filters: ["FilterPattern"],
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #       },
    #     },
    #     data_deletion_policy: "RETAIN", # accepts RETAIN, DELETE
    #     server_side_encryption_configuration: {
    #       kms_key_arn: "KmsKeyArn",
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
    #       custom_transformation_configuration: {
    #         intermediate_storage: { # required
    #           s3_location: { # required
    #             uri: "S3BucketUri", # required
    #           },
    #         },
    #         transformations: [ # required
    #           {
    #             transformation_function: { # required
    #               transformation_lambda_configuration: { # required
    #                 lambda_arn: "LambdaArn", # required
    #               },
    #             },
    #             step_to_apply: "POST_CHUNKING", # required, accepts POST_CHUNKING
    #           },
    #         ],
    #       },
    #       parsing_configuration: {
    #         parsing_strategy: "BEDROCK_FOUNDATION_MODEL", # required, accepts BEDROCK_FOUNDATION_MODEL, BEDROCK_DATA_AUTOMATION
    #         bedrock_foundation_model_configuration: {
    #           model_arn: "BedrockModelArn", # required
    #           parsing_prompt: {
    #             parsing_prompt_text: "ParsingPromptText", # required
    #           },
    #           parsing_modality: "MULTIMODAL", # accepts MULTIMODAL
    #         },
    #         bedrock_data_automation_configuration: {
    #           parsing_modality: "MULTIMODAL", # accepts MULTIMODAL
    #         },
    #       },
    #       context_enrichment_configuration: {
    #         type: "BEDROCK_FOUNDATION_MODEL", # required, accepts BEDROCK_FOUNDATION_MODEL
    #         bedrock_foundation_model_configuration: {
    #           enrichment_strategy_configuration: { # required
    #             method: "CHUNK_ENTITY_EXTRACTION", # required, accepts CHUNK_ENTITY_EXTRACTION
    #           },
    #           model_arn: "BedrockModelArn", # required
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source.knowledge_base_id #=> String
    #   resp.data_source.data_source_id #=> String
    #   resp.data_source.name #=> String
    #   resp.data_source.status #=> String, one of "AVAILABLE", "DELETING", "DELETE_UNSUCCESSFUL"
    #   resp.data_source.description #=> String
    #   resp.data_source.data_source_configuration.type #=> String, one of "S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "REDSHIFT_METADATA"
    #   resp.data_source.data_source_configuration.s3_configuration.bucket_arn #=> String
    #   resp.data_source.data_source_configuration.s3_configuration.inclusion_prefixes #=> Array
    #   resp.data_source.data_source_configuration.s3_configuration.inclusion_prefixes[0] #=> String
    #   resp.data_source.data_source_configuration.s3_configuration.bucket_owner_account_id #=> String
    #   resp.data_source.data_source_configuration.web_configuration.source_configuration.url_configuration.seed_urls #=> Array
    #   resp.data_source.data_source_configuration.web_configuration.source_configuration.url_configuration.seed_urls[0].url #=> String
    #   resp.data_source.data_source_configuration.web_configuration.crawler_configuration.crawler_limits.rate_limit #=> Integer
    #   resp.data_source.data_source_configuration.web_configuration.crawler_configuration.crawler_limits.max_pages #=> Integer
    #   resp.data_source.data_source_configuration.web_configuration.crawler_configuration.inclusion_filters #=> Array
    #   resp.data_source.data_source_configuration.web_configuration.crawler_configuration.inclusion_filters[0] #=> String
    #   resp.data_source.data_source_configuration.web_configuration.crawler_configuration.exclusion_filters #=> Array
    #   resp.data_source.data_source_configuration.web_configuration.crawler_configuration.exclusion_filters[0] #=> String
    #   resp.data_source.data_source_configuration.web_configuration.crawler_configuration.scope #=> String, one of "HOST_ONLY", "SUBDOMAINS"
    #   resp.data_source.data_source_configuration.web_configuration.crawler_configuration.user_agent #=> String
    #   resp.data_source.data_source_configuration.web_configuration.crawler_configuration.user_agent_header #=> String
    #   resp.data_source.data_source_configuration.confluence_configuration.source_configuration.host_url #=> String
    #   resp.data_source.data_source_configuration.confluence_configuration.source_configuration.host_type #=> String, one of "SAAS"
    #   resp.data_source.data_source_configuration.confluence_configuration.source_configuration.auth_type #=> String, one of "BASIC", "OAUTH2_CLIENT_CREDENTIALS"
    #   resp.data_source.data_source_configuration.confluence_configuration.source_configuration.credentials_secret_arn #=> String
    #   resp.data_source.data_source_configuration.confluence_configuration.crawler_configuration.filter_configuration.type #=> String, one of "PATTERN"
    #   resp.data_source.data_source_configuration.confluence_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters #=> Array
    #   resp.data_source.data_source_configuration.confluence_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].object_type #=> String
    #   resp.data_source.data_source_configuration.confluence_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].inclusion_filters #=> Array
    #   resp.data_source.data_source_configuration.confluence_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].inclusion_filters[0] #=> String
    #   resp.data_source.data_source_configuration.confluence_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].exclusion_filters #=> Array
    #   resp.data_source.data_source_configuration.confluence_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].exclusion_filters[0] #=> String
    #   resp.data_source.data_source_configuration.salesforce_configuration.source_configuration.host_url #=> String
    #   resp.data_source.data_source_configuration.salesforce_configuration.source_configuration.auth_type #=> String, one of "OAUTH2_CLIENT_CREDENTIALS"
    #   resp.data_source.data_source_configuration.salesforce_configuration.source_configuration.credentials_secret_arn #=> String
    #   resp.data_source.data_source_configuration.salesforce_configuration.crawler_configuration.filter_configuration.type #=> String, one of "PATTERN"
    #   resp.data_source.data_source_configuration.salesforce_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters #=> Array
    #   resp.data_source.data_source_configuration.salesforce_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].object_type #=> String
    #   resp.data_source.data_source_configuration.salesforce_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].inclusion_filters #=> Array
    #   resp.data_source.data_source_configuration.salesforce_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].inclusion_filters[0] #=> String
    #   resp.data_source.data_source_configuration.salesforce_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].exclusion_filters #=> Array
    #   resp.data_source.data_source_configuration.salesforce_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].exclusion_filters[0] #=> String
    #   resp.data_source.data_source_configuration.share_point_configuration.source_configuration.tenant_id #=> String
    #   resp.data_source.data_source_configuration.share_point_configuration.source_configuration.domain #=> String
    #   resp.data_source.data_source_configuration.share_point_configuration.source_configuration.site_urls #=> Array
    #   resp.data_source.data_source_configuration.share_point_configuration.source_configuration.site_urls[0] #=> String
    #   resp.data_source.data_source_configuration.share_point_configuration.source_configuration.host_type #=> String, one of "ONLINE"
    #   resp.data_source.data_source_configuration.share_point_configuration.source_configuration.auth_type #=> String, one of "OAUTH2_CLIENT_CREDENTIALS", "OAUTH2_SHAREPOINT_APP_ONLY_CLIENT_CREDENTIALS"
    #   resp.data_source.data_source_configuration.share_point_configuration.source_configuration.credentials_secret_arn #=> String
    #   resp.data_source.data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration.type #=> String, one of "PATTERN"
    #   resp.data_source.data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters #=> Array
    #   resp.data_source.data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].object_type #=> String
    #   resp.data_source.data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].inclusion_filters #=> Array
    #   resp.data_source.data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].inclusion_filters[0] #=> String
    #   resp.data_source.data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].exclusion_filters #=> Array
    #   resp.data_source.data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters[0].exclusion_filters[0] #=> String
    #   resp.data_source.server_side_encryption_configuration.kms_key_arn #=> String
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.chunking_strategy #=> String, one of "FIXED_SIZE", "NONE", "HIERARCHICAL", "SEMANTIC"
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.fixed_size_chunking_configuration.max_tokens #=> Integer
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.fixed_size_chunking_configuration.overlap_percentage #=> Integer
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.hierarchical_chunking_configuration.level_configurations #=> Array
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.hierarchical_chunking_configuration.level_configurations[0].max_tokens #=> Integer
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.hierarchical_chunking_configuration.overlap_tokens #=> Integer
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.semantic_chunking_configuration.max_tokens #=> Integer
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.semantic_chunking_configuration.buffer_size #=> Integer
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.semantic_chunking_configuration.breakpoint_percentile_threshold #=> Integer
    #   resp.data_source.vector_ingestion_configuration.custom_transformation_configuration.intermediate_storage.s3_location.uri #=> String
    #   resp.data_source.vector_ingestion_configuration.custom_transformation_configuration.transformations #=> Array
    #   resp.data_source.vector_ingestion_configuration.custom_transformation_configuration.transformations[0].transformation_function.transformation_lambda_configuration.lambda_arn #=> String
    #   resp.data_source.vector_ingestion_configuration.custom_transformation_configuration.transformations[0].step_to_apply #=> String, one of "POST_CHUNKING"
    #   resp.data_source.vector_ingestion_configuration.parsing_configuration.parsing_strategy #=> String, one of "BEDROCK_FOUNDATION_MODEL", "BEDROCK_DATA_AUTOMATION"
    #   resp.data_source.vector_ingestion_configuration.parsing_configuration.bedrock_foundation_model_configuration.model_arn #=> String
    #   resp.data_source.vector_ingestion_configuration.parsing_configuration.bedrock_foundation_model_configuration.parsing_prompt.parsing_prompt_text #=> String
    #   resp.data_source.vector_ingestion_configuration.parsing_configuration.bedrock_foundation_model_configuration.parsing_modality #=> String, one of "MULTIMODAL"
    #   resp.data_source.vector_ingestion_configuration.parsing_configuration.bedrock_data_automation_configuration.parsing_modality #=> String, one of "MULTIMODAL"
    #   resp.data_source.vector_ingestion_configuration.context_enrichment_configuration.type #=> String, one of "BEDROCK_FOUNDATION_MODEL"
    #   resp.data_source.vector_ingestion_configuration.context_enrichment_configuration.bedrock_foundation_model_configuration.enrichment_strategy_configuration.method #=> String, one of "CHUNK_ENTITY_EXTRACTION"
    #   resp.data_source.vector_ingestion_configuration.context_enrichment_configuration.bedrock_foundation_model_configuration.model_arn #=> String
    #   resp.data_source.data_deletion_policy #=> String, one of "RETAIN", "DELETE"
    #   resp.data_source.created_at #=> Time
    #   resp.data_source.updated_at #=> Time
    #   resp.data_source.failure_reasons #=> Array
    #   resp.data_source.failure_reasons[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateDataSource AWS API Documentation
    #
    # @overload update_data_source(params = {})
    # @param [Hash] params ({})
    def update_data_source(params = {}, options = {})
      req = build_request(:update_data_source, params)
      req.send_request(options)
    end

    # Modifies a flow. Include both fields that you want to keep and fields
    # that you want to change. For more information, see [How it works][1]
    # and [Create a flow in Amazon Bedrock][2] in the Amazon Bedrock User
    # Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-how-it-works.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-create.html
    #
    # @option params [required, String] :name
    #   A name for the flow.
    #
    # @option params [String] :description
    #   A description for the flow.
    #
    # @option params [required, String] :execution_role_arn
    #   The Amazon Resource Name (ARN) of the service role with permissions to
    #   create and manage a flow. For more information, see [Create a service
    #   role for flows in Amazon Bedrock][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html
    #
    # @option params [String] :customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key to encrypt the flow.
    #
    # @option params [Types::FlowDefinition] :definition
    #   A definition of the nodes and the connections between the nodes in the
    #   flow.
    #
    # @option params [required, String] :flow_identifier
    #   The unique identifier of the flow.
    #
    # @return [Types::UpdateFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFlowResponse#name #name} => String
    #   * {Types::UpdateFlowResponse#description #description} => String
    #   * {Types::UpdateFlowResponse#execution_role_arn #execution_role_arn} => String
    #   * {Types::UpdateFlowResponse#customer_encryption_key_arn #customer_encryption_key_arn} => String
    #   * {Types::UpdateFlowResponse#id #id} => String
    #   * {Types::UpdateFlowResponse#arn #arn} => String
    #   * {Types::UpdateFlowResponse#status #status} => String
    #   * {Types::UpdateFlowResponse#created_at #created_at} => Time
    #   * {Types::UpdateFlowResponse#updated_at #updated_at} => Time
    #   * {Types::UpdateFlowResponse#version #version} => String
    #   * {Types::UpdateFlowResponse#definition #definition} => Types::FlowDefinition
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_flow({
    #     name: "FlowName", # required
    #     description: "FlowDescription",
    #     execution_role_arn: "FlowExecutionRoleArn", # required
    #     customer_encryption_key_arn: "KmsKeyArn",
    #     definition: {
    #       nodes: [
    #         {
    #           name: "FlowNodeName", # required
    #           type: "Input", # required, accepts Input, Output, KnowledgeBase, Condition, Lex, Prompt, LambdaFunction, Storage, Agent, Retrieval, Iterator, Collector, InlineCode, Loop, LoopInput, LoopController
    #           configuration: {
    #             input: {
    #             },
    #             output: {
    #             },
    #             knowledge_base: {
    #               knowledge_base_id: "FlowKnowledgeBaseId", # required
    #               model_id: "KnowledgeBaseModelIdentifier",
    #               guardrail_configuration: {
    #                 guardrail_identifier: "GuardrailIdentifier",
    #                 guardrail_version: "GuardrailVersion",
    #               },
    #               number_of_results: 1,
    #               prompt_template: {
    #                 text_prompt_template: "KnowledgeBaseTextPrompt",
    #               },
    #               inference_configuration: {
    #                 text: {
    #                   temperature: 1.0,
    #                   top_p: 1.0,
    #                   max_tokens: 1,
    #                   stop_sequences: ["String"],
    #                 },
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
    #               orchestration_configuration: {
    #                 prompt_template: {
    #                   text_prompt_template: "KnowledgeBaseTextPrompt",
    #                 },
    #                 inference_config: {
    #                   text: {
    #                     temperature: 1.0,
    #                     top_p: 1.0,
    #                     max_tokens: 1,
    #                     stop_sequences: ["String"],
    #                   },
    #                 },
    #                 additional_model_request_fields: {
    #                   "AdditionalModelRequestFieldsKey" => {
    #                   },
    #                 },
    #                 performance_config: {
    #                   latency: "standard", # accepts standard, optimized
    #                 },
    #               },
    #             },
    #             condition: {
    #               conditions: [ # required
    #                 {
    #                   name: "FlowConditionName", # required
    #                   expression: "FlowConditionExpression",
    #                 },
    #               ],
    #             },
    #             lex: {
    #               bot_alias_arn: "FlowLexBotAliasArn", # required
    #               locale_id: "FlowLexBotLocaleId", # required
    #             },
    #             prompt: {
    #               source_configuration: { # required
    #                 resource: {
    #                   prompt_arn: "FlowPromptArn", # required
    #                 },
    #                 inline: {
    #                   template_type: "TEXT", # required, accepts TEXT, CHAT
    #                   template_configuration: { # required
    #                     text: {
    #                       text: "TextPrompt", # required
    #                       cache_point: {
    #                         type: "default", # required, accepts default
    #                       },
    #                       input_variables: [
    #                         {
    #                           name: "PromptInputVariableName",
    #                         },
    #                       ],
    #                     },
    #                     chat: {
    #                       messages: [ # required
    #                         {
    #                           role: "user", # required, accepts user, assistant
    #                           content: [ # required
    #                             {
    #                               text: "String",
    #                               cache_point: {
    #                                 type: "default", # required, accepts default
    #                               },
    #                             },
    #                           ],
    #                         },
    #                       ],
    #                       system: [
    #                         {
    #                           text: "NonEmptyString",
    #                           cache_point: {
    #                             type: "default", # required, accepts default
    #                           },
    #                         },
    #                       ],
    #                       input_variables: [
    #                         {
    #                           name: "PromptInputVariableName",
    #                         },
    #                       ],
    #                       tool_configuration: {
    #                         tools: [ # required
    #                           {
    #                             tool_spec: {
    #                               name: "ToolName", # required
    #                               description: "NonEmptyString",
    #                               input_schema: { # required
    #                                 json: {
    #                                 },
    #                               },
    #                             },
    #                             cache_point: {
    #                               type: "default", # required, accepts default
    #                             },
    #                           },
    #                         ],
    #                         tool_choice: {
    #                           auto: {
    #                           },
    #                           any: {
    #                           },
    #                           tool: {
    #                             name: "ToolName", # required
    #                           },
    #                         },
    #                       },
    #                     },
    #                   },
    #                   model_id: "FlowPromptModelIdentifier", # required
    #                   inference_configuration: {
    #                     text: {
    #                       temperature: 1.0,
    #                       top_p: 1.0,
    #                       max_tokens: 1,
    #                       stop_sequences: ["String"],
    #                     },
    #                   },
    #                   additional_model_request_fields: {
    #                   },
    #                 },
    #               },
    #               guardrail_configuration: {
    #                 guardrail_identifier: "GuardrailIdentifier",
    #                 guardrail_version: "GuardrailVersion",
    #               },
    #             },
    #             lambda_function: {
    #               lambda_arn: "FlowLambdaArn", # required
    #             },
    #             storage: {
    #               service_configuration: { # required
    #                 s3: {
    #                   bucket_name: "FlowS3BucketName", # required
    #                 },
    #               },
    #             },
    #             agent: {
    #               agent_alias_arn: "FlowAgentAliasArn", # required
    #             },
    #             retrieval: {
    #               service_configuration: { # required
    #                 s3: {
    #                   bucket_name: "FlowS3BucketName", # required
    #                 },
    #               },
    #             },
    #             iterator: {
    #             },
    #             collector: {
    #             },
    #             inline_code: {
    #               code: "InlineCode", # required
    #               language: "Python_3", # required, accepts Python_3
    #             },
    #             loop: {
    #               definition: { # required
    #                 # recursive FlowDefinition
    #               },
    #             },
    #             loop_input: {
    #             },
    #             loop_controller: {
    #               continue_condition: { # required
    #                 name: "FlowConditionName", # required
    #                 expression: "FlowConditionExpression",
    #               },
    #               max_iterations: 1,
    #             },
    #           },
    #           inputs: [
    #             {
    #               name: "FlowNodeInputName", # required
    #               type: "String", # required, accepts String, Number, Boolean, Object, Array
    #               expression: "FlowNodeInputExpression", # required
    #               category: "LoopCondition", # accepts LoopCondition, ReturnValueToLoopStart, ExitLoop
    #             },
    #           ],
    #           outputs: [
    #             {
    #               name: "FlowNodeOutputName", # required
    #               type: "String", # required, accepts String, Number, Boolean, Object, Array
    #             },
    #           ],
    #         },
    #       ],
    #       connections: [
    #         {
    #           type: "Data", # required, accepts Data, Conditional
    #           name: "FlowConnectionName", # required
    #           source: "FlowNodeName", # required
    #           target: "FlowNodeName", # required
    #           configuration: {
    #             data: {
    #               source_output: "FlowNodeOutputName", # required
    #               target_input: "FlowNodeInputName", # required
    #             },
    #             conditional: {
    #               condition: "FlowConditionName", # required
    #             },
    #           },
    #         },
    #       ],
    #     },
    #     flow_identifier: "FlowIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.execution_role_arn #=> String
    #   resp.customer_encryption_key_arn #=> String
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.status #=> String, one of "Failed", "Prepared", "Preparing", "NotPrepared"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.version #=> String
    #   resp.definition.nodes #=> Array
    #   resp.definition.nodes[0].name #=> String
    #   resp.definition.nodes[0].type #=> String, one of "Input", "Output", "KnowledgeBase", "Condition", "Lex", "Prompt", "LambdaFunction", "Storage", "Agent", "Retrieval", "Iterator", "Collector", "InlineCode", "Loop", "LoopInput", "LoopController"
    #   resp.definition.nodes[0].configuration.knowledge_base.knowledge_base_id #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.model_id #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.guardrail_configuration.guardrail_identifier #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.guardrail_configuration.guardrail_version #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.number_of_results #=> Integer
    #   resp.definition.nodes[0].configuration.knowledge_base.prompt_template.text_prompt_template #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.inference_configuration.text.temperature #=> Float
    #   resp.definition.nodes[0].configuration.knowledge_base.inference_configuration.text.top_p #=> Float
    #   resp.definition.nodes[0].configuration.knowledge_base.inference_configuration.text.max_tokens #=> Integer
    #   resp.definition.nodes[0].configuration.knowledge_base.inference_configuration.text.stop_sequences #=> Array
    #   resp.definition.nodes[0].configuration.knowledge_base.inference_configuration.text.stop_sequences[0] #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.type #=> String, one of "BEDROCK_RERANKING_MODEL"
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.model_configuration.model_arn #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.model_configuration.additional_model_request_fields #=> Hash
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.number_of_reranked_results #=> Integer
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.metadata_configuration.selection_mode #=> String, one of "SELECTIVE", "ALL"
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.metadata_configuration.selective_mode_configuration.fields_to_include #=> Array
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.metadata_configuration.selective_mode_configuration.fields_to_include[0].field_name #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.metadata_configuration.selective_mode_configuration.fields_to_exclude #=> Array
    #   resp.definition.nodes[0].configuration.knowledge_base.reranking_configuration.bedrock_reranking_configuration.metadata_configuration.selective_mode_configuration.fields_to_exclude[0].field_name #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.prompt_template.text_prompt_template #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.inference_config.text.temperature #=> Float
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.inference_config.text.top_p #=> Float
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.inference_config.text.max_tokens #=> Integer
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.inference_config.text.stop_sequences #=> Array
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.inference_config.text.stop_sequences[0] #=> String
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.additional_model_request_fields #=> Hash
    #   resp.definition.nodes[0].configuration.knowledge_base.orchestration_configuration.performance_config.latency #=> String, one of "standard", "optimized"
    #   resp.definition.nodes[0].configuration.condition.conditions #=> Array
    #   resp.definition.nodes[0].configuration.condition.conditions[0].name #=> String
    #   resp.definition.nodes[0].configuration.condition.conditions[0].expression #=> String
    #   resp.definition.nodes[0].configuration.lex.bot_alias_arn #=> String
    #   resp.definition.nodes[0].configuration.lex.locale_id #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.resource.prompt_arn #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_type #=> String, one of "TEXT", "CHAT"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.text.text #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.text.cache_point.type #=> String, one of "default"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.text.input_variables #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.text.input_variables[0].name #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.messages #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.messages[0].role #=> String, one of "user", "assistant"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.messages[0].content #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.messages[0].content[0].text #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.messages[0].content[0].cache_point.type #=> String, one of "default"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.system #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.system[0].text #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.system[0].cache_point.type #=> String, one of "default"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.input_variables #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.input_variables[0].name #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tools #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tools[0].tool_spec.name #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tools[0].tool_spec.description #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tools[0].cache_point.type #=> String, one of "default"
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool_choice.tool.name #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.model_id #=> String
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.inference_configuration.text.temperature #=> Float
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.inference_configuration.text.top_p #=> Float
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.inference_configuration.text.max_tokens #=> Integer
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.inference_configuration.text.stop_sequences #=> Array
    #   resp.definition.nodes[0].configuration.prompt.source_configuration.inline.inference_configuration.text.stop_sequences[0] #=> String
    #   resp.definition.nodes[0].configuration.prompt.guardrail_configuration.guardrail_identifier #=> String
    #   resp.definition.nodes[0].configuration.prompt.guardrail_configuration.guardrail_version #=> String
    #   resp.definition.nodes[0].configuration.lambda_function.lambda_arn #=> String
    #   resp.definition.nodes[0].configuration.storage.service_configuration.s3.bucket_name #=> String
    #   resp.definition.nodes[0].configuration.agent.agent_alias_arn #=> String
    #   resp.definition.nodes[0].configuration.retrieval.service_configuration.s3.bucket_name #=> String
    #   resp.definition.nodes[0].configuration.inline_code.code #=> String
    #   resp.definition.nodes[0].configuration.inline_code.language #=> String, one of "Python_3"
    #   resp.definition.nodes[0].configuration.loop.definition #=> Types::FlowDefinition
    #   resp.definition.nodes[0].configuration.loop_controller.continue_condition.name #=> String
    #   resp.definition.nodes[0].configuration.loop_controller.continue_condition.expression #=> String
    #   resp.definition.nodes[0].configuration.loop_controller.max_iterations #=> Integer
    #   resp.definition.nodes[0].inputs #=> Array
    #   resp.definition.nodes[0].inputs[0].name #=> String
    #   resp.definition.nodes[0].inputs[0].type #=> String, one of "String", "Number", "Boolean", "Object", "Array"
    #   resp.definition.nodes[0].inputs[0].expression #=> String
    #   resp.definition.nodes[0].inputs[0].category #=> String, one of "LoopCondition", "ReturnValueToLoopStart", "ExitLoop"
    #   resp.definition.nodes[0].outputs #=> Array
    #   resp.definition.nodes[0].outputs[0].name #=> String
    #   resp.definition.nodes[0].outputs[0].type #=> String, one of "String", "Number", "Boolean", "Object", "Array"
    #   resp.definition.connections #=> Array
    #   resp.definition.connections[0].type #=> String, one of "Data", "Conditional"
    #   resp.definition.connections[0].name #=> String
    #   resp.definition.connections[0].source #=> String
    #   resp.definition.connections[0].target #=> String
    #   resp.definition.connections[0].configuration.data.source_output #=> String
    #   resp.definition.connections[0].configuration.data.target_input #=> String
    #   resp.definition.connections[0].configuration.conditional.condition #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateFlow AWS API Documentation
    #
    # @overload update_flow(params = {})
    # @param [Hash] params ({})
    def update_flow(params = {}, options = {})
      req = build_request(:update_flow, params)
      req.send_request(options)
    end

    # Modifies the alias of a flow. Include both fields that you want to
    # keep and ones that you want to change. For more information, see
    # [Deploy a flow in Amazon Bedrock][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html
    #
    # @option params [required, String] :name
    #   The name of the alias.
    #
    # @option params [String] :description
    #   A description for the alias.
    #
    # @option params [required, Array<Types::FlowAliasRoutingConfigurationListItem>] :routing_configuration
    #   Contains information about the version to which to map the alias.
    #
    # @option params [Types::FlowAliasConcurrencyConfiguration] :concurrency_configuration
    #   The configuration that specifies how nodes in the flow are executed in
    #   parallel.
    #
    # @option params [required, String] :flow_identifier
    #   The unique identifier of the flow.
    #
    # @option params [required, String] :alias_identifier
    #   The unique identifier of the alias.
    #
    # @return [Types::UpdateFlowAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFlowAliasResponse#name #name} => String
    #   * {Types::UpdateFlowAliasResponse#description #description} => String
    #   * {Types::UpdateFlowAliasResponse#routing_configuration #routing_configuration} => Array&lt;Types::FlowAliasRoutingConfigurationListItem&gt;
    #   * {Types::UpdateFlowAliasResponse#concurrency_configuration #concurrency_configuration} => Types::FlowAliasConcurrencyConfiguration
    #   * {Types::UpdateFlowAliasResponse#flow_id #flow_id} => String
    #   * {Types::UpdateFlowAliasResponse#id #id} => String
    #   * {Types::UpdateFlowAliasResponse#arn #arn} => String
    #   * {Types::UpdateFlowAliasResponse#created_at #created_at} => Time
    #   * {Types::UpdateFlowAliasResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_flow_alias({
    #     name: "Name", # required
    #     description: "Description",
    #     routing_configuration: [ # required
    #       {
    #         flow_version: "Version",
    #       },
    #     ],
    #     concurrency_configuration: {
    #       type: "Automatic", # required, accepts Automatic, Manual
    #       max_concurrency: 1,
    #     },
    #     flow_identifier: "FlowIdentifier", # required
    #     alias_identifier: "FlowAliasIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.routing_configuration #=> Array
    #   resp.routing_configuration[0].flow_version #=> String
    #   resp.concurrency_configuration.type #=> String, one of "Automatic", "Manual"
    #   resp.concurrency_configuration.max_concurrency #=> Integer
    #   resp.flow_id #=> String
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateFlowAlias AWS API Documentation
    #
    # @overload update_flow_alias(params = {})
    # @param [Hash] params ({})
    def update_flow_alias(params = {}, options = {})
      req = build_request(:update_flow_alias, params)
      req.send_request(options)
    end

    # Updates the configuration of a knowledge base with the fields that you
    # specify. Because all fields will be overwritten, you must include the
    # same values for fields that you want to keep the same.
    #
    # You can change the following fields:
    #
    # * `name`
    #
    # * `description`
    #
    # * `roleArn`
    #
    # You can't change the `knowledgeBaseConfiguration` or
    # `storageConfiguration` fields, so you must specify the same
    # configurations as when you created the knowledge base. You can send a
    # [GetKnowledgeBase][1] request and copy the same configurations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_GetKnowledgeBase.html
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base to update.
    #
    # @option params [required, String] :name
    #   Specifies a new name for the knowledge base.
    #
    # @option params [String] :description
    #   Specifies a new description for the knowledge base.
    #
    # @option params [required, String] :role_arn
    #   Specifies a different Amazon Resource Name (ARN) of the IAM role with
    #   permissions to invoke API operations on the knowledge base.
    #
    # @option params [required, Types::KnowledgeBaseConfiguration] :knowledge_base_configuration
    #   Specifies the configuration for the embeddings model used for the
    #   knowledge base. You must use the same configuration as when the
    #   knowledge base was created.
    #
    # @option params [Types::StorageConfiguration] :storage_configuration
    #   Specifies the configuration for the vector store used for the
    #   knowledge base. You must use the same configuration as when the
    #   knowledge base was created.
    #
    # @return [Types::UpdateKnowledgeBaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateKnowledgeBaseResponse#knowledge_base #knowledge_base} => Types::KnowledgeBase
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_knowledge_base({
    #     knowledge_base_id: "Id", # required
    #     name: "Name", # required
    #     description: "Description",
    #     role_arn: "KnowledgeBaseRoleArn", # required
    #     knowledge_base_configuration: { # required
    #       type: "VECTOR", # required, accepts VECTOR, KENDRA, SQL
    #       vector_knowledge_base_configuration: {
    #         embedding_model_arn: "BedrockEmbeddingModelArn", # required
    #         embedding_model_configuration: {
    #           bedrock_embedding_model_configuration: {
    #             dimensions: 1,
    #             embedding_data_type: "FLOAT32", # accepts FLOAT32, BINARY
    #             audio: [
    #               {
    #                 segmentation_configuration: { # required
    #                   fixed_length_duration: 1, # required
    #                 },
    #               },
    #             ],
    #             video: [
    #               {
    #                 segmentation_configuration: { # required
    #                   fixed_length_duration: 1, # required
    #                 },
    #               },
    #             ],
    #           },
    #         },
    #         supplemental_data_storage_configuration: {
    #           storage_locations: [ # required
    #             {
    #               type: "S3", # required, accepts S3
    #               s3_location: {
    #                 uri: "S3BucketUri", # required
    #               },
    #             },
    #           ],
    #         },
    #       },
    #       kendra_knowledge_base_configuration: {
    #         kendra_index_arn: "KendraIndexArn", # required
    #       },
    #       sql_knowledge_base_configuration: {
    #         type: "REDSHIFT", # required, accepts REDSHIFT
    #         redshift_configuration: {
    #           storage_configurations: [ # required
    #             {
    #               type: "REDSHIFT", # required, accepts REDSHIFT, AWS_DATA_CATALOG
    #               aws_data_catalog_configuration: {
    #                 table_names: ["AwsDataCatalogTableName"], # required
    #               },
    #               redshift_configuration: {
    #                 database_name: "RedshiftDatabase", # required
    #               },
    #             },
    #           ],
    #           query_engine_configuration: { # required
    #             type: "SERVERLESS", # required, accepts SERVERLESS, PROVISIONED
    #             serverless_configuration: {
    #               workgroup_arn: "WorkgroupArn", # required
    #               auth_configuration: { # required
    #                 type: "IAM", # required, accepts IAM, USERNAME_PASSWORD
    #                 username_password_secret_arn: "SecretArn",
    #               },
    #             },
    #             provisioned_configuration: {
    #               cluster_identifier: "RedshiftClusterIdentifier", # required
    #               auth_configuration: { # required
    #                 type: "IAM", # required, accepts IAM, USERNAME_PASSWORD, USERNAME
    #                 database_user: "String",
    #                 username_password_secret_arn: "SecretArn",
    #               },
    #             },
    #           },
    #           query_generation_configuration: {
    #             execution_timeout_seconds: 1,
    #             generation_context: {
    #               tables: [
    #                 {
    #                   name: "QueryGenerationTableName", # required
    #                   description: "DescriptionString",
    #                   inclusion: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   columns: [
    #                     {
    #                       name: "QueryGenerationColumnName",
    #                       description: "DescriptionString",
    #                       inclusion: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                     },
    #                   ],
    #                 },
    #               ],
    #               curated_queries: [
    #                 {
    #                   natural_language: "NaturalLanguageString", # required
    #                   sql: "SqlString", # required
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #       },
    #     },
    #     storage_configuration: {
    #       type: "OPENSEARCH_SERVERLESS", # required, accepts OPENSEARCH_SERVERLESS, PINECONE, REDIS_ENTERPRISE_CLOUD, RDS, MONGO_DB_ATLAS, NEPTUNE_ANALYTICS, OPENSEARCH_MANAGED_CLUSTER, S3_VECTORS
    #       opensearch_serverless_configuration: {
    #         collection_arn: "OpenSearchServerlessCollectionArn", # required
    #         vector_index_name: "OpenSearchServerlessIndexName", # required
    #         field_mapping: { # required
    #           vector_field: "FieldName", # required
    #           text_field: "FieldName", # required
    #           metadata_field: "FieldName", # required
    #         },
    #       },
    #       opensearch_managed_cluster_configuration: {
    #         domain_endpoint: "OpenSearchManagedClusterDomainEndpoint", # required
    #         domain_arn: "OpenSearchManagedClusterDomainArn", # required
    #         vector_index_name: "OpenSearchManagedClusterIndexName", # required
    #         field_mapping: { # required
    #           vector_field: "FieldName", # required
    #           text_field: "FieldName", # required
    #           metadata_field: "FieldName", # required
    #         },
    #       },
    #       pinecone_configuration: {
    #         connection_string: "PineconeConnectionString", # required
    #         credentials_secret_arn: "SecretArn", # required
    #         namespace: "PineconeNamespace",
    #         field_mapping: { # required
    #           text_field: "FieldName", # required
    #           metadata_field: "FieldName", # required
    #         },
    #       },
    #       redis_enterprise_cloud_configuration: {
    #         endpoint: "RedisEnterpriseCloudEndpoint", # required
    #         vector_index_name: "RedisEnterpriseCloudIndexName", # required
    #         credentials_secret_arn: "SecretArn", # required
    #         field_mapping: { # required
    #           vector_field: "FieldName", # required
    #           text_field: "FieldName", # required
    #           metadata_field: "FieldName", # required
    #         },
    #       },
    #       rds_configuration: {
    #         resource_arn: "RdsArn", # required
    #         credentials_secret_arn: "SecretArn", # required
    #         database_name: "RdsDatabaseName", # required
    #         table_name: "RdsTableName", # required
    #         field_mapping: { # required
    #           primary_key_field: "ColumnName", # required
    #           vector_field: "ColumnName", # required
    #           text_field: "ColumnName", # required
    #           metadata_field: "ColumnName", # required
    #           custom_metadata_field: "ColumnName",
    #         },
    #       },
    #       mongo_db_atlas_configuration: {
    #         endpoint: "MongoDbAtlasEndpoint", # required
    #         database_name: "MongoDbAtlasDatabaseName", # required
    #         collection_name: "MongoDbAtlasCollectionName", # required
    #         vector_index_name: "MongoDbAtlasIndexName", # required
    #         credentials_secret_arn: "SecretArn", # required
    #         field_mapping: { # required
    #           vector_field: "FieldName", # required
    #           text_field: "FieldName", # required
    #           metadata_field: "FieldName", # required
    #         },
    #         endpoint_service_name: "MongoDbAtlasEndpointServiceName",
    #         text_index_name: "MongoDbAtlasIndexName",
    #       },
    #       neptune_analytics_configuration: {
    #         graph_arn: "GraphArn", # required
    #         field_mapping: { # required
    #           text_field: "FieldName", # required
    #           metadata_field: "FieldName", # required
    #         },
    #       },
    #       s3_vectors_configuration: {
    #         vector_bucket_arn: "VectorBucketArn",
    #         index_arn: "IndexArn",
    #         index_name: "IndexName",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.knowledge_base.knowledge_base_id #=> String
    #   resp.knowledge_base.name #=> String
    #   resp.knowledge_base.knowledge_base_arn #=> String
    #   resp.knowledge_base.description #=> String
    #   resp.knowledge_base.role_arn #=> String
    #   resp.knowledge_base.knowledge_base_configuration.type #=> String, one of "VECTOR", "KENDRA", "SQL"
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_arn #=> String
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration.dimensions #=> Integer
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration.embedding_data_type #=> String, one of "FLOAT32", "BINARY"
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration.audio #=> Array
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration.audio[0].segmentation_configuration.fixed_length_duration #=> Integer
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration.video #=> Array
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration.video[0].segmentation_configuration.fixed_length_duration #=> Integer
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.supplemental_data_storage_configuration.storage_locations #=> Array
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.supplemental_data_storage_configuration.storage_locations[0].type #=> String, one of "S3"
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.supplemental_data_storage_configuration.storage_locations[0].s3_location.uri #=> String
    #   resp.knowledge_base.knowledge_base_configuration.kendra_knowledge_base_configuration.kendra_index_arn #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.type #=> String, one of "REDSHIFT"
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.storage_configurations #=> Array
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.storage_configurations[0].type #=> String, one of "REDSHIFT", "AWS_DATA_CATALOG"
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.storage_configurations[0].aws_data_catalog_configuration.table_names #=> Array
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.storage_configurations[0].aws_data_catalog_configuration.table_names[0] #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.storage_configurations[0].redshift_configuration.database_name #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.type #=> String, one of "SERVERLESS", "PROVISIONED"
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.serverless_configuration.workgroup_arn #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.serverless_configuration.auth_configuration.type #=> String, one of "IAM", "USERNAME_PASSWORD"
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.serverless_configuration.auth_configuration.username_password_secret_arn #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.provisioned_configuration.cluster_identifier #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.provisioned_configuration.auth_configuration.type #=> String, one of "IAM", "USERNAME_PASSWORD", "USERNAME"
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.provisioned_configuration.auth_configuration.database_user #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.provisioned_configuration.auth_configuration.username_password_secret_arn #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.execution_timeout_seconds #=> Integer
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.tables #=> Array
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.tables[0].name #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.tables[0].description #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.tables[0].inclusion #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.tables[0].columns #=> Array
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.tables[0].columns[0].name #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.tables[0].columns[0].description #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.tables[0].columns[0].inclusion #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.curated_queries #=> Array
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.curated_queries[0].natural_language #=> String
    #   resp.knowledge_base.knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.curated_queries[0].sql #=> String
    #   resp.knowledge_base.storage_configuration.type #=> String, one of "OPENSEARCH_SERVERLESS", "PINECONE", "REDIS_ENTERPRISE_CLOUD", "RDS", "MONGO_DB_ATLAS", "NEPTUNE_ANALYTICS", "OPENSEARCH_MANAGED_CLUSTER", "S3_VECTORS"
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.collection_arn #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.vector_index_name #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.field_mapping.vector_field #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_managed_cluster_configuration.domain_endpoint #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_managed_cluster_configuration.domain_arn #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_managed_cluster_configuration.vector_index_name #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_managed_cluster_configuration.field_mapping.vector_field #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_managed_cluster_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_managed_cluster_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.connection_string #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.credentials_secret_arn #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.namespace #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.endpoint #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.vector_index_name #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.credentials_secret_arn #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.field_mapping.vector_field #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.resource_arn #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.credentials_secret_arn #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.database_name #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.table_name #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.field_mapping.primary_key_field #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.field_mapping.vector_field #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.field_mapping.custom_metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.endpoint #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.database_name #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.collection_name #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.vector_index_name #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.credentials_secret_arn #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.field_mapping.vector_field #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.endpoint_service_name #=> String
    #   resp.knowledge_base.storage_configuration.mongo_db_atlas_configuration.text_index_name #=> String
    #   resp.knowledge_base.storage_configuration.neptune_analytics_configuration.graph_arn #=> String
    #   resp.knowledge_base.storage_configuration.neptune_analytics_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.neptune_analytics_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.s3_vectors_configuration.vector_bucket_arn #=> String
    #   resp.knowledge_base.storage_configuration.s3_vectors_configuration.index_arn #=> String
    #   resp.knowledge_base.storage_configuration.s3_vectors_configuration.index_name #=> String
    #   resp.knowledge_base.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "UPDATING", "FAILED", "DELETE_UNSUCCESSFUL"
    #   resp.knowledge_base.created_at #=> Time
    #   resp.knowledge_base.updated_at #=> Time
    #   resp.knowledge_base.failure_reasons #=> Array
    #   resp.knowledge_base.failure_reasons[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateKnowledgeBase AWS API Documentation
    #
    # @overload update_knowledge_base(params = {})
    # @param [Hash] params ({})
    def update_knowledge_base(params = {}, options = {})
      req = build_request(:update_knowledge_base, params)
      req.send_request(options)
    end

    # Modifies a prompt in your prompt library. Include both fields that you
    # want to keep and fields that you want to replace. For more
    # information, see [Prompt management in Amazon Bedrock][1] and [Edit
    # prompts in your prompt library][2] in the Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-manage.html#prompt-management-edit
    #
    # @option params [required, String] :name
    #   A name for the prompt.
    #
    # @option params [String] :description
    #   A description for the prompt.
    #
    # @option params [String] :customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key to encrypt the prompt.
    #
    # @option params [String] :default_variant
    #   The name of the default variant for the prompt. This value must match
    #   the `name` field in the relevant [PromptVariant][1] object.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptVariant.html
    #
    # @option params [Array<Types::PromptVariant>] :variants
    #   A list of objects, each containing details about a variant of the
    #   prompt.
    #
    # @option params [required, String] :prompt_identifier
    #   The unique identifier of the prompt.
    #
    # @return [Types::UpdatePromptResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePromptResponse#name #name} => String
    #   * {Types::UpdatePromptResponse#description #description} => String
    #   * {Types::UpdatePromptResponse#customer_encryption_key_arn #customer_encryption_key_arn} => String
    #   * {Types::UpdatePromptResponse#default_variant #default_variant} => String
    #   * {Types::UpdatePromptResponse#variants #variants} => Array&lt;Types::PromptVariant&gt;
    #   * {Types::UpdatePromptResponse#id #id} => String
    #   * {Types::UpdatePromptResponse#arn #arn} => String
    #   * {Types::UpdatePromptResponse#version #version} => String
    #   * {Types::UpdatePromptResponse#created_at #created_at} => Time
    #   * {Types::UpdatePromptResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_prompt({
    #     name: "PromptName", # required
    #     description: "PromptDescription",
    #     customer_encryption_key_arn: "KmsKeyArn",
    #     default_variant: "PromptVariantName",
    #     variants: [
    #       {
    #         name: "PromptVariantName", # required
    #         template_type: "TEXT", # required, accepts TEXT, CHAT
    #         template_configuration: { # required
    #           text: {
    #             text: "TextPrompt", # required
    #             cache_point: {
    #               type: "default", # required, accepts default
    #             },
    #             input_variables: [
    #               {
    #                 name: "PromptInputVariableName",
    #               },
    #             ],
    #           },
    #           chat: {
    #             messages: [ # required
    #               {
    #                 role: "user", # required, accepts user, assistant
    #                 content: [ # required
    #                   {
    #                     text: "String",
    #                     cache_point: {
    #                       type: "default", # required, accepts default
    #                     },
    #                   },
    #                 ],
    #               },
    #             ],
    #             system: [
    #               {
    #                 text: "NonEmptyString",
    #                 cache_point: {
    #                   type: "default", # required, accepts default
    #                 },
    #               },
    #             ],
    #             input_variables: [
    #               {
    #                 name: "PromptInputVariableName",
    #               },
    #             ],
    #             tool_configuration: {
    #               tools: [ # required
    #                 {
    #                   tool_spec: {
    #                     name: "ToolName", # required
    #                     description: "NonEmptyString",
    #                     input_schema: { # required
    #                       json: {
    #                       },
    #                     },
    #                   },
    #                   cache_point: {
    #                     type: "default", # required, accepts default
    #                   },
    #                 },
    #               ],
    #               tool_choice: {
    #                 auto: {
    #                 },
    #                 any: {
    #                 },
    #                 tool: {
    #                   name: "ToolName", # required
    #                 },
    #               },
    #             },
    #           },
    #         },
    #         model_id: "PromptModelIdentifier",
    #         inference_configuration: {
    #           text: {
    #             temperature: 1.0,
    #             top_p: 1.0,
    #             max_tokens: 1,
    #             stop_sequences: ["String"],
    #           },
    #         },
    #         metadata: [
    #           {
    #             key: "PromptMetadataKey", # required
    #             value: "PromptMetadataValue", # required
    #           },
    #         ],
    #         additional_model_request_fields: {
    #         },
    #         gen_ai_resource: {
    #           agent: {
    #             agent_identifier: "AgentAliasArn", # required
    #           },
    #         },
    #       },
    #     ],
    #     prompt_identifier: "PromptIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.customer_encryption_key_arn #=> String
    #   resp.default_variant #=> String
    #   resp.variants #=> Array
    #   resp.variants[0].name #=> String
    #   resp.variants[0].template_type #=> String, one of "TEXT", "CHAT"
    #   resp.variants[0].template_configuration.text.text #=> String
    #   resp.variants[0].template_configuration.text.cache_point.type #=> String, one of "default"
    #   resp.variants[0].template_configuration.text.input_variables #=> Array
    #   resp.variants[0].template_configuration.text.input_variables[0].name #=> String
    #   resp.variants[0].template_configuration.chat.messages #=> Array
    #   resp.variants[0].template_configuration.chat.messages[0].role #=> String, one of "user", "assistant"
    #   resp.variants[0].template_configuration.chat.messages[0].content #=> Array
    #   resp.variants[0].template_configuration.chat.messages[0].content[0].text #=> String
    #   resp.variants[0].template_configuration.chat.messages[0].content[0].cache_point.type #=> String, one of "default"
    #   resp.variants[0].template_configuration.chat.system #=> Array
    #   resp.variants[0].template_configuration.chat.system[0].text #=> String
    #   resp.variants[0].template_configuration.chat.system[0].cache_point.type #=> String, one of "default"
    #   resp.variants[0].template_configuration.chat.input_variables #=> Array
    #   resp.variants[0].template_configuration.chat.input_variables[0].name #=> String
    #   resp.variants[0].template_configuration.chat.tool_configuration.tools #=> Array
    #   resp.variants[0].template_configuration.chat.tool_configuration.tools[0].tool_spec.name #=> String
    #   resp.variants[0].template_configuration.chat.tool_configuration.tools[0].tool_spec.description #=> String
    #   resp.variants[0].template_configuration.chat.tool_configuration.tools[0].cache_point.type #=> String, one of "default"
    #   resp.variants[0].template_configuration.chat.tool_configuration.tool_choice.tool.name #=> String
    #   resp.variants[0].model_id #=> String
    #   resp.variants[0].inference_configuration.text.temperature #=> Float
    #   resp.variants[0].inference_configuration.text.top_p #=> Float
    #   resp.variants[0].inference_configuration.text.max_tokens #=> Integer
    #   resp.variants[0].inference_configuration.text.stop_sequences #=> Array
    #   resp.variants[0].inference_configuration.text.stop_sequences[0] #=> String
    #   resp.variants[0].metadata #=> Array
    #   resp.variants[0].metadata[0].key #=> String
    #   resp.variants[0].metadata[0].value #=> String
    #   resp.variants[0].gen_ai_resource.agent.agent_identifier #=> String
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.version #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdatePrompt AWS API Documentation
    #
    # @overload update_prompt(params = {})
    # @param [Hash] params ({})
    def update_prompt(params = {}, options = {})
      req = build_request(:update_prompt, params)
      req.send_request(options)
    end

    # Validates the definition of a flow.
    #
    # @option params [required, Types::FlowDefinition] :definition
    #   The definition of a flow to validate.
    #
    # @return [Types::ValidateFlowDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ValidateFlowDefinitionResponse#validations #validations} => Array&lt;Types::FlowValidation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.validate_flow_definition({
    #     definition: { # required
    #       nodes: [
    #         {
    #           name: "FlowNodeName", # required
    #           type: "Input", # required, accepts Input, Output, KnowledgeBase, Condition, Lex, Prompt, LambdaFunction, Storage, Agent, Retrieval, Iterator, Collector, InlineCode, Loop, LoopInput, LoopController
    #           configuration: {
    #             input: {
    #             },
    #             output: {
    #             },
    #             knowledge_base: {
    #               knowledge_base_id: "FlowKnowledgeBaseId", # required
    #               model_id: "KnowledgeBaseModelIdentifier",
    #               guardrail_configuration: {
    #                 guardrail_identifier: "GuardrailIdentifier",
    #                 guardrail_version: "GuardrailVersion",
    #               },
    #               number_of_results: 1,
    #               prompt_template: {
    #                 text_prompt_template: "KnowledgeBaseTextPrompt",
    #               },
    #               inference_configuration: {
    #                 text: {
    #                   temperature: 1.0,
    #                   top_p: 1.0,
    #                   max_tokens: 1,
    #                   stop_sequences: ["String"],
    #                 },
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
    #               orchestration_configuration: {
    #                 prompt_template: {
    #                   text_prompt_template: "KnowledgeBaseTextPrompt",
    #                 },
    #                 inference_config: {
    #                   text: {
    #                     temperature: 1.0,
    #                     top_p: 1.0,
    #                     max_tokens: 1,
    #                     stop_sequences: ["String"],
    #                   },
    #                 },
    #                 additional_model_request_fields: {
    #                   "AdditionalModelRequestFieldsKey" => {
    #                   },
    #                 },
    #                 performance_config: {
    #                   latency: "standard", # accepts standard, optimized
    #                 },
    #               },
    #             },
    #             condition: {
    #               conditions: [ # required
    #                 {
    #                   name: "FlowConditionName", # required
    #                   expression: "FlowConditionExpression",
    #                 },
    #               ],
    #             },
    #             lex: {
    #               bot_alias_arn: "FlowLexBotAliasArn", # required
    #               locale_id: "FlowLexBotLocaleId", # required
    #             },
    #             prompt: {
    #               source_configuration: { # required
    #                 resource: {
    #                   prompt_arn: "FlowPromptArn", # required
    #                 },
    #                 inline: {
    #                   template_type: "TEXT", # required, accepts TEXT, CHAT
    #                   template_configuration: { # required
    #                     text: {
    #                       text: "TextPrompt", # required
    #                       cache_point: {
    #                         type: "default", # required, accepts default
    #                       },
    #                       input_variables: [
    #                         {
    #                           name: "PromptInputVariableName",
    #                         },
    #                       ],
    #                     },
    #                     chat: {
    #                       messages: [ # required
    #                         {
    #                           role: "user", # required, accepts user, assistant
    #                           content: [ # required
    #                             {
    #                               text: "String",
    #                               cache_point: {
    #                                 type: "default", # required, accepts default
    #                               },
    #                             },
    #                           ],
    #                         },
    #                       ],
    #                       system: [
    #                         {
    #                           text: "NonEmptyString",
    #                           cache_point: {
    #                             type: "default", # required, accepts default
    #                           },
    #                         },
    #                       ],
    #                       input_variables: [
    #                         {
    #                           name: "PromptInputVariableName",
    #                         },
    #                       ],
    #                       tool_configuration: {
    #                         tools: [ # required
    #                           {
    #                             tool_spec: {
    #                               name: "ToolName", # required
    #                               description: "NonEmptyString",
    #                               input_schema: { # required
    #                                 json: {
    #                                 },
    #                               },
    #                             },
    #                             cache_point: {
    #                               type: "default", # required, accepts default
    #                             },
    #                           },
    #                         ],
    #                         tool_choice: {
    #                           auto: {
    #                           },
    #                           any: {
    #                           },
    #                           tool: {
    #                             name: "ToolName", # required
    #                           },
    #                         },
    #                       },
    #                     },
    #                   },
    #                   model_id: "FlowPromptModelIdentifier", # required
    #                   inference_configuration: {
    #                     text: {
    #                       temperature: 1.0,
    #                       top_p: 1.0,
    #                       max_tokens: 1,
    #                       stop_sequences: ["String"],
    #                     },
    #                   },
    #                   additional_model_request_fields: {
    #                   },
    #                 },
    #               },
    #               guardrail_configuration: {
    #                 guardrail_identifier: "GuardrailIdentifier",
    #                 guardrail_version: "GuardrailVersion",
    #               },
    #             },
    #             lambda_function: {
    #               lambda_arn: "FlowLambdaArn", # required
    #             },
    #             storage: {
    #               service_configuration: { # required
    #                 s3: {
    #                   bucket_name: "FlowS3BucketName", # required
    #                 },
    #               },
    #             },
    #             agent: {
    #               agent_alias_arn: "FlowAgentAliasArn", # required
    #             },
    #             retrieval: {
    #               service_configuration: { # required
    #                 s3: {
    #                   bucket_name: "FlowS3BucketName", # required
    #                 },
    #               },
    #             },
    #             iterator: {
    #             },
    #             collector: {
    #             },
    #             inline_code: {
    #               code: "InlineCode", # required
    #               language: "Python_3", # required, accepts Python_3
    #             },
    #             loop: {
    #               definition: { # required
    #                 # recursive FlowDefinition
    #               },
    #             },
    #             loop_input: {
    #             },
    #             loop_controller: {
    #               continue_condition: { # required
    #                 name: "FlowConditionName", # required
    #                 expression: "FlowConditionExpression",
    #               },
    #               max_iterations: 1,
    #             },
    #           },
    #           inputs: [
    #             {
    #               name: "FlowNodeInputName", # required
    #               type: "String", # required, accepts String, Number, Boolean, Object, Array
    #               expression: "FlowNodeInputExpression", # required
    #               category: "LoopCondition", # accepts LoopCondition, ReturnValueToLoopStart, ExitLoop
    #             },
    #           ],
    #           outputs: [
    #             {
    #               name: "FlowNodeOutputName", # required
    #               type: "String", # required, accepts String, Number, Boolean, Object, Array
    #             },
    #           ],
    #         },
    #       ],
    #       connections: [
    #         {
    #           type: "Data", # required, accepts Data, Conditional
    #           name: "FlowConnectionName", # required
    #           source: "FlowNodeName", # required
    #           target: "FlowNodeName", # required
    #           configuration: {
    #             data: {
    #               source_output: "FlowNodeOutputName", # required
    #               target_input: "FlowNodeInputName", # required
    #             },
    #             conditional: {
    #               condition: "FlowConditionName", # required
    #             },
    #           },
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.validations #=> Array
    #   resp.validations[0].message #=> String
    #   resp.validations[0].severity #=> String, one of "Warning", "Error"
    #   resp.validations[0].details.cyclic_connection.connection #=> String
    #   resp.validations[0].details.duplicate_connections.source #=> String
    #   resp.validations[0].details.duplicate_connections.target #=> String
    #   resp.validations[0].details.duplicate_condition_expression.node #=> String
    #   resp.validations[0].details.duplicate_condition_expression.expression #=> String
    #   resp.validations[0].details.unreachable_node.node #=> String
    #   resp.validations[0].details.unknown_connection_source.connection #=> String
    #   resp.validations[0].details.unknown_connection_source_output.connection #=> String
    #   resp.validations[0].details.unknown_connection_target.connection #=> String
    #   resp.validations[0].details.unknown_connection_target_input.connection #=> String
    #   resp.validations[0].details.unknown_connection_condition.connection #=> String
    #   resp.validations[0].details.malformed_condition_expression.node #=> String
    #   resp.validations[0].details.malformed_condition_expression.condition #=> String
    #   resp.validations[0].details.malformed_condition_expression.cause #=> String
    #   resp.validations[0].details.malformed_node_input_expression.node #=> String
    #   resp.validations[0].details.malformed_node_input_expression.input #=> String
    #   resp.validations[0].details.malformed_node_input_expression.cause #=> String
    #   resp.validations[0].details.mismatched_node_input_type.node #=> String
    #   resp.validations[0].details.mismatched_node_input_type.input #=> String
    #   resp.validations[0].details.mismatched_node_input_type.expected_type #=> String, one of "String", "Number", "Boolean", "Object", "Array"
    #   resp.validations[0].details.mismatched_node_output_type.node #=> String
    #   resp.validations[0].details.mismatched_node_output_type.output #=> String
    #   resp.validations[0].details.mismatched_node_output_type.expected_type #=> String, one of "String", "Number", "Boolean", "Object", "Array"
    #   resp.validations[0].details.incompatible_connection_data_type.connection #=> String
    #   resp.validations[0].details.missing_connection_configuration.connection #=> String
    #   resp.validations[0].details.missing_default_condition.node #=> String
    #   resp.validations[0].details.missing_node_configuration.node #=> String
    #   resp.validations[0].details.missing_node_input.node #=> String
    #   resp.validations[0].details.missing_node_input.input #=> String
    #   resp.validations[0].details.missing_node_output.node #=> String
    #   resp.validations[0].details.missing_node_output.output #=> String
    #   resp.validations[0].details.multiple_node_input_connections.node #=> String
    #   resp.validations[0].details.multiple_node_input_connections.input #=> String
    #   resp.validations[0].details.unfulfilled_node_input.node #=> String
    #   resp.validations[0].details.unfulfilled_node_input.input #=> String
    #   resp.validations[0].details.unsatisfied_connection_conditions.connection #=> String
    #   resp.validations[0].details.unknown_node_input.node #=> String
    #   resp.validations[0].details.unknown_node_input.input #=> String
    #   resp.validations[0].details.unknown_node_output.node #=> String
    #   resp.validations[0].details.unknown_node_output.output #=> String
    #   resp.validations[0].details.missing_loop_input_node.loop_node #=> String
    #   resp.validations[0].details.missing_loop_controller_node.loop_node #=> String
    #   resp.validations[0].details.multiple_loop_input_nodes.loop_node #=> String
    #   resp.validations[0].details.multiple_loop_controller_nodes.loop_node #=> String
    #   resp.validations[0].details.loop_incompatible_node_type.node #=> String
    #   resp.validations[0].details.loop_incompatible_node_type.incompatible_node_type #=> String, one of "Input", "Condition", "Iterator", "Collector"
    #   resp.validations[0].details.loop_incompatible_node_type.incompatible_node_name #=> String
    #   resp.validations[0].details.invalid_loop_boundary.connection #=> String
    #   resp.validations[0].details.invalid_loop_boundary.source #=> String
    #   resp.validations[0].details.invalid_loop_boundary.target #=> String
    #   resp.validations[0].type #=> String, one of "CyclicConnection", "DuplicateConnections", "DuplicateConditionExpression", "UnreachableNode", "UnknownConnectionSource", "UnknownConnectionSourceOutput", "UnknownConnectionTarget", "UnknownConnectionTargetInput", "UnknownConnectionCondition", "MalformedConditionExpression", "MalformedNodeInputExpression", "MismatchedNodeInputType", "MismatchedNodeOutputType", "IncompatibleConnectionDataType", "MissingConnectionConfiguration", "MissingDefaultCondition", "MissingEndingNodes", "MissingNodeConfiguration", "MissingNodeInput", "MissingNodeOutput", "MissingStartingNodes", "MultipleNodeInputConnections", "UnfulfilledNodeInput", "UnsatisfiedConnectionConditions", "Unspecified", "UnknownNodeInput", "UnknownNodeOutput", "MissingLoopInputNode", "MissingLoopControllerNode", "MultipleLoopInputNodes", "MultipleLoopControllerNodes", "LoopIncompatibleNodeType", "InvalidLoopBoundary"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ValidateFlowDefinition AWS API Documentation
    #
    # @overload validate_flow_definition(params = {})
    # @param [Hash] params ({})
    def validate_flow_definition(params = {}, options = {})
      req = build_request(:validate_flow_definition, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::BedrockAgent')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-bedrockagent'
      context[:gem_version] = '1.69.0'
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
