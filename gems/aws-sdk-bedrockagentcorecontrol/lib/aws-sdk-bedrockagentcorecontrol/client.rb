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
    # @option params [required, Types::NetworkConfiguration] :network_configuration
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
    #         runtime: "PYTHON_3_10", # required, accepts PYTHON_3_10, PYTHON_3_11, PYTHON_3_12, PYTHON_3_13
    #         entry_point: ["entryPoint"], # required
    #       },
    #     },
    #     role_arn: "RoleArn", # required
    #     network_configuration: { # required
    #       network_mode: "PUBLIC", # required, accepts PUBLIC, VPC
    #       network_mode_config: {
    #         security_groups: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
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
    #       },
    #     },
    #     request_header_configuration: {
    #       request_header_allowlist: ["HeaderName"],
    #     },
    #     protocol_configuration: {
    #       server_protocol: "MCP", # required, accepts MCP, HTTP, A2A
    #     },
    #     lifecycle_configuration: {
    #       idle_runtime_session_timeout: 1,
    #       max_lifetime: 1,
    #     },
    #     environment_variables: {
    #       "EnvironmentVariableKey" => "EnvironmentVariableValue",
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
    # @option params [required, String] :api_key
    #   The API key to use for authentication. This value is encrypted and
    #   stored securely.
    #
    # @option params [Hash<String,String>] :tags
    #   A map of tag keys and values to assign to the API key credential
    #   provider. Tags enable you to categorize your resources in different
    #   ways, for example, by purpose, owner, or environment.
    #
    # @return [Types::CreateApiKeyCredentialProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateApiKeyCredentialProviderResponse#api_key_secret_arn #api_key_secret_arn} => Types::Secret
    #   * {Types::CreateApiKeyCredentialProviderResponse#name #name} => String
    #   * {Types::CreateApiKeyCredentialProviderResponse#credential_provider_arn #credential_provider_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_api_key_credential_provider({
    #     name: "CredentialProviderName", # required
    #     api_key: "ApiKeyType", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.api_key_secret_arn.secret_arn #=> String
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
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the operation
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request but does not return an
    #   error.
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
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the operation
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request but does not return an
    #   error.
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
    #       },
    #     },
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

    # Creates a custom evaluator for agent quality assessment. Custom
    # evaluators use LLM-as-a-Judge configurations with user-defined
    # prompts, rating scales, and model settings to evaluate agent
    # performance at tool call, trace, or session levels.
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
    #   The configuration for the evaluator, including LLM-as-a-Judge settings
    #   with instructions, rating scale, and model configuration.
    #
    # @option params [required, String] :level
    #   The evaluation level that determines the scope of evaluation. Valid
    #   values are `TOOL_CALL` for individual tool invocations, `TRACE` for
    #   single request-response interactions, or `SESSION` for entire
    #   conversation sessions.
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
    #         },
    #       },
    #     },
    #     level: "TOOL_CALL", # required, accepts TOOL_CALL, TRACE, SESSION
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
    # @option params [required, String] :protocol_type
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
    #   * {Types::CreateGatewayResponse#interceptor_configurations #interceptor_configurations} => Array&lt;Types::GatewayInterceptorConfiguration&gt;
    #   * {Types::CreateGatewayResponse#policy_engine_configuration #policy_engine_configuration} => Types::GatewayPolicyEngineConfiguration
    #   * {Types::CreateGatewayResponse#workload_identity_details #workload_identity_details} => Types::WorkloadIdentityDetails
    #   * {Types::CreateGatewayResponse#exception_level #exception_level} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_gateway({
    #     name: "GatewayName", # required
    #     description: "GatewayDescription",
    #     client_token: "ClientToken",
    #     role_arn: "RoleArn", # required
    #     protocol_type: "MCP", # required, accepts MCP
    #     protocol_configuration: {
    #       mcp: {
    #         supported_versions: ["McpVersion"],
    #         instructions: "McpInstructions",
    #         search_type: "SEMANTIC", # accepts SEMANTIC
    #       },
    #     },
    #     authorizer_type: "CUSTOM_JWT", # required, accepts CUSTOM_JWT, AWS_IAM, NONE
    #     authorizer_configuration: {
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"],
    #         allowed_scopes: ["AllowedScopeType"],
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
    #   resp.authorizer_type #=> String, one of "CUSTOM_JWT", "AWS_IAM", "NONE"
    #   resp.authorizer_configuration.custom_jwt_authorizer.discovery_url #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_audience #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_audience[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_clients #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_clients[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_scopes #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_scopes[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_name #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_value_type #=> String, one of "STRING", "STRING_ARRAY"
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_operator #=> String, one of "EQUALS", "CONTAINS", "CONTAINS_ANY"
    #   resp.kms_key_arn #=> String
    #   resp.interceptor_configurations #=> Array
    #   resp.interceptor_configurations[0].interceptor.lambda.arn #=> String
    #   resp.interceptor_configurations[0].interception_points #=> Array
    #   resp.interceptor_configurations[0].interception_points[0] #=> String, one of "REQUEST", "RESPONSE"
    #   resp.interceptor_configurations[0].input_configuration.pass_request_headers #=> Boolean
    #   resp.policy_engine_configuration.arn #=> String
    #   resp.policy_engine_configuration.mode #=> String, one of "LOG_ONLY", "ENFORCE"
    #   resp.workload_identity_details.workload_identity_arn #=> String
    #   resp.exception_level #=> String, one of "DEBUG"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateGateway AWS API Documentation
    #
    # @overload create_gateway(params = {})
    # @param [Hash] params ({})
    def create_gateway(params = {}, options = {})
      req = build_request(:create_gateway, params)
      req.send_request(options)
    end

    # Creates a target for a gateway. A target defines an endpoint that the
    # gateway can connect to.
    #
    # @option params [required, String] :gateway_identifier
    #   The identifier of the gateway to create a target for.
    #
    # @option params [required, String] :name
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
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_gateway_target({
    #     gateway_identifier: "GatewayIdentifier", # required
    #     name: "TargetName", # required
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
    #       },
    #     },
    #     credential_provider_configurations: [
    #       {
    #         credential_provider_type: "GATEWAY_IAM_ROLE", # required, accepts GATEWAY_IAM_ROLE, OAUTH, API_KEY
    #         credential_provider: {
    #           oauth_credential_provider: {
    #             provider_arn: "OAuthCredentialProviderArn", # required
    #             scopes: ["OAuthScope"], # required
    #             custom_parameters: {
    #               "OAuthCustomParametersKey" => "OAuthCustomParametersValue",
    #             },
    #             grant_type: "CLIENT_CREDENTIALS", # accepts CLIENT_CREDENTIALS, AUTHORIZATION_CODE
    #             default_return_url: "OAuthDefaultReturnUrl",
    #           },
    #           api_key_credential_provider: {
    #             provider_arn: "ApiKeyCredentialProviderArn", # required
    #             credential_parameter_name: "ApiKeyCredentialParameterName",
    #             credential_prefix: "ApiKeyCredentialPrefix",
    #             credential_location: "HEADER", # accepts HEADER, QUERY_PARAMETER
    #           },
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.target_id #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED", "SYNCHRONIZING", "SYNCHRONIZE_UNSUCCESSFUL"
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
    #   resp.credential_provider_configurations #=> Array
    #   resp.credential_provider_configurations[0].credential_provider_type #=> String, one of "GATEWAY_IAM_ROLE", "OAUTH", "API_KEY"
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.provider_arn #=> String
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes #=> Array
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes[0] #=> String
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters #=> Hash
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters["OAuthCustomParametersKey"] #=> String
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.grant_type #=> String, one of "CLIENT_CREDENTIALS", "AUTHORIZATION_CODE"
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.default_return_url #=> String
    #   resp.credential_provider_configurations[0].credential_provider.api_key_credential_provider.provider_arn #=> String
    #   resp.credential_provider_configurations[0].credential_provider.api_key_credential_provider.credential_parameter_name #=> String
    #   resp.credential_provider_configurations[0].credential_provider.api_key_credential_provider.credential_prefix #=> String
    #   resp.credential_provider_configurations[0].credential_provider.api_key_credential_provider.credential_location #=> String, one of "HEADER", "QUERY_PARAMETER"
    #   resp.last_synchronized_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateGatewayTarget AWS API Documentation
    #
    # @overload create_gateway_target(params = {})
    # @param [Hash] params ({})
    def create_gateway_target(params = {}, options = {})
      req = build_request(:create_gateway_target, params)
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
    #         },
    #         summary_memory_strategy: {
    #           name: "Name", # required
    #           description: "Description",
    #           namespaces: ["Namespace"],
    #         },
    #         user_preference_memory_strategy: {
    #           name: "Name", # required
    #           description: "Description",
    #           namespaces: ["Namespace"],
    #         },
    #         custom_memory_strategy: {
    #           name: "Name", # required
    #           description: "Description",
    #           namespaces: ["Namespace"],
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
    #         },
    #         episodic_memory_strategy: {
    #           name: "Name", # required
    #           description: "Description",
    #           namespaces: ["Namespace"],
    #           reflection_configuration: {
    #             namespaces: ["Namespace"], # required
    #           },
    #         },
    #       },
    #     ],
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
    #   resp.memory.status #=> String, one of "CREATING", "ACTIVE", "FAILED", "DELETING"
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
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.namespaces #=> Array
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.namespaces[0] #=> String
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
    #   resp.memory.strategies[0].created_at #=> Time
    #   resp.memory.strategies[0].updated_at #=> Time
    #   resp.memory.strategies[0].status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED"
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
    #   * {Types::CreateOauth2CredentialProviderResponse#name #name} => String
    #   * {Types::CreateOauth2CredentialProviderResponse#credential_provider_arn #credential_provider_arn} => String
    #   * {Types::CreateOauth2CredentialProviderResponse#callback_url #callback_url} => String
    #   * {Types::CreateOauth2CredentialProviderResponse#oauth2_provider_config_output #oauth2_provider_config_output} => Types::Oauth2ProviderConfigOutput
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
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
    #       },
    #       google_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
    #       },
    #       github_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
    #       },
    #       slack_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
    #       },
    #       salesforce_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
    #       },
    #       microsoft_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
    #         tenant_id: "TenantIdType",
    #       },
    #       atlassian_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
    #       },
    #       linkedin_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
    #       },
    #       included_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
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
    # @option params [required, Array<Types::EvaluatorReference>] :evaluators
    #   The list of evaluators to apply during online evaluation. Can include
    #   both built-in evaluators and custom evaluators created with
    #   `CreateEvaluator`.
    #
    # @option params [required, String] :evaluation_execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants permissions
    #   to read from CloudWatch logs, write evaluation results, and invoke
    #   Amazon Bedrock models for evaluation.
    #
    # @option params [required, Boolean] :enable_on_create
    #   Whether to enable the online evaluation configuration immediately upon
    #   creation. If true, evaluation begins automatically.
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
    #     evaluators: [ # required
    #       {
    #         evaluator_id: "EvaluatorId",
    #       },
    #     ],
    #     evaluation_execution_role_arn: "RoleArn", # required
    #     enable_on_create: false, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.online_evaluation_config_arn #=> String
    #   resp.online_evaluation_config_id #=> String
    #   resp.created_at #=> Time
    #   resp.output_config.cloud_watch_config.log_group_name #=> String
    #   resp.status #=> String, one of "ACTIVE", "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING"
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
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/API_GetPolicy.html
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
    #   * {Types::CreatePolicyResponse#definition #definition} => Types::PolicyDefinition
    #   * {Types::CreatePolicyResponse#description #description} => String
    #   * {Types::CreatePolicyResponse#created_at #created_at} => Time
    #   * {Types::CreatePolicyResponse#updated_at #updated_at} => Time
    #   * {Types::CreatePolicyResponse#policy_arn #policy_arn} => String
    #   * {Types::CreatePolicyResponse#status #status} => String
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
    #     },
    #     description: "Description",
    #     validation_mode: "FAIL_ON_ANY_FINDINGS", # accepts FAIL_ON_ANY_FINDINGS, IGNORE_ALL_FINDINGS
    #     policy_engine_id: "ResourceId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_id #=> String
    #   resp.name #=> String
    #   resp.policy_engine_id #=> String
    #   resp.definition.cedar.statement #=> String
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.policy_arn #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
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
    # [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/API_GetPolicyEngine.html
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
    # @return [Types::CreatePolicyEngineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePolicyEngineResponse#policy_engine_id #policy_engine_id} => String
    #   * {Types::CreatePolicyEngineResponse#name #name} => String
    #   * {Types::CreatePolicyEngineResponse#description #description} => String
    #   * {Types::CreatePolicyEngineResponse#created_at #created_at} => Time
    #   * {Types::CreatePolicyEngineResponse#updated_at #updated_at} => Time
    #   * {Types::CreatePolicyEngineResponse#policy_engine_arn #policy_engine_arn} => String
    #   * {Types::CreatePolicyEngineResponse#status #status} => String
    #   * {Types::CreatePolicyEngineResponse#status_reasons #status_reasons} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_policy_engine({
    #     name: "PolicyEngineName", # required
    #     description: "Description",
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_engine_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.policy_engine_arn #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
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

    # Deletes an Amazon Bedrock AgentCore Runtime.
    #
    # @option params [required, String] :agent_runtime_id
    #   The unique identifier of the AgentCore Runtime to delete.
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
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_agent_runtime({
    #     agent_runtime_id: "AgentRuntimeId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING"
    #   resp.agent_runtime_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteAgentRuntime AWS API Documentation
    #
    # @overload delete_agent_runtime(params = {})
    # @param [Hash] params ({})
    def delete_agent_runtime(params = {}, options = {})
      req = build_request(:delete_agent_runtime, params)
      req.send_request(options)
    end

    # Deletes an AAgentCore Runtime endpoint.
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

    # Deletes a gateway target.
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
    #   resp.status #=> String, one of "CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED", "SYNCHRONIZING", "SYNCHRONIZE_UNSUCCESSFUL"
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

    # Deletes an Amazon Bedrock AgentCore Memory resource.
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
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "FAILED", "DELETING"
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
    #   resp.status #=> String, one of "ACTIVE", "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteOnlineEvaluationConfig AWS API Documentation
    #
    # @overload delete_online_evaluation_config(params = {})
    # @param [Hash] params ({})
    def delete_online_evaluation_config(params = {}, options = {})
      req = build_request(:delete_online_evaluation_config, params)
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
    #   * {Types::DeletePolicyResponse#definition #definition} => Types::PolicyDefinition
    #   * {Types::DeletePolicyResponse#description #description} => String
    #   * {Types::DeletePolicyResponse#created_at #created_at} => Time
    #   * {Types::DeletePolicyResponse#updated_at #updated_at} => Time
    #   * {Types::DeletePolicyResponse#policy_arn #policy_arn} => String
    #   * {Types::DeletePolicyResponse#status #status} => String
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
    #   resp.definition.cedar.statement #=> String
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.policy_arn #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
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
    #   * {Types::DeletePolicyEngineResponse#description #description} => String
    #   * {Types::DeletePolicyEngineResponse#created_at #created_at} => Time
    #   * {Types::DeletePolicyEngineResponse#updated_at #updated_at} => Time
    #   * {Types::DeletePolicyEngineResponse#policy_engine_arn #policy_engine_arn} => String
    #   * {Types::DeletePolicyEngineResponse#status #status} => String
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
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.policy_engine_arn #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
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
    #   resp.agent_runtime_artifact.code_configuration.runtime #=> String, one of "PYTHON_3_10", "PYTHON_3_11", "PYTHON_3_12", "PYTHON_3_13"
    #   resp.agent_runtime_artifact.code_configuration.entry_point #=> Array
    #   resp.agent_runtime_artifact.code_configuration.entry_point[0] #=> String
    #   resp.protocol_configuration.server_protocol #=> String, one of "MCP", "HTTP", "A2A"
    #   resp.environment_variables #=> Hash
    #   resp.environment_variables["EnvironmentVariableKey"] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.discovery_url #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_audience #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_audience[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_clients #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_clients[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_scopes #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_scopes[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_name #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_value_type #=> String, one of "STRING", "STRING_ARRAY"
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_operator #=> String, one of "EQUALS", "CONTAINS", "CONTAINS_ANY"
    #   resp.request_header_configuration.request_header_allowlist #=> Array
    #   resp.request_header_configuration.request_header_allowlist[0] #=> String
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
    #   resp.recording.enabled #=> Boolean
    #   resp.recording.s3_location.bucket #=> String
    #   resp.recording.s3_location.prefix #=> String
    #   resp.recording.s3_location.version_id #=> String
    #   resp.browser_signing.enabled #=> Boolean
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
    #   resp.status #=> String, one of "CREATING", "CREATE_FAILED", "READY", "DELETING", "DELETE_FAILED", "DELETED"
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

    # Retrieves detailed information about an evaluator, including its
    # configuration, status, and metadata. Works with both built-in and
    # custom evaluators.
    #
    # @option params [required, String] :evaluator_id
    #   The unique identifier of the evaluator to retrieve. Can be a built-in
    #   evaluator ID (e.g., Builtin.Helpfulness) or a custom evaluator ID.
    #
    # @return [Types::GetEvaluatorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEvaluatorResponse#evaluator_arn #evaluator_arn} => String
    #   * {Types::GetEvaluatorResponse#evaluator_id #evaluator_id} => String
    #   * {Types::GetEvaluatorResponse#evaluator_name #evaluator_name} => String
    #   * {Types::GetEvaluatorResponse#description #description} => String
    #   * {Types::GetEvaluatorResponse#evaluator_config #evaluator_config} => Types::EvaluatorConfig
    #   * {Types::GetEvaluatorResponse#level #level} => String
    #   * {Types::GetEvaluatorResponse#status #status} => String
    #   * {Types::GetEvaluatorResponse#created_at #created_at} => Time
    #   * {Types::GetEvaluatorResponse#updated_at #updated_at} => Time
    #   * {Types::GetEvaluatorResponse#locked_for_modification #locked_for_modification} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_evaluator({
    #     evaluator_id: "EvaluatorId", # required
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
    #   resp.level #=> String, one of "TOOL_CALL", "TRACE", "SESSION"
    #   resp.status #=> String, one of "ACTIVE", "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.locked_for_modification #=> Boolean
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
    #   * {Types::GetGatewayResponse#interceptor_configurations #interceptor_configurations} => Array&lt;Types::GatewayInterceptorConfiguration&gt;
    #   * {Types::GetGatewayResponse#policy_engine_configuration #policy_engine_configuration} => Types::GatewayPolicyEngineConfiguration
    #   * {Types::GetGatewayResponse#workload_identity_details #workload_identity_details} => Types::WorkloadIdentityDetails
    #   * {Types::GetGatewayResponse#exception_level #exception_level} => String
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
    #   resp.authorizer_type #=> String, one of "CUSTOM_JWT", "AWS_IAM", "NONE"
    #   resp.authorizer_configuration.custom_jwt_authorizer.discovery_url #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_audience #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_audience[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_clients #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_clients[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_scopes #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_scopes[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_name #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_value_type #=> String, one of "STRING", "STRING_ARRAY"
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_operator #=> String, one of "EQUALS", "CONTAINS", "CONTAINS_ANY"
    #   resp.kms_key_arn #=> String
    #   resp.interceptor_configurations #=> Array
    #   resp.interceptor_configurations[0].interceptor.lambda.arn #=> String
    #   resp.interceptor_configurations[0].interception_points #=> Array
    #   resp.interceptor_configurations[0].interception_points[0] #=> String, one of "REQUEST", "RESPONSE"
    #   resp.interceptor_configurations[0].input_configuration.pass_request_headers #=> Boolean
    #   resp.policy_engine_configuration.arn #=> String
    #   resp.policy_engine_configuration.mode #=> String, one of "LOG_ONLY", "ENFORCE"
    #   resp.workload_identity_details.workload_identity_arn #=> String
    #   resp.exception_level #=> String, one of "DEBUG"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetGateway AWS API Documentation
    #
    # @overload get_gateway(params = {})
    # @param [Hash] params ({})
    def get_gateway(params = {}, options = {})
      req = build_request(:get_gateway, params)
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
    #   resp.status #=> String, one of "CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED", "SYNCHRONIZING", "SYNCHRONIZE_UNSUCCESSFUL"
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
    #   resp.credential_provider_configurations #=> Array
    #   resp.credential_provider_configurations[0].credential_provider_type #=> String, one of "GATEWAY_IAM_ROLE", "OAUTH", "API_KEY"
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.provider_arn #=> String
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes #=> Array
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes[0] #=> String
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters #=> Hash
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters["OAuthCustomParametersKey"] #=> String
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.grant_type #=> String, one of "CLIENT_CREDENTIALS", "AUTHORIZATION_CODE"
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.default_return_url #=> String
    #   resp.credential_provider_configurations[0].credential_provider.api_key_credential_provider.provider_arn #=> String
    #   resp.credential_provider_configurations[0].credential_provider.api_key_credential_provider.credential_parameter_name #=> String
    #   resp.credential_provider_configurations[0].credential_provider.api_key_credential_provider.credential_prefix #=> String
    #   resp.credential_provider_configurations[0].credential_provider.api_key_credential_provider.credential_location #=> String, one of "HEADER", "QUERY_PARAMETER"
    #   resp.last_synchronized_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetGatewayTarget AWS API Documentation
    #
    # @overload get_gateway_target(params = {})
    # @param [Hash] params ({})
    def get_gateway_target(params = {}, options = {})
      req = build_request(:get_gateway_target, params)
      req.send_request(options)
    end

    # Retrieve an existing Amazon Bedrock AgentCore Memory resource.
    #
    # @option params [required, String] :memory_id
    #   The unique identifier of the memory to retrieve.
    #
    # @return [Types::GetMemoryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMemoryOutput#memory #memory} => Types::Memory
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_memory({
    #     memory_id: "MemoryId", # required
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
    #   resp.memory.status #=> String, one of "CREATING", "ACTIVE", "FAILED", "DELETING"
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
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.namespaces #=> Array
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.namespaces[0] #=> String
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
    #   resp.memory.strategies[0].created_at #=> Time
    #   resp.memory.strategies[0].updated_at #=> Time
    #   resp.memory.strategies[0].status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED"
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
    #   * {Types::GetOauth2CredentialProviderResponse#name #name} => String
    #   * {Types::GetOauth2CredentialProviderResponse#credential_provider_arn #credential_provider_arn} => String
    #   * {Types::GetOauth2CredentialProviderResponse#credential_provider_vendor #credential_provider_vendor} => String
    #   * {Types::GetOauth2CredentialProviderResponse#callback_url #callback_url} => String
    #   * {Types::GetOauth2CredentialProviderResponse#oauth2_provider_config_output #oauth2_provider_config_output} => Types::Oauth2ProviderConfigOutput
    #   * {Types::GetOauth2CredentialProviderResponse#created_time #created_time} => Time
    #   * {Types::GetOauth2CredentialProviderResponse#last_updated_time #last_updated_time} => Time
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
    #   resp.output_config.cloud_watch_config.log_group_name #=> String
    #   resp.evaluation_execution_role_arn #=> String
    #   resp.status #=> String, one of "ACTIVE", "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING"
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
    #   * {Types::GetPolicyResponse#definition #definition} => Types::PolicyDefinition
    #   * {Types::GetPolicyResponse#description #description} => String
    #   * {Types::GetPolicyResponse#created_at #created_at} => Time
    #   * {Types::GetPolicyResponse#updated_at #updated_at} => Time
    #   * {Types::GetPolicyResponse#policy_arn #policy_arn} => String
    #   * {Types::GetPolicyResponse#status #status} => String
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
    #   resp.definition.cedar.statement #=> String
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.policy_arn #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
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
    #   * {Types::GetPolicyEngineResponse#description #description} => String
    #   * {Types::GetPolicyEngineResponse#created_at #created_at} => Time
    #   * {Types::GetPolicyEngineResponse#updated_at #updated_at} => Time
    #   * {Types::GetPolicyEngineResponse#policy_engine_arn #policy_engine_arn} => String
    #   * {Types::GetPolicyEngineResponse#status #status} => String
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
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.policy_engine_arn #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
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
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/API_StartPolicyGeneration.html
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
    #   * {Types::GetPolicyGenerationResponse#status_reasons #status_reasons} => Array&lt;String&gt;
    #   * {Types::GetPolicyGenerationResponse#findings #findings} => String
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
    #   resp.status_reasons #=> Array
    #   resp.status_reasons[0] #=> String
    #   resp.findings #=> String
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
    #   resp.evaluators[0].evaluator_type #=> String, one of "Builtin", "Custom"
    #   resp.evaluators[0].level #=> String, one of "TOOL_CALL", "TRACE", "SESSION"
    #   resp.evaluators[0].status #=> String, one of "ACTIVE", "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING"
    #   resp.evaluators[0].created_at #=> Time
    #   resp.evaluators[0].updated_at #=> Time
    #   resp.evaluators[0].locked_for_modification #=> Boolean
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
    #   resp.items[0].status #=> String, one of "CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED", "SYNCHRONIZING", "SYNCHRONIZE_UNSUCCESSFUL"
    #   resp.items[0].description #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
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
    #   resp.items[0].authorizer_type #=> String, one of "CUSTOM_JWT", "AWS_IAM", "NONE"
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
    #   resp.memories[0].status #=> String, one of "CREATING", "ACTIVE", "FAILED", "DELETING"
    #   resp.memories[0].created_at #=> Time
    #   resp.memories[0].updated_at #=> Time
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
    #   resp.online_evaluation_configs[0].status #=> String, one of "ACTIVE", "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING"
    #   resp.online_evaluation_configs[0].execution_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.online_evaluation_configs[0].created_at #=> Time
    #   resp.online_evaluation_configs[0].updated_at #=> Time
    #   resp.online_evaluation_configs[0].failure_reason #=> String
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
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/API_ListPolicies.html
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
    #   resp.policies[0].definition.cedar.statement #=> String
    #   resp.policies[0].description #=> String
    #   resp.policies[0].created_at #=> Time
    #   resp.policies[0].updated_at #=> Time
    #   resp.policies[0].policy_arn #=> String
    #   resp.policies[0].status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
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
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/API_ListPolicyEngines.html
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
    #   resp.policy_engines[0].description #=> String
    #   resp.policy_engines[0].created_at #=> Time
    #   resp.policy_engines[0].updated_at #=> Time
    #   resp.policy_engines[0].policy_engine_arn #=> String
    #   resp.policy_engines[0].status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
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
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/API_StartPolicyGeneration.html
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
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/API_ListPolicyGenerationAssets.html
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
    #   resp.policy_generations[0].status_reasons #=> Array
    #   resp.policy_generations[0].status_reasons[0] #=> String
    #   resp.policy_generations[0].findings #=> String
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

    # Lists the tags associated with the specified resource.
    #
    # <note markdown="1"> This feature is currently available only for AgentCore Runtime,
    # Browser, Code Interpreter tool, and Gateway.
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
    #   * {Types::StartPolicyGenerationResponse#status_reasons #status_reasons} => Array&lt;String&gt;
    #   * {Types::StartPolicyGenerationResponse#findings #findings} => String
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
    #   resp.status_reasons #=> Array
    #   resp.status_reasons[0] #=> String
    #   resp.findings #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/StartPolicyGeneration AWS API Documentation
    #
    # @overload start_policy_generation(params = {})
    # @param [Hash] params ({})
    def start_policy_generation(params = {}, options = {})
      req = build_request(:start_policy_generation, params)
      req.send_request(options)
    end

    # The gateway targets.
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
    #   resp.targets[0].status #=> String, one of "CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED", "SYNCHRONIZING", "SYNCHRONIZE_UNSUCCESSFUL"
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
    #   resp.targets[0].credential_provider_configurations #=> Array
    #   resp.targets[0].credential_provider_configurations[0].credential_provider_type #=> String, one of "GATEWAY_IAM_ROLE", "OAUTH", "API_KEY"
    #   resp.targets[0].credential_provider_configurations[0].credential_provider.oauth_credential_provider.provider_arn #=> String
    #   resp.targets[0].credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes #=> Array
    #   resp.targets[0].credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes[0] #=> String
    #   resp.targets[0].credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters #=> Hash
    #   resp.targets[0].credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters["OAuthCustomParametersKey"] #=> String
    #   resp.targets[0].credential_provider_configurations[0].credential_provider.oauth_credential_provider.grant_type #=> String, one of "CLIENT_CREDENTIALS", "AUTHORIZATION_CODE"
    #   resp.targets[0].credential_provider_configurations[0].credential_provider.oauth_credential_provider.default_return_url #=> String
    #   resp.targets[0].credential_provider_configurations[0].credential_provider.api_key_credential_provider.provider_arn #=> String
    #   resp.targets[0].credential_provider_configurations[0].credential_provider.api_key_credential_provider.credential_parameter_name #=> String
    #   resp.targets[0].credential_provider_configurations[0].credential_provider.api_key_credential_provider.credential_prefix #=> String
    #   resp.targets[0].credential_provider_configurations[0].credential_provider.api_key_credential_provider.credential_location #=> String, one of "HEADER", "QUERY_PARAMETER"
    #   resp.targets[0].last_synchronized_at #=> Time
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
    # Browser, Code Interpreter tool, and Gateway.
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
    # Browser, Code Interpreter tool, and Gateway.
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
    # @option params [required, Types::NetworkConfiguration] :network_configuration
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
    # @option params [Hash<String,String>] :environment_variables
    #   Updated environment variables to set in the AgentCore Runtime
    #   environment.
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
    #         runtime: "PYTHON_3_10", # required, accepts PYTHON_3_10, PYTHON_3_11, PYTHON_3_12, PYTHON_3_13
    #         entry_point: ["entryPoint"], # required
    #       },
    #     },
    #     role_arn: "RoleArn", # required
    #     network_configuration: { # required
    #       network_mode: "PUBLIC", # required, accepts PUBLIC, VPC
    #       network_mode_config: {
    #         security_groups: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #       },
    #     },
    #     description: "Description",
    #     authorizer_configuration: {
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"],
    #         allowed_scopes: ["AllowedScopeType"],
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
    #       },
    #     },
    #     request_header_configuration: {
    #       request_header_allowlist: ["HeaderName"],
    #     },
    #     protocol_configuration: {
    #       server_protocol: "MCP", # required, accepts MCP, HTTP, A2A
    #     },
    #     lifecycle_configuration: {
    #       idle_runtime_session_timeout: 1,
    #       max_lifetime: 1,
    #     },
    #     environment_variables: {
    #       "EnvironmentVariableKey" => "EnvironmentVariableValue",
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
    # @option params [required, String] :api_key
    #   The new API key to use for authentication. This value replaces the
    #   existing API key and is encrypted and stored securely.
    #
    # @return [Types::UpdateApiKeyCredentialProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApiKeyCredentialProviderResponse#api_key_secret_arn #api_key_secret_arn} => Types::Secret
    #   * {Types::UpdateApiKeyCredentialProviderResponse#name #name} => String
    #   * {Types::UpdateApiKeyCredentialProviderResponse#credential_provider_arn #credential_provider_arn} => String
    #   * {Types::UpdateApiKeyCredentialProviderResponse#created_time #created_time} => Time
    #   * {Types::UpdateApiKeyCredentialProviderResponse#last_updated_time #last_updated_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_api_key_credential_provider({
    #     name: "CredentialProviderName", # required
    #     api_key: "ApiKeyType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.api_key_secret_arn.secret_arn #=> String
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
    #   The updated configuration for the evaluator, including LLM-as-a-Judge
    #   settings with instructions, rating scale, and model configuration.
    #
    # @option params [String] :level
    #   The updated evaluation level (`TOOL_CALL`, `TRACE`, or `SESSION`) that
    #   determines the scope of evaluation.
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
    #         },
    #       },
    #     },
    #     level: "TOOL_CALL", # accepts TOOL_CALL, TRACE, SESSION
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
    # @option params [required, String] :protocol_type
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
    #   * {Types::UpdateGatewayResponse#interceptor_configurations #interceptor_configurations} => Array&lt;Types::GatewayInterceptorConfiguration&gt;
    #   * {Types::UpdateGatewayResponse#policy_engine_configuration #policy_engine_configuration} => Types::GatewayPolicyEngineConfiguration
    #   * {Types::UpdateGatewayResponse#workload_identity_details #workload_identity_details} => Types::WorkloadIdentityDetails
    #   * {Types::UpdateGatewayResponse#exception_level #exception_level} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway({
    #     gateway_identifier: "GatewayIdentifier", # required
    #     name: "GatewayName", # required
    #     description: "GatewayDescription",
    #     role_arn: "RoleArn", # required
    #     protocol_type: "MCP", # required, accepts MCP
    #     protocol_configuration: {
    #       mcp: {
    #         supported_versions: ["McpVersion"],
    #         instructions: "McpInstructions",
    #         search_type: "SEMANTIC", # accepts SEMANTIC
    #       },
    #     },
    #     authorizer_type: "CUSTOM_JWT", # required, accepts CUSTOM_JWT, AWS_IAM, NONE
    #     authorizer_configuration: {
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"],
    #         allowed_scopes: ["AllowedScopeType"],
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
    #         },
    #       },
    #     ],
    #     policy_engine_configuration: {
    #       arn: "GatewayPolicyEngineArn", # required
    #       mode: "LOG_ONLY", # required, accepts LOG_ONLY, ENFORCE
    #     },
    #     exception_level: "DEBUG", # accepts DEBUG
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
    #   resp.authorizer_type #=> String, one of "CUSTOM_JWT", "AWS_IAM", "NONE"
    #   resp.authorizer_configuration.custom_jwt_authorizer.discovery_url #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_audience #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_audience[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_clients #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_clients[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_scopes #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.allowed_scopes[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_name #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_value_type #=> String, one of "STRING", "STRING_ARRAY"
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list #=> Array
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list[0] #=> String
    #   resp.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_operator #=> String, one of "EQUALS", "CONTAINS", "CONTAINS_ANY"
    #   resp.kms_key_arn #=> String
    #   resp.interceptor_configurations #=> Array
    #   resp.interceptor_configurations[0].interceptor.lambda.arn #=> String
    #   resp.interceptor_configurations[0].interception_points #=> Array
    #   resp.interceptor_configurations[0].interception_points[0] #=> String, one of "REQUEST", "RESPONSE"
    #   resp.interceptor_configurations[0].input_configuration.pass_request_headers #=> Boolean
    #   resp.policy_engine_configuration.arn #=> String
    #   resp.policy_engine_configuration.mode #=> String, one of "LOG_ONLY", "ENFORCE"
    #   resp.workload_identity_details.workload_identity_arn #=> String
    #   resp.exception_level #=> String, one of "DEBUG"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateGateway AWS API Documentation
    #
    # @overload update_gateway(params = {})
    # @param [Hash] params ({})
    def update_gateway(params = {}, options = {})
      req = build_request(:update_gateway, params)
      req.send_request(options)
    end

    # Updates an existing gateway target.
    #
    # @option params [required, String] :gateway_identifier
    #   The unique identifier of the gateway associated with the target.
    #
    # @option params [required, String] :target_id
    #   The unique identifier of the gateway target to update.
    #
    # @option params [required, String] :name
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
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway_target({
    #     gateway_identifier: "GatewayIdentifier", # required
    #     target_id: "TargetId", # required
    #     name: "TargetName", # required
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
    #       },
    #     },
    #     credential_provider_configurations: [
    #       {
    #         credential_provider_type: "GATEWAY_IAM_ROLE", # required, accepts GATEWAY_IAM_ROLE, OAUTH, API_KEY
    #         credential_provider: {
    #           oauth_credential_provider: {
    #             provider_arn: "OAuthCredentialProviderArn", # required
    #             scopes: ["OAuthScope"], # required
    #             custom_parameters: {
    #               "OAuthCustomParametersKey" => "OAuthCustomParametersValue",
    #             },
    #             grant_type: "CLIENT_CREDENTIALS", # accepts CLIENT_CREDENTIALS, AUTHORIZATION_CODE
    #             default_return_url: "OAuthDefaultReturnUrl",
    #           },
    #           api_key_credential_provider: {
    #             provider_arn: "ApiKeyCredentialProviderArn", # required
    #             credential_parameter_name: "ApiKeyCredentialParameterName",
    #             credential_prefix: "ApiKeyCredentialPrefix",
    #             credential_location: "HEADER", # accepts HEADER, QUERY_PARAMETER
    #           },
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.target_id #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED", "SYNCHRONIZING", "SYNCHRONIZE_UNSUCCESSFUL"
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
    #   resp.credential_provider_configurations #=> Array
    #   resp.credential_provider_configurations[0].credential_provider_type #=> String, one of "GATEWAY_IAM_ROLE", "OAUTH", "API_KEY"
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.provider_arn #=> String
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes #=> Array
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes[0] #=> String
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters #=> Hash
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters["OAuthCustomParametersKey"] #=> String
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.grant_type #=> String, one of "CLIENT_CREDENTIALS", "AUTHORIZATION_CODE"
    #   resp.credential_provider_configurations[0].credential_provider.oauth_credential_provider.default_return_url #=> String
    #   resp.credential_provider_configurations[0].credential_provider.api_key_credential_provider.provider_arn #=> String
    #   resp.credential_provider_configurations[0].credential_provider.api_key_credential_provider.credential_parameter_name #=> String
    #   resp.credential_provider_configurations[0].credential_provider.api_key_credential_provider.credential_prefix #=> String
    #   resp.credential_provider_configurations[0].credential_provider.api_key_credential_provider.credential_location #=> String, one of "HEADER", "QUERY_PARAMETER"
    #   resp.last_synchronized_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateGatewayTarget AWS API Documentation
    #
    # @overload update_gateway_target(params = {})
    # @param [Hash] params ({})
    def update_gateway_target(params = {}, options = {})
      req = build_request(:update_gateway_target, params)
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
    #           },
    #           summary_memory_strategy: {
    #             name: "Name", # required
    #             description: "Description",
    #             namespaces: ["Namespace"],
    #           },
    #           user_preference_memory_strategy: {
    #             name: "Name", # required
    #             description: "Description",
    #             namespaces: ["Namespace"],
    #           },
    #           custom_memory_strategy: {
    #             name: "Name", # required
    #             description: "Description",
    #             namespaces: ["Namespace"],
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
    #           },
    #           episodic_memory_strategy: {
    #             name: "Name", # required
    #             description: "Description",
    #             namespaces: ["Namespace"],
    #             reflection_configuration: {
    #               namespaces: ["Namespace"], # required
    #             },
    #           },
    #         },
    #       ],
    #       modify_memory_strategies: [
    #         {
    #           memory_strategy_id: "String", # required
    #           description: "Description",
    #           namespaces: ["Namespace"],
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
    #                 namespaces: ["Namespace"], # required
    #               },
    #               custom_reflection_configuration: {
    #                 episodic_reflection_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                   namespaces: ["Namespace"],
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
    #         },
    #       ],
    #       delete_memory_strategies: [
    #         {
    #           memory_strategy_id: "String", # required
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
    #   resp.memory.status #=> String, one of "CREATING", "ACTIVE", "FAILED", "DELETING"
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
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.namespaces #=> Array
    #   resp.memory.strategies[0].configuration.reflection.episodic_reflection_configuration.namespaces[0] #=> String
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
    #   resp.memory.strategies[0].created_at #=> Time
    #   resp.memory.strategies[0].updated_at #=> Time
    #   resp.memory.strategies[0].status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED"
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
    #   * {Types::UpdateOauth2CredentialProviderResponse#name #name} => String
    #   * {Types::UpdateOauth2CredentialProviderResponse#credential_provider_vendor #credential_provider_vendor} => String
    #   * {Types::UpdateOauth2CredentialProviderResponse#credential_provider_arn #credential_provider_arn} => String
    #   * {Types::UpdateOauth2CredentialProviderResponse#callback_url #callback_url} => String
    #   * {Types::UpdateOauth2CredentialProviderResponse#oauth2_provider_config_output #oauth2_provider_config_output} => Types::Oauth2ProviderConfigOutput
    #   * {Types::UpdateOauth2CredentialProviderResponse#created_time #created_time} => Time
    #   * {Types::UpdateOauth2CredentialProviderResponse#last_updated_time #last_updated_time} => Time
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
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
    #       },
    #       google_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
    #       },
    #       github_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
    #       },
    #       slack_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
    #       },
    #       salesforce_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
    #       },
    #       microsoft_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
    #         tenant_id: "TenantIdType",
    #       },
    #       atlassian_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
    #       },
    #       linkedin_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
    #       },
    #       included_oauth_2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
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
    #     evaluation_execution_role_arn: "RoleArn",
    #     execution_status: "ENABLED", # accepts ENABLED, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.online_evaluation_config_arn #=> String
    #   resp.online_evaluation_config_id #=> String
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "ACTIVE", "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING"
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

    # Updates an existing policy within the AgentCore Policy system. This
    # operation allows modification of the policy description and definition
    # while maintaining the policy's identity. The updated policy is
    # validated against the Cedar schema before being applied. This is an
    # asynchronous operation. Use the `GetPolicy` operation to poll the
    # `status` field to track completion.
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
    # @option params [String] :description
    #   The new human-readable description for the policy. This optional field
    #   allows updating the policy's documentation while keeping the same
    #   policy logic.
    #
    # @option params [required, Types::PolicyDefinition] :definition
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
    # @return [Types::UpdatePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePolicyResponse#policy_id #policy_id} => String
    #   * {Types::UpdatePolicyResponse#name #name} => String
    #   * {Types::UpdatePolicyResponse#policy_engine_id #policy_engine_id} => String
    #   * {Types::UpdatePolicyResponse#definition #definition} => Types::PolicyDefinition
    #   * {Types::UpdatePolicyResponse#description #description} => String
    #   * {Types::UpdatePolicyResponse#created_at #created_at} => Time
    #   * {Types::UpdatePolicyResponse#updated_at #updated_at} => Time
    #   * {Types::UpdatePolicyResponse#policy_arn #policy_arn} => String
    #   * {Types::UpdatePolicyResponse#status #status} => String
    #   * {Types::UpdatePolicyResponse#status_reasons #status_reasons} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_policy({
    #     policy_engine_id: "ResourceId", # required
    #     policy_id: "ResourceId", # required
    #     description: "Description",
    #     definition: { # required
    #       cedar: {
    #         statement: "Statement", # required
    #       },
    #     },
    #     validation_mode: "FAIL_ON_ANY_FINDINGS", # accepts FAIL_ON_ANY_FINDINGS, IGNORE_ALL_FINDINGS
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_id #=> String
    #   resp.name #=> String
    #   resp.policy_engine_id #=> String
    #   resp.definition.cedar.statement #=> String
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.policy_arn #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
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
    # @option params [String] :description
    #   The new description for the policy engine.
    #
    # @return [Types::UpdatePolicyEngineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePolicyEngineResponse#policy_engine_id #policy_engine_id} => String
    #   * {Types::UpdatePolicyEngineResponse#name #name} => String
    #   * {Types::UpdatePolicyEngineResponse#description #description} => String
    #   * {Types::UpdatePolicyEngineResponse#created_at #created_at} => Time
    #   * {Types::UpdatePolicyEngineResponse#updated_at #updated_at} => Time
    #   * {Types::UpdatePolicyEngineResponse#policy_engine_arn #policy_engine_arn} => String
    #   * {Types::UpdatePolicyEngineResponse#status #status} => String
    #   * {Types::UpdatePolicyEngineResponse#status_reasons #status_reasons} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_policy_engine({
    #     policy_engine_id: "ResourceId", # required
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_engine_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.policy_engine_arn #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"
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
      context[:gem_version] = '1.16.0'
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
    # | policy_active               | {Client#get_policy}            | 2        | 60            |
    # | policy_deleted              | {Client#get_policy}            | 2        | 60            |
    # | policy_engine_active        | {Client#get_policy_engine}     | 2        | 60            |
    # | policy_engine_deleted       | {Client#get_policy_engine}     | 2        | 60            |
    # | policy_generation_completed | {Client#get_policy_generation} | 2        | 60            |
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
