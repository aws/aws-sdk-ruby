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

module Aws::AgentRegistryControl
  # An API client for AgentRegistryControl.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::AgentRegistryControl::Client.new(
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

    @identifier = :agentregistrycontrol

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
    add_plugin(Aws::AgentRegistryControl::Plugins::Endpoints)

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
    #   @option options [Aws::AgentRegistryControl::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::AgentRegistryControl::EndpointParameters`.
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

    # Creates a new registry, a catalog that organizes registry records and
    # defines their discovery authorization and record approval behavior.
    # Creation is asynchronous: the registry begins in the CREATING status
    # and becomes usable once it reaches READY.
    #
    # @option params [required, String] :name
    #   The name of the registry
    #
    # @option params [String] :description
    #   The description of the registry
    #
    # @option params [Types::DiscoveryConfiguration] :discovery_configuration
    #   Discovery configuration for the registry
    #
    # @option params [String] :client_token
    #   Client token for idempotency
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   Tags to associate with the registry
    #
    # @option params [Types::ApprovalConfiguration] :approval_configuration
    #   Approval configuration for registry records
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
    #     discovery_configuration: {
    #       authorizer_configuration: {
    #         custom_jwt_authorizer: {
    #           discovery_url: "DiscoveryUrl", # required
    #           allowed_audience: ["AllowedAudience"],
    #           allowed_clients: ["AllowedClient"],
    #           allowed_scopes: ["AllowedScopeType"],
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
    #         },
    #       },
    #       authorizer_type: "CUSTOM_JWT", # accepts CUSTOM_JWT, AWS_IAM
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     approval_configuration: {
    #       auto_approval_rules: ["APPROVE_ALL"], # accepts APPROVE_ALL
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/CreateRegistry AWS API Documentation
    #
    # @overload create_registry(params = {})
    # @param [Hash] params ({})
    def create_registry(params = {}, options = {})
      req = build_request(:create_registry, params)
      req.send_request(options)
    end

    # Creates a registry record within a registry. A registry record
    # describes a discoverable resource, such as an MCP server, an agent, an
    # agent skill, or a custom resource. Creation is asynchronous: the
    # record is returned with the CREATING status while it is processed.
    #
    # @option params [required, String] :registry_id
    #   The identifier of the registry in which to create the record (ARN or
    #   ID)
    #
    # @option params [required, String] :name
    #   The name of the registry record
    #
    # @option params [String] :display_name
    #   The human-readable display name of the registry record
    #
    # @option params [String] :description
    #   The description of the registry record
    #
    # @option params [required, String] :record_type
    #   The type of the registry record, which determines the descriptor
    #   format
    #
    # @option params [required, Types::Descriptors] :descriptors
    #   The typed descriptor content for the registry record
    #
    # @option params [String] :record_version
    #   The version of the registry record
    #
    # @option params [String] :client_token
    #   Client token for idempotency
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   Tags to associate with the registry record
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
    #     display_name: "RegistryRecordDisplayName",
    #     description: "Description",
    #     record_type: "MCP", # required, accepts MCP, AGENT, CUSTOM, SKILL
    #     descriptors: { # required
    #       mcp_server: {
    #         data: "DescriptorData",
    #         data_schema_version: "DataSchemaVersion",
    #         additional_data: {
    #           tools: {
    #             data: "DescriptorData",
    #             data_schema_version: "DataSchemaVersion",
    #           },
    #         },
    #         source: {
    #           from_url: {
    #             url: "DescriptorSourceUrl", # required
    #             credential_provider_configurations: [
    #               {
    #                 credential_provider_type: "OAUTH", # required, accepts OAUTH, IAM
    #                 credential_provider: { # required
    #                   oauth_credential_provider: {
    #                     provider_arn: "CredentialProviderArn", # required
    #                     grant_type: "CLIENT_CREDENTIALS", # accepts CLIENT_CREDENTIALS
    #                     scopes: ["String"],
    #                     custom_parameters: {
    #                       "String" => "String",
    #                     },
    #                   },
    #                   iam_credential_provider: {
    #                     role_arn: "IamRoleArn",
    #                     service: "IamSigningServiceName",
    #                     region: "IamSigningRegion",
    #                   },
    #                 },
    #               },
    #             ],
    #           },
    #         },
    #       },
    #       a2a_agent_card: {
    #         data: "DescriptorData",
    #         data_schema_version: "DataSchemaVersion",
    #         source: {
    #           from_url: {
    #             url: "DescriptorSourceUrl", # required
    #             credential_provider_configurations: [
    #               {
    #                 credential_provider_type: "OAUTH", # required, accepts OAUTH, IAM
    #                 credential_provider: { # required
    #                   oauth_credential_provider: {
    #                     provider_arn: "CredentialProviderArn", # required
    #                     grant_type: "CLIENT_CREDENTIALS", # accepts CLIENT_CREDENTIALS
    #                     scopes: ["String"],
    #                     custom_parameters: {
    #                       "String" => "String",
    #                     },
    #                   },
    #                   iam_credential_provider: {
    #                     role_arn: "IamRoleArn",
    #                     service: "IamSigningServiceName",
    #                     region: "IamSigningRegion",
    #                   },
    #                 },
    #               },
    #             ],
    #           },
    #         },
    #       },
    #       agent_skills_definition: {
    #         data: "DescriptorData",
    #         data_schema_version: "DataSchemaVersion",
    #         additional_data: {
    #           skill_md: {
    #             data: "DescriptorData",
    #             data_schema_version: "DataSchemaVersion",
    #             source: {
    #               from_url: {
    #                 url: "DescriptorSourceUrl", # required
    #                 credential_provider_configurations: [
    #                   {
    #                     credential_provider_type: "OAUTH", # required, accepts OAUTH, IAM
    #                     credential_provider: { # required
    #                       oauth_credential_provider: {
    #                         provider_arn: "CredentialProviderArn", # required
    #                         grant_type: "CLIENT_CREDENTIALS", # accepts CLIENT_CREDENTIALS
    #                         scopes: ["String"],
    #                         custom_parameters: {
    #                           "String" => "String",
    #                         },
    #                       },
    #                       iam_credential_provider: {
    #                         role_arn: "IamRoleArn",
    #                         service: "IamSigningServiceName",
    #                         region: "IamSigningRegion",
    #                       },
    #                     },
    #                   },
    #                 ],
    #               },
    #             },
    #           },
    #         },
    #       },
    #       custom: {
    #         data: "DescriptorData",
    #       },
    #     },
    #     record_version: "RegistryRecordVersion",
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.record_arn #=> String
    #   resp.status #=> String, one of "DRAFT", "PENDING_APPROVAL", "APPROVED", "REJECTED", "DEPRECATED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/CreateRegistryRecord AWS API Documentation
    #
    # @overload create_registry_record(params = {})
    # @param [Hash] params ({})
    def create_registry_record(params = {}, options = {})
      req = build_request(:create_registry_record, params)
      req.send_request(options)
    end

    # Deletes a registry. Deletion is asynchronous: the registry transitions
    # to the DELETING status and is removed along with its registry records.
    #
    # @option params [required, String] :registry_id
    #   The identifier of the registry to delete (ARN or ID)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/DeleteRegistry AWS API Documentation
    #
    # @overload delete_registry(params = {})
    # @param [Hash] params ({})
    def delete_registry(params = {}, options = {})
      req = build_request(:delete_registry, params)
      req.send_request(options)
    end

    # Deletes a registry record
    #
    # @option params [required, String] :registry_id
    #   The identifier of the registry containing the record (ARN or ID)
    #
    # @option params [required, String] :record_id
    #   The identifier of the registry record to delete (ARN or ID)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/DeleteRegistryRecord AWS API Documentation
    #
    # @overload delete_registry_record(params = {})
    # @param [Hash] params ({})
    def delete_registry_record(params = {}, options = {})
      req = build_request(:delete_registry_record, params)
      req.send_request(options)
    end

    # Gets a registry by identifier (ARN or ID)
    #
    # @option params [required, String] :registry_id
    #   The identifier of the registry to retrieve (ARN or ID)
    #
    # @return [Types::GetRegistryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRegistryResponse#name #name} => String
    #   * {Types::GetRegistryResponse#description #description} => String
    #   * {Types::GetRegistryResponse#registry_id #registry_id} => String
    #   * {Types::GetRegistryResponse#registry_arn #registry_arn} => String
    #   * {Types::GetRegistryResponse#discovery_configuration #discovery_configuration} => Types::DiscoveryConfiguration
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
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.discovery_url #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.allowed_audience #=> Array
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.allowed_audience[0] #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.allowed_clients #=> Array
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.allowed_clients[0] #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.allowed_scopes #=> Array
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.allowed_scopes[0] #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.custom_claims #=> Array
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_name #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_value_type #=> String, one of "STRING", "STRING_ARRAY"
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list #=> Array
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list[0] #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_operator #=> String, one of "EQUALS", "CONTAINS", "CONTAINS_ANY"
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides #=> Array
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].domain #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.discovery_configuration.authorizer_type #=> String, one of "CUSTOM_JWT", "AWS_IAM"
    #   resp.approval_configuration.auto_approval_rules #=> Array
    #   resp.approval_configuration.auto_approval_rules[0] #=> String, one of "APPROVE_ALL"
    #   resp.status #=> String, one of "CREATING", "READY", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"
    #   resp.status_reason #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * registry_ready
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/GetRegistry AWS API Documentation
    #
    # @overload get_registry(params = {})
    # @param [Hash] params ({})
    def get_registry(params = {}, options = {})
      req = build_request(:get_registry, params)
      req.send_request(options)
    end

    # Retrieves the details of a registry record
    #
    # @option params [required, String] :registry_id
    #   The identifier of the registry containing the record (ARN or ID)
    #
    # @option params [required, String] :record_id
    #   The identifier of the registry record to retrieve (ARN or ID)
    #
    # @return [Types::GetRegistryRecordResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRegistryRecordResponse#registry_arn #registry_arn} => String
    #   * {Types::GetRegistryRecordResponse#record_arn #record_arn} => String
    #   * {Types::GetRegistryRecordResponse#record_id #record_id} => String
    #   * {Types::GetRegistryRecordResponse#name #name} => String
    #   * {Types::GetRegistryRecordResponse#display_name #display_name} => String
    #   * {Types::GetRegistryRecordResponse#description #description} => String
    #   * {Types::GetRegistryRecordResponse#record_type #record_type} => String
    #   * {Types::GetRegistryRecordResponse#descriptors #descriptors} => Types::Descriptors
    #   * {Types::GetRegistryRecordResponse#record_version #record_version} => String
    #   * {Types::GetRegistryRecordResponse#status #status} => String
    #   * {Types::GetRegistryRecordResponse#created_at #created_at} => Time
    #   * {Types::GetRegistryRecordResponse#updated_at #updated_at} => Time
    #   * {Types::GetRegistryRecordResponse#status_reason #status_reason} => String
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
    #   resp.display_name #=> String
    #   resp.description #=> String
    #   resp.record_type #=> String, one of "MCP", "AGENT", "CUSTOM", "SKILL"
    #   resp.descriptors.mcp_server.data #=> String
    #   resp.descriptors.mcp_server.data_schema_version #=> String
    #   resp.descriptors.mcp_server.additional_data.tools.data #=> String
    #   resp.descriptors.mcp_server.additional_data.tools.data_schema_version #=> String
    #   resp.descriptors.mcp_server.source.from_url.url #=> String
    #   resp.descriptors.mcp_server.source.from_url.credential_provider_configurations #=> Array
    #   resp.descriptors.mcp_server.source.from_url.credential_provider_configurations[0].credential_provider_type #=> String, one of "OAUTH", "IAM"
    #   resp.descriptors.mcp_server.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.provider_arn #=> String
    #   resp.descriptors.mcp_server.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.grant_type #=> String, one of "CLIENT_CREDENTIALS"
    #   resp.descriptors.mcp_server.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes #=> Array
    #   resp.descriptors.mcp_server.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes[0] #=> String
    #   resp.descriptors.mcp_server.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters #=> Hash
    #   resp.descriptors.mcp_server.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters["String"] #=> String
    #   resp.descriptors.mcp_server.source.from_url.credential_provider_configurations[0].credential_provider.iam_credential_provider.role_arn #=> String
    #   resp.descriptors.mcp_server.source.from_url.credential_provider_configurations[0].credential_provider.iam_credential_provider.service #=> String
    #   resp.descriptors.mcp_server.source.from_url.credential_provider_configurations[0].credential_provider.iam_credential_provider.region #=> String
    #   resp.descriptors.a2a_agent_card.data #=> String
    #   resp.descriptors.a2a_agent_card.data_schema_version #=> String
    #   resp.descriptors.a2a_agent_card.source.from_url.url #=> String
    #   resp.descriptors.a2a_agent_card.source.from_url.credential_provider_configurations #=> Array
    #   resp.descriptors.a2a_agent_card.source.from_url.credential_provider_configurations[0].credential_provider_type #=> String, one of "OAUTH", "IAM"
    #   resp.descriptors.a2a_agent_card.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.provider_arn #=> String
    #   resp.descriptors.a2a_agent_card.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.grant_type #=> String, one of "CLIENT_CREDENTIALS"
    #   resp.descriptors.a2a_agent_card.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes #=> Array
    #   resp.descriptors.a2a_agent_card.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes[0] #=> String
    #   resp.descriptors.a2a_agent_card.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters #=> Hash
    #   resp.descriptors.a2a_agent_card.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters["String"] #=> String
    #   resp.descriptors.a2a_agent_card.source.from_url.credential_provider_configurations[0].credential_provider.iam_credential_provider.role_arn #=> String
    #   resp.descriptors.a2a_agent_card.source.from_url.credential_provider_configurations[0].credential_provider.iam_credential_provider.service #=> String
    #   resp.descriptors.a2a_agent_card.source.from_url.credential_provider_configurations[0].credential_provider.iam_credential_provider.region #=> String
    #   resp.descriptors.agent_skills_definition.data #=> String
    #   resp.descriptors.agent_skills_definition.data_schema_version #=> String
    #   resp.descriptors.agent_skills_definition.additional_data.skill_md.data #=> String
    #   resp.descriptors.agent_skills_definition.additional_data.skill_md.data_schema_version #=> String
    #   resp.descriptors.agent_skills_definition.additional_data.skill_md.source.from_url.url #=> String
    #   resp.descriptors.agent_skills_definition.additional_data.skill_md.source.from_url.credential_provider_configurations #=> Array
    #   resp.descriptors.agent_skills_definition.additional_data.skill_md.source.from_url.credential_provider_configurations[0].credential_provider_type #=> String, one of "OAUTH", "IAM"
    #   resp.descriptors.agent_skills_definition.additional_data.skill_md.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.provider_arn #=> String
    #   resp.descriptors.agent_skills_definition.additional_data.skill_md.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.grant_type #=> String, one of "CLIENT_CREDENTIALS"
    #   resp.descriptors.agent_skills_definition.additional_data.skill_md.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes #=> Array
    #   resp.descriptors.agent_skills_definition.additional_data.skill_md.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes[0] #=> String
    #   resp.descriptors.agent_skills_definition.additional_data.skill_md.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters #=> Hash
    #   resp.descriptors.agent_skills_definition.additional_data.skill_md.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters["String"] #=> String
    #   resp.descriptors.agent_skills_definition.additional_data.skill_md.source.from_url.credential_provider_configurations[0].credential_provider.iam_credential_provider.role_arn #=> String
    #   resp.descriptors.agent_skills_definition.additional_data.skill_md.source.from_url.credential_provider_configurations[0].credential_provider.iam_credential_provider.service #=> String
    #   resp.descriptors.agent_skills_definition.additional_data.skill_md.source.from_url.credential_provider_configurations[0].credential_provider.iam_credential_provider.region #=> String
    #   resp.descriptors.custom.data #=> String
    #   resp.record_version #=> String
    #   resp.status #=> String, one of "DRAFT", "PENDING_APPROVAL", "APPROVED", "REJECTED", "DEPRECATED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status_reason #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * registry_record_approved
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/GetRegistryRecord AWS API Documentation
    #
    # @overload get_registry_record(params = {})
    # @param [Hash] params ({})
    def get_registry_record(params = {}, options = {})
      req = build_request(:get_registry_record, params)
      req.send_request(options)
    end

    # Lists the registries in the caller's account and Region, with
    # optional filtering by status and discovery authorizer type
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return
    #
    # @option params [String] :next_token
    #   Token for pagination
    #
    # @option params [Array<Types::RegistryFilter>] :filters
    #   Filters to apply to the registry list
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
    #     filters: [
    #       {
    #         name: "status", # required, accepts status, discoveryConfiguration.authorizerType
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.registries #=> Array
    #   resp.registries[0].name #=> String
    #   resp.registries[0].description #=> String
    #   resp.registries[0].registry_id #=> String
    #   resp.registries[0].registry_arn #=> String
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.discovery_url #=> String
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.allowed_audience #=> Array
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.allowed_audience[0] #=> String
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.allowed_clients #=> Array
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.allowed_clients[0] #=> String
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.allowed_scopes #=> Array
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.allowed_scopes[0] #=> String
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.custom_claims #=> Array
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_name #=> String
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_value_type #=> String, one of "STRING", "STRING_ARRAY"
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string #=> String
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list #=> Array
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list[0] #=> String
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_operator #=> String, one of "EQUALS", "CONTAINS", "CONTAINS_ANY"
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides #=> Array
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].domain #=> String
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.registries[0].discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.registries[0].discovery_configuration.authorizer_type #=> String, one of "CUSTOM_JWT", "AWS_IAM"
    #   resp.registries[0].status #=> String, one of "CREATING", "READY", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"
    #   resp.registries[0].status_reason #=> String
    #   resp.registries[0].created_at #=> Time
    #   resp.registries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/ListRegistries AWS API Documentation
    #
    # @overload list_registries(params = {})
    # @param [Hash] params ({})
    def list_registries(params = {}, options = {})
      req = build_request(:list_registries, params)
      req.send_request(options)
    end

    # Lists the registry records within a registry, with optional filtering
    # by name, status, and record type
    #
    # @option params [required, String] :registry_id
    #   The identifier of the registry to list records from (ARN or ID)
    #
    # @option params [Integer] :max_results
    #   Maximum number of records to return
    #
    # @option params [String] :next_token
    #   Token for pagination
    #
    # @option params [Array<Types::RegistryRecordFilter>] :filters
    #   Filters to apply to the registry record list
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
    #     filters: [
    #       {
    #         name: "name", # required, accepts name, status, recordType
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_records #=> Array
    #   resp.registry_records[0].registry_arn #=> String
    #   resp.registry_records[0].record_arn #=> String
    #   resp.registry_records[0].record_id #=> String
    #   resp.registry_records[0].name #=> String
    #   resp.registry_records[0].display_name #=> String
    #   resp.registry_records[0].description #=> String
    #   resp.registry_records[0].record_type #=> String, one of "MCP", "AGENT", "CUSTOM", "SKILL"
    #   resp.registry_records[0].record_version #=> String
    #   resp.registry_records[0].status #=> String, one of "DRAFT", "PENDING_APPROVAL", "APPROVED", "REJECTED", "DEPRECATED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.registry_records[0].created_at #=> Time
    #   resp.registry_records[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/ListRegistryRecords AWS API Documentation
    #
    # @overload list_registry_records(params = {})
    # @param [Hash] params ({})
    def list_registry_records(params = {}, options = {})
      req = build_request(:list_registry_records, params)
      req.send_request(options)
    end

    # List the tags on a resource
    #
    # @option params [required, String] :resource_arn
    #   ARN of a taggable Agent Registry resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Submits a DRAFT registry record for approval, moving it into the
    # registry's approval workflow. Depending on the registry's approval
    # configuration, the record is either auto-approved or set to
    # PENDING\_APPROVAL for a curator to approve or reject.
    #
    # @option params [required, String] :registry_id
    #   The identifier of the registry containing the record (ARN or ID)
    #
    # @option params [required, String] :record_id
    #   The identifier of the registry record to submit for approval (ARN or
    #   ID)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/SubmitRegistryRecordForApproval AWS API Documentation
    #
    # @overload submit_registry_record_for_approval(params = {})
    # @param [Hash] params ({})
    def submit_registry_record_for_approval(params = {}, options = {})
      req = build_request(:submit_registry_record_for_approval, params)
      req.send_request(options)
    end

    # Tag a resource with key-value pairs
    #
    # @option params [required, String] :resource_arn
    #   ARN of a taggable Agent Registry resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   A map of tag keys to tag values.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Remove tags from a resource by key
    #
    # @option params [required, String] :resource_arn
    #   ARN of a taggable Agent Registry resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing registry. This operation uses PATCH semantics:
    # specify only the fields you want to change, and omit the rest to leave
    # them unchanged. Updates are applied asynchronously and the registry
    # transitions to the UPDATING status while they are processed.
    #
    # @option params [required, String] :registry_id
    #   The identifier of the registry to update (ARN or ID)
    #
    # @option params [String] :name
    #   The updated name of the registry
    #
    # @option params [Types::UpdatedDescription] :description
    #   The updated description of the registry
    #
    # @option params [Types::UpdatedDiscoveryConfiguration] :discovery_configuration
    #   The updated discovery configuration. Changing the discovery
    #   authorization can break existing consumers that rely on the previous
    #   authorization type.
    #
    # @option params [Types::UpdatedApprovalConfiguration] :approval_configuration
    #   The updated approval configuration. The change applies only to records
    #   that move to PENDING\_APPROVAL after the update; records already in
    #   PENDING\_APPROVAL are unaffected.
    #
    # @return [Types::UpdateRegistryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRegistryResponse#name #name} => String
    #   * {Types::UpdateRegistryResponse#description #description} => String
    #   * {Types::UpdateRegistryResponse#registry_id #registry_id} => String
    #   * {Types::UpdateRegistryResponse#registry_arn #registry_arn} => String
    #   * {Types::UpdateRegistryResponse#discovery_configuration #discovery_configuration} => Types::DiscoveryConfiguration
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
    #     discovery_configuration: {
    #       authorizer_configuration: {
    #         optional_value: {
    #           custom_jwt_authorizer: {
    #             discovery_url: "DiscoveryUrl", # required
    #             allowed_audience: ["AllowedAudience"],
    #             allowed_clients: ["AllowedClient"],
    #             allowed_scopes: ["AllowedScopeType"],
    #             custom_claims: [
    #               {
    #                 inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #                 inbound_token_claim_value_type: "STRING", # required, accepts STRING, STRING_ARRAY
    #                 authorizing_claim_match_value: { # required
    #                   claim_match_value: { # required
    #                     match_value_string: "MatchValueString",
    #                     match_value_string_list: ["MatchValueString"],
    #                   },
    #                   claim_match_operator: "EQUALS", # required, accepts EQUALS, CONTAINS, CONTAINS_ANY
    #                 },
    #               },
    #             ],
    #             private_endpoint: {
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
    #             private_endpoint_overrides: [
    #               {
    #                 domain: "PrivateEndpointOverrideDomain", # required
    #                 private_endpoint: { # required
    #                   self_managed_lattice_resource: {
    #                     resource_configuration_identifier: "ResourceConfigurationIdentifier",
    #                   },
    #                   managed_vpc_resource: {
    #                     vpc_identifier: "VpcIdentifier", # required
    #                     subnet_ids: ["SubnetId"], # required
    #                     endpoint_ip_address_type: "IPV4", # required, accepts IPV4, IPV6
    #                     security_group_ids: ["SecurityGroupIdentifier"],
    #                     tags: {
    #                       "TagKey" => "TagValue",
    #                     },
    #                     routing_domain: "RoutingDomain",
    #                   },
    #                 },
    #               },
    #             ],
    #           },
    #         },
    #       },
    #     },
    #     approval_configuration: {
    #       optional_value: {
    #         auto_approval_rules: ["APPROVE_ALL"], # accepts APPROVE_ALL
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
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.discovery_url #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.allowed_audience #=> Array
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.allowed_audience[0] #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.allowed_clients #=> Array
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.allowed_clients[0] #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.allowed_scopes #=> Array
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.allowed_scopes[0] #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.custom_claims #=> Array
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_name #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].inbound_token_claim_value_type #=> String, one of "STRING", "STRING_ARRAY"
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list #=> Array
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_value.match_value_string_list[0] #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.custom_claims[0].authorizing_claim_match_value.claim_match_operator #=> String, one of "EQUALS", "CONTAINS", "CONTAINS_ANY"
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides #=> Array
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].domain #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.self_managed_lattice_resource.resource_configuration_identifier #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.vpc_identifier #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids #=> Array
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.subnet_ids[0] #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.endpoint_ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids #=> Array
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.security_group_ids[0] #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags #=> Hash
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.tags["TagKey"] #=> String
    #   resp.discovery_configuration.authorizer_configuration.custom_jwt_authorizer.private_endpoint_overrides[0].private_endpoint.managed_vpc_resource.routing_domain #=> String
    #   resp.discovery_configuration.authorizer_type #=> String, one of "CUSTOM_JWT", "AWS_IAM"
    #   resp.approval_configuration.auto_approval_rules #=> Array
    #   resp.approval_configuration.auto_approval_rules[0] #=> String, one of "APPROVE_ALL"
    #   resp.status #=> String, one of "CREATING", "READY", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"
    #   resp.status_reason #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdateRegistry AWS API Documentation
    #
    # @overload update_registry(params = {})
    # @param [Hash] params ({})
    def update_registry(params = {}, options = {})
      req = build_request(:update_registry, params)
      req.send_request(options)
    end

    # Updates a registry record. The update is asynchronous: the record is
    # returned with the UPDATING status while it is processed. Fields that
    # use update wrappers follow PATCH semantics: omit the field to leave it
    # unchanged.
    #
    # @option params [required, String] :registry_id
    #   The identifier of the registry containing the record (ARN or ID)
    #
    # @option params [required, String] :record_id
    #   The identifier of the registry record to update (ARN or ID)
    #
    # @option params [String] :name
    #   The updated name of the registry record. Omit to leave the name
    #   unchanged.
    #
    # @option params [Types::UpdatedDisplayName] :display_name
    #   The updated display name of the registry record. Omit to leave the
    #   display name unchanged; provide an empty wrapper to unset it.
    #
    # @option params [Types::UpdatedDescription] :description
    #   The updated description of the registry record. Omit to leave the
    #   description unchanged; provide an empty wrapper to unset it.
    #
    # @option params [String] :record_type
    #   The updated type of the registry record. Omit to leave the record type
    #   unchanged.
    #
    # @option params [Types::UpdatedDescriptors] :descriptors
    #   The updated typed descriptor content for the registry record. Omit to
    #   leave the descriptors unchanged.
    #
    # @option params [String] :record_version
    #   The updated version of the registry record. Omit to leave the version
    #   unchanged.
    #
    # @option params [Boolean] :trigger_synchronization
    #   Whether to trigger synchronization of the record's descriptor content
    #   from its source
    #
    # @return [Types::UpdateRegistryRecordResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRegistryRecordResponse#registry_arn #registry_arn} => String
    #   * {Types::UpdateRegistryRecordResponse#record_arn #record_arn} => String
    #   * {Types::UpdateRegistryRecordResponse#record_id #record_id} => String
    #   * {Types::UpdateRegistryRecordResponse#name #name} => String
    #   * {Types::UpdateRegistryRecordResponse#display_name #display_name} => String
    #   * {Types::UpdateRegistryRecordResponse#description #description} => String
    #   * {Types::UpdateRegistryRecordResponse#record_type #record_type} => String
    #   * {Types::UpdateRegistryRecordResponse#descriptors #descriptors} => Types::Descriptors
    #   * {Types::UpdateRegistryRecordResponse#record_version #record_version} => String
    #   * {Types::UpdateRegistryRecordResponse#status #status} => String
    #   * {Types::UpdateRegistryRecordResponse#created_at #created_at} => Time
    #   * {Types::UpdateRegistryRecordResponse#updated_at #updated_at} => Time
    #   * {Types::UpdateRegistryRecordResponse#status_reason #status_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_registry_record({
    #     registry_id: "RegistryIdentifier", # required
    #     record_id: "RecordIdentifier", # required
    #     name: "RegistryRecordName",
    #     display_name: {
    #       optional_value: "RegistryRecordDisplayName",
    #     },
    #     description: {
    #       optional_value: "Description",
    #     },
    #     record_type: "MCP", # accepts MCP, AGENT, CUSTOM, SKILL
    #     descriptors: {
    #       optional_value: {
    #         mcp_server: {
    #           optional_value: {
    #             data: {
    #               optional_value: "DescriptorData",
    #             },
    #             data_schema_version: {
    #               optional_value: "DataSchemaVersion",
    #             },
    #             source: {
    #               optional_value: {
    #                 from_url: {
    #                   url: "DescriptorSourceUrl", # required
    #                   credential_provider_configurations: [
    #                     {
    #                       credential_provider_type: "OAUTH", # required, accepts OAUTH, IAM
    #                       credential_provider: { # required
    #                         oauth_credential_provider: {
    #                           provider_arn: "CredentialProviderArn", # required
    #                           grant_type: "CLIENT_CREDENTIALS", # accepts CLIENT_CREDENTIALS
    #                           scopes: ["String"],
    #                           custom_parameters: {
    #                             "String" => "String",
    #                           },
    #                         },
    #                         iam_credential_provider: {
    #                           role_arn: "IamRoleArn",
    #                           service: "IamSigningServiceName",
    #                           region: "IamSigningRegion",
    #                         },
    #                       },
    #                     },
    #                   ],
    #                 },
    #               },
    #             },
    #             additional_data: {
    #               optional_value: {
    #                 tools: {
    #                   optional_value: {
    #                     data: {
    #                       optional_value: "DescriptorData",
    #                     },
    #                     data_schema_version: {
    #                       optional_value: "DataSchemaVersion",
    #                     },
    #                   },
    #                 },
    #               },
    #             },
    #           },
    #         },
    #         a2a_agent_card: {
    #           optional_value: {
    #             data: {
    #               optional_value: "DescriptorData",
    #             },
    #             data_schema_version: {
    #               optional_value: "DataSchemaVersion",
    #             },
    #             source: {
    #               optional_value: {
    #                 from_url: {
    #                   url: "DescriptorSourceUrl", # required
    #                   credential_provider_configurations: [
    #                     {
    #                       credential_provider_type: "OAUTH", # required, accepts OAUTH, IAM
    #                       credential_provider: { # required
    #                         oauth_credential_provider: {
    #                           provider_arn: "CredentialProviderArn", # required
    #                           grant_type: "CLIENT_CREDENTIALS", # accepts CLIENT_CREDENTIALS
    #                           scopes: ["String"],
    #                           custom_parameters: {
    #                             "String" => "String",
    #                           },
    #                         },
    #                         iam_credential_provider: {
    #                           role_arn: "IamRoleArn",
    #                           service: "IamSigningServiceName",
    #                           region: "IamSigningRegion",
    #                         },
    #                       },
    #                     },
    #                   ],
    #                 },
    #               },
    #             },
    #           },
    #         },
    #         agent_skills_definition: {
    #           optional_value: {
    #             data: {
    #               optional_value: "DescriptorData",
    #             },
    #             data_schema_version: {
    #               optional_value: "DataSchemaVersion",
    #             },
    #             additional_data: {
    #               optional_value: {
    #                 skill_md: {
    #                   optional_value: {
    #                     data: {
    #                       optional_value: "DescriptorData",
    #                     },
    #                     data_schema_version: {
    #                       optional_value: "DataSchemaVersion",
    #                     },
    #                     source: {
    #                       optional_value: {
    #                         from_url: {
    #                           url: "DescriptorSourceUrl", # required
    #                           credential_provider_configurations: [
    #                             {
    #                               credential_provider_type: "OAUTH", # required, accepts OAUTH, IAM
    #                               credential_provider: { # required
    #                                 oauth_credential_provider: {
    #                                   provider_arn: "CredentialProviderArn", # required
    #                                   grant_type: "CLIENT_CREDENTIALS", # accepts CLIENT_CREDENTIALS
    #                                   scopes: ["String"],
    #                                   custom_parameters: {
    #                                     "String" => "String",
    #                                   },
    #                                 },
    #                                 iam_credential_provider: {
    #                                   role_arn: "IamRoleArn",
    #                                   service: "IamSigningServiceName",
    #                                   region: "IamSigningRegion",
    #                                 },
    #                               },
    #                             },
    #                           ],
    #                         },
    #                       },
    #                     },
    #                   },
    #                 },
    #               },
    #             },
    #           },
    #         },
    #         custom: {
    #           optional_value: {
    #             data: {
    #               optional_value: "DescriptorData",
    #             },
    #           },
    #         },
    #       },
    #     },
    #     record_version: "RegistryRecordVersion",
    #     trigger_synchronization: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_arn #=> String
    #   resp.record_arn #=> String
    #   resp.record_id #=> String
    #   resp.name #=> String
    #   resp.display_name #=> String
    #   resp.description #=> String
    #   resp.record_type #=> String, one of "MCP", "AGENT", "CUSTOM", "SKILL"
    #   resp.descriptors.mcp_server.data #=> String
    #   resp.descriptors.mcp_server.data_schema_version #=> String
    #   resp.descriptors.mcp_server.additional_data.tools.data #=> String
    #   resp.descriptors.mcp_server.additional_data.tools.data_schema_version #=> String
    #   resp.descriptors.mcp_server.source.from_url.url #=> String
    #   resp.descriptors.mcp_server.source.from_url.credential_provider_configurations #=> Array
    #   resp.descriptors.mcp_server.source.from_url.credential_provider_configurations[0].credential_provider_type #=> String, one of "OAUTH", "IAM"
    #   resp.descriptors.mcp_server.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.provider_arn #=> String
    #   resp.descriptors.mcp_server.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.grant_type #=> String, one of "CLIENT_CREDENTIALS"
    #   resp.descriptors.mcp_server.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes #=> Array
    #   resp.descriptors.mcp_server.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes[0] #=> String
    #   resp.descriptors.mcp_server.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters #=> Hash
    #   resp.descriptors.mcp_server.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters["String"] #=> String
    #   resp.descriptors.mcp_server.source.from_url.credential_provider_configurations[0].credential_provider.iam_credential_provider.role_arn #=> String
    #   resp.descriptors.mcp_server.source.from_url.credential_provider_configurations[0].credential_provider.iam_credential_provider.service #=> String
    #   resp.descriptors.mcp_server.source.from_url.credential_provider_configurations[0].credential_provider.iam_credential_provider.region #=> String
    #   resp.descriptors.a2a_agent_card.data #=> String
    #   resp.descriptors.a2a_agent_card.data_schema_version #=> String
    #   resp.descriptors.a2a_agent_card.source.from_url.url #=> String
    #   resp.descriptors.a2a_agent_card.source.from_url.credential_provider_configurations #=> Array
    #   resp.descriptors.a2a_agent_card.source.from_url.credential_provider_configurations[0].credential_provider_type #=> String, one of "OAUTH", "IAM"
    #   resp.descriptors.a2a_agent_card.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.provider_arn #=> String
    #   resp.descriptors.a2a_agent_card.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.grant_type #=> String, one of "CLIENT_CREDENTIALS"
    #   resp.descriptors.a2a_agent_card.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes #=> Array
    #   resp.descriptors.a2a_agent_card.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes[0] #=> String
    #   resp.descriptors.a2a_agent_card.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters #=> Hash
    #   resp.descriptors.a2a_agent_card.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters["String"] #=> String
    #   resp.descriptors.a2a_agent_card.source.from_url.credential_provider_configurations[0].credential_provider.iam_credential_provider.role_arn #=> String
    #   resp.descriptors.a2a_agent_card.source.from_url.credential_provider_configurations[0].credential_provider.iam_credential_provider.service #=> String
    #   resp.descriptors.a2a_agent_card.source.from_url.credential_provider_configurations[0].credential_provider.iam_credential_provider.region #=> String
    #   resp.descriptors.agent_skills_definition.data #=> String
    #   resp.descriptors.agent_skills_definition.data_schema_version #=> String
    #   resp.descriptors.agent_skills_definition.additional_data.skill_md.data #=> String
    #   resp.descriptors.agent_skills_definition.additional_data.skill_md.data_schema_version #=> String
    #   resp.descriptors.agent_skills_definition.additional_data.skill_md.source.from_url.url #=> String
    #   resp.descriptors.agent_skills_definition.additional_data.skill_md.source.from_url.credential_provider_configurations #=> Array
    #   resp.descriptors.agent_skills_definition.additional_data.skill_md.source.from_url.credential_provider_configurations[0].credential_provider_type #=> String, one of "OAUTH", "IAM"
    #   resp.descriptors.agent_skills_definition.additional_data.skill_md.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.provider_arn #=> String
    #   resp.descriptors.agent_skills_definition.additional_data.skill_md.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.grant_type #=> String, one of "CLIENT_CREDENTIALS"
    #   resp.descriptors.agent_skills_definition.additional_data.skill_md.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes #=> Array
    #   resp.descriptors.agent_skills_definition.additional_data.skill_md.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.scopes[0] #=> String
    #   resp.descriptors.agent_skills_definition.additional_data.skill_md.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters #=> Hash
    #   resp.descriptors.agent_skills_definition.additional_data.skill_md.source.from_url.credential_provider_configurations[0].credential_provider.oauth_credential_provider.custom_parameters["String"] #=> String
    #   resp.descriptors.agent_skills_definition.additional_data.skill_md.source.from_url.credential_provider_configurations[0].credential_provider.iam_credential_provider.role_arn #=> String
    #   resp.descriptors.agent_skills_definition.additional_data.skill_md.source.from_url.credential_provider_configurations[0].credential_provider.iam_credential_provider.service #=> String
    #   resp.descriptors.agent_skills_definition.additional_data.skill_md.source.from_url.credential_provider_configurations[0].credential_provider.iam_credential_provider.region #=> String
    #   resp.descriptors.custom.data #=> String
    #   resp.record_version #=> String
    #   resp.status #=> String, one of "DRAFT", "PENDING_APPROVAL", "APPROVED", "REJECTED", "DEPRECATED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdateRegistryRecord AWS API Documentation
    #
    # @overload update_registry_record(params = {})
    # @param [Hash] params ({})
    def update_registry_record(params = {}, options = {})
      req = build_request(:update_registry_record, params)
      req.send_request(options)
    end

    # Updates the status of a registry record as part of the registry's
    # curation workflow, for example to approve or reject a record that is
    # pending approval, or to deprecate an approved record so that it is no
    # longer discoverable
    #
    # @option params [required, String] :registry_id
    #   The identifier of the registry containing the record (ARN or ID)
    #
    # @option params [required, String] :record_id
    #   The identifier of the registry record to update the status of (ARN or
    #   ID)
    #
    # @option params [required, String] :status
    #   The target status for the registry record
    #
    # @option params [required, String] :status_reason
    #   The reason for the status change, for example why the record was
    #   approved, rejected, or deprecated
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdateRegistryRecordStatus AWS API Documentation
    #
    # @overload update_registry_record_status(params = {})
    # @param [Hash] params ({})
    def update_registry_record_status(params = {}, options = {})
      req = build_request(:update_registry_record_status, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::AgentRegistryControl')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-agentregistrycontrol'
      context[:gem_version] = '1.0.0'
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
    # | waiter_name              | params                       | :delay   | :max_attempts |
    # | ------------------------ | ---------------------------- | -------- | ------------- |
    # | registry_ready           | {Client#get_registry}        | 30       | 5             |
    # | registry_record_approved | {Client#get_registry_record} | 30       | 5             |
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
        registry_ready: Waiters::RegistryReady,
        registry_record_approved: Waiters::RegistryRecordApproved
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
