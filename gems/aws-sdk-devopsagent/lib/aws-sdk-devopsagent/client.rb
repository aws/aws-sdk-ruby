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

module Aws::DevOpsAgent
  # An API client for DevOpsAgent.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::DevOpsAgent::Client.new(
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

    @identifier = :devopsagent

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
    add_plugin(Aws::DevOpsAgent::Plugins::Endpoints)

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
    #   @option options [Aws::DevOpsAgent::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::DevOpsAgent::EndpointParameters`.
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

    # Adds a specific service association to an AgentSpace. It overwrites
    # the existing association of the same service. Returns 201 Created on
    # success.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the AgentSpace
    #
    # @option params [required, String] :service_id
    #   The unique identifier of the service.
    #
    # @option params [required, Types::ServiceConfiguration] :configuration
    #   The configuration that directs how AgentSpace interacts with the given
    #   service.
    #
    # @return [Types::AssociateServiceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateServiceOutput#association #association} => Types::Association
    #   * {Types::AssociateServiceOutput#webhook #webhook} => Types::GenericWebhook
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_service({
    #     agent_space_id: "AgentSpaceId", # required
    #     service_id: "ServiceId", # required
    #     configuration: { # required
    #       source_aws: {
    #         account_id: "SourceAwsConfigurationAccountIdString", # required
    #         account_type: "source", # required, accepts source
    #         assumable_role_arn: "RoleArn", # required
    #         external_id: "String",
    #       },
    #       aws: {
    #         assumable_role_arn: "RoleArn", # required
    #         account_id: "AWSConfigurationAccountIdString", # required
    #         account_type: "monitor", # required, accepts monitor
    #       },
    #       github: {
    #         repo_name: "String", # required
    #         repo_id: "String", # required
    #         owner: "String", # required
    #         owner_type: "organization", # required, accepts organization, user
    #         instance_identifier: "String",
    #       },
    #       slack: {
    #         workspace_id: "SlackConfigurationWorkspaceIdString", # required
    #         workspace_name: "String", # required
    #         transmission_target: { # required
    #           ops_oncall_target: { # required
    #             channel_name: "String",
    #             channel_id: "SlackChannelChannelIdString", # required
    #           },
    #           ops_sre_target: {
    #             channel_name: "String",
    #             channel_id: "SlackChannelChannelIdString", # required
    #           },
    #         },
    #       },
    #       dynatrace: {
    #         env_id: "String", # required
    #         resources: ["String"],
    #       },
    #       servicenow: {
    #         instance_id: "String",
    #         auth_scopes: ["String"],
    #       },
    #       mcpservernewrelic: {
    #         account_id: "MCPServerNewRelicConfigurationAccountIdString", # required
    #         endpoint: "MCPServerNewRelicConfigurationEndpointString", # required
    #       },
    #       mcpserverdatadog: {
    #       },
    #       mcpserver: {
    #         tools: ["MCPToolsListMemberString"], # required
    #       },
    #       gitlab: {
    #         project_id: "String", # required
    #         project_path: "String", # required
    #         instance_identifier: "String",
    #       },
    #       mcpserversplunk: {
    #       },
    #       event_channel: {
    #       },
    #       azure: {
    #         subscription_id: "String", # required
    #       },
    #       azuredevops: {
    #         organization_name: "String", # required
    #         project_id: "String", # required
    #         project_name: "String", # required
    #       },
    #       mcpservergrafana: {
    #         endpoint: "MCPServerGrafanaConfigurationEndpointString", # required
    #         organization_id: "MCPServerGrafanaConfigurationOrganizationIdString",
    #         tools: ["MCPToolsListMemberString"],
    #       },
    #       pagerduty: {
    #         services: ["String"], # required
    #         customer_email: "EmailAddress", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.association.agent_space_id #=> String
    #   resp.association.created_at #=> Time
    #   resp.association.updated_at #=> Time
    #   resp.association.status #=> String, one of "valid", "invalid", "pending-confirmation"
    #   resp.association.association_id #=> String
    #   resp.association.service_id #=> String
    #   resp.association.configuration.source_aws.account_id #=> String
    #   resp.association.configuration.source_aws.account_type #=> String, one of "source"
    #   resp.association.configuration.source_aws.assumable_role_arn #=> String
    #   resp.association.configuration.source_aws.external_id #=> String
    #   resp.association.configuration.aws.assumable_role_arn #=> String
    #   resp.association.configuration.aws.account_id #=> String
    #   resp.association.configuration.aws.account_type #=> String, one of "monitor"
    #   resp.association.configuration.github.repo_name #=> String
    #   resp.association.configuration.github.repo_id #=> String
    #   resp.association.configuration.github.owner #=> String
    #   resp.association.configuration.github.owner_type #=> String, one of "organization", "user"
    #   resp.association.configuration.github.instance_identifier #=> String
    #   resp.association.configuration.slack.workspace_id #=> String
    #   resp.association.configuration.slack.workspace_name #=> String
    #   resp.association.configuration.slack.transmission_target.ops_oncall_target.channel_name #=> String
    #   resp.association.configuration.slack.transmission_target.ops_oncall_target.channel_id #=> String
    #   resp.association.configuration.slack.transmission_target.ops_sre_target.channel_name #=> String
    #   resp.association.configuration.slack.transmission_target.ops_sre_target.channel_id #=> String
    #   resp.association.configuration.dynatrace.env_id #=> String
    #   resp.association.configuration.dynatrace.resources #=> Array
    #   resp.association.configuration.dynatrace.resources[0] #=> String
    #   resp.association.configuration.servicenow.instance_id #=> String
    #   resp.association.configuration.servicenow.auth_scopes #=> Array
    #   resp.association.configuration.servicenow.auth_scopes[0] #=> String
    #   resp.association.configuration.mcpservernewrelic.account_id #=> String
    #   resp.association.configuration.mcpservernewrelic.endpoint #=> String
    #   resp.association.configuration.mcpserver.tools #=> Array
    #   resp.association.configuration.mcpserver.tools[0] #=> String
    #   resp.association.configuration.gitlab.project_id #=> String
    #   resp.association.configuration.gitlab.project_path #=> String
    #   resp.association.configuration.gitlab.instance_identifier #=> String
    #   resp.association.configuration.azure.subscription_id #=> String
    #   resp.association.configuration.azuredevops.organization_name #=> String
    #   resp.association.configuration.azuredevops.project_id #=> String
    #   resp.association.configuration.azuredevops.project_name #=> String
    #   resp.association.configuration.mcpservergrafana.endpoint #=> String
    #   resp.association.configuration.mcpservergrafana.organization_id #=> String
    #   resp.association.configuration.mcpservergrafana.tools #=> Array
    #   resp.association.configuration.mcpservergrafana.tools[0] #=> String
    #   resp.association.configuration.pagerduty.services #=> Array
    #   resp.association.configuration.pagerduty.services[0] #=> String
    #   resp.association.configuration.pagerduty.customer_email #=> String
    #   resp.webhook.webhook_url #=> String
    #   resp.webhook.webhook_id #=> String
    #   resp.webhook.webhook_type #=> String, one of "hmac", "apikey", "gitlab", "pagerduty"
    #   resp.webhook.webhook_secret #=> String
    #   resp.webhook.api_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/AssociateService AWS API Documentation
    #
    # @overload associate_service(params = {})
    # @param [Hash] params ({})
    def associate_service(params = {}, options = {})
      req = build_request(:associate_service, params)
      req.send_request(options)
    end

    # Creates a new AgentSpace with the specified name and description.
    # Duplicate space names are allowed.
    #
    # @option params [required, String] :name
    #   The name of the AgentSpace.
    #
    # @option params [String] :description
    #   The description of the AgentSpace.
    #
    # @option params [String] :locale
    #   The locale for the AgentSpace, which determines the language used in
    #   agent responses.
    #
    # @option params [String] :kms_key_arn
    #   The ARN of the AWS Key Management Service (AWS KMS) customer managed
    #   key that's used to encrypt resources.
    #
    # @option params [String] :client_token
    #   Client-provided token to ensure request idempotency. When the same
    #   token is provided in subsequent calls, the same response is returned
    #   within a 8-hour window.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   Tags to add to the AgentSpace at creation time.
    #
    # @return [Types::CreateAgentSpaceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAgentSpaceOutput#agent_space #agent_space} => Types::AgentSpace
    #   * {Types::CreateAgentSpaceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_agent_space({
    #     name: "AgentSpaceName", # required
    #     description: "Description",
    #     locale: "Locale",
    #     kms_key_arn: "KmsKeyArn",
    #     client_token: "CreateAgentSpaceInputClientTokenString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_space.name #=> String
    #   resp.agent_space.description #=> String
    #   resp.agent_space.locale #=> String
    #   resp.agent_space.created_at #=> Time
    #   resp.agent_space.updated_at #=> Time
    #   resp.agent_space.kms_key_arn #=> String
    #   resp.agent_space.agent_space_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/CreateAgentSpace AWS API Documentation
    #
    # @overload create_agent_space(params = {})
    # @param [Hash] params ({})
    def create_agent_space(params = {}, options = {})
      req = build_request(:create_agent_space, params)
      req.send_request(options)
    end

    # Creates a new backlog task in the specified agent space
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier for the agent space where the task will be
    #   created
    #
    # @option params [Types::ReferenceInput] :reference
    #   Optional reference information for the task
    #
    # @option params [required, String] :task_type
    #   The type of task being created
    #
    # @option params [required, String] :title
    #   The title of the backlog task
    #
    # @option params [String] :description
    #   Optional detailed description of the task
    #
    # @option params [required, String] :priority
    #   The priority level of the task
    #
    # @option params [String] :client_token
    #   Client-provided token for idempotent operations
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateBacklogTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBacklogTaskResponse#task #task} => Types::Task
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_backlog_task({
    #     agent_space_id: "AgentSpaceId", # required
    #     reference: {
    #       system: "ReferenceInputSystemString", # required
    #       title: "ReferenceInputTitleString",
    #       reference_id: "ResourceId", # required
    #       reference_url: "ReferenceInputReferenceUrlString", # required
    #       association_id: "ResourceId", # required
    #     },
    #     task_type: "INVESTIGATION", # required, accepts INVESTIGATION, EVALUATION
    #     title: "BacklogTaskTitle", # required
    #     description: "BacklogTaskDescription",
    #     priority: "CRITICAL", # required, accepts CRITICAL, HIGH, MEDIUM, LOW, MINIMAL
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.task.agent_space_id #=> String
    #   resp.task.task_id #=> String
    #   resp.task.execution_id #=> String
    #   resp.task.title #=> String
    #   resp.task.description #=> String
    #   resp.task.reference.system #=> String
    #   resp.task.reference.title #=> String
    #   resp.task.reference.reference_id #=> String
    #   resp.task.reference.reference_url #=> String
    #   resp.task.reference.association_id #=> String
    #   resp.task.task_type #=> String, one of "INVESTIGATION", "EVALUATION"
    #   resp.task.priority #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "MINIMAL"
    #   resp.task.status #=> String, one of "PENDING_TRIAGE", "LINKED", "PENDING_START", "IN_PROGRESS", "PENDING_CUSTOMER_APPROVAL", "COMPLETED", "FAILED", "TIMED_OUT", "CANCELED"
    #   resp.task.created_at #=> Time
    #   resp.task.updated_at #=> Time
    #   resp.task.version #=> Integer
    #   resp.task.primary_task_id #=> String
    #   resp.task.status_reason #=> String
    #   resp.task.has_linked_tasks #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/CreateBacklogTask AWS API Documentation
    #
    # @overload create_backlog_task(params = {})
    # @param [Hash] params ({})
    def create_backlog_task(params = {}, options = {})
      req = build_request(:create_backlog_task, params)
      req.send_request(options)
    end

    # Creates a new chat execution in the specified agent space
    #
    # @option params [required, String] :agent_space_id
    #   Unique identifier for an agent space (allows alphanumeric characters
    #   and hyphens; 1-64 characters)
    #
    # @option params [String] :user_id
    #   The user identifier for the chat. This field is deprecated and will be
    #   ignored — the service resolves user identity from the authenticated
    #   session.
    #
    # @option params [String] :user_type
    #   The authentication type of the user
    #
    # @return [Types::CreateChatResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChatResponse#execution_id #execution_id} => String
    #   * {Types::CreateChatResponse#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_chat({
    #     agent_space_id: "AgentSpaceId", # required
    #     user_id: "ResourceId",
    #     user_type: "IAM", # accepts IAM, IDC, IDP
    #   })
    #
    # @example Response structure
    #
    #   resp.execution_id #=> String
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/CreateChat AWS API Documentation
    #
    # @overload create_chat(params = {})
    # @param [Hash] params ({})
    def create_chat(params = {}, options = {})
      req = build_request(:create_chat, params)
      req.send_request(options)
    end

    # Creates a Private Connection to a target resource.
    #
    # @option params [required, String] :name
    #   Unique name for this Private Connection within the account.
    #
    # @option params [required, Types::PrivateConnectionMode] :mode
    #   Private Connection mode configuration.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags to add to the Private Connection at creation time.
    #
    # @return [Types::CreatePrivateConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePrivateConnectionOutput#name #name} => String
    #   * {Types::CreatePrivateConnectionOutput#type #type} => String
    #   * {Types::CreatePrivateConnectionOutput#resource_gateway_id #resource_gateway_id} => String
    #   * {Types::CreatePrivateConnectionOutput#host_address #host_address} => String
    #   * {Types::CreatePrivateConnectionOutput#vpc_id #vpc_id} => String
    #   * {Types::CreatePrivateConnectionOutput#resource_configuration_id #resource_configuration_id} => String
    #   * {Types::CreatePrivateConnectionOutput#status #status} => String
    #   * {Types::CreatePrivateConnectionOutput#certificate_expiry_time #certificate_expiry_time} => Time
    #   * {Types::CreatePrivateConnectionOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_private_connection({
    #     name: "PrivateConnectionName", # required
    #     mode: { # required
    #       service_managed: {
    #         host_address: "IpAddressOrDnsName", # required
    #         vpc_id: "VpcId", # required
    #         subnet_ids: ["SubnetId"], # required
    #         security_group_ids: ["SecurityGroupId"],
    #         ip_address_type: "IPV4", # accepts IPV4, IPV6, DUAL_STACK
    #         ipv4_addresses_per_eni: 1,
    #         port_ranges: ["PortRange"],
    #         certificate: "CertificateString",
    #       },
    #       self_managed: {
    #         resource_configuration_id: "ResourceConfigurationArn", # required
    #         certificate: "CertificateString",
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
    #   resp.type #=> String, one of "SELF_MANAGED", "SERVICE_MANAGED"
    #   resp.resource_gateway_id #=> String
    #   resp.host_address #=> String
    #   resp.vpc_id #=> String
    #   resp.resource_configuration_id #=> String
    #   resp.status #=> String, one of "ACTIVE", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"
    #   resp.certificate_expiry_time #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/CreatePrivateConnection AWS API Documentation
    #
    # @overload create_private_connection(params = {})
    # @param [Hash] params ({})
    def create_private_connection(params = {}, options = {})
      req = build_request(:create_private_connection, params)
      req.send_request(options)
    end

    # Deletes an AgentSpace. This operation is idempotent and returns a 204
    # No Content response on success.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the AgentSpace
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_agent_space({
    #     agent_space_id: "AgentSpaceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/DeleteAgentSpace AWS API Documentation
    #
    # @overload delete_agent_space(params = {})
    # @param [Hash] params ({})
    def delete_agent_space(params = {}, options = {})
      req = build_request(:delete_agent_space, params)
      req.send_request(options)
    end

    # Deletes a Private Connection. The deletion is asynchronous and returns
    # DELETE\_IN\_PROGRESS status.
    #
    # @option params [required, String] :name
    #   The name of the Private Connection.
    #
    # @return [Types::DeletePrivateConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePrivateConnectionOutput#name #name} => String
    #   * {Types::DeletePrivateConnectionOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_private_connection({
    #     name: "PrivateConnectionName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.status #=> String, one of "ACTIVE", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/DeletePrivateConnection AWS API Documentation
    #
    # @overload delete_private_connection(params = {})
    # @param [Hash] params ({})
    def delete_private_connection(params = {}, options = {})
      req = build_request(:delete_private_connection, params)
      req.send_request(options)
    end

    # Deregister a service
    #
    # @option params [required, String] :service_id
    #   The service id to deregister. A service can only be deregistered if it
    #   is not associated with any AgentSpace.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_service({
    #     service_id: "ServiceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/DeregisterService AWS API Documentation
    #
    # @overload deregister_service(params = {})
    # @param [Hash] params ({})
    def deregister_service(params = {}, options = {})
      req = build_request(:deregister_service, params)
      req.send_request(options)
    end

    # Retrieves details of an existing Private Connection.
    #
    # @option params [required, String] :name
    #   The name of the Private Connection.
    #
    # @return [Types::DescribePrivateConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePrivateConnectionOutput#name #name} => String
    #   * {Types::DescribePrivateConnectionOutput#type #type} => String
    #   * {Types::DescribePrivateConnectionOutput#resource_gateway_id #resource_gateway_id} => String
    #   * {Types::DescribePrivateConnectionOutput#host_address #host_address} => String
    #   * {Types::DescribePrivateConnectionOutput#vpc_id #vpc_id} => String
    #   * {Types::DescribePrivateConnectionOutput#resource_configuration_id #resource_configuration_id} => String
    #   * {Types::DescribePrivateConnectionOutput#status #status} => String
    #   * {Types::DescribePrivateConnectionOutput#certificate_expiry_time #certificate_expiry_time} => Time
    #   * {Types::DescribePrivateConnectionOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_private_connection({
    #     name: "PrivateConnectionName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.type #=> String, one of "SELF_MANAGED", "SERVICE_MANAGED"
    #   resp.resource_gateway_id #=> String
    #   resp.host_address #=> String
    #   resp.vpc_id #=> String
    #   resp.resource_configuration_id #=> String
    #   resp.status #=> String, one of "ACTIVE", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"
    #   resp.certificate_expiry_time #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/DescribePrivateConnection AWS API Documentation
    #
    # @overload describe_private_connection(params = {})
    # @param [Hash] params ({})
    def describe_private_connection(params = {}, options = {})
      req = build_request(:describe_private_connection, params)
      req.send_request(options)
    end

    # Disable the Operator App for the specified AgentSpace
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the AgentSpace
    #
    # @option params [String] :auth_flow
    #   The authentication flow configured for the operator App. e.g. idc
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_operator_app({
    #     agent_space_id: "AgentSpaceId", # required
    #     auth_flow: "iam", # accepts iam, idc, idp
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/DisableOperatorApp AWS API Documentation
    #
    # @overload disable_operator_app(params = {})
    # @param [Hash] params ({})
    def disable_operator_app(params = {}, options = {})
      req = build_request(:disable_operator_app, params)
      req.send_request(options)
    end

    # Deletes a specific service association from an AgentSpace. This
    # operation is idempotent and returns a 204 No Content response on
    # success.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the AgentSpace
    #
    # @option params [required, String] :association_id
    #   The unique identifier of the given association.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_service({
    #     agent_space_id: "AgentSpaceId", # required
    #     association_id: "AssociationId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/DisassociateService AWS API Documentation
    #
    # @overload disassociate_service(params = {})
    # @param [Hash] params ({})
    def disassociate_service(params = {}, options = {})
      req = build_request(:disassociate_service, params)
      req.send_request(options)
    end

    # Enable the Operator App to access the given AgentSpace
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the AgentSpace
    #
    # @option params [required, String] :auth_flow
    #   The authentication flow configured for the operator App. e.g. iam or
    #   idc
    #
    # @option params [required, String] :operator_app_role_arn
    #   The IAM role end users assume to access AIDevOps APIs
    #
    # @option params [String] :idc_instance_arn
    #   The IdC instance Arn used to create an IdC auth application
    #
    # @option params [String] :issuer_url
    #   The OIDC issuer URL of the external Identity Provider
    #
    # @option params [String] :idp_client_id
    #   The OIDC client ID for the IdP application
    #
    # @option params [String] :idp_client_secret
    #   The OIDC client secret for the IdP application
    #
    # @option params [String] :provider
    #   The Identity Provider name (e.g., Entra, Okta, Google)
    #
    # @return [Types::EnableOperatorAppOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnableOperatorAppOutput#agent_space_id #agent_space_id} => String
    #   * {Types::EnableOperatorAppOutput#iam #iam} => Types::IamAuthConfiguration
    #   * {Types::EnableOperatorAppOutput#idc #idc} => Types::IdcAuthConfiguration
    #   * {Types::EnableOperatorAppOutput#idp #idp} => Types::IdpAuthConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_operator_app({
    #     agent_space_id: "AgentSpaceId", # required
    #     auth_flow: "iam", # required, accepts iam, idc, idp
    #     operator_app_role_arn: "RoleArn", # required
    #     idc_instance_arn: "String",
    #     issuer_url: "String",
    #     idp_client_id: "IdpClientId",
    #     idp_client_secret: "IdpClientSecret",
    #     provider: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_space_id #=> String
    #   resp.iam.operator_app_role_arn #=> String
    #   resp.iam.created_at #=> Time
    #   resp.iam.updated_at #=> Time
    #   resp.idc.operator_app_role_arn #=> String
    #   resp.idc.idc_instance_arn #=> String
    #   resp.idc.idc_application_arn #=> String
    #   resp.idc.created_at #=> Time
    #   resp.idc.updated_at #=> Time
    #   resp.idp.issuer_url #=> String
    #   resp.idp.client_id #=> String
    #   resp.idp.operator_app_role_arn #=> String
    #   resp.idp.provider #=> String
    #   resp.idp.created_at #=> Time
    #   resp.idp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/EnableOperatorApp AWS API Documentation
    #
    # @overload enable_operator_app(params = {})
    # @param [Hash] params ({})
    def enable_operator_app(params = {}, options = {})
      req = build_request(:enable_operator_app, params)
      req.send_request(options)
    end

    # Retrieves monthly account usage metrics and limits for the AWS
    # account.
    #
    # @return [Types::GetAccountUsageOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountUsageOutput#monthly_account_investigation_hours #monthly_account_investigation_hours} => Types::UsageMetric
    #   * {Types::GetAccountUsageOutput#monthly_account_evaluation_hours #monthly_account_evaluation_hours} => Types::UsageMetric
    #   * {Types::GetAccountUsageOutput#monthly_account_system_learning_hours #monthly_account_system_learning_hours} => Types::UsageMetric
    #   * {Types::GetAccountUsageOutput#monthly_account_on_demand_hours #monthly_account_on_demand_hours} => Types::UsageMetric
    #   * {Types::GetAccountUsageOutput#usage_period_start_time #usage_period_start_time} => Time
    #   * {Types::GetAccountUsageOutput#usage_period_end_time #usage_period_end_time} => Time
    #
    # @example Response structure
    #
    #   resp.monthly_account_investigation_hours.limit #=> Integer
    #   resp.monthly_account_investigation_hours.usage #=> Float
    #   resp.monthly_account_evaluation_hours.limit #=> Integer
    #   resp.monthly_account_evaluation_hours.usage #=> Float
    #   resp.monthly_account_system_learning_hours.limit #=> Integer
    #   resp.monthly_account_system_learning_hours.usage #=> Float
    #   resp.monthly_account_on_demand_hours.limit #=> Integer
    #   resp.monthly_account_on_demand_hours.usage #=> Float
    #   resp.usage_period_start_time #=> Time
    #   resp.usage_period_end_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GetAccountUsage AWS API Documentation
    #
    # @overload get_account_usage(params = {})
    # @param [Hash] params ({})
    def get_account_usage(params = {}, options = {})
      req = build_request(:get_account_usage, params)
      req.send_request(options)
    end

    # Retrieves detailed information about a specific AgentSpace.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the AgentSpace
    #
    # @return [Types::GetAgentSpaceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAgentSpaceOutput#agent_space #agent_space} => Types::AgentSpace
    #   * {Types::GetAgentSpaceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_agent_space({
    #     agent_space_id: "AgentSpaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_space.name #=> String
    #   resp.agent_space.description #=> String
    #   resp.agent_space.locale #=> String
    #   resp.agent_space.created_at #=> Time
    #   resp.agent_space.updated_at #=> Time
    #   resp.agent_space.kms_key_arn #=> String
    #   resp.agent_space.agent_space_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GetAgentSpace AWS API Documentation
    #
    # @overload get_agent_space(params = {})
    # @param [Hash] params ({})
    def get_agent_space(params = {}, options = {})
      req = build_request(:get_agent_space, params)
      req.send_request(options)
    end

    # Retrieves given associations configured for a specific AgentSpace.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the AgentSpace
    #
    # @option params [required, String] :association_id
    #   The unique identifier of the given association.
    #
    # @return [Types::GetAssociationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAssociationOutput#association #association} => Types::Association
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_association({
    #     agent_space_id: "AgentSpaceId", # required
    #     association_id: "AssociationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.association.agent_space_id #=> String
    #   resp.association.created_at #=> Time
    #   resp.association.updated_at #=> Time
    #   resp.association.status #=> String, one of "valid", "invalid", "pending-confirmation"
    #   resp.association.association_id #=> String
    #   resp.association.service_id #=> String
    #   resp.association.configuration.source_aws.account_id #=> String
    #   resp.association.configuration.source_aws.account_type #=> String, one of "source"
    #   resp.association.configuration.source_aws.assumable_role_arn #=> String
    #   resp.association.configuration.source_aws.external_id #=> String
    #   resp.association.configuration.aws.assumable_role_arn #=> String
    #   resp.association.configuration.aws.account_id #=> String
    #   resp.association.configuration.aws.account_type #=> String, one of "monitor"
    #   resp.association.configuration.github.repo_name #=> String
    #   resp.association.configuration.github.repo_id #=> String
    #   resp.association.configuration.github.owner #=> String
    #   resp.association.configuration.github.owner_type #=> String, one of "organization", "user"
    #   resp.association.configuration.github.instance_identifier #=> String
    #   resp.association.configuration.slack.workspace_id #=> String
    #   resp.association.configuration.slack.workspace_name #=> String
    #   resp.association.configuration.slack.transmission_target.ops_oncall_target.channel_name #=> String
    #   resp.association.configuration.slack.transmission_target.ops_oncall_target.channel_id #=> String
    #   resp.association.configuration.slack.transmission_target.ops_sre_target.channel_name #=> String
    #   resp.association.configuration.slack.transmission_target.ops_sre_target.channel_id #=> String
    #   resp.association.configuration.dynatrace.env_id #=> String
    #   resp.association.configuration.dynatrace.resources #=> Array
    #   resp.association.configuration.dynatrace.resources[0] #=> String
    #   resp.association.configuration.servicenow.instance_id #=> String
    #   resp.association.configuration.servicenow.auth_scopes #=> Array
    #   resp.association.configuration.servicenow.auth_scopes[0] #=> String
    #   resp.association.configuration.mcpservernewrelic.account_id #=> String
    #   resp.association.configuration.mcpservernewrelic.endpoint #=> String
    #   resp.association.configuration.mcpserver.tools #=> Array
    #   resp.association.configuration.mcpserver.tools[0] #=> String
    #   resp.association.configuration.gitlab.project_id #=> String
    #   resp.association.configuration.gitlab.project_path #=> String
    #   resp.association.configuration.gitlab.instance_identifier #=> String
    #   resp.association.configuration.azure.subscription_id #=> String
    #   resp.association.configuration.azuredevops.organization_name #=> String
    #   resp.association.configuration.azuredevops.project_id #=> String
    #   resp.association.configuration.azuredevops.project_name #=> String
    #   resp.association.configuration.mcpservergrafana.endpoint #=> String
    #   resp.association.configuration.mcpservergrafana.organization_id #=> String
    #   resp.association.configuration.mcpservergrafana.tools #=> Array
    #   resp.association.configuration.mcpservergrafana.tools[0] #=> String
    #   resp.association.configuration.pagerduty.services #=> Array
    #   resp.association.configuration.pagerduty.services[0] #=> String
    #   resp.association.configuration.pagerduty.customer_email #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GetAssociation AWS API Documentation
    #
    # @overload get_association(params = {})
    # @param [Hash] params ({})
    def get_association(params = {}, options = {})
      req = build_request(:get_association, params)
      req.send_request(options)
    end

    # Gets a backlog task for the specified agent space and task id
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier for the agent space containing the task
    #
    # @option params [required, String] :task_id
    #   The unique identifier of the task to retrieve
    #
    # @return [Types::GetBacklogTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBacklogTaskResponse#task #task} => Types::Task
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_backlog_task({
    #     agent_space_id: "AgentSpaceId", # required
    #     task_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task.agent_space_id #=> String
    #   resp.task.task_id #=> String
    #   resp.task.execution_id #=> String
    #   resp.task.title #=> String
    #   resp.task.description #=> String
    #   resp.task.reference.system #=> String
    #   resp.task.reference.title #=> String
    #   resp.task.reference.reference_id #=> String
    #   resp.task.reference.reference_url #=> String
    #   resp.task.reference.association_id #=> String
    #   resp.task.task_type #=> String, one of "INVESTIGATION", "EVALUATION"
    #   resp.task.priority #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "MINIMAL"
    #   resp.task.status #=> String, one of "PENDING_TRIAGE", "LINKED", "PENDING_START", "IN_PROGRESS", "PENDING_CUSTOMER_APPROVAL", "COMPLETED", "FAILED", "TIMED_OUT", "CANCELED"
    #   resp.task.created_at #=> Time
    #   resp.task.updated_at #=> Time
    #   resp.task.version #=> Integer
    #   resp.task.primary_task_id #=> String
    #   resp.task.status_reason #=> String
    #   resp.task.has_linked_tasks #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GetBacklogTask AWS API Documentation
    #
    # @overload get_backlog_task(params = {})
    # @param [Hash] params ({})
    def get_backlog_task(params = {}, options = {})
      req = build_request(:get_backlog_task, params)
      req.send_request(options)
    end

    # Get the full auth configuration of operator including any enabled auth
    # flow
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the AgentSpace
    #
    # @return [Types::GetOperatorAppOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOperatorAppOutput#iam #iam} => Types::IamAuthConfiguration
    #   * {Types::GetOperatorAppOutput#idc #idc} => Types::IdcAuthConfiguration
    #   * {Types::GetOperatorAppOutput#idp #idp} => Types::IdpAuthConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_operator_app({
    #     agent_space_id: "AgentSpaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.iam.operator_app_role_arn #=> String
    #   resp.iam.created_at #=> Time
    #   resp.iam.updated_at #=> Time
    #   resp.idc.operator_app_role_arn #=> String
    #   resp.idc.idc_instance_arn #=> String
    #   resp.idc.idc_application_arn #=> String
    #   resp.idc.created_at #=> Time
    #   resp.idc.updated_at #=> Time
    #   resp.idp.issuer_url #=> String
    #   resp.idp.client_id #=> String
    #   resp.idp.operator_app_role_arn #=> String
    #   resp.idp.provider #=> String
    #   resp.idp.created_at #=> Time
    #   resp.idp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GetOperatorApp AWS API Documentation
    #
    # @overload get_operator_app(params = {})
    # @param [Hash] params ({})
    def get_operator_app(params = {}, options = {})
      req = build_request(:get_operator_app, params)
      req.send_request(options)
    end

    # Retrieves a specific recommendation by its ID
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier for the agent space containing the
    #   recommendation
    #
    # @option params [required, String] :recommendation_id
    #   The unique identifier for the recommendation to retrieve
    #
    # @option params [Integer] :recommendation_version
    #   Specific version of the recommendation to retrieve. If not specified,
    #   returns the latest version.
    #
    # @return [Types::GetRecommendationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRecommendationResponse#recommendation #recommendation} => Types::Recommendation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recommendation({
    #     agent_space_id: "AgentSpaceId", # required
    #     recommendation_id: "ResourceId", # required
    #     recommendation_version: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.recommendation.agent_space_arn #=> String
    #   resp.recommendation.recommendation_id #=> String
    #   resp.recommendation.task_id #=> String
    #   resp.recommendation.goal_id #=> String
    #   resp.recommendation.title #=> String
    #   resp.recommendation.content.summary #=> String
    #   resp.recommendation.content.spec #=> String
    #   resp.recommendation.status #=> String, one of "PROPOSED", "ACCEPTED", "REJECTED", "CLOSED", "COMPLETED", "UPDATE_IN_PROGRESS"
    #   resp.recommendation.priority #=> String, one of "HIGH", "MEDIUM", "LOW"
    #   resp.recommendation.goal_version #=> Integer
    #   resp.recommendation.additional_context #=> String
    #   resp.recommendation.created_at #=> Time
    #   resp.recommendation.updated_at #=> Time
    #   resp.recommendation.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GetRecommendation AWS API Documentation
    #
    # @overload get_recommendation(params = {})
    # @param [Hash] params ({})
    def get_recommendation(params = {}, options = {})
      req = build_request(:get_recommendation, params)
      req.send_request(options)
    end

    # Retrieves given service by it's unique identifier
    #
    # @option params [required, String] :service_id
    #   The unique identifier of the given service.
    #
    # @return [Types::GetServiceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceOutput#service #service} => Types::RegisteredService
    #   * {Types::GetServiceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service({
    #     service_id: "ServiceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service.service_id #=> String
    #   resp.service.service_type #=> String, one of "github", "slack", "azure", "azuredevops", "dynatrace", "servicenow", "pagerduty", "gitlab", "eventChannel", "mcpservernewrelic", "mcpservergrafana", "mcpserverdatadog", "mcpserver", "mcpserversplunk", "azureidentity"
    #   resp.service.name #=> String
    #   resp.service.accessible_resources #=> Array
    #   resp.service.additional_service_details.github.owner #=> String
    #   resp.service.additional_service_details.github.owner_type #=> String, one of "organization", "user"
    #   resp.service.additional_service_details.github.target_url #=> String
    #   resp.service.additional_service_details.slack.team_id #=> String
    #   resp.service.additional_service_details.slack.team_name #=> String
    #   resp.service.additional_service_details.mcpserverdatadog.name #=> String
    #   resp.service.additional_service_details.mcpserverdatadog.endpoint #=> String
    #   resp.service.additional_service_details.mcpserverdatadog.authorization_method #=> String, one of "oauth-client-credentials", "oauth-3lo", "api-key", "bearer-token"
    #   resp.service.additional_service_details.mcpserverdatadog.description #=> String
    #   resp.service.additional_service_details.mcpserverdatadog.api_key_header #=> String
    #   resp.service.additional_service_details.mcpserver.name #=> String
    #   resp.service.additional_service_details.mcpserver.endpoint #=> String
    #   resp.service.additional_service_details.mcpserver.authorization_method #=> String, one of "oauth-client-credentials", "oauth-3lo", "api-key", "bearer-token"
    #   resp.service.additional_service_details.mcpserver.description #=> String
    #   resp.service.additional_service_details.mcpserver.api_key_header #=> String
    #   resp.service.additional_service_details.servicenow.instance_url #=> String
    #   resp.service.additional_service_details.gitlab.target_url #=> String
    #   resp.service.additional_service_details.gitlab.token_type #=> String, one of "personal", "group"
    #   resp.service.additional_service_details.gitlab.group_id #=> String
    #   resp.service.additional_service_details.mcpserversplunk.name #=> String
    #   resp.service.additional_service_details.mcpserversplunk.endpoint #=> String
    #   resp.service.additional_service_details.mcpserversplunk.authorization_method #=> String, one of "oauth-client-credentials", "oauth-3lo", "api-key", "bearer-token"
    #   resp.service.additional_service_details.mcpserversplunk.description #=> String
    #   resp.service.additional_service_details.mcpserversplunk.api_key_header #=> String
    #   resp.service.additional_service_details.mcpservernewrelic.account_id #=> String
    #   resp.service.additional_service_details.mcpservernewrelic.region #=> String, one of "US", "EU"
    #   resp.service.additional_service_details.mcpservernewrelic.description #=> String
    #   resp.service.additional_service_details.azuredevops.organization_name #=> String
    #   resp.service.additional_service_details.azureidentity.tenant_id #=> String
    #   resp.service.additional_service_details.azureidentity.client_id #=> String
    #   resp.service.additional_service_details.azureidentity.web_identity_role_arn #=> String
    #   resp.service.additional_service_details.azureidentity.web_identity_token_audiences #=> Array
    #   resp.service.additional_service_details.azureidentity.web_identity_token_audiences[0] #=> String
    #   resp.service.additional_service_details.mcpservergrafana.endpoint #=> String
    #   resp.service.additional_service_details.mcpservergrafana.authorization_method #=> String, one of "oauth-client-credentials", "oauth-3lo", "api-key", "bearer-token"
    #   resp.service.additional_service_details.pagerduty.scopes #=> Array
    #   resp.service.additional_service_details.pagerduty.scopes[0] #=> String
    #   resp.service.kms_key_arn #=> String
    #   resp.service.private_connection_name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GetService AWS API Documentation
    #
    # @overload get_service(params = {})
    # @param [Hash] params ({})
    def get_service(params = {}, options = {})
      req = build_request(:get_service, params)
      req.send_request(options)
    end

    # Lists all AgentSpaces with optional pagination.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   Token for the next page of results.
    #
    # @return [Types::ListAgentSpacesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAgentSpacesOutput#next_token #next_token} => String
    #   * {Types::ListAgentSpacesOutput#agent_spaces #agent_spaces} => Array&lt;Types::AgentSpace&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_agent_spaces({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.agent_spaces #=> Array
    #   resp.agent_spaces[0].name #=> String
    #   resp.agent_spaces[0].description #=> String
    #   resp.agent_spaces[0].locale #=> String
    #   resp.agent_spaces[0].created_at #=> Time
    #   resp.agent_spaces[0].updated_at #=> Time
    #   resp.agent_spaces[0].kms_key_arn #=> String
    #   resp.agent_spaces[0].agent_space_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListAgentSpaces AWS API Documentation
    #
    # @overload list_agent_spaces(params = {})
    # @param [Hash] params ({})
    def list_agent_spaces(params = {}, options = {})
      req = build_request(:list_agent_spaces, params)
      req.send_request(options)
    end

    # List all associations for given AgentSpace
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the AgentSpace
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   Token for the next page of results.
    #
    # @option params [String] :filter_service_types
    #   A comma-separated list of service types to filter list associations
    #   output
    #
    # @return [Types::ListAssociationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssociationsOutput#next_token #next_token} => String
    #   * {Types::ListAssociationsOutput#associations #associations} => Array&lt;Types::Association&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associations({
    #     agent_space_id: "AgentSpaceId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filter_service_types: "ListAssociationsInputFilterServiceTypesString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.associations #=> Array
    #   resp.associations[0].agent_space_id #=> String
    #   resp.associations[0].created_at #=> Time
    #   resp.associations[0].updated_at #=> Time
    #   resp.associations[0].status #=> String, one of "valid", "invalid", "pending-confirmation"
    #   resp.associations[0].association_id #=> String
    #   resp.associations[0].service_id #=> String
    #   resp.associations[0].configuration.source_aws.account_id #=> String
    #   resp.associations[0].configuration.source_aws.account_type #=> String, one of "source"
    #   resp.associations[0].configuration.source_aws.assumable_role_arn #=> String
    #   resp.associations[0].configuration.source_aws.external_id #=> String
    #   resp.associations[0].configuration.aws.assumable_role_arn #=> String
    #   resp.associations[0].configuration.aws.account_id #=> String
    #   resp.associations[0].configuration.aws.account_type #=> String, one of "monitor"
    #   resp.associations[0].configuration.github.repo_name #=> String
    #   resp.associations[0].configuration.github.repo_id #=> String
    #   resp.associations[0].configuration.github.owner #=> String
    #   resp.associations[0].configuration.github.owner_type #=> String, one of "organization", "user"
    #   resp.associations[0].configuration.github.instance_identifier #=> String
    #   resp.associations[0].configuration.slack.workspace_id #=> String
    #   resp.associations[0].configuration.slack.workspace_name #=> String
    #   resp.associations[0].configuration.slack.transmission_target.ops_oncall_target.channel_name #=> String
    #   resp.associations[0].configuration.slack.transmission_target.ops_oncall_target.channel_id #=> String
    #   resp.associations[0].configuration.slack.transmission_target.ops_sre_target.channel_name #=> String
    #   resp.associations[0].configuration.slack.transmission_target.ops_sre_target.channel_id #=> String
    #   resp.associations[0].configuration.dynatrace.env_id #=> String
    #   resp.associations[0].configuration.dynatrace.resources #=> Array
    #   resp.associations[0].configuration.dynatrace.resources[0] #=> String
    #   resp.associations[0].configuration.servicenow.instance_id #=> String
    #   resp.associations[0].configuration.servicenow.auth_scopes #=> Array
    #   resp.associations[0].configuration.servicenow.auth_scopes[0] #=> String
    #   resp.associations[0].configuration.mcpservernewrelic.account_id #=> String
    #   resp.associations[0].configuration.mcpservernewrelic.endpoint #=> String
    #   resp.associations[0].configuration.mcpserver.tools #=> Array
    #   resp.associations[0].configuration.mcpserver.tools[0] #=> String
    #   resp.associations[0].configuration.gitlab.project_id #=> String
    #   resp.associations[0].configuration.gitlab.project_path #=> String
    #   resp.associations[0].configuration.gitlab.instance_identifier #=> String
    #   resp.associations[0].configuration.azure.subscription_id #=> String
    #   resp.associations[0].configuration.azuredevops.organization_name #=> String
    #   resp.associations[0].configuration.azuredevops.project_id #=> String
    #   resp.associations[0].configuration.azuredevops.project_name #=> String
    #   resp.associations[0].configuration.mcpservergrafana.endpoint #=> String
    #   resp.associations[0].configuration.mcpservergrafana.organization_id #=> String
    #   resp.associations[0].configuration.mcpservergrafana.tools #=> Array
    #   resp.associations[0].configuration.mcpservergrafana.tools[0] #=> String
    #   resp.associations[0].configuration.pagerduty.services #=> Array
    #   resp.associations[0].configuration.pagerduty.services[0] #=> String
    #   resp.associations[0].configuration.pagerduty.customer_email #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListAssociations AWS API Documentation
    #
    # @overload list_associations(params = {})
    # @param [Hash] params ({})
    def list_associations(params = {}, options = {})
      req = build_request(:list_associations, params)
      req.send_request(options)
    end

    # Lists backlog tasks in the specified agent space with optional
    # filtering and sorting
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier for the agent space containing the tasks
    #
    # @option params [Types::TaskFilter] :filter
    #   Filter criteria to apply when listing tasks
    #
    #   Filtering restrictions:
    #
    #   * Each filter field list is limited to a single value
    #   * Filtering by Priority and Status at the same time when not filtering
    #     by Type is not permitted
    #   * Timestamp filters (createdAfter, createdBefore) can be combined with
    #     other filters when not sorting by priority
    #
    # @option params [Integer] :limit
    #   Maximum number of tasks to return in a single response (1-1000,
    #   default: 100)
    #
    # @option params [String] :next_token
    #   Token for retrieving the next page of results
    #
    # @option params [String] :sort_field
    #   Field to sort by
    #
    #       Sorting restrictions:
    #
    #   * Only sorting on createdAt is supported when using priority or status
    #     filters alone.
    #   * Sorting by priority is not supported when using Timestamp filters
    #     (createdAfter, createdBefore)
    #
    # @option params [String] :order
    #   Sort order for the tasks based on sortField (default: DESC)
    #
    # @return [Types::ListBacklogTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBacklogTasksResponse#tasks #tasks} => Array&lt;Types::Task&gt;
    #   * {Types::ListBacklogTasksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_backlog_tasks({
    #     agent_space_id: "AgentSpaceId", # required
    #     filter: {
    #       created_after: Time.now,
    #       created_before: Time.now,
    #       priority: ["CRITICAL"], # accepts CRITICAL, HIGH, MEDIUM, LOW, MINIMAL
    #       status: ["PENDING_TRIAGE"], # accepts PENDING_TRIAGE, LINKED, PENDING_START, IN_PROGRESS, PENDING_CUSTOMER_APPROVAL, COMPLETED, FAILED, TIMED_OUT, CANCELED
    #       task_type: ["INVESTIGATION"], # accepts INVESTIGATION, EVALUATION
    #       primary_task_id: "ResourceId",
    #     },
    #     limit: 1,
    #     next_token: "NextToken",
    #     sort_field: "CREATED_AT", # accepts CREATED_AT, PRIORITY
    #     order: "ASC", # accepts ASC, DESC
    #   })
    #
    # @example Response structure
    #
    #   resp.tasks #=> Array
    #   resp.tasks[0].agent_space_id #=> String
    #   resp.tasks[0].task_id #=> String
    #   resp.tasks[0].execution_id #=> String
    #   resp.tasks[0].title #=> String
    #   resp.tasks[0].description #=> String
    #   resp.tasks[0].reference.system #=> String
    #   resp.tasks[0].reference.title #=> String
    #   resp.tasks[0].reference.reference_id #=> String
    #   resp.tasks[0].reference.reference_url #=> String
    #   resp.tasks[0].reference.association_id #=> String
    #   resp.tasks[0].task_type #=> String, one of "INVESTIGATION", "EVALUATION"
    #   resp.tasks[0].priority #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "MINIMAL"
    #   resp.tasks[0].status #=> String, one of "PENDING_TRIAGE", "LINKED", "PENDING_START", "IN_PROGRESS", "PENDING_CUSTOMER_APPROVAL", "COMPLETED", "FAILED", "TIMED_OUT", "CANCELED"
    #   resp.tasks[0].created_at #=> Time
    #   resp.tasks[0].updated_at #=> Time
    #   resp.tasks[0].version #=> Integer
    #   resp.tasks[0].primary_task_id #=> String
    #   resp.tasks[0].status_reason #=> String
    #   resp.tasks[0].has_linked_tasks #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListBacklogTasks AWS API Documentation
    #
    # @overload list_backlog_tasks(params = {})
    # @param [Hash] params ({})
    def list_backlog_tasks(params = {}, options = {})
      req = build_request(:list_backlog_tasks, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of the user's recent chat executions
    #
    # @option params [required, String] :agent_space_id
    #   Unique identifier for an agent space (allows alphanumeric characters
    #   and hyphens; 1-64 characters)
    #
    # @option params [String] :user_id
    #   The user identifier to list chats for. This field is deprecated and
    #   will be ignored — the service resolves user identity from the
    #   authenticated session.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return
    #
    # @option params [String] :next_token
    #   Token for pagination
    #
    # @return [Types::ListChatsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChatsResponse#executions #executions} => Array&lt;Types::ChatExecution&gt;
    #   * {Types::ListChatsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_chats({
    #     agent_space_id: "AgentSpaceId", # required
    #     user_id: "ResourceId",
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.executions #=> Array
    #   resp.executions[0].execution_id #=> String
    #   resp.executions[0].created_at #=> Time
    #   resp.executions[0].updated_at #=> Time
    #   resp.executions[0].summary #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListChats AWS API Documentation
    #
    # @overload list_chats(params = {})
    # @param [Hash] params ({})
    def list_chats(params = {}, options = {})
      req = build_request(:list_chats, params)
      req.send_request(options)
    end

    # List executions
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier for the agent space
    #
    # @option params [required, String] :task_id
    #   The unique identifier of the task whose executions to retrieve
    #
    # @option params [Integer] :limit
    #   Maximum number of executions to return
    #
    # @option params [String] :next_token
    #   Token for pagination to retrieve the next set of results
    #
    # @return [Types::ListExecutionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListExecutionsResponse#executions #executions} => Array&lt;Types::Execution&gt;
    #   * {Types::ListExecutionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_executions({
    #     agent_space_id: "AgentSpaceId", # required
    #     task_id: "ResourceId", # required
    #     limit: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.executions #=> Array
    #   resp.executions[0].agent_space_id #=> String
    #   resp.executions[0].execution_id #=> String
    #   resp.executions[0].parent_execution_id #=> String
    #   resp.executions[0].agent_sub_task #=> String
    #   resp.executions[0].created_at #=> Time
    #   resp.executions[0].updated_at #=> Time
    #   resp.executions[0].execution_status #=> String, one of "FAILED", "RUNNING", "STOPPED", "CANCELED", "TIMED_OUT"
    #   resp.executions[0].agent_type #=> String
    #   resp.executions[0].uid #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListExecutions AWS API Documentation
    #
    # @overload list_executions(params = {})
    # @param [Hash] params ({})
    def list_executions(params = {}, options = {})
      req = build_request(:list_executions, params)
      req.send_request(options)
    end

    # Lists goals in the specified agent space with optional filtering
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier for the agent space
    #
    # @option params [String] :status
    #   Filter goals by goal status
    #
    # @option params [String] :goal_type
    #   Filter goals by goal type
    #
    # @option params [Integer] :limit
    #   Maximum number of goals to return
    #
    # @option params [String] :next_token
    #   Pagination token for the next set of results
    #
    # @return [Types::ListGoalsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGoalsResponse#goals #goals} => Array&lt;Types::Goal&gt;
    #   * {Types::ListGoalsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_goals({
    #     agent_space_id: "AgentSpaceId", # required
    #     status: "ACTIVE", # accepts ACTIVE, PAUSED, COMPLETE
    #     goal_type: "CUSTOMER_DEFINED", # accepts CUSTOMER_DEFINED, ONCALL_REPORT
    #     limit: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.goals #=> Array
    #   resp.goals[0].agent_space_arn #=> String
    #   resp.goals[0].goal_id #=> String
    #   resp.goals[0].title #=> String
    #   resp.goals[0].content.description #=> String
    #   resp.goals[0].content.objectives #=> String
    #   resp.goals[0].status #=> String, one of "ACTIVE", "PAUSED", "COMPLETE"
    #   resp.goals[0].goal_type #=> String, one of "CUSTOMER_DEFINED", "ONCALL_REPORT"
    #   resp.goals[0].created_at #=> Time
    #   resp.goals[0].updated_at #=> Time
    #   resp.goals[0].last_evaluated_at #=> Time
    #   resp.goals[0].last_task_id #=> String
    #   resp.goals[0].last_successful_task_id #=> String
    #   resp.goals[0].version #=> Integer
    #   resp.goals[0].evaluation_schedule.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.goals[0].evaluation_schedule.expression #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListGoals AWS API Documentation
    #
    # @overload list_goals(params = {})
    # @param [Hash] params ({})
    def list_goals(params = {}, options = {})
      req = build_request(:list_goals, params)
      req.send_request(options)
    end

    # List journal records for a specific execution
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier for the agent space containing the execution
    #
    # @option params [required, String] :execution_id
    #   The unique identifier of the execution whose journal records to
    #   retrieve
    #
    # @option params [Integer] :limit
    #   Maximum number of records to return in a single response (1-100,
    #   default: 100)
    #
    # @option params [String] :next_token
    #   Token for retrieving the next page of results
    #
    # @option params [String] :record_type
    #   Filter records by type (empty string returns all types)
    #
    # @option params [String] :order
    #   Sort order for the records based on timestamp (default: DESC)
    #
    # @return [Types::ListJournalRecordsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJournalRecordsResponse#records #records} => Array&lt;Types::JournalRecord&gt;
    #   * {Types::ListJournalRecordsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_journal_records({
    #     agent_space_id: "AgentSpaceId", # required
    #     execution_id: "ResourceId", # required
    #     limit: 1,
    #     next_token: "NextToken",
    #     record_type: "String",
    #     order: "ASC", # accepts ASC, DESC
    #   })
    #
    # @example Response structure
    #
    #   resp.records #=> Array
    #   resp.records[0].agent_space_id #=> String
    #   resp.records[0].execution_id #=> String
    #   resp.records[0].record_id #=> String
    #   resp.records[0].created_at #=> Time
    #   resp.records[0].record_type #=> String
    #   resp.records[0].user_reference.user_id #=> String
    #   resp.records[0].user_reference.user_type #=> String, one of "IAM", "IDC", "IDP"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListJournalRecords AWS API Documentation
    #
    # @overload list_journal_records(params = {})
    # @param [Hash] params ({})
    def list_journal_records(params = {}, options = {})
      req = build_request(:list_journal_records, params)
      req.send_request(options)
    end

    # List pending messages for a specific execution.
    #
    # @option params [required, String] :agent_space_id
    #   Unique identifier for an agent space (allows alphanumeric characters
    #   and hyphens; 1-64 characters)
    #
    # @option params [required, String] :execution_id
    #   The unique identifier of the execution whose journal records to
    #   retrieve
    #
    # @return [Types::ListPendingMessagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPendingMessagesResponse#agent_space_id #agent_space_id} => String
    #   * {Types::ListPendingMessagesResponse#execution_id #execution_id} => String
    #   * {Types::ListPendingMessagesResponse#messages #messages} => Array&lt;Types::PendingMessage&gt;
    #   * {Types::ListPendingMessagesResponse#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pending_messages({
    #     agent_space_id: "AgentSpaceId", # required
    #     execution_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_space_id #=> String
    #   resp.execution_id #=> String
    #   resp.messages #=> Array
    #   resp.messages[0].message_id #=> String
    #   resp.messages[0].message.user_message #=> Array
    #   resp.messages[0].message.user_message[0].text #=> String
    #   resp.messages[0].message.assistant_message #=> Array
    #   resp.messages[0].message.assistant_message[0].text #=> String
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListPendingMessages AWS API Documentation
    #
    # @overload list_pending_messages(params = {})
    # @param [Hash] params ({})
    def list_pending_messages(params = {}, options = {})
      req = build_request(:list_pending_messages, params)
      req.send_request(options)
    end

    # Lists all Private Connections in the caller's account.
    #
    # @return [Types::ListPrivateConnectionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPrivateConnectionsOutput#private_connections #private_connections} => Array&lt;Types::PrivateConnectionSummary&gt;
    #
    # @example Response structure
    #
    #   resp.private_connections #=> Array
    #   resp.private_connections[0].name #=> String
    #   resp.private_connections[0].type #=> String, one of "SELF_MANAGED", "SERVICE_MANAGED"
    #   resp.private_connections[0].resource_gateway_id #=> String
    #   resp.private_connections[0].host_address #=> String
    #   resp.private_connections[0].vpc_id #=> String
    #   resp.private_connections[0].resource_configuration_id #=> String
    #   resp.private_connections[0].status #=> String, one of "ACTIVE", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"
    #   resp.private_connections[0].certificate_expiry_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListPrivateConnections AWS API Documentation
    #
    # @overload list_private_connections(params = {})
    # @param [Hash] params ({})
    def list_private_connections(params = {}, options = {})
      req = build_request(:list_private_connections, params)
      req.send_request(options)
    end

    # Lists recommendations for the specified agent space
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier for the agent space containing the
    #   recommendations
    #
    # @option params [String] :task_id
    #   Optional task ID to filter recommendations by specific task
    #
    # @option params [String] :goal_id
    #   Optional goal ID to filter recommendations by specific goal
    #
    # @option params [String] :status
    #   Optional status to filter recommendations by their current status
    #
    # @option params [String] :priority
    #   Optional priority to filter recommendations by priority level
    #
    # @option params [Integer] :limit
    #   Maximum number of recommendations to return in a single response
    #
    # @option params [String] :next_token
    #   Token for retrieving the next page of results
    #
    # @return [Types::ListRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecommendationsResponse#recommendations #recommendations} => Array&lt;Types::Recommendation&gt;
    #   * {Types::ListRecommendationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recommendations({
    #     agent_space_id: "AgentSpaceId", # required
    #     task_id: "ResourceId",
    #     goal_id: "ResourceId",
    #     status: "PROPOSED", # accepts PROPOSED, ACCEPTED, REJECTED, CLOSED, COMPLETED, UPDATE_IN_PROGRESS
    #     priority: "HIGH", # accepts HIGH, MEDIUM, LOW
    #     limit: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.recommendations #=> Array
    #   resp.recommendations[0].agent_space_arn #=> String
    #   resp.recommendations[0].recommendation_id #=> String
    #   resp.recommendations[0].task_id #=> String
    #   resp.recommendations[0].goal_id #=> String
    #   resp.recommendations[0].title #=> String
    #   resp.recommendations[0].content.summary #=> String
    #   resp.recommendations[0].content.spec #=> String
    #   resp.recommendations[0].status #=> String, one of "PROPOSED", "ACCEPTED", "REJECTED", "CLOSED", "COMPLETED", "UPDATE_IN_PROGRESS"
    #   resp.recommendations[0].priority #=> String, one of "HIGH", "MEDIUM", "LOW"
    #   resp.recommendations[0].goal_version #=> Integer
    #   resp.recommendations[0].additional_context #=> String
    #   resp.recommendations[0].created_at #=> Time
    #   resp.recommendations[0].updated_at #=> Time
    #   resp.recommendations[0].version #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListRecommendations AWS API Documentation
    #
    # @overload list_recommendations(params = {})
    # @param [Hash] params ({})
    def list_recommendations(params = {}, options = {})
      req = build_request(:list_recommendations, params)
      req.send_request(options)
    end

    # List a list of registered service on the account level.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   Token for the next page of results.
    #
    # @option params [String] :filter_service_type
    #   Optional filter to list only services of a specific type.
    #
    # @return [Types::ListServicesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServicesOutput#next_token #next_token} => String
    #   * {Types::ListServicesOutput#services #services} => Array&lt;Types::RegisteredService&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_services({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filter_service_type: "github", # accepts github, slack, azure, azuredevops, dynatrace, servicenow, pagerduty, gitlab, eventChannel, mcpservernewrelic, mcpservergrafana, mcpserverdatadog, mcpserver, mcpserversplunk, azureidentity
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.services #=> Array
    #   resp.services[0].service_id #=> String
    #   resp.services[0].service_type #=> String, one of "github", "slack", "azure", "azuredevops", "dynatrace", "servicenow", "pagerduty", "gitlab", "eventChannel", "mcpservernewrelic", "mcpservergrafana", "mcpserverdatadog", "mcpserver", "mcpserversplunk", "azureidentity"
    #   resp.services[0].name #=> String
    #   resp.services[0].accessible_resources #=> Array
    #   resp.services[0].additional_service_details.github.owner #=> String
    #   resp.services[0].additional_service_details.github.owner_type #=> String, one of "organization", "user"
    #   resp.services[0].additional_service_details.github.target_url #=> String
    #   resp.services[0].additional_service_details.slack.team_id #=> String
    #   resp.services[0].additional_service_details.slack.team_name #=> String
    #   resp.services[0].additional_service_details.mcpserverdatadog.name #=> String
    #   resp.services[0].additional_service_details.mcpserverdatadog.endpoint #=> String
    #   resp.services[0].additional_service_details.mcpserverdatadog.authorization_method #=> String, one of "oauth-client-credentials", "oauth-3lo", "api-key", "bearer-token"
    #   resp.services[0].additional_service_details.mcpserverdatadog.description #=> String
    #   resp.services[0].additional_service_details.mcpserverdatadog.api_key_header #=> String
    #   resp.services[0].additional_service_details.mcpserver.name #=> String
    #   resp.services[0].additional_service_details.mcpserver.endpoint #=> String
    #   resp.services[0].additional_service_details.mcpserver.authorization_method #=> String, one of "oauth-client-credentials", "oauth-3lo", "api-key", "bearer-token"
    #   resp.services[0].additional_service_details.mcpserver.description #=> String
    #   resp.services[0].additional_service_details.mcpserver.api_key_header #=> String
    #   resp.services[0].additional_service_details.servicenow.instance_url #=> String
    #   resp.services[0].additional_service_details.gitlab.target_url #=> String
    #   resp.services[0].additional_service_details.gitlab.token_type #=> String, one of "personal", "group"
    #   resp.services[0].additional_service_details.gitlab.group_id #=> String
    #   resp.services[0].additional_service_details.mcpserversplunk.name #=> String
    #   resp.services[0].additional_service_details.mcpserversplunk.endpoint #=> String
    #   resp.services[0].additional_service_details.mcpserversplunk.authorization_method #=> String, one of "oauth-client-credentials", "oauth-3lo", "api-key", "bearer-token"
    #   resp.services[0].additional_service_details.mcpserversplunk.description #=> String
    #   resp.services[0].additional_service_details.mcpserversplunk.api_key_header #=> String
    #   resp.services[0].additional_service_details.mcpservernewrelic.account_id #=> String
    #   resp.services[0].additional_service_details.mcpservernewrelic.region #=> String, one of "US", "EU"
    #   resp.services[0].additional_service_details.mcpservernewrelic.description #=> String
    #   resp.services[0].additional_service_details.azuredevops.organization_name #=> String
    #   resp.services[0].additional_service_details.azureidentity.tenant_id #=> String
    #   resp.services[0].additional_service_details.azureidentity.client_id #=> String
    #   resp.services[0].additional_service_details.azureidentity.web_identity_role_arn #=> String
    #   resp.services[0].additional_service_details.azureidentity.web_identity_token_audiences #=> Array
    #   resp.services[0].additional_service_details.azureidentity.web_identity_token_audiences[0] #=> String
    #   resp.services[0].additional_service_details.mcpservergrafana.endpoint #=> String
    #   resp.services[0].additional_service_details.mcpservergrafana.authorization_method #=> String, one of "oauth-client-credentials", "oauth-3lo", "api-key", "bearer-token"
    #   resp.services[0].additional_service_details.pagerduty.scopes #=> Array
    #   resp.services[0].additional_service_details.pagerduty.scopes[0] #=> String
    #   resp.services[0].kms_key_arn #=> String
    #   resp.services[0].private_connection_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListServices AWS API Documentation
    #
    # @overload list_services(params = {})
    # @param [Hash] params ({})
    def list_services(params = {}, options = {})
      req = build_request(:list_services, params)
      req.send_request(options)
    end

    # Lists tags for the specified AWS DevOps Agent resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ListTagsForResourceRequestResourceArnString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # List all webhooks for given Association
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the AgentSpace
    #
    # @option params [required, String] :association_id
    #   The unique identifier of the given association.
    #
    # @return [Types::ListWebhooksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWebhooksOutput#webhooks #webhooks} => Array&lt;Types::Webhook&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_webhooks({
    #     agent_space_id: "AgentSpaceId", # required
    #     association_id: "AssociationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.webhooks #=> Array
    #   resp.webhooks[0].webhook_url #=> String
    #   resp.webhooks[0].webhook_type #=> String, one of "hmac", "apikey", "gitlab", "pagerduty"
    #   resp.webhooks[0].webhook_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListWebhooks AWS API Documentation
    #
    # @overload list_webhooks(params = {})
    # @param [Hash] params ({})
    def list_webhooks(params = {}, options = {})
      req = build_request(:list_webhooks, params)
      req.send_request(options)
    end

    # This operation registers the specified service
    #
    # @option params [required, String] :service
    #   Services that can be registered via the post-registration API
    #   (excludes OAuth 3LO services).
    #
    # @option params [required, Types::ServiceDetails] :service_details
    #   Service-specific authorization configuration parameters
    #
    # @option params [String] :kms_key_arn
    #   The ARN of the AWS Key Management Service (AWS KMS) customer managed
    #   key that's used to encrypt resources.
    #
    # @option params [String] :private_connection_name
    #   The name of the private connection to use for VPC connectivity.
    #
    # @option params [String] :name
    #   The display name for the service registration.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags to add to the Service at registration time.
    #
    # @return [Types::RegisterServiceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterServiceOutput#service_id #service_id} => String
    #   * {Types::RegisterServiceOutput#additional_step #additional_step} => Types::AdditionalServiceRegistrationStep
    #   * {Types::RegisterServiceOutput#kms_key_arn #kms_key_arn} => String
    #   * {Types::RegisterServiceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_service({
    #     service: "dynatrace", # required, accepts dynatrace, servicenow, pagerduty, gitlab, eventChannel, mcpservernewrelic, mcpservergrafana, mcpserverdatadog, mcpserver, mcpserversplunk, azureidentity
    #     service_details: { # required
    #       dynatrace: {
    #         account_urn: "DynatraceServiceDetailsAccountUrnString", # required
    #         authorization_config: {
    #           o_auth_client_credentials: {
    #             client_name: "DynatraceOAuthClientCredentialsConfigClientNameString",
    #             client_id: "ClientId", # required
    #             exchange_parameters: {
    #               "String" => "ExchangeParameterValue",
    #             },
    #             client_secret: "ClientSecret", # required
    #           },
    #         },
    #       },
    #       servicenow: {
    #         instance_url: "ServiceNowInstanceUrl", # required
    #         authorization_config: {
    #           o_auth_client_credentials: {
    #             client_name: "ServiceNowOAuthClientCredentialsConfigClientNameString",
    #             client_id: "ClientId", # required
    #             exchange_parameters: {
    #               "String" => "ExchangeParameterValue",
    #             },
    #             client_secret: "ClientSecret", # required
    #           },
    #         },
    #       },
    #       mcpserverdatadog: {
    #         name: "DatadogServiceDetailsNameString", # required
    #         endpoint: "DatadogServiceDetailsEndpointString", # required
    #         description: "DatadogServiceDetailsDescriptionString",
    #         authorization_config: { # required
    #           authorization_discovery: {
    #             return_to_endpoint: "MCPServerAuthorizationDiscoveryConfigReturnToEndpointString", # required
    #           },
    #         },
    #       },
    #       mcpserver: {
    #         name: "MCPServerDetailsNameString", # required
    #         endpoint: "MCPServerDetailsEndpointString", # required
    #         description: "MCPServerDetailsDescriptionString",
    #         authorization_config: { # required
    #           o_auth_client_credentials: {
    #             client_name: "MCPServerOAuthClientCredentialsConfigClientNameString",
    #             client_id: "ClientId", # required
    #             exchange_parameters: {
    #               "String" => "ExchangeParameterValue",
    #             },
    #             client_secret: "ClientSecret", # required
    #             exchange_url: "MCPServerOAuthClientCredentialsConfigExchangeUrlString", # required
    #             scopes: ["String"],
    #           },
    #           o_auth_3_lo: {
    #             client_name: "MCPServerOAuth3LOConfigClientNameString",
    #             client_id: "ClientId", # required
    #             exchange_parameters: {
    #               "String" => "ExchangeParameterValue",
    #             },
    #             return_to_endpoint: "MCPServerOAuth3LOConfigReturnToEndpointString", # required
    #             authorization_url: "MCPServerOAuth3LOConfigAuthorizationUrlString", # required
    #             exchange_url: "MCPServerOAuth3LOConfigExchangeUrlString", # required
    #             client_secret: "ClientSecret",
    #             support_code_challenge: false,
    #             scopes: ["String"],
    #           },
    #           api_key: {
    #             api_key_name: "MCPServerAPIKeyConfigApiKeyNameString", # required
    #             api_key_value: "MCPServerAPIKeyConfigApiKeyValueString", # required
    #             api_key_header: "MCPServerAPIKeyConfigApiKeyHeaderString", # required
    #           },
    #           bearer_token: {
    #             token_name: "MCPServerBearerTokenConfigTokenNameString", # required
    #             token_value: "MCPServerBearerTokenConfigTokenValueString", # required
    #             authorization_header: "MCPServerBearerTokenConfigAuthorizationHeaderString",
    #           },
    #           authorization_discovery: {
    #             return_to_endpoint: "MCPServerAuthorizationDiscoveryConfigReturnToEndpointString", # required
    #           },
    #         },
    #       },
    #       gitlab: {
    #         target_url: "GitLabDetailsTargetUrlString", # required
    #         token_type: "personal", # required, accepts personal, group
    #         token_value: "GitLabDetailsTokenValueString", # required
    #         group_id: "String",
    #       },
    #       mcpserversplunk: {
    #         name: "MCPServerDetailsNameString", # required
    #         endpoint: "MCPServerDetailsEndpointString", # required
    #         description: "MCPServerDetailsDescriptionString",
    #         authorization_config: { # required
    #           o_auth_client_credentials: {
    #             client_name: "MCPServerOAuthClientCredentialsConfigClientNameString",
    #             client_id: "ClientId", # required
    #             exchange_parameters: {
    #               "String" => "ExchangeParameterValue",
    #             },
    #             client_secret: "ClientSecret", # required
    #             exchange_url: "MCPServerOAuthClientCredentialsConfigExchangeUrlString", # required
    #             scopes: ["String"],
    #           },
    #           o_auth_3_lo: {
    #             client_name: "MCPServerOAuth3LOConfigClientNameString",
    #             client_id: "ClientId", # required
    #             exchange_parameters: {
    #               "String" => "ExchangeParameterValue",
    #             },
    #             return_to_endpoint: "MCPServerOAuth3LOConfigReturnToEndpointString", # required
    #             authorization_url: "MCPServerOAuth3LOConfigAuthorizationUrlString", # required
    #             exchange_url: "MCPServerOAuth3LOConfigExchangeUrlString", # required
    #             client_secret: "ClientSecret",
    #             support_code_challenge: false,
    #             scopes: ["String"],
    #           },
    #           api_key: {
    #             api_key_name: "MCPServerAPIKeyConfigApiKeyNameString", # required
    #             api_key_value: "MCPServerAPIKeyConfigApiKeyValueString", # required
    #             api_key_header: "MCPServerAPIKeyConfigApiKeyHeaderString", # required
    #           },
    #           bearer_token: {
    #             token_name: "MCPServerBearerTokenConfigTokenNameString", # required
    #             token_value: "MCPServerBearerTokenConfigTokenValueString", # required
    #             authorization_header: "MCPServerBearerTokenConfigAuthorizationHeaderString",
    #           },
    #           authorization_discovery: {
    #             return_to_endpoint: "MCPServerAuthorizationDiscoveryConfigReturnToEndpointString", # required
    #           },
    #         },
    #       },
    #       mcpservernewrelic: {
    #         authorization_config: { # required
    #           api_key: {
    #             api_key: "NewRelicApiKeyConfigApiKeyString", # required
    #             account_id: "NewRelicApiKeyConfigAccountIdString", # required
    #             region: "US", # required, accepts US, EU
    #             application_ids: ["NewRelicApplicationIdsMemberString"],
    #             entity_guids: ["NewRelicEntityGuidsMemberString"],
    #             alert_policy_ids: ["NewRelicAlertPolicyIdsMemberString"],
    #           },
    #         },
    #       },
    #       event_channel: {
    #         type: "webhook", # accepts webhook
    #       },
    #       mcpservergrafana: {
    #         name: "GrafanaServiceDetailsNameString", # required
    #         endpoint: "GrafanaServiceDetailsEndpointString", # required
    #         description: "GrafanaServiceDetailsDescriptionString",
    #         authorization_config: { # required
    #           o_auth_client_credentials: {
    #             client_name: "MCPServerOAuthClientCredentialsConfigClientNameString",
    #             client_id: "ClientId", # required
    #             exchange_parameters: {
    #               "String" => "ExchangeParameterValue",
    #             },
    #             client_secret: "ClientSecret", # required
    #             exchange_url: "MCPServerOAuthClientCredentialsConfigExchangeUrlString", # required
    #             scopes: ["String"],
    #           },
    #           o_auth_3_lo: {
    #             client_name: "MCPServerOAuth3LOConfigClientNameString",
    #             client_id: "ClientId", # required
    #             exchange_parameters: {
    #               "String" => "ExchangeParameterValue",
    #             },
    #             return_to_endpoint: "MCPServerOAuth3LOConfigReturnToEndpointString", # required
    #             authorization_url: "MCPServerOAuth3LOConfigAuthorizationUrlString", # required
    #             exchange_url: "MCPServerOAuth3LOConfigExchangeUrlString", # required
    #             client_secret: "ClientSecret",
    #             support_code_challenge: false,
    #             scopes: ["String"],
    #           },
    #           api_key: {
    #             api_key_name: "MCPServerAPIKeyConfigApiKeyNameString", # required
    #             api_key_value: "MCPServerAPIKeyConfigApiKeyValueString", # required
    #             api_key_header: "MCPServerAPIKeyConfigApiKeyHeaderString", # required
    #           },
    #           bearer_token: {
    #             token_name: "MCPServerBearerTokenConfigTokenNameString", # required
    #             token_value: "MCPServerBearerTokenConfigTokenValueString", # required
    #             authorization_header: "MCPServerBearerTokenConfigAuthorizationHeaderString",
    #           },
    #           authorization_discovery: {
    #             return_to_endpoint: "MCPServerAuthorizationDiscoveryConfigReturnToEndpointString", # required
    #           },
    #         },
    #       },
    #       pagerduty: {
    #         scopes: ["String"], # required
    #         authorization_config: { # required
    #           o_auth_client_credentials: {
    #             client_name: "PagerDutyOAuthClientCredentialsConfigClientNameString",
    #             client_id: "ClientId", # required
    #             exchange_parameters: {
    #               "String" => "ExchangeParameterValue",
    #             },
    #             client_secret: "ClientSecret", # required
    #           },
    #         },
    #       },
    #       azureidentity: {
    #         tenant_id: "Guid", # required
    #         client_id: "Guid", # required
    #         web_identity_role_arn: "RoleArn", # required
    #         web_identity_token_audiences: ["String"], # required
    #       },
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #     private_connection_name: "PrivateConnectionName",
    #     name: "ServiceName",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.service_id #=> String
    #   resp.additional_step.oauth.authorization_url #=> String
    #   resp.kms_key_arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/RegisterService AWS API Documentation
    #
    # @overload register_service(params = {})
    # @param [Hash] params ({})
    def register_service(params = {}, options = {})
      req = build_request(:register_service, params)
      req.send_request(options)
    end

    # Sends a chat message and streams the response for the specified agent
    # space execution
    #
    # @option params [required, String] :agent_space_id
    #   The agent space identifier
    #
    # @option params [required, String] :execution_id
    #   The execution identifier for the chat session
    #
    # @option params [required, String] :content
    #   The user message content
    #
    # @option params [Types::SendMessageContext] :context
    #   Optional context for the message
    #
    # @option params [String] :user_id
    #   User identifier. This field is deprecated and will be ignored — the
    #   service resolves user identity from the authenticated session.
    #
    # @return [Types::SendMessageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendMessageResponse#events #events} => Types::SendMessageEvents
    #
    # @example EventStream Operation Example
    #
    #   # You can process the event once it arrives immediately, or wait until the
    #   # full response is complete and iterate through the eventstream enumerator.
    #
    #   # To interact with event immediately, you need to register send_message
    #   # with callbacks. Callbacks can be registered for specific events or for all
    #   # events, including error events.
    #
    #   # Callbacks can be passed into the `:event_stream_handler` option or within a
    #   # block statement attached to the #send_message call directly. Hybrid
    #   # pattern of both is also supported.
    #
    #   # `:event_stream_handler` option takes in either a Proc object or
    #   # Aws::DevOpsAgent::EventStreams::SendMessageEvents object.
    #
    #   # Usage pattern a): Callbacks with a block attached to #send_message
    #   # Example for registering callbacks for all event types and an error event
    #   client.send_message(
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
    #   # Usage pattern b): Pass in `:event_stream_handler` for #send_message
    #   #  1) Create a Aws::DevOpsAgent::EventStreams::SendMessageEvents object
    #   #  Example for registering callbacks with specific events
    #
    #   handler = Aws::DevOpsAgent::EventStreams::SendMessageEvents.new
    #   handler.on_response_created_event do |event|
    #     event # => Aws::DevOpsAgent::Types::responseCreated
    #   end
    #   handler.on_response_in_progress_event do |event|
    #     event # => Aws::DevOpsAgent::Types::responseInProgress
    #   end
    #   handler.on_response_completed_event do |event|
    #     event # => Aws::DevOpsAgent::Types::responseCompleted
    #   end
    #   handler.on_response_failed_event do |event|
    #     event # => Aws::DevOpsAgent::Types::responseFailed
    #   end
    #   handler.on_summary_event do |event|
    #     event # => Aws::DevOpsAgent::Types::summary
    #   end
    #   handler.on_heartbeat_event do |event|
    #     event # => Aws::DevOpsAgent::Types::heartbeat
    #   end
    #   handler.on_content_block_start_event do |event|
    #     event # => Aws::DevOpsAgent::Types::contentBlockStart
    #   end
    #   handler.on_content_block_delta_event do |event|
    #     event # => Aws::DevOpsAgent::Types::contentBlockDelta
    #   end
    #   handler.on_content_block_stop_event do |event|
    #     event # => Aws::DevOpsAgent::Types::contentBlockStop
    #   end
    #
    #   client.send_message(
    #     # params inputs
    #     event_stream_handler: handler
    #   )
    #
    #   #  2) Use a Ruby Proc object
    #   #  Example for registering callbacks with specific events
    #   handler = Proc.new do |stream|
    #     stream.on_response_created_event do |event|
    #       event # => Aws::DevOpsAgent::Types::responseCreated
    #     end
    #     stream.on_response_in_progress_event do |event|
    #       event # => Aws::DevOpsAgent::Types::responseInProgress
    #     end
    #     stream.on_response_completed_event do |event|
    #       event # => Aws::DevOpsAgent::Types::responseCompleted
    #     end
    #     stream.on_response_failed_event do |event|
    #       event # => Aws::DevOpsAgent::Types::responseFailed
    #     end
    #     stream.on_summary_event do |event|
    #       event # => Aws::DevOpsAgent::Types::summary
    #     end
    #     stream.on_heartbeat_event do |event|
    #       event # => Aws::DevOpsAgent::Types::heartbeat
    #     end
    #     stream.on_content_block_start_event do |event|
    #       event # => Aws::DevOpsAgent::Types::contentBlockStart
    #     end
    #     stream.on_content_block_delta_event do |event|
    #       event # => Aws::DevOpsAgent::Types::contentBlockDelta
    #     end
    #     stream.on_content_block_stop_event do |event|
    #       event # => Aws::DevOpsAgent::Types::contentBlockStop
    #     end
    #   end
    #
    #   client.send_message(
    #     # params inputs
    #     event_stream_handler: handler
    #   )
    #
    #   #  Usage pattern c): Hybrid pattern of a) and b)
    #   handler = Aws::DevOpsAgent::EventStreams::SendMessageEvents.new
    #   handler.on_response_created_event do |event|
    #     event # => Aws::DevOpsAgent::Types::responseCreated
    #   end
    #   handler.on_response_in_progress_event do |event|
    #     event # => Aws::DevOpsAgent::Types::responseInProgress
    #   end
    #   handler.on_response_completed_event do |event|
    #     event # => Aws::DevOpsAgent::Types::responseCompleted
    #   end
    #   handler.on_response_failed_event do |event|
    #     event # => Aws::DevOpsAgent::Types::responseFailed
    #   end
    #   handler.on_summary_event do |event|
    #     event # => Aws::DevOpsAgent::Types::summary
    #   end
    #   handler.on_heartbeat_event do |event|
    #     event # => Aws::DevOpsAgent::Types::heartbeat
    #   end
    #   handler.on_content_block_start_event do |event|
    #     event # => Aws::DevOpsAgent::Types::contentBlockStart
    #   end
    #   handler.on_content_block_delta_event do |event|
    #     event # => Aws::DevOpsAgent::Types::contentBlockDelta
    #   end
    #   handler.on_content_block_stop_event do |event|
    #     event # => Aws::DevOpsAgent::Types::contentBlockStop
    #   end
    #
    #   client.send_message(
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
    #   resp.events # => Enumerator
    #   # For parameter input example, please refer to following request syntax.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_message({
    #     agent_space_id: "AgentSpaceId", # required
    #     execution_id: "ResourceId", # required
    #     content: "MessageContent", # required
    #     context: {
    #       current_page: "String",
    #       last_message: "String",
    #       user_action_response: "String",
    #     },
    #     user_id: "ResourceId",
    #   })
    #
    # @example Response structure
    #
    #   # All events are available at resp.events:
    #   resp.events #=> Enumerator
    #   resp.events.event_types #=> [:response_created, :response_in_progress, :response_completed, :response_failed, :summary, :heartbeat, :content_block_start, :content_block_delta, :content_block_stop]
    #
    #   # For :response_created event available at #on_response_created_event callback and response eventstream enumerator:
    #   event.response_id #=> String
    #   event.sequence_number #=> Integer
    #
    #   # For :response_in_progress event available at #on_response_in_progress_event callback and response eventstream enumerator:
    #   event.response_id #=> String
    #   event.sequence_number #=> Integer
    #
    #   # For :response_completed event available at #on_response_completed_event callback and response eventstream enumerator:
    #   event.response_id #=> String
    #   event.usage.input_tokens #=> Integer
    #   event.usage.output_tokens #=> Integer
    #   event.usage.total_tokens #=> Integer
    #   event.sequence_number #=> Integer
    #
    #   # For :response_failed event available at #on_response_failed_event callback and response eventstream enumerator:
    #   event.response_id #=> String
    #   event.error_code #=> String
    #   event.error_message #=> String
    #   event.sequence_number #=> Integer
    #
    #   # For :summary event available at #on_summary_event callback and response eventstream enumerator:
    #   event.content #=> String
    #   event.sequence_number #=> Integer
    #
    #   # For :heartbeat event available at #on_heartbeat_event callback and response eventstream enumerator:
    #    #=> EmptyStruct
    #   # For :content_block_start event available at #on_content_block_start_event callback and response eventstream enumerator:
    #   event.index #=> Integer
    #   event.type #=> String
    #   event.id #=> String
    #   event.parent_id #=> String
    #   event.sequence_number #=> Integer
    #
    #   # For :content_block_delta event available at #on_content_block_delta_event callback and response eventstream enumerator:
    #   event.index #=> Integer
    #   event.delta.text_delta.text #=> String
    #   event.delta.json_delta.partial_json #=> String
    #   event.sequence_number #=> Integer
    #
    #   # For :content_block_stop event available at #on_content_block_stop_event callback and response eventstream enumerator:
    #   event.index #=> Integer
    #   event.type #=> String
    #   event.text #=> String
    #   event.last #=> Boolean
    #   event.sequence_number #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/SendMessage AWS API Documentation
    #
    # @overload send_message(params = {})
    # @param [Hash] params ({})
    def send_message(params = {}, options = {}, &block)
      params = params.dup
      event_stream_handler = case handler = params.delete(:event_stream_handler)
        when EventStreams::SendMessageEvents then handler
        when Proc then EventStreams::SendMessageEvents.new.tap(&handler)
        when nil then EventStreams::SendMessageEvents.new
        else
          msg = "expected :event_stream_handler to be a block or "\
                "instance of Aws::DevOpsAgent::EventStreams::SendMessageEvents"\
                ", got `#{handler.inspect}` instead"
          raise ArgumentError, msg
        end

      yield(event_stream_handler) if block_given?

      req = build_request(:send_message, params)

      req.context[:event_stream_handler] = event_stream_handler
      req.handlers.add(Aws::Binary::DecodeHandler, priority: 95)

      req.send_request(options, &block)
    end

    # Adds or overwrites tags for the specified AWS DevOps Agent resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to tag.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Tags to add to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "TagResourceRequestResourceArnString", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from the specified AWS DevOps Agent resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to untag.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Tag keys to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "UntagResourceRequestResourceArnString", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the information of an existing AgentSpace.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the AgentSpace
    #
    # @option params [String] :name
    #   The updated name of the AgentSpace.
    #
    # @option params [String] :description
    #   The updated description of the AgentSpace.
    #
    # @option params [String] :locale
    #   The updated locale for the AgentSpace, which determines the language
    #   used in agent responses.
    #
    # @return [Types::UpdateAgentSpaceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAgentSpaceOutput#agent_space #agent_space} => Types::AgentSpace
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_agent_space({
    #     agent_space_id: "AgentSpaceId", # required
    #     name: "AgentSpaceName",
    #     description: "Description",
    #     locale: "Locale",
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_space.name #=> String
    #   resp.agent_space.description #=> String
    #   resp.agent_space.locale #=> String
    #   resp.agent_space.created_at #=> Time
    #   resp.agent_space.updated_at #=> Time
    #   resp.agent_space.kms_key_arn #=> String
    #   resp.agent_space.agent_space_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UpdateAgentSpace AWS API Documentation
    #
    # @overload update_agent_space(params = {})
    # @param [Hash] params ({})
    def update_agent_space(params = {}, options = {})
      req = build_request(:update_agent_space, params)
      req.send_request(options)
    end

    # Partially updates the configuration of an existing service association
    # for an AgentSpace. Present fields are fully replaced; absent fields
    # are left unchanged. Returns 200 OK on success.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the AgentSpace
    #
    # @option params [required, String] :association_id
    #   The unique identifier of the given association.
    #
    # @option params [required, Types::ServiceConfiguration] :configuration
    #   The configuration that directs how AgentSpace interacts with the given
    #   service. The entire configuration is replaced on update.
    #
    # @return [Types::UpdateAssociationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAssociationOutput#association #association} => Types::Association
    #   * {Types::UpdateAssociationOutput#webhook #webhook} => Types::GenericWebhook
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_association({
    #     agent_space_id: "AgentSpaceId", # required
    #     association_id: "AssociationId", # required
    #     configuration: { # required
    #       source_aws: {
    #         account_id: "SourceAwsConfigurationAccountIdString", # required
    #         account_type: "source", # required, accepts source
    #         assumable_role_arn: "RoleArn", # required
    #         external_id: "String",
    #       },
    #       aws: {
    #         assumable_role_arn: "RoleArn", # required
    #         account_id: "AWSConfigurationAccountIdString", # required
    #         account_type: "monitor", # required, accepts monitor
    #       },
    #       github: {
    #         repo_name: "String", # required
    #         repo_id: "String", # required
    #         owner: "String", # required
    #         owner_type: "organization", # required, accepts organization, user
    #         instance_identifier: "String",
    #       },
    #       slack: {
    #         workspace_id: "SlackConfigurationWorkspaceIdString", # required
    #         workspace_name: "String", # required
    #         transmission_target: { # required
    #           ops_oncall_target: { # required
    #             channel_name: "String",
    #             channel_id: "SlackChannelChannelIdString", # required
    #           },
    #           ops_sre_target: {
    #             channel_name: "String",
    #             channel_id: "SlackChannelChannelIdString", # required
    #           },
    #         },
    #       },
    #       dynatrace: {
    #         env_id: "String", # required
    #         resources: ["String"],
    #       },
    #       servicenow: {
    #         instance_id: "String",
    #         auth_scopes: ["String"],
    #       },
    #       mcpservernewrelic: {
    #         account_id: "MCPServerNewRelicConfigurationAccountIdString", # required
    #         endpoint: "MCPServerNewRelicConfigurationEndpointString", # required
    #       },
    #       mcpserverdatadog: {
    #       },
    #       mcpserver: {
    #         tools: ["MCPToolsListMemberString"], # required
    #       },
    #       gitlab: {
    #         project_id: "String", # required
    #         project_path: "String", # required
    #         instance_identifier: "String",
    #       },
    #       mcpserversplunk: {
    #       },
    #       event_channel: {
    #       },
    #       azure: {
    #         subscription_id: "String", # required
    #       },
    #       azuredevops: {
    #         organization_name: "String", # required
    #         project_id: "String", # required
    #         project_name: "String", # required
    #       },
    #       mcpservergrafana: {
    #         endpoint: "MCPServerGrafanaConfigurationEndpointString", # required
    #         organization_id: "MCPServerGrafanaConfigurationOrganizationIdString",
    #         tools: ["MCPToolsListMemberString"],
    #       },
    #       pagerduty: {
    #         services: ["String"], # required
    #         customer_email: "EmailAddress", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.association.agent_space_id #=> String
    #   resp.association.created_at #=> Time
    #   resp.association.updated_at #=> Time
    #   resp.association.status #=> String, one of "valid", "invalid", "pending-confirmation"
    #   resp.association.association_id #=> String
    #   resp.association.service_id #=> String
    #   resp.association.configuration.source_aws.account_id #=> String
    #   resp.association.configuration.source_aws.account_type #=> String, one of "source"
    #   resp.association.configuration.source_aws.assumable_role_arn #=> String
    #   resp.association.configuration.source_aws.external_id #=> String
    #   resp.association.configuration.aws.assumable_role_arn #=> String
    #   resp.association.configuration.aws.account_id #=> String
    #   resp.association.configuration.aws.account_type #=> String, one of "monitor"
    #   resp.association.configuration.github.repo_name #=> String
    #   resp.association.configuration.github.repo_id #=> String
    #   resp.association.configuration.github.owner #=> String
    #   resp.association.configuration.github.owner_type #=> String, one of "organization", "user"
    #   resp.association.configuration.github.instance_identifier #=> String
    #   resp.association.configuration.slack.workspace_id #=> String
    #   resp.association.configuration.slack.workspace_name #=> String
    #   resp.association.configuration.slack.transmission_target.ops_oncall_target.channel_name #=> String
    #   resp.association.configuration.slack.transmission_target.ops_oncall_target.channel_id #=> String
    #   resp.association.configuration.slack.transmission_target.ops_sre_target.channel_name #=> String
    #   resp.association.configuration.slack.transmission_target.ops_sre_target.channel_id #=> String
    #   resp.association.configuration.dynatrace.env_id #=> String
    #   resp.association.configuration.dynatrace.resources #=> Array
    #   resp.association.configuration.dynatrace.resources[0] #=> String
    #   resp.association.configuration.servicenow.instance_id #=> String
    #   resp.association.configuration.servicenow.auth_scopes #=> Array
    #   resp.association.configuration.servicenow.auth_scopes[0] #=> String
    #   resp.association.configuration.mcpservernewrelic.account_id #=> String
    #   resp.association.configuration.mcpservernewrelic.endpoint #=> String
    #   resp.association.configuration.mcpserver.tools #=> Array
    #   resp.association.configuration.mcpserver.tools[0] #=> String
    #   resp.association.configuration.gitlab.project_id #=> String
    #   resp.association.configuration.gitlab.project_path #=> String
    #   resp.association.configuration.gitlab.instance_identifier #=> String
    #   resp.association.configuration.azure.subscription_id #=> String
    #   resp.association.configuration.azuredevops.organization_name #=> String
    #   resp.association.configuration.azuredevops.project_id #=> String
    #   resp.association.configuration.azuredevops.project_name #=> String
    #   resp.association.configuration.mcpservergrafana.endpoint #=> String
    #   resp.association.configuration.mcpservergrafana.organization_id #=> String
    #   resp.association.configuration.mcpservergrafana.tools #=> Array
    #   resp.association.configuration.mcpservergrafana.tools[0] #=> String
    #   resp.association.configuration.pagerduty.services #=> Array
    #   resp.association.configuration.pagerduty.services[0] #=> String
    #   resp.association.configuration.pagerduty.customer_email #=> String
    #   resp.webhook.webhook_url #=> String
    #   resp.webhook.webhook_id #=> String
    #   resp.webhook.webhook_type #=> String, one of "hmac", "apikey", "gitlab", "pagerduty"
    #   resp.webhook.webhook_secret #=> String
    #   resp.webhook.api_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UpdateAssociation AWS API Documentation
    #
    # @overload update_association(params = {})
    # @param [Hash] params ({})
    def update_association(params = {}, options = {})
      req = build_request(:update_association, params)
      req.send_request(options)
    end

    # Update an existing backlog task.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier for the agent space containing the task
    #
    # @option params [required, String] :task_id
    #   The unique identifier of the task to update
    #
    # @option params [String] :task_status
    #   Updated task status
    #
    # @option params [String] :client_token
    #   Client-provided token for idempotent operations
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateBacklogTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBacklogTaskResponse#task #task} => Types::Task
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_backlog_task({
    #     agent_space_id: "AgentSpaceId", # required
    #     task_id: "ResourceId", # required
    #     task_status: "PENDING_TRIAGE", # accepts PENDING_TRIAGE, LINKED, PENDING_START, IN_PROGRESS, PENDING_CUSTOMER_APPROVAL, COMPLETED, FAILED, TIMED_OUT, CANCELED
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.task.agent_space_id #=> String
    #   resp.task.task_id #=> String
    #   resp.task.execution_id #=> String
    #   resp.task.title #=> String
    #   resp.task.description #=> String
    #   resp.task.reference.system #=> String
    #   resp.task.reference.title #=> String
    #   resp.task.reference.reference_id #=> String
    #   resp.task.reference.reference_url #=> String
    #   resp.task.reference.association_id #=> String
    #   resp.task.task_type #=> String, one of "INVESTIGATION", "EVALUATION"
    #   resp.task.priority #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "MINIMAL"
    #   resp.task.status #=> String, one of "PENDING_TRIAGE", "LINKED", "PENDING_START", "IN_PROGRESS", "PENDING_CUSTOMER_APPROVAL", "COMPLETED", "FAILED", "TIMED_OUT", "CANCELED"
    #   resp.task.created_at #=> Time
    #   resp.task.updated_at #=> Time
    #   resp.task.version #=> Integer
    #   resp.task.primary_task_id #=> String
    #   resp.task.status_reason #=> String
    #   resp.task.has_linked_tasks #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UpdateBacklogTask AWS API Documentation
    #
    # @overload update_backlog_task(params = {})
    # @param [Hash] params ({})
    def update_backlog_task(params = {}, options = {})
      req = build_request(:update_backlog_task, params)
      req.send_request(options)
    end

    # Update an existing goal
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier for the agent space containing the goal
    #
    # @option params [required, String] :goal_id
    #   The unique identifier of the goal to update
    #
    # @option params [Types::GoalScheduleInput] :evaluation_schedule
    #   Update goal schedule state
    #
    # @option params [String] :client_token
    #   Client-provided token for idempotent operations
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateGoalResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGoalResponse#goal #goal} => Types::Goal
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_goal({
    #     agent_space_id: "AgentSpaceId", # required
    #     goal_id: "String", # required
    #     evaluation_schedule: {
    #       state: "ENABLED", # required, accepts ENABLED, DISABLED
    #     },
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.goal.agent_space_arn #=> String
    #   resp.goal.goal_id #=> String
    #   resp.goal.title #=> String
    #   resp.goal.content.description #=> String
    #   resp.goal.content.objectives #=> String
    #   resp.goal.status #=> String, one of "ACTIVE", "PAUSED", "COMPLETE"
    #   resp.goal.goal_type #=> String, one of "CUSTOMER_DEFINED", "ONCALL_REPORT"
    #   resp.goal.created_at #=> Time
    #   resp.goal.updated_at #=> Time
    #   resp.goal.last_evaluated_at #=> Time
    #   resp.goal.last_task_id #=> String
    #   resp.goal.last_successful_task_id #=> String
    #   resp.goal.version #=> Integer
    #   resp.goal.evaluation_schedule.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.goal.evaluation_schedule.expression #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UpdateGoal AWS API Documentation
    #
    # @overload update_goal(params = {})
    # @param [Hash] params ({})
    def update_goal(params = {}, options = {})
      req = build_request(:update_goal, params)
      req.send_request(options)
    end

    # Update the external Identity Provider configuration for the Operator
    # App
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the AgentSpace
    #
    # @option params [String] :idp_client_secret
    #   The OIDC client secret for the IdP application
    #
    # @return [Types::UpdateOperatorAppIdpConfigOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateOperatorAppIdpConfigOutput#agent_space_id #agent_space_id} => String
    #   * {Types::UpdateOperatorAppIdpConfigOutput#idp #idp} => Types::IdpAuthConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_operator_app_idp_config({
    #     agent_space_id: "AgentSpaceId", # required
    #     idp_client_secret: "IdpClientSecret",
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_space_id #=> String
    #   resp.idp.issuer_url #=> String
    #   resp.idp.client_id #=> String
    #   resp.idp.operator_app_role_arn #=> String
    #   resp.idp.provider #=> String
    #   resp.idp.created_at #=> Time
    #   resp.idp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UpdateOperatorAppIdpConfig AWS API Documentation
    #
    # @overload update_operator_app_idp_config(params = {})
    # @param [Hash] params ({})
    def update_operator_app_idp_config(params = {}, options = {})
      req = build_request(:update_operator_app_idp_config, params)
      req.send_request(options)
    end

    # Updates the certificate associated with a Private Connection.
    #
    # @option params [required, String] :name
    #   The name of the Private Connection.
    #
    # @option params [required, String] :certificate
    #   The new certificate for the Private Connection.
    #
    # @return [Types::UpdatePrivateConnectionCertificateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePrivateConnectionCertificateOutput#name #name} => String
    #   * {Types::UpdatePrivateConnectionCertificateOutput#type #type} => String
    #   * {Types::UpdatePrivateConnectionCertificateOutput#resource_gateway_id #resource_gateway_id} => String
    #   * {Types::UpdatePrivateConnectionCertificateOutput#host_address #host_address} => String
    #   * {Types::UpdatePrivateConnectionCertificateOutput#vpc_id #vpc_id} => String
    #   * {Types::UpdatePrivateConnectionCertificateOutput#resource_configuration_id #resource_configuration_id} => String
    #   * {Types::UpdatePrivateConnectionCertificateOutput#status #status} => String
    #   * {Types::UpdatePrivateConnectionCertificateOutput#certificate_expiry_time #certificate_expiry_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_private_connection_certificate({
    #     name: "PrivateConnectionName", # required
    #     certificate: "CertificateString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.type #=> String, one of "SELF_MANAGED", "SERVICE_MANAGED"
    #   resp.resource_gateway_id #=> String
    #   resp.host_address #=> String
    #   resp.vpc_id #=> String
    #   resp.resource_configuration_id #=> String
    #   resp.status #=> String, one of "ACTIVE", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"
    #   resp.certificate_expiry_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UpdatePrivateConnectionCertificate AWS API Documentation
    #
    # @overload update_private_connection_certificate(params = {})
    # @param [Hash] params ({})
    def update_private_connection_certificate(params = {}, options = {})
      req = build_request(:update_private_connection_certificate, params)
      req.send_request(options)
    end

    # Updates an existing recommendation with new content, status, or
    # metadata
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier for the agent space containing the
    #   recommendation
    #
    # @option params [required, String] :recommendation_id
    #   The unique identifier for the recommendation to update
    #
    # @option params [String] :status
    #   Current status of the recommendation
    #
    # @option params [String] :additional_context
    #   Additional context for recommendation
    #
    # @option params [String] :client_token
    #   A unique token that ensures idempotency of the request
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateRecommendationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRecommendationResponse#recommendation #recommendation} => Types::Recommendation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_recommendation({
    #     agent_space_id: "AgentSpaceId", # required
    #     recommendation_id: "ResourceId", # required
    #     status: "PROPOSED", # accepts PROPOSED, ACCEPTED, REJECTED, CLOSED, COMPLETED, UPDATE_IN_PROGRESS
    #     additional_context: "String",
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.recommendation.agent_space_arn #=> String
    #   resp.recommendation.recommendation_id #=> String
    #   resp.recommendation.task_id #=> String
    #   resp.recommendation.goal_id #=> String
    #   resp.recommendation.title #=> String
    #   resp.recommendation.content.summary #=> String
    #   resp.recommendation.content.spec #=> String
    #   resp.recommendation.status #=> String, one of "PROPOSED", "ACCEPTED", "REJECTED", "CLOSED", "COMPLETED", "UPDATE_IN_PROGRESS"
    #   resp.recommendation.priority #=> String, one of "HIGH", "MEDIUM", "LOW"
    #   resp.recommendation.goal_version #=> Integer
    #   resp.recommendation.additional_context #=> String
    #   resp.recommendation.created_at #=> Time
    #   resp.recommendation.updated_at #=> Time
    #   resp.recommendation.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UpdateRecommendation AWS API Documentation
    #
    # @overload update_recommendation(params = {})
    # @param [Hash] params ({})
    def update_recommendation(params = {}, options = {})
      req = build_request(:update_recommendation, params)
      req.send_request(options)
    end

    # Validates an aws association and set status and returns a 204 No
    # Content response on success.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the AgentSpace
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.validate_aws_associations({
    #     agent_space_id: "AgentSpaceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ValidateAwsAssociations AWS API Documentation
    #
    # @overload validate_aws_associations(params = {})
    # @param [Hash] params ({})
    def validate_aws_associations(params = {}, options = {})
      req = build_request(:validate_aws_associations, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::DevOpsAgent')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-devopsagent'
      context[:gem_version] = '1.3.0'
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
