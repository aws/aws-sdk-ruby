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
require 'aws-sdk-core/plugins/protocols/rpc_v2'

module Aws::EventBridgeV2
  # An API client for EventBridgeV2.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::EventBridgeV2::Client.new(
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

    @identifier = :eventbridgev2

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
    add_plugin(Aws::Plugins::Protocols::RpcV2)
    add_plugin(Aws::EventBridgeV2::Plugins::Endpoints)

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
    #   @option options [String] :account_id_endpoint_mode
    #     The account ID endpoint mode to use. This can be one of the following values:
    #     * `preferred` - The default behavior. Use the account ID endpoint if
    #       available, otherwise use the standard endpoint.
    #     * `disabled` - Never use the account ID endpoint. Only use the standard
    #       endpoint.
    #     * `required` - Always use the account ID endpoint. If the account ID
    #       cannot be retrieved from credentials, an error is raised.
    #
    #   @option options [Aws::EventBridgeV2::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::EventBridgeV2::EndpointParameters`.
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

    # Creates an event bus. Provisioning is asynchronous: the bus is
    # returned in the CREATING state and transitions to ACTIVE when ready
    # (see the EventBusActive waiter). Retries carrying the same ClientToken
    # are idempotent.
    #
    # @option params [required, String] :name
    #   Name of an event bus. The first character must be alphanumeric; the
    #   remaining characters may also include '.', '-', and '\_'. The
    #   grammar matches the name segment of EventBusArn
    #   (event-busv2/<name>/<id>), so every valid name can be represented in
    #   the bus's ARN. The same type is used everywhere a bus name
    #   appears.</p> </id></name>
    #
    # @option params [String] :description
    #   Free-text description. Used by every resource type that has one: event
    #   buses, subscribers, and event sources.
    #
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   Encryption configuration for an event bus.
    #
    # @option params [Types::StorageConfiguration] :storage_configuration
    #   Event storage configuration for an event bus.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags attached to a resource, as key-value pairs.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that ensures the idempotency of the
    #   request. The SDK generates one automatically when the field is
    #   omitted.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateEventBusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEventBusResponse#event_bus_arn #event_bus_arn} => String
    #   * {Types::CreateEventBusResponse#name #name} => String
    #   * {Types::CreateEventBusResponse#description #description} => String
    #   * {Types::CreateEventBusResponse#encryption_configuration #encryption_configuration} => Types::EncryptionConfiguration
    #   * {Types::CreateEventBusResponse#storage_configuration #storage_configuration} => Types::StorageConfigurationOutput
    #   * {Types::CreateEventBusResponse#state #state} => String
    #   * {Types::CreateEventBusResponse#state_reason #state_reason} => String
    #   * {Types::CreateEventBusResponse#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_bus({
    #     name: "EventBusName", # required
    #     description: "Description",
    #     encryption_configuration: {
    #       kms_key_identifier: "KmsKeyIdentifier",
    #     },
    #     storage_configuration: {
    #       retention_period_in_days: 1,
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.event_bus_arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.encryption_configuration.kms_key_identifier #=> String
    #   resp.storage_configuration.retention_period_in_days #=> Integer
    #   resp.storage_configuration.retention_window_start_time #=> Time
    #   resp.state #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "ACTIVE", "DELETE_FAILED"
    #   resp.state_reason #=> String
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/CreateEventBus AWS API Documentation
    #
    # @overload create_event_bus(params = {})
    # @param [Hash] params ({})
    def create_event_bus(params = {}, options = {})
      req = build_request(:create_event_bus, params)
      req.send_request(options)
    end

    # Creates an EventSource, which forwards events from an origin (an AWS
    # service or another account) onto an event bus. The bus must be ACTIVE.
    # Retries carrying the same ClientToken are idempotent.
    #
    # @option params [required, String] :name
    #   EventSource name. First character alphanumeric; the rest may add
    #   '.', '-', '\_'. Names may not begin with the reserved "aws."
    #   prefix. The grammar matches the ARN local-name segment in
    #   EventSourceArn (event-sourcev2/<type>/<name>/<id>), mirroring
    #   EventBusName, so a name the ARN cannot represent cannot be
    #   created.</p> </id></name></type>
    #
    # @option params [required, String] :event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #
    # @option params [required, Types::EventSourceConfiguration] :configuration
    #   Discriminated EventSource configuration. Exactly one variant must be
    #   set.
    #
    # @option params [String] :description
    #   Free-text description. Used by every resource type that has one: event
    #   buses, subscribers, and event sources.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags attached to a resource, as key-value pairs.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that ensures the idempotency of the
    #   request. The SDK generates one automatically when the field is
    #   omitted.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateEventSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEventSourceResponse#event_source_arn #event_source_arn} => String
    #   * {Types::CreateEventSourceResponse#name #name} => String
    #   * {Types::CreateEventSourceResponse#event_bus_arn #event_bus_arn} => String
    #   * {Types::CreateEventSourceResponse#state #state} => String
    #   * {Types::CreateEventSourceResponse#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_source({
    #     name: "EventSourceName", # required
    #     event_bus_arn: "EventBusArn", # required
    #     configuration: { # required
    #       aws_service_events_configuration: {
    #         aws_service: "AwsServiceSource", # required
    #         pattern: "AwsServiceEventsSourceConfigurationPatternString",
    #         on_failure_configuration: {
    #           arn: "DeadLetterQueueArn",
    #         },
    #       },
    #       partner_events_configuration: {
    #         partner_event_source_arn: "PartnerEventSourceArn", # required
    #         pattern: "PartnerEventsSourceConfigurationPatternString",
    #         partner_bus_kms_key_identifier: "KmsKeyIdentifier",
    #         on_failure_configuration: {
    #           arn: "DeadLetterQueueArn",
    #         },
    #       },
    #     },
    #     description: "Description",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.event_source_arn #=> String
    #   resp.name #=> String
    #   resp.event_bus_arn #=> String
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/CreateEventSource AWS API Documentation
    #
    # @overload create_event_source(params = {})
    # @param [Hash] params ({})
    def create_event_source(params = {}, options = {})
      req = build_request(:create_event_source, params)
      req.send_request(options)
    end

    # Creates a subscriber on an event bus, which delivers matching events
    # to the configured target. The bus must be ACTIVE. Retries carrying the
    # same ClientToken are idempotent.
    #
    # @option params [required, String] :name
    #   Name of a subscriber. The first character must be alphanumeric; the
    #   remaining characters may also include '.', '-', and '\_'.
    #
    # @option params [required, String] :event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #
    # @option params [required, Types::InvokeConfiguration] :invoke_configuration
    #   Configuration for how the subscriber invokes its target.
    #
    # @option params [String] :description
    #   Free-text description. Used by every resource type that has one: event
    #   buses, subscribers, and event sources.
    #
    # @option params [Types::FilterConfiguration] :filter_configuration
    #   Configuration for filtering events delivered to a subscriber. On
    #   CreateSubscriber, Filters is required and must contain at least one
    #   Filter with a non-empty Pattern. On UpdateSubscriber, an empty
    #   `FilterConfiguration:{}` clears the existing filter. Any non-empty
    #   shape (including `{Language:X}` without Filters) must contain a valid
    #   Filters list — same contract as CreateSubscriber. A non-empty Filters
    #   list overwrites; an omitted FilterConfiguration preserves existing
    #   state. All Filters are implicitly ANDed — an event must match every
    #   Filter to be delivered.
    #
    # @option params [String] :type
    #   Delivery ordering mode of a subscriber: FIFO delivers events in order
    #   within an event group; UNORDERED delivers without an ordering
    #   guarantee.
    #
    # @option params [String] :starting_position
    #   Starting position for a subscriber.
    #
    # @option params [Types::PointInTimeConfiguration] :point_in_time_configuration
    #   Point-in-time configuration for a subscriber. Only applicable when
    #   StartingPosition is POINT\_IN\_TIME.
    #
    # @option params [Types::BatchConfiguration] :batch_configuration
    #   Batching configuration for a subscriber.
    #
    # @option params [Types::Transformer] :transformer
    #   Not applicable to universal (aws-sdk) targets, whose input
    #   transformation is UniversalTargetParameters.Input; a Transformer on
    #   such a target is rejected.
    #
    # @option params [Types::RetryPolicy] :retry_policy
    #   Retry policy for a subscriber.
    #
    # @option params [Types::OnFailureConfiguration] :on_failure_configuration
    #   On-failure configuration: where a failed delivery is sent. Shared by
    #   the subscriber and the EventSource.
    #
    # @option params [Types::LogConfiguration] :log_configuration
    #   Log configuration for a subscriber.
    #
    # @option params [String] :state
    #   Customer-controlled run state of a subscriber, set on create or
    #   update. Distinct from the bus lifecycle vocabulary, where ACTIVE means
    #   "provisioned and healthy". Delivery requires State RUNNING on a
    #   subscriber that is not revoked.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags attached to a resource, as key-value pairs.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that ensures the idempotency of the
    #   request. The SDK generates one automatically when the field is
    #   omitted.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateSubscriberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSubscriberResponse#subscriber_arn #subscriber_arn} => String
    #   * {Types::CreateSubscriberResponse#name #name} => String
    #   * {Types::CreateSubscriberResponse#event_bus_arn #event_bus_arn} => String
    #   * {Types::CreateSubscriberResponse#type #type} => String
    #   * {Types::CreateSubscriberResponse#starting_position #starting_position} => String
    #   * {Types::CreateSubscriberResponse#point_in_time_configuration #point_in_time_configuration} => Types::PointInTimeConfiguration
    #   * {Types::CreateSubscriberResponse#state #state} => String
    #   * {Types::CreateSubscriberResponse#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_subscriber({
    #     name: "SubscriberName", # required
    #     event_bus_arn: "EventBusArn", # required
    #     invoke_configuration: { # required
    #       role_arn: "RoleArn", # required
    #       lambda_parameters: {
    #         invocation_type: "EVENT", # accepts EVENT, REQUEST_RESPONSE
    #         qualifier: "LambdaParametersQualifierString",
    #         durable_execution_name: "LambdaParametersDurableExecutionNameString",
    #         tenant_id: "LambdaParametersTenantIdString",
    #         invocation_timeout_seconds: "LambdaParametersInvocationTimeoutSecondsString",
    #       },
    #       sqs_parameters: {
    #         message_group_id: "SqsParametersMessageGroupIdString",
    #         message_deduplication_id: "SqsParametersMessageDeduplicationIdString",
    #         delay_seconds: "SqsParametersDelaySecondsString",
    #         message_attributes: {
    #           "MessageAttributeName" => {
    #             data_type: "SqsMessageAttributeValueDataTypeString",
    #             string_value: "String",
    #             binary_value: "String",
    #           },
    #         },
    #         message_system_attributes: {
    #           "MessageAttributeName" => {
    #             data_type: "SqsMessageAttributeValueDataTypeString",
    #             string_value: "String",
    #             binary_value: "String",
    #           },
    #         },
    #       },
    #       sns_parameters: {
    #         message_group_id: "SnsParametersMessageGroupIdString",
    #         message_deduplication_id: "SnsParametersMessageDeduplicationIdString",
    #         subject: "SnsParametersSubjectString",
    #         message_structure: "SnsParametersMessageStructureString",
    #         message_attributes: {
    #           "MessageAttributeName" => {
    #             data_type: "SnsMessageAttributeValueDataTypeString",
    #             string_value: "String",
    #             binary_value: "String",
    #           },
    #         },
    #       },
    #       kinesis_parameters: {
    #         partition_key: "KinesisParametersPartitionKeyString",
    #         explicit_hash_key: "KinesisParametersExplicitHashKeyString",
    #       },
    #       step_functions_parameters: {
    #         invocation_type: "EVENT", # accepts EVENT, REQUEST_RESPONSE
    #         name: "StepFunctionsParametersNameString",
    #         trace_header: "StepFunctionsParametersTraceHeaderString",
    #         invocation_timeout_seconds: "StepFunctionsParametersInvocationTimeoutSecondsString",
    #       },
    #       http_parameters: {
    #         path_parameter_values: ["PathParameter"],
    #         header_parameters: {
    #           "HeaderKey" => "HeaderValue",
    #         },
    #         query_string_parameters: {
    #           "QueryStringKey" => "QueryStringValue",
    #         },
    #         invocation_timeout_seconds: "String",
    #       },
    #       universal_target_parameters: {
    #         input: "UniversalTargetInput", # required
    #         invocation_timeout_seconds: "String",
    #       },
    #       event_bus_v2_parameters: {
    #         metadata: {
    #           "String" => "String",
    #         },
    #         system_metadata: {
    #           event_group_id: "String",
    #           deduplication_id: "String",
    #         },
    #         deduplication_configuration: {
    #           deduplication_type: "CONTENT_BASED", # required, accepts CONTENT_BASED
    #         },
    #       },
    #       target_arn: "TargetResourceArn", # required
    #     },
    #     description: "Description",
    #     filter_configuration: {
    #       language: "EVENT_BRIDGE_PATTERN", # accepts EVENT_BRIDGE_PATTERN
    #       filters: [
    #         {
    #           pattern: "EventPattern", # required
    #           scope: "DATA", # required, accepts DATA, METADATA, SYSTEM_METADATA
    #         },
    #       ],
    #     },
    #     type: "FIFO", # accepts FIFO, UNORDERED
    #     starting_position: "LATEST", # accepts LATEST, POINT_IN_TIME
    #     point_in_time_configuration: {
    #       point_type: "HORIZON", # required, accepts HORIZON, TIMESTAMP
    #       starting_point: Time.now,
    #       end_point: Time.now,
    #     },
    #     batch_configuration: {
    #       max_batch_size: 1,
    #       max_batch_window_in_seconds: 1,
    #     },
    #     transformer: {
    #       type: "RAW", # accepts RAW, WITH_METADATA, JSONATA
    #       jsonata_configuration: {
    #         expression: "JsonataConfigurationExpressionString", # required
    #       },
    #     },
    #     retry_policy: {
    #       max_retry_attempts: 1,
    #       max_event_age_in_seconds: 1,
    #       retry_strategy: "ALL", # accepts ALL
    #     },
    #     on_failure_configuration: {
    #       arn: "DeadLetterQueueArn",
    #     },
    #     log_configuration: {
    #       level: "OFF", # accepts OFF, ERROR, INFO
    #       include_payload: "FULL", # accepts FULL, ON_ERROR_ONLY
    #     },
    #     state: "RUNNING", # accepts RUNNING, STOPPED
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.subscriber_arn #=> String
    #   resp.name #=> String
    #   resp.event_bus_arn #=> String
    #   resp.type #=> String, one of "FIFO", "UNORDERED"
    #   resp.starting_position #=> String, one of "LATEST", "POINT_IN_TIME"
    #   resp.point_in_time_configuration.point_type #=> String, one of "HORIZON", "TIMESTAMP"
    #   resp.point_in_time_configuration.starting_point #=> Time
    #   resp.point_in_time_configuration.end_point #=> Time
    #   resp.state #=> String, one of "RUNNING", "STOPPED"
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/CreateSubscriber AWS API Documentation
    #
    # @overload create_subscriber(params = {})
    # @param [Hash] params ({})
    def create_subscriber(params = {}, options = {})
      req = build_request(:create_subscriber, params)
      req.send_request(options)
    end

    # Deletes an event bus. Deletion is asynchronous: the bus moves to
    # DELETING and disappears when complete (see the EventBusDeleted
    # waiter). A bus with subscribers or event sources cannot be deleted.
    #
    # @option params [required, String] :event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_bus({
    #     event_bus_arn: "EventBusArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/DeleteEventBus AWS API Documentation
    #
    # @overload delete_event_bus(params = {})
    # @param [Hash] params ({})
    def delete_event_bus(params = {}, options = {})
      req = build_request(:delete_event_bus, params)
      req.send_request(options)
    end

    # Deletes an EventSource. Forwarding from its origin stops.
    #
    # @option params [required, String] :event_source_arn
    #   EventSource ARN: event-sourcev2/<type>/<name>/<id>. The type segment
    #   is set by the service (aws.service for AWS service events, aws.partner
    #   for partner events) and is not part of the resource's name. The id
    #   segment is a 25-character identifier generated by the service.</p>
    #   </id></name></type>
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_source({
    #     event_source_arn: "EventSourceArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/DeleteEventSource AWS API Documentation
    #
    # @overload delete_event_source(params = {})
    # @param [Hash] params ({})
    def delete_event_source(params = {}, options = {})
      req = build_request(:delete_event_source, params)
      req.send_request(options)
    end

    # Deletes the named resource policy attached to an event bus.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #
    # @option params [String] :policy_name
    #   Which named policy to delete. Defaults to "default" when omitted (a
    #   delete AWS Resource Access Manager makes on the owner's behalf
    #   resolves to "AWS\_RAM" instead). The two writers are exclusive in both
    #   directions — only Resource Access Manager can delete "AWS\_RAM", and
    #   only the bus owner can delete "default" — so naming the other party's
    #   policy fails with AccessDeniedException. A well-formed name that is
    #   neither of the two fails with InvalidInputException.
    #
    # @option params [String] :expected_revision_id
    #   The delete succeeds only if the named policy's current revision ID
    #   matches this value; if it differs or the policy does not exist, the
    #   operation fails with ConflictException. The "NO\_POLICY" sentinel is
    #   not valid here. When omitted, deleting an absent policy is an
    #   idempotent success. Supplying this value makes the delete
    #   non-idempotent: once it succeeds the expected revision no longer
    #   exists, so retrying an unanswered request fails with ConflictException
    #   even though the policy was deleted. To establish the outcome, read the
    #   policy back: ResourceNotFoundException means the delete took effect.
    #
    # @return [Types::DeleteResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteResourcePolicyResponse#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy({
    #     resource_arn: "EventBusArn", # required
    #     policy_name: "PolicyName",
    #     expected_revision_id: "PolicyRevisionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/DeleteResourcePolicy AWS API Documentation
    #
    # @overload delete_resource_policy(params = {})
    # @param [Hash] params ({})
    def delete_resource_policy(params = {}, options = {})
      req = build_request(:delete_resource_policy, params)
      req.send_request(options)
    end

    # Deletes a subscriber. Events are no longer delivered to its target.
    #
    # @option params [required, String] :subscriber_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies a subscriber.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_subscriber({
    #     subscriber_arn: "SubscriberArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/DeleteSubscriber AWS API Documentation
    #
    # @overload delete_subscriber(params = {})
    # @param [Hash] params ({})
    def delete_subscriber(params = {}, options = {})
      req = build_request(:delete_subscriber, params)
      req.send_request(options)
    end

    # Returns the full configuration and lifecycle state of an event bus.
    #
    # @option params [required, String] :event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #
    # @return [Types::DescribeEventBusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventBusResponse#event_bus_arn #event_bus_arn} => String
    #   * {Types::DescribeEventBusResponse#name #name} => String
    #   * {Types::DescribeEventBusResponse#description #description} => String
    #   * {Types::DescribeEventBusResponse#encryption_configuration #encryption_configuration} => Types::EncryptionConfiguration
    #   * {Types::DescribeEventBusResponse#storage_configuration #storage_configuration} => Types::StorageConfigurationOutput
    #   * {Types::DescribeEventBusResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeEventBusResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::DescribeEventBusResponse#state #state} => String
    #   * {Types::DescribeEventBusResponse#state_reason #state_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_bus({
    #     event_bus_arn: "EventBusArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_bus_arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.encryption_configuration.kms_key_identifier #=> String
    #   resp.storage_configuration.retention_period_in_days #=> Integer
    #   resp.storage_configuration.retention_window_start_time #=> Time
    #   resp.creation_time #=> Time
    #   resp.last_modified_time #=> Time
    #   resp.state #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "ACTIVE", "DELETE_FAILED"
    #   resp.state_reason #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * event_bus_active
    #   * event_bus_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/DescribeEventBus AWS API Documentation
    #
    # @overload describe_event_bus(params = {})
    # @param [Hash] params ({})
    def describe_event_bus(params = {}, options = {})
      req = build_request(:describe_event_bus, params)
      req.send_request(options)
    end

    # Returns the full configuration and lifecycle state of an EventSource.
    #
    # @option params [required, String] :event_source_arn
    #   EventSource ARN: event-sourcev2/<type>/<name>/<id>. The type segment
    #   is set by the service (aws.service for AWS service events, aws.partner
    #   for partner events) and is not part of the resource's name. The id
    #   segment is a 25-character identifier generated by the service.</p>
    #   </id></name></type>
    #
    # @return [Types::DescribeEventSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventSourceResponse#event_source_arn #event_source_arn} => String
    #   * {Types::DescribeEventSourceResponse#name #name} => String
    #   * {Types::DescribeEventSourceResponse#event_bus_arn #event_bus_arn} => String
    #   * {Types::DescribeEventSourceResponse#configuration #configuration} => Types::EventSourceConfiguration
    #   * {Types::DescribeEventSourceResponse#description #description} => String
    #   * {Types::DescribeEventSourceResponse#state #state} => String
    #   * {Types::DescribeEventSourceResponse#revoked #revoked} => Boolean
    #   * {Types::DescribeEventSourceResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeEventSourceResponse#last_modified_time #last_modified_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_source({
    #     event_source_arn: "EventSourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_source_arn #=> String
    #   resp.name #=> String
    #   resp.event_bus_arn #=> String
    #   resp.configuration.aws_service_events_configuration.aws_service #=> String
    #   resp.configuration.aws_service_events_configuration.pattern #=> String
    #   resp.configuration.aws_service_events_configuration.on_failure_configuration.arn #=> String
    #   resp.configuration.partner_events_configuration.partner_event_source_arn #=> String
    #   resp.configuration.partner_events_configuration.pattern #=> String
    #   resp.configuration.partner_events_configuration.partner_bus_kms_key_identifier #=> String
    #   resp.configuration.partner_events_configuration.on_failure_configuration.arn #=> String
    #   resp.description #=> String
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"
    #   resp.revoked #=> Boolean
    #   resp.creation_time #=> Time
    #   resp.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/DescribeEventSource AWS API Documentation
    #
    # @overload describe_event_source(params = {})
    # @param [Hash] params ({})
    def describe_event_source(params = {}, options = {})
      req = build_request(:describe_event_source, params)
      req.send_request(options)
    end

    # Returns the full configuration and state of a subscriber.
    #
    # @option params [required, String] :subscriber_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies a subscriber.
    #
    # @return [Types::DescribeSubscriberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSubscriberResponse#subscriber_arn #subscriber_arn} => String
    #   * {Types::DescribeSubscriberResponse#name #name} => String
    #   * {Types::DescribeSubscriberResponse#event_bus_arn #event_bus_arn} => String
    #   * {Types::DescribeSubscriberResponse#invoke_configuration #invoke_configuration} => Types::InvokeConfiguration
    #   * {Types::DescribeSubscriberResponse#description #description} => String
    #   * {Types::DescribeSubscriberResponse#filter_configuration #filter_configuration} => Types::FilterConfiguration
    #   * {Types::DescribeSubscriberResponse#type #type} => String
    #   * {Types::DescribeSubscriberResponse#starting_position #starting_position} => String
    #   * {Types::DescribeSubscriberResponse#point_in_time_configuration #point_in_time_configuration} => Types::PointInTimeConfiguration
    #   * {Types::DescribeSubscriberResponse#batch_configuration #batch_configuration} => Types::BatchConfiguration
    #   * {Types::DescribeSubscriberResponse#transformer #transformer} => Types::Transformer
    #   * {Types::DescribeSubscriberResponse#retry_policy #retry_policy} => Types::RetryPolicy
    #   * {Types::DescribeSubscriberResponse#on_failure_configuration #on_failure_configuration} => Types::OnFailureConfiguration
    #   * {Types::DescribeSubscriberResponse#log_configuration #log_configuration} => Types::LogConfiguration
    #   * {Types::DescribeSubscriberResponse#state #state} => String
    #   * {Types::DescribeSubscriberResponse#revoked #revoked} => Boolean
    #   * {Types::DescribeSubscriberResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeSubscriberResponse#last_modified_time #last_modified_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_subscriber({
    #     subscriber_arn: "SubscriberArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.subscriber_arn #=> String
    #   resp.name #=> String
    #   resp.event_bus_arn #=> String
    #   resp.invoke_configuration.role_arn #=> String
    #   resp.invoke_configuration.lambda_parameters.invocation_type #=> String, one of "EVENT", "REQUEST_RESPONSE"
    #   resp.invoke_configuration.lambda_parameters.qualifier #=> String
    #   resp.invoke_configuration.lambda_parameters.durable_execution_name #=> String
    #   resp.invoke_configuration.lambda_parameters.tenant_id #=> String
    #   resp.invoke_configuration.lambda_parameters.invocation_timeout_seconds #=> String
    #   resp.invoke_configuration.sqs_parameters.message_group_id #=> String
    #   resp.invoke_configuration.sqs_parameters.message_deduplication_id #=> String
    #   resp.invoke_configuration.sqs_parameters.delay_seconds #=> String
    #   resp.invoke_configuration.sqs_parameters.message_attributes #=> Hash
    #   resp.invoke_configuration.sqs_parameters.message_attributes["MessageAttributeName"].data_type #=> String
    #   resp.invoke_configuration.sqs_parameters.message_attributes["MessageAttributeName"].string_value #=> String
    #   resp.invoke_configuration.sqs_parameters.message_attributes["MessageAttributeName"].binary_value #=> String
    #   resp.invoke_configuration.sqs_parameters.message_system_attributes #=> Hash
    #   resp.invoke_configuration.sqs_parameters.message_system_attributes["MessageAttributeName"].data_type #=> String
    #   resp.invoke_configuration.sqs_parameters.message_system_attributes["MessageAttributeName"].string_value #=> String
    #   resp.invoke_configuration.sqs_parameters.message_system_attributes["MessageAttributeName"].binary_value #=> String
    #   resp.invoke_configuration.sns_parameters.message_group_id #=> String
    #   resp.invoke_configuration.sns_parameters.message_deduplication_id #=> String
    #   resp.invoke_configuration.sns_parameters.subject #=> String
    #   resp.invoke_configuration.sns_parameters.message_structure #=> String
    #   resp.invoke_configuration.sns_parameters.message_attributes #=> Hash
    #   resp.invoke_configuration.sns_parameters.message_attributes["MessageAttributeName"].data_type #=> String
    #   resp.invoke_configuration.sns_parameters.message_attributes["MessageAttributeName"].string_value #=> String
    #   resp.invoke_configuration.sns_parameters.message_attributes["MessageAttributeName"].binary_value #=> String
    #   resp.invoke_configuration.kinesis_parameters.partition_key #=> String
    #   resp.invoke_configuration.kinesis_parameters.explicit_hash_key #=> String
    #   resp.invoke_configuration.step_functions_parameters.invocation_type #=> String, one of "EVENT", "REQUEST_RESPONSE"
    #   resp.invoke_configuration.step_functions_parameters.name #=> String
    #   resp.invoke_configuration.step_functions_parameters.trace_header #=> String
    #   resp.invoke_configuration.step_functions_parameters.invocation_timeout_seconds #=> String
    #   resp.invoke_configuration.http_parameters.path_parameter_values #=> Array
    #   resp.invoke_configuration.http_parameters.path_parameter_values[0] #=> String
    #   resp.invoke_configuration.http_parameters.header_parameters #=> Hash
    #   resp.invoke_configuration.http_parameters.header_parameters["HeaderKey"] #=> String
    #   resp.invoke_configuration.http_parameters.query_string_parameters #=> Hash
    #   resp.invoke_configuration.http_parameters.query_string_parameters["QueryStringKey"] #=> String
    #   resp.invoke_configuration.http_parameters.invocation_timeout_seconds #=> String
    #   resp.invoke_configuration.universal_target_parameters.input #=> String
    #   resp.invoke_configuration.universal_target_parameters.invocation_timeout_seconds #=> String
    #   resp.invoke_configuration.event_bus_v2_parameters.metadata #=> Hash
    #   resp.invoke_configuration.event_bus_v2_parameters.metadata["String"] #=> String
    #   resp.invoke_configuration.event_bus_v2_parameters.system_metadata.event_group_id #=> String
    #   resp.invoke_configuration.event_bus_v2_parameters.system_metadata.deduplication_id #=> String
    #   resp.invoke_configuration.event_bus_v2_parameters.deduplication_configuration.deduplication_type #=> String, one of "CONTENT_BASED"
    #   resp.invoke_configuration.target_arn #=> String
    #   resp.description #=> String
    #   resp.filter_configuration.language #=> String, one of "EVENT_BRIDGE_PATTERN"
    #   resp.filter_configuration.filters #=> Array
    #   resp.filter_configuration.filters[0].pattern #=> String
    #   resp.filter_configuration.filters[0].scope #=> String, one of "DATA", "METADATA", "SYSTEM_METADATA"
    #   resp.type #=> String, one of "FIFO", "UNORDERED"
    #   resp.starting_position #=> String, one of "LATEST", "POINT_IN_TIME"
    #   resp.point_in_time_configuration.point_type #=> String, one of "HORIZON", "TIMESTAMP"
    #   resp.point_in_time_configuration.starting_point #=> Time
    #   resp.point_in_time_configuration.end_point #=> Time
    #   resp.batch_configuration.max_batch_size #=> Integer
    #   resp.batch_configuration.max_batch_window_in_seconds #=> Integer
    #   resp.transformer.type #=> String, one of "RAW", "WITH_METADATA", "JSONATA"
    #   resp.transformer.jsonata_configuration.expression #=> String
    #   resp.retry_policy.max_retry_attempts #=> Integer
    #   resp.retry_policy.max_event_age_in_seconds #=> Integer
    #   resp.retry_policy.retry_strategy #=> String, one of "ALL"
    #   resp.on_failure_configuration.arn #=> String
    #   resp.log_configuration.level #=> String, one of "OFF", "ERROR", "INFO"
    #   resp.log_configuration.include_payload #=> String, one of "FULL", "ON_ERROR_ONLY"
    #   resp.state #=> String, one of "RUNNING", "STOPPED"
    #   resp.revoked #=> Boolean
    #   resp.creation_time #=> Time
    #   resp.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/DescribeSubscriber AWS API Documentation
    #
    # @overload describe_subscriber(params = {})
    # @param [Hash] params ({})
    def describe_subscriber(params = {}, options = {})
      req = build_request(:describe_subscriber, params)
      req.send_request(options)
    end

    # Returns the named resource policy attached to an event bus. Fails with
    # ResourceNotFoundException when the event bus or the named policy does
    # not exist.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #
    # @option params [String] :policy_name
    #   Which named policy to read. Defaults to "default" when omitted (a read
    #   AWS Resource Access Manager makes on the owner's behalf resolves to
    #   "AWS\_RAM" instead). Unlike writing, neither name is reserved on a
    #   read: the bus owner can read both. There is no fallback between the
    #   two, so a bus shared only through Resource Access Manager fails with
    #   ResourceNotFoundException until "AWS\_RAM" is named explicitly. A
    #   well-formed name that is neither of the two fails with
    #   InvalidInputException.
    #
    # @return [Types::GetResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePolicyResponse#resource_arn #resource_arn} => String
    #   * {Types::GetResourcePolicyResponse#policy_document #policy_document} => String
    #   * {Types::GetResourcePolicyResponse#policy_name #policy_name} => String
    #   * {Types::GetResourcePolicyResponse#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policy({
    #     resource_arn: "EventBusArn", # required
    #     policy_name: "PolicyName",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.policy_document #=> String
    #   resp.policy_name #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/GetResourcePolicy AWS API Documentation
    #
    # @overload get_resource_policy(params = {})
    # @param [Hash] params ({})
    def get_resource_policy(params = {}, options = {})
      req = build_request(:get_resource_policy, params)
      req.send_request(options)
    end

    # Lists the event buses visible to the caller: buses the account owns
    # and buses shared with it through AWS RAM. Shared entries carry
    # identity fields only (Name, EventBusArn, EventBusAccountId); owned
    # entries carry every summary field. Set EventBusAccountId to scope the
    # list to one owner account.
    #
    # @option params [String] :name_prefix
    #   Name of an event bus. The first character must be alphanumeric; the
    #   remaining characters may also include '.', '-', and '\_'. The
    #   grammar matches the name segment of EventBusArn
    #   (event-busv2/<name>/<id>), so every valid name can be represented in
    #   the bus's ARN. The same type is used everywhere a bus name
    #   appears.</p> </id></name>
    #
    # @option params [String] :event_bus_account_id
    #   AWS Account Id.
    #
    # @option params [String] :next_token
    #   Opaque pagination token returned by a List operation. Pass it back in
    #   the next request to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in one page of a List operation.
    #
    # @return [Types::ListEventBusesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEventBusesResponse#event_buses #event_buses} => Array&lt;Types::EventBusSummary&gt;
    #   * {Types::ListEventBusesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_buses({
    #     name_prefix: "EventBusName",
    #     event_bus_account_id: "AccountId",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.event_buses #=> Array
    #   resp.event_buses[0].name #=> String
    #   resp.event_buses[0].event_bus_arn #=> String
    #   resp.event_buses[0].description #=> String
    #   resp.event_buses[0].creation_time #=> Time
    #   resp.event_buses[0].last_modified_time #=> Time
    #   resp.event_buses[0].state #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "ACTIVE", "DELETE_FAILED"
    #   resp.event_buses[0].state_reason #=> String
    #   resp.event_buses[0].event_bus_account_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/ListEventBuses AWS API Documentation
    #
    # @overload list_event_buses(params = {})
    # @param [Hash] params ({})
    def list_event_buses(params = {}, options = {})
      req = build_request(:list_event_buses, params)
      req.send_request(options)
    end

    # Lists EventSources as summaries. By default the list spans the
    # EventSources the caller account owns; set EventBusArn to scope it to
    # one bus. Use DescribeEventSource to retrieve full configuration.
    #
    # @option params [String] :event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #
    # @option params [String] :name_prefix
    #   EventSource name. First character alphanumeric; the rest may add
    #   '.', '-', '\_'. Names may not begin with the reserved "aws."
    #   prefix. The grammar matches the ARN local-name segment in
    #   EventSourceArn (event-sourcev2/<type>/<name>/<id>), mirroring
    #   EventBusName, so a name the ARN cannot represent cannot be
    #   created.</p> </id></name></type>
    #
    # @option params [String] :next_token
    #   Opaque pagination token returned by a List operation. Pass it back in
    #   the next request to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in one page of a List operation.
    #
    # @return [Types::ListEventSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEventSourcesResponse#event_sources #event_sources} => Array&lt;Types::EventSourceSummary&gt;
    #   * {Types::ListEventSourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_sources({
    #     event_bus_arn: "EventBusArn",
    #     name_prefix: "EventSourceName",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.event_sources #=> Array
    #   resp.event_sources[0].event_source_arn #=> String
    #   resp.event_sources[0].name #=> String
    #   resp.event_sources[0].event_bus_arn #=> String
    #   resp.event_sources[0].type #=> String, one of "AWS_SERVICE_EVENTS", "PARTNER_EVENTS"
    #   resp.event_sources[0].state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"
    #   resp.event_sources[0].revoked #=> Boolean
    #   resp.event_sources[0].creation_time #=> Time
    #   resp.event_sources[0].last_modified_time #=> Time
    #   resp.event_sources[0].event_source_account_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/ListEventSources AWS API Documentation
    #
    # @overload list_event_sources(params = {})
    # @param [Hash] params ({})
    def list_event_sources(params = {}, options = {})
      req = build_request(:list_event_sources, params)
      req.send_request(options)
    end

    # Lists the resource policies attached to an event bus as summaries
    # (policy name and revision ID). Use GetResourcePolicy to retrieve a
    # policy document.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #
    # @option params [String] :next_token
    #   Opaque pagination token returned by a List operation. Pass it back in
    #   the next request to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in one page of a List operation.
    #
    # @return [Types::ListResourcePoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourcePoliciesResponse#policy_summaries #policy_summaries} => Array&lt;Types::ResourcePolicySummary&gt;
    #   * {Types::ListResourcePoliciesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_policies({
    #     resource_arn: "EventBusArn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_summaries #=> Array
    #   resp.policy_summaries[0].policy_name #=> String
    #   resp.policy_summaries[0].revision_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/ListResourcePolicies AWS API Documentation
    #
    # @overload list_resource_policies(params = {})
    # @param [Hash] params ({})
    def list_resource_policies(params = {}, options = {})
      req = build_request(:list_resource_policies, params)
      req.send_request(options)
    end

    # Lists subscribers as summaries. By default the list spans the
    # subscribers the caller account owns across all buses; set EventBusArn
    # to scope it to one bus. Use DescribeSubscriber to retrieve full
    # configuration.
    #
    # @option params [String] :event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #
    # @option params [String] :name_prefix
    #   Name of a subscriber. The first character must be alphanumeric; the
    #   remaining characters may also include '.', '-', and '\_'.
    #
    # @option params [String] :next_token
    #   Opaque pagination token returned by a List operation. Pass it back in
    #   the next request to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in one page of a List operation.
    #
    # @return [Types::ListSubscribersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSubscribersResponse#subscribers #subscribers} => Array&lt;Types::SubscriberSummary&gt;
    #   * {Types::ListSubscribersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_subscribers({
    #     event_bus_arn: "EventBusArn",
    #     name_prefix: "SubscriberName",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.subscribers #=> Array
    #   resp.subscribers[0].subscriber_arn #=> String
    #   resp.subscribers[0].name #=> String
    #   resp.subscribers[0].event_bus_arn #=> String
    #   resp.subscribers[0].target_arn #=> String
    #   resp.subscribers[0].type #=> String, one of "FIFO", "UNORDERED"
    #   resp.subscribers[0].revoked #=> Boolean
    #   resp.subscribers[0].state #=> String, one of "RUNNING", "STOPPED"
    #   resp.subscribers[0].creation_time #=> Time
    #   resp.subscribers[0].last_modified_time #=> Time
    #   resp.subscribers[0].subscriber_account_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/ListSubscribers AWS API Documentation
    #
    # @overload list_subscribers(params = {})
    # @param [Hash] params ({})
    def list_subscribers(params = {}, options = {})
      req = build_request(:list_subscribers, params)
      req.send_request(options)
    end

    # Lists the tags on an event bus, subscriber, or event source.
    #
    # @option params [required, String] :resource_arn
    #   ARN for an EventBridge resource that supports tagging: event buses,
    #   subscribers, and event sources.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "TaggableResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Publishes events to an event bus.
    #
    # @option params [required, String] :event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #
    # @option params [required, Array<Types::PutEventsRequestEntry>] :entries
    #   List of event entries to publish. Must contain at least one entry.
    #
    # @option params [Types::DeduplicationConfiguration] :deduplication_configuration
    #   Request-level deduplication settings, applied to every entry in the
    #   batch.
    #
    # @return [Types::PutEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutEventsResponse#failed_entry_count #failed_entry_count} => Integer
    #   * {Types::PutEventsResponse#entries #data.entries} => Array&lt;Types::PutEventsResultEntry&gt; (This method conflicts with a method on Response, call it through the data member)
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_events({
    #     event_bus_arn: "EventBusArn", # required
    #     entries: [ # required
    #       {
    #         source: "Source", # required
    #         detail_type: "DetailType", # required
    #         detail: "EventDetail",
    #         resources: ["EventResource"],
    #         time: Time.now,
    #         system_metadata: {
    #           event_group_id: "EventGroupId",
    #           deduplication_id: "EventDeduplicationId",
    #         },
    #       },
    #     ],
    #     deduplication_configuration: {
    #       deduplication_type: "CONTENT_BASED", # required, accepts CONTENT_BASED
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_entry_count #=> Integer
    #   resp.data.entries #=> Array
    #   resp.data.entries[0].event_id #=> String
    #   resp.data.entries[0].sequence_number #=> String
    #   resp.data.entries[0].success_code #=> String, one of "PUBLISHED", "DEDUPLICATED"
    #   resp.data.entries[0].error_code #=> String
    #   resp.data.entries[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/PutEvents AWS API Documentation
    #
    # @overload put_events(params = {})
    # @param [Hash] params ({})
    def put_events(params = {}, options = {})
      req = build_request(:put_events, params)
      req.send_request(options)
    end

    # Publishes pre-shaped events to an event bus.
    #
    # @option params [required, String] :event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #
    # @option params [required, Array<Types::PutRawEventsRequestEntry>] :entries
    #   List of event entries to publish. Must contain at least one entry.
    #
    # @option params [Types::SchemaRegistryConfiguration] :schema_registry_configuration
    #   Schema-registry settings for encoding open-format (Avro/Protobuf)
    #   events. Required for open-format entries; ignored for JSON entries.
    #   The registry is read with the caller's credentials, so the caller
    #   needs read access to the registry it references.
    #
    # @option params [Types::DeduplicationConfiguration] :deduplication_configuration
    #   Request-level deduplication settings, applied to every entry in the
    #   batch.
    #
    # @return [Types::PutRawEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutRawEventsResponse#failed_entry_count #failed_entry_count} => Integer
    #   * {Types::PutRawEventsResponse#entries #data.entries} => Array&lt;Types::PutRawEventsResultEntry&gt; (This method conflicts with a method on Response, call it through the data member)
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_raw_events({
    #     event_bus_arn: "EventBusArn", # required
    #     entries: [ # required
    #       {
    #         data: "data", # required
    #         metadata: {
    #           "EventMetadataKey" => "EventMetadataValue",
    #         },
    #         system_metadata: { # required
    #           content_type: "ContentType", # required
    #           deduplication_id: "EventDeduplicationId",
    #           event_group_id: "EventGroupId",
    #         },
    #       },
    #     ],
    #     schema_registry_configuration: {
    #       registry_uri: "SchemaRegistryUri", # required
    #       confluent_public_registry_configuration: {
    #         connection_arn: "ConnectionArn", # required
    #       },
    #     },
    #     deduplication_configuration: {
    #       deduplication_type: "CONTENT_BASED", # required, accepts CONTENT_BASED
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_entry_count #=> Integer
    #   resp.data.entries #=> Array
    #   resp.data.entries[0].event_id #=> String
    #   resp.data.entries[0].sequence_number #=> String
    #   resp.data.entries[0].success_code #=> String, one of "PUBLISHED", "DEDUPLICATED"
    #   resp.data.entries[0].error_code #=> String
    #   resp.data.entries[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/PutRawEvents AWS API Documentation
    #
    # @overload put_raw_events(params = {})
    # @param [Hash] params ({})
    def put_raw_events(params = {}, options = {})
      req = build_request(:put_raw_events, params)
      req.send_request(options)
    end

    # Attaches a named resource policy to an event bus — the only resource
    # type that supports policies; other resource ARNs are rejected. Each
    # bus holds two named policies: "default" (customer-managed, full IAM
    # policy language including Deny) and "AWS\_RAM" (written exclusively by
    # AWS Resource Access Manager to reflect resource shares). Both policies
    # are evaluated on cross-account authorization; an explicit Deny in
    # either overrides an Allow in the other. Operations that omit
    # PolicyName target "default". A "default" policy that would grant
    # public access is rejected with PublicPolicyException and is not
    # attached; this check is always on and cannot be disabled.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #
    # @option params [required, String] :policy_document
    #   A resource policy document, as a JSON string. The "default" policy can
    #   be up to 20 KB (20,480 bytes of UTF-8) by default. This quota is
    #   adjustable in Service Quotas. A "default" policy that exceeds the
    #   quota is rejected with PolicyLengthExceededException. No policy
    #   document can exceed 389,120 bytes of UTF-8, regardless of the quota.
    #
    # @option params [String] :policy_name
    #   Which named policy to write. Defaults to "default", the
    #   customer-managed policy, when omitted (a write AWS Resource Access
    #   Manager makes on the owner's behalf resolves to "AWS\_RAM" instead).
    #   The two writers are exclusive in both directions — only Resource
    #   Access Manager can write "AWS\_RAM", and only the bus owner can write
    #   "default" — so naming the other party's policy fails with
    #   AccessDeniedException. A well-formed name that is neither of the two
    #   fails with InvalidInputException.
    #
    # @option params [String] :expected_revision_id
    #   The write succeeds only if the named policy's current revision ID
    #   matches this value; a policy that does not exist yet matches only the
    #   sentinel "NO\_POLICY" (create-only). On mismatch the operation fails
    #   with ConflictException. When omitted, the write is unconditional.
    #   Every attempt stores a newly generated revision ID, so retrying an
    #   unanswered request can conflict with the caller's own earlier
    #   attempt; read the policy back and compare it with the one you intended
    #   before treating a conflict as another writer's change.
    #
    # @return [Types::PutResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutResourcePolicyResponse#resource_arn #resource_arn} => String
    #   * {Types::PutResourcePolicyResponse#policy_name #policy_name} => String
    #   * {Types::PutResourcePolicyResponse#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy({
    #     resource_arn: "EventBusArn", # required
    #     policy_document: "PolicyDocument", # required
    #     policy_name: "PolicyName",
    #     expected_revision_id: "PolicyRevisionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.policy_name #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/PutResourcePolicy AWS API Documentation
    #
    # @overload put_resource_policy(params = {})
    # @param [Hash] params ({})
    def put_resource_policy(params = {}, options = {})
      req = build_request(:put_resource_policy, params)
      req.send_request(options)
    end

    # Revokes a subscriber or an EventSource. The bus owner calls this to
    # withdraw a misbehaving resource attached to their bus. Revocation is
    # terminal: there is no operation that clears it. A revoked resource
    # refuses mutating operations with InvalidStateException; delete stays
    # available for cleanup.
    #
    # @option params [required, String] :arn
    #   ARN of a resource a bus owner can revoke: a subscriber or an
    #   EventSource. The pattern is the revocable subset of
    #   TaggableResourceArn; buses are not revocable.
    #
    # @return [Types::RevokeResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RevokeResourceResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_resource({
    #     arn: "RevocableResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/RevokeResource AWS API Documentation
    #
    # @overload revoke_resource(params = {})
    # @param [Hash] params ({})
    def revoke_resource(params = {}, options = {})
      req = build_request(:revoke_resource, params)
      req.send_request(options)
    end

    # Adds or replaces tags on an event bus, subscriber, or event source.
    #
    # @option params [required, String] :resource_arn
    #   ARN for an EventBridge resource that supports tagging: event buses,
    #   subscribers, and event sources.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Tags attached to a resource, as key-value pairs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "TaggableResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from an event bus, subscriber, or event source.
    #
    # @option params [required, String] :resource_arn
    #   ARN for an EventBridge resource that supports tagging: event buses,
    #   subscribers, and event sources.
    #
    # @option params [required, Array<String>] :tag_keys
    #   List of tag keys.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "TaggableResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an event bus. The update is asynchronous: the bus moves to
    # UPDATING and returns to ACTIVE when the change is applied. Fields
    # omitted from the request are left unchanged.
    #
    # @option params [required, String] :event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #
    # @option params [String] :description
    #   Free-text description. Used by every resource type that has one: event
    #   buses, subscribers, and event sources.
    #
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   Encryption configuration for an event bus.
    #
    # @option params [Types::StorageConfiguration] :storage_configuration
    #   Event storage configuration for an event bus.
    #
    # @return [Types::UpdateEventBusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEventBusResponse#event_bus_arn #event_bus_arn} => String
    #   * {Types::UpdateEventBusResponse#name #name} => String
    #   * {Types::UpdateEventBusResponse#description #description} => String
    #   * {Types::UpdateEventBusResponse#encryption_configuration #encryption_configuration} => Types::EncryptionConfiguration
    #   * {Types::UpdateEventBusResponse#storage_configuration #storage_configuration} => Types::StorageConfigurationOutput
    #   * {Types::UpdateEventBusResponse#state #state} => String
    #   * {Types::UpdateEventBusResponse#state_reason #state_reason} => String
    #   * {Types::UpdateEventBusResponse#last_modified_time #last_modified_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_event_bus({
    #     event_bus_arn: "EventBusArn", # required
    #     description: "Description",
    #     encryption_configuration: {
    #       kms_key_identifier: "KmsKeyIdentifier",
    #     },
    #     storage_configuration: {
    #       retention_period_in_days: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.event_bus_arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.encryption_configuration.kms_key_identifier #=> String
    #   resp.storage_configuration.retention_period_in_days #=> Integer
    #   resp.storage_configuration.retention_window_start_time #=> Time
    #   resp.state #=> String, one of "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "ACTIVE", "DELETE_FAILED"
    #   resp.state_reason #=> String
    #   resp.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/UpdateEventBus AWS API Documentation
    #
    # @overload update_event_bus(params = {})
    # @param [Hash] params ({})
    def update_event_bus(params = {}, options = {})
      req = build_request(:update_event_bus, params)
      req.send_request(options)
    end

    # Updates an EventSource. Fields omitted from the request are left
    # unchanged.
    #
    # @option params [required, String] :event_source_arn
    #   EventSource ARN: event-sourcev2/<type>/<name>/<id>. The type segment
    #   is set by the service (aws.service for AWS service events, aws.partner
    #   for partner events) and is not part of the resource's name. The id
    #   segment is a 25-character identifier generated by the service.</p>
    #   </id></name></type>
    #
    # @option params [Types::EventSourceConfiguration] :configuration
    #   Discriminated EventSource configuration. Exactly one variant must be
    #   set.
    #
    # @option params [String] :description
    #   Free-text description. Used by every resource type that has one: event
    #   buses, subscribers, and event sources.
    #
    # @return [Types::UpdateEventSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEventSourceResponse#event_source_arn #event_source_arn} => String
    #   * {Types::UpdateEventSourceResponse#name #name} => String
    #   * {Types::UpdateEventSourceResponse#event_bus_arn #event_bus_arn} => String
    #   * {Types::UpdateEventSourceResponse#state #state} => String
    #   * {Types::UpdateEventSourceResponse#last_modified_time #last_modified_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_event_source({
    #     event_source_arn: "EventSourceArn", # required
    #     configuration: {
    #       aws_service_events_configuration: {
    #         aws_service: "AwsServiceSource", # required
    #         pattern: "AwsServiceEventsSourceConfigurationPatternString",
    #         on_failure_configuration: {
    #           arn: "DeadLetterQueueArn",
    #         },
    #       },
    #       partner_events_configuration: {
    #         partner_event_source_arn: "PartnerEventSourceArn", # required
    #         pattern: "PartnerEventsSourceConfigurationPatternString",
    #         partner_bus_kms_key_identifier: "KmsKeyIdentifier",
    #         on_failure_configuration: {
    #           arn: "DeadLetterQueueArn",
    #         },
    #       },
    #     },
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.event_source_arn #=> String
    #   resp.name #=> String
    #   resp.event_bus_arn #=> String
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"
    #   resp.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/UpdateEventSource AWS API Documentation
    #
    # @overload update_event_source(params = {})
    # @param [Hash] params ({})
    def update_event_source(params = {}, options = {})
      req = build_request(:update_event_source, params)
      req.send_request(options)
    end

    # Updates a subscriber. Fields omitted from the request are left
    # unchanged.
    #
    # @option params [required, String] :subscriber_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies a subscriber.
    #
    # @option params [String] :description
    #   Free-text description. Used by every resource type that has one: event
    #   buses, subscribers, and event sources.
    #
    # @option params [String] :state
    #   Customer-controlled run state of a subscriber, set on create or
    #   update. Distinct from the bus lifecycle vocabulary, where ACTIVE means
    #   "provisioned and healthy". Delivery requires State RUNNING on a
    #   subscriber that is not revoked.
    #
    # @option params [String] :resume_position
    #   Position from which delivery resumes when a subscriber is unpaused.
    #   Honored only on an UpdateSubscriber call that transitions State from
    #   STOPPED to RUNNING (unpause); ignored on any other call and not
    #   accepted on Create. Defaults to LAST\_PROCESSED when omitted.
    #
    # @option params [Types::UpdateInvokeConfiguration] :invoke_configuration
    #   Update-able configuration for how the subscriber invokes its target.
    #
    # @option params [Types::FilterConfiguration] :filter_configuration
    #   Configuration for filtering events delivered to a subscriber. On
    #   CreateSubscriber, Filters is required and must contain at least one
    #   Filter with a non-empty Pattern. On UpdateSubscriber, an empty
    #   `FilterConfiguration:{}` clears the existing filter. Any non-empty
    #   shape (including `{Language:X}` without Filters) must contain a valid
    #   Filters list — same contract as CreateSubscriber. A non-empty Filters
    #   list overwrites; an omitted FilterConfiguration preserves existing
    #   state. All Filters are implicitly ANDed — an event must match every
    #   Filter to be delivered.
    #
    # @option params [Types::BatchConfiguration] :batch_configuration
    #   Batching configuration for a subscriber.
    #
    # @option params [Types::Transformer] :transformer
    #   Not applicable to universal (aws-sdk) targets, whose input
    #   transformation is UniversalTargetParameters.Input; a Transformer on
    #   such a target is rejected.
    #
    # @option params [Types::RetryPolicy] :retry_policy
    #   Retry policy for a subscriber.
    #
    # @option params [Types::OnFailureConfiguration] :on_failure_configuration
    #   On-failure configuration: where a failed delivery is sent. Shared by
    #   the subscriber and the EventSource.
    #
    # @option params [Types::LogConfiguration] :log_configuration
    #   Log configuration for a subscriber.
    #
    # @return [Types::UpdateSubscriberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSubscriberResponse#subscriber_arn #subscriber_arn} => String
    #   * {Types::UpdateSubscriberResponse#name #name} => String
    #   * {Types::UpdateSubscriberResponse#event_bus_arn #event_bus_arn} => String
    #   * {Types::UpdateSubscriberResponse#type #type} => String
    #   * {Types::UpdateSubscriberResponse#starting_position #starting_position} => String
    #   * {Types::UpdateSubscriberResponse#point_in_time_configuration #point_in_time_configuration} => Types::PointInTimeConfiguration
    #   * {Types::UpdateSubscriberResponse#state #state} => String
    #   * {Types::UpdateSubscriberResponse#last_modified_time #last_modified_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_subscriber({
    #     subscriber_arn: "SubscriberArn", # required
    #     description: "Description",
    #     state: "RUNNING", # accepts RUNNING, STOPPED
    #     resume_position: "LAST_PROCESSED", # accepts LAST_PROCESSED, LATEST
    #     invoke_configuration: {
    #       role_arn: "RoleArn", # required
    #       lambda_parameters: {
    #         invocation_type: "EVENT", # accepts EVENT, REQUEST_RESPONSE
    #         qualifier: "LambdaParametersQualifierString",
    #         durable_execution_name: "LambdaParametersDurableExecutionNameString",
    #         tenant_id: "LambdaParametersTenantIdString",
    #         invocation_timeout_seconds: "LambdaParametersInvocationTimeoutSecondsString",
    #       },
    #       sqs_parameters: {
    #         message_group_id: "SqsParametersMessageGroupIdString",
    #         message_deduplication_id: "SqsParametersMessageDeduplicationIdString",
    #         delay_seconds: "SqsParametersDelaySecondsString",
    #         message_attributes: {
    #           "MessageAttributeName" => {
    #             data_type: "SqsMessageAttributeValueDataTypeString",
    #             string_value: "String",
    #             binary_value: "String",
    #           },
    #         },
    #         message_system_attributes: {
    #           "MessageAttributeName" => {
    #             data_type: "SqsMessageAttributeValueDataTypeString",
    #             string_value: "String",
    #             binary_value: "String",
    #           },
    #         },
    #       },
    #       sns_parameters: {
    #         message_group_id: "SnsParametersMessageGroupIdString",
    #         message_deduplication_id: "SnsParametersMessageDeduplicationIdString",
    #         subject: "SnsParametersSubjectString",
    #         message_structure: "SnsParametersMessageStructureString",
    #         message_attributes: {
    #           "MessageAttributeName" => {
    #             data_type: "SnsMessageAttributeValueDataTypeString",
    #             string_value: "String",
    #             binary_value: "String",
    #           },
    #         },
    #       },
    #       kinesis_parameters: {
    #         partition_key: "KinesisParametersPartitionKeyString",
    #         explicit_hash_key: "KinesisParametersExplicitHashKeyString",
    #       },
    #       step_functions_parameters: {
    #         invocation_type: "EVENT", # accepts EVENT, REQUEST_RESPONSE
    #         name: "StepFunctionsParametersNameString",
    #         trace_header: "StepFunctionsParametersTraceHeaderString",
    #         invocation_timeout_seconds: "StepFunctionsParametersInvocationTimeoutSecondsString",
    #       },
    #       http_parameters: {
    #         path_parameter_values: ["PathParameter"],
    #         header_parameters: {
    #           "HeaderKey" => "HeaderValue",
    #         },
    #         query_string_parameters: {
    #           "QueryStringKey" => "QueryStringValue",
    #         },
    #         invocation_timeout_seconds: "String",
    #       },
    #       universal_target_parameters: {
    #         input: "UniversalTargetInput", # required
    #         invocation_timeout_seconds: "String",
    #       },
    #       event_bus_v2_parameters: {
    #         metadata: {
    #           "String" => "String",
    #         },
    #         system_metadata: {
    #           event_group_id: "String",
    #           deduplication_id: "String",
    #         },
    #         deduplication_configuration: {
    #           deduplication_type: "CONTENT_BASED", # required, accepts CONTENT_BASED
    #         },
    #       },
    #     },
    #     filter_configuration: {
    #       language: "EVENT_BRIDGE_PATTERN", # accepts EVENT_BRIDGE_PATTERN
    #       filters: [
    #         {
    #           pattern: "EventPattern", # required
    #           scope: "DATA", # required, accepts DATA, METADATA, SYSTEM_METADATA
    #         },
    #       ],
    #     },
    #     batch_configuration: {
    #       max_batch_size: 1,
    #       max_batch_window_in_seconds: 1,
    #     },
    #     transformer: {
    #       type: "RAW", # accepts RAW, WITH_METADATA, JSONATA
    #       jsonata_configuration: {
    #         expression: "JsonataConfigurationExpressionString", # required
    #       },
    #     },
    #     retry_policy: {
    #       max_retry_attempts: 1,
    #       max_event_age_in_seconds: 1,
    #       retry_strategy: "ALL", # accepts ALL
    #     },
    #     on_failure_configuration: {
    #       arn: "DeadLetterQueueArn",
    #     },
    #     log_configuration: {
    #       level: "OFF", # accepts OFF, ERROR, INFO
    #       include_payload: "FULL", # accepts FULL, ON_ERROR_ONLY
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.subscriber_arn #=> String
    #   resp.name #=> String
    #   resp.event_bus_arn #=> String
    #   resp.type #=> String, one of "FIFO", "UNORDERED"
    #   resp.starting_position #=> String, one of "LATEST", "POINT_IN_TIME"
    #   resp.point_in_time_configuration.point_type #=> String, one of "HORIZON", "TIMESTAMP"
    #   resp.point_in_time_configuration.starting_point #=> Time
    #   resp.point_in_time_configuration.end_point #=> Time
    #   resp.state #=> String, one of "RUNNING", "STOPPED"
    #   resp.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/UpdateSubscriber AWS API Documentation
    #
    # @overload update_subscriber(params = {})
    # @param [Hash] params ({})
    def update_subscriber(params = {}, options = {})
      req = build_request(:update_subscriber, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::EventBridgeV2')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-eventbridgev2'
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
    # | waiter_name       | params                      | :delay   | :max_attempts |
    # | ----------------- | --------------------------- | -------- | ------------- |
    # | event_bus_active  | {Client#describe_event_bus} | 2        | 60            |
    # | event_bus_deleted | {Client#describe_event_bus} | 2        | 60            |
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
        event_bus_active: Waiters::EventBusActive,
        event_bus_deleted: Waiters::EventBusDeleted
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
