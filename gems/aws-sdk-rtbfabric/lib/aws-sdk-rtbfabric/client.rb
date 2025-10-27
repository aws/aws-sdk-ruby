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

module Aws::RTBFabric
  # An API client for RTBFabric.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::RTBFabric::Client.new(
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

    @identifier = :rtbfabric

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
    add_plugin(Aws::RTBFabric::Plugins::Endpoints)

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
    #   @option options [Aws::RTBFabric::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::RTBFabric::EndpointParameters`.
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

    # Accepts a link request between RTB applications.
    #
    # When a requester RTB application requests to link with a responder RTB
    # application, the responder can use this operation to accept the link
    # request and establish the connection.
    #
    # @option params [required, String] :gateway_id
    #   The unique identifier of the gateway.
    #
    # @option params [required, String] :link_id
    #   The unique identifier of the link.
    #
    # @option params [Types::LinkAttributes] :attributes
    #   Attributes of the link.
    #
    # @option params [required, Types::LinkLogSettings] :log_settings
    #   Settings for the application logs.
    #
    # @return [Types::AcceptLinkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcceptLinkResponse#gateway_id #gateway_id} => String
    #   * {Types::AcceptLinkResponse#peer_gateway_id #peer_gateway_id} => String
    #   * {Types::AcceptLinkResponse#status #status} => String
    #   * {Types::AcceptLinkResponse#created_at #created_at} => Time
    #   * {Types::AcceptLinkResponse#updated_at #updated_at} => Time
    #   * {Types::AcceptLinkResponse#direction #direction} => String
    #   * {Types::AcceptLinkResponse#flow_modules #flow_modules} => Array&lt;Types::ModuleConfiguration&gt;
    #   * {Types::AcceptLinkResponse#pending_flow_modules #pending_flow_modules} => Array&lt;Types::ModuleConfiguration&gt;
    #   * {Types::AcceptLinkResponse#attributes #attributes} => Types::LinkAttributes
    #   * {Types::AcceptLinkResponse#link_id #link_id} => String
    #
    #
    # @example Example: Accept a link request
    #
    #   # Accepts a link request from requester gateway
    #
    #   resp = client.accept_link({
    #     gateway_id: "rtb-gw-12345678", 
    #     link_id: "link-87654321", 
    #     log_settings: {
    #       application_logs: {
    #         sampling: {
    #           error_log: 100.0, 
    #           filter_log: 0.0, 
    #         }, 
    #       }, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     created_at: Time.parse("2024-01-15T10:30:00Z"), 
    #     gateway_id: "rtb-gw-12345678", 
    #     link_id: "link-87654321", 
    #     peer_gateway_id: "rtb-gw-87654321", 
    #     status: "ACCEPTED", 
    #     updated_at: Time.parse("2024-01-15T10:35:00Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_link({
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #     attributes: {
    #       responder_error_masking: [
    #         {
    #           http_code: "ResponderErrorMaskingForHttpCodeHttpCodeString", # required
    #           action: "NO_BID", # required, accepts NO_BID, PASSTHROUGH
    #           logging_types: ["NONE"], # required, accepts NONE, METRIC, RESPONSE
    #           response_logging_percentage: 1.0,
    #         },
    #       ],
    #       customer_provided_id: "CustomerProvidedId",
    #     },
    #     log_settings: { # required
    #       application_logs: { # required
    #         sampling: { # required
    #           error_log: 1.0, # required
    #           filter_log: 1.0, # required
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_id #=> String
    #   resp.peer_gateway_id #=> String
    #   resp.status #=> String, one of "PENDING_CREATION", "PENDING_REQUEST", "REQUESTED", "ACCEPTED", "ACTIVE", "REJECTED", "FAILED", "PENDING_DELETION", "DELETED", "PENDING_UPDATE", "PENDING_ISOLATION", "ISOLATED", "PENDING_RESTORATION"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.direction #=> String, one of "RESPONSE", "REQUEST"
    #   resp.flow_modules #=> Array
    #   resp.flow_modules[0].version #=> String
    #   resp.flow_modules[0].name #=> String
    #   resp.flow_modules[0].depends_on #=> Array
    #   resp.flow_modules[0].depends_on[0] #=> String
    #   resp.flow_modules[0].module_parameters.no_bid.reason #=> String
    #   resp.flow_modules[0].module_parameters.no_bid.reason_code #=> Integer
    #   resp.flow_modules[0].module_parameters.no_bid.pass_through_percentage #=> Float
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_type #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration #=> Array
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria #=> Array
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].path #=> String
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].values #=> Array
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].values[0] #=> String
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.action.no_bid.no_bid_reason_code #=> Integer
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.action.header_tag.name #=> String
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.action.header_tag.value #=> String
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.holdback_percentage #=> Float
    #   resp.flow_modules[0].module_parameters.rate_limiter.tps #=> Float
    #   resp.pending_flow_modules #=> Array
    #   resp.pending_flow_modules[0].version #=> String
    #   resp.pending_flow_modules[0].name #=> String
    #   resp.pending_flow_modules[0].depends_on #=> Array
    #   resp.pending_flow_modules[0].depends_on[0] #=> String
    #   resp.pending_flow_modules[0].module_parameters.no_bid.reason #=> String
    #   resp.pending_flow_modules[0].module_parameters.no_bid.reason_code #=> Integer
    #   resp.pending_flow_modules[0].module_parameters.no_bid.pass_through_percentage #=> Float
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_type #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration #=> Array
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria #=> Array
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].path #=> String
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].values #=> Array
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].values[0] #=> String
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.action.no_bid.no_bid_reason_code #=> Integer
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.action.header_tag.name #=> String
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.action.header_tag.value #=> String
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.holdback_percentage #=> Float
    #   resp.pending_flow_modules[0].module_parameters.rate_limiter.tps #=> Float
    #   resp.attributes.responder_error_masking #=> Array
    #   resp.attributes.responder_error_masking[0].http_code #=> String
    #   resp.attributes.responder_error_masking[0].action #=> String, one of "NO_BID", "PASSTHROUGH"
    #   resp.attributes.responder_error_masking[0].logging_types #=> Array
    #   resp.attributes.responder_error_masking[0].logging_types[0] #=> String, one of "NONE", "METRIC", "RESPONSE"
    #   resp.attributes.responder_error_masking[0].response_logging_percentage #=> Float
    #   resp.attributes.customer_provided_id #=> String
    #   resp.link_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/AcceptLink AWS API Documentation
    #
    # @overload accept_link(params = {})
    # @param [Hash] params ({})
    def accept_link(params = {}, options = {})
      req = build_request(:accept_link, params)
      req.send_request(options)
    end

    # Creates an inbound external link.
    #
    # @option params [required, String] :client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :gateway_id
    #   The unique identifier of the gateway.
    #
    # @option params [Types::LinkAttributes] :attributes
    #   Attributes of the link.
    #
    # @option params [Hash<String,String>] :tags
    #   A map of the key-value pairs of the tag or tags to assign to the
    #   resource.
    #
    # @return [Types::CreateInboundExternalLinkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInboundExternalLinkResponse#gateway_id #gateway_id} => String
    #   * {Types::CreateInboundExternalLinkResponse#link_id #link_id} => String
    #   * {Types::CreateInboundExternalLinkResponse#status #status} => String
    #   * {Types::CreateInboundExternalLinkResponse#domain_name #domain_name} => String
    #
    #
    # @example Example: Create an inbound external link
    #
    #   # Create an inbound external link for a responder gateway
    #
    #   resp = client.create_inbound_external_link({
    #     client_token: "randomClientToken", 
    #     gateway_id: "rtb-gw-12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     domain_name: "rtb-gw-12345678.example.com", 
    #     gateway_id: "rtb-gw-12345678", 
    #     link_id: "link-87654321", 
    #     status: "ACTIVE", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_inbound_external_link({
    #     client_token: "String", # required
    #     gateway_id: "GatewayId", # required
    #     attributes: {
    #       responder_error_masking: [
    #         {
    #           http_code: "ResponderErrorMaskingForHttpCodeHttpCodeString", # required
    #           action: "NO_BID", # required, accepts NO_BID, PASSTHROUGH
    #           logging_types: ["NONE"], # required, accepts NONE, METRIC, RESPONSE
    #           response_logging_percentage: 1.0,
    #         },
    #       ],
    #       customer_provided_id: "CustomerProvidedId",
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_id #=> String
    #   resp.link_id #=> String
    #   resp.status #=> String, one of "PENDING_CREATION", "PENDING_REQUEST", "REQUESTED", "ACCEPTED", "ACTIVE", "REJECTED", "FAILED", "PENDING_DELETION", "DELETED", "PENDING_UPDATE", "PENDING_ISOLATION", "ISOLATED", "PENDING_RESTORATION"
    #   resp.domain_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/CreateInboundExternalLink AWS API Documentation
    #
    # @overload create_inbound_external_link(params = {})
    # @param [Hash] params ({})
    def create_inbound_external_link(params = {}, options = {})
      req = build_request(:create_inbound_external_link, params)
      req.send_request(options)
    end

    # Creates a new link between RTB applications.
    #
    # Establishes a connection that allows RTB applications to communicate
    # and exchange bid requests and responses.
    #
    # @option params [required, String] :gateway_id
    #   The unique identifier of the gateway.
    #
    # @option params [required, String] :peer_gateway_id
    #   The unique identifier of the peer gateway.
    #
    # @option params [Types::LinkAttributes] :attributes
    #   Attributes of the link.
    #
    # @option params [Boolean] :http_responder_allowed
    #   Boolean to specify if an HTTP responder is allowed.
    #
    # @option params [Hash<String,String>] :tags
    #   A map of the key-value pairs of the tag or tags to assign to the
    #   resource.
    #
    # @option params [required, Types::LinkLogSettings] :log_settings
    #   Settings for the application logs.
    #
    # @return [Types::CreateLinkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLinkResponse#gateway_id #gateway_id} => String
    #   * {Types::CreateLinkResponse#peer_gateway_id #peer_gateway_id} => String
    #   * {Types::CreateLinkResponse#status #status} => String
    #   * {Types::CreateLinkResponse#created_at #created_at} => Time
    #   * {Types::CreateLinkResponse#updated_at #updated_at} => Time
    #   * {Types::CreateLinkResponse#direction #direction} => String
    #   * {Types::CreateLinkResponse#flow_modules #flow_modules} => Array&lt;Types::ModuleConfiguration&gt;
    #   * {Types::CreateLinkResponse#pending_flow_modules #pending_flow_modules} => Array&lt;Types::ModuleConfiguration&gt;
    #   * {Types::CreateLinkResponse#attributes #attributes} => Types::LinkAttributes
    #   * {Types::CreateLinkResponse#link_id #link_id} => String
    #   * {Types::CreateLinkResponse#customer_provided_id #customer_provided_id} => String
    #
    #
    # @example Example: Create a new link
    #
    #   # Creates a new link between RTB applications
    #
    #   resp = client.create_link({
    #     gateway_id: "rtb-gw-12345678", 
    #     log_settings: {
    #       application_logs: {
    #         sampling: {
    #           error_log: 100.0, 
    #           filter_log: 0.0, 
    #         }, 
    #       }, 
    #     }, 
    #     peer_gateway_id: "rtb-gw-87654321", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     created_at: Time.parse("2024-01-15T10:30:00Z"), 
    #     gateway_id: "rtb-gw-12345678", 
    #     link_id: "link-87654321", 
    #     peer_gateway_id: "rtb-gw-87654321", 
    #     status: "PENDING_REQUEST", 
    #     updated_at: Time.parse("2024-01-15T10:30:00Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_link({
    #     gateway_id: "GatewayId", # required
    #     peer_gateway_id: "GatewayId", # required
    #     attributes: {
    #       responder_error_masking: [
    #         {
    #           http_code: "ResponderErrorMaskingForHttpCodeHttpCodeString", # required
    #           action: "NO_BID", # required, accepts NO_BID, PASSTHROUGH
    #           logging_types: ["NONE"], # required, accepts NONE, METRIC, RESPONSE
    #           response_logging_percentage: 1.0,
    #         },
    #       ],
    #       customer_provided_id: "CustomerProvidedId",
    #     },
    #     http_responder_allowed: false,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     log_settings: { # required
    #       application_logs: { # required
    #         sampling: { # required
    #           error_log: 1.0, # required
    #           filter_log: 1.0, # required
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_id #=> String
    #   resp.peer_gateway_id #=> String
    #   resp.status #=> String, one of "PENDING_CREATION", "PENDING_REQUEST", "REQUESTED", "ACCEPTED", "ACTIVE", "REJECTED", "FAILED", "PENDING_DELETION", "DELETED", "PENDING_UPDATE", "PENDING_ISOLATION", "ISOLATED", "PENDING_RESTORATION"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.direction #=> String, one of "RESPONSE", "REQUEST"
    #   resp.flow_modules #=> Array
    #   resp.flow_modules[0].version #=> String
    #   resp.flow_modules[0].name #=> String
    #   resp.flow_modules[0].depends_on #=> Array
    #   resp.flow_modules[0].depends_on[0] #=> String
    #   resp.flow_modules[0].module_parameters.no_bid.reason #=> String
    #   resp.flow_modules[0].module_parameters.no_bid.reason_code #=> Integer
    #   resp.flow_modules[0].module_parameters.no_bid.pass_through_percentage #=> Float
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_type #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration #=> Array
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria #=> Array
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].path #=> String
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].values #=> Array
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].values[0] #=> String
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.action.no_bid.no_bid_reason_code #=> Integer
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.action.header_tag.name #=> String
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.action.header_tag.value #=> String
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.holdback_percentage #=> Float
    #   resp.flow_modules[0].module_parameters.rate_limiter.tps #=> Float
    #   resp.pending_flow_modules #=> Array
    #   resp.pending_flow_modules[0].version #=> String
    #   resp.pending_flow_modules[0].name #=> String
    #   resp.pending_flow_modules[0].depends_on #=> Array
    #   resp.pending_flow_modules[0].depends_on[0] #=> String
    #   resp.pending_flow_modules[0].module_parameters.no_bid.reason #=> String
    #   resp.pending_flow_modules[0].module_parameters.no_bid.reason_code #=> Integer
    #   resp.pending_flow_modules[0].module_parameters.no_bid.pass_through_percentage #=> Float
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_type #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration #=> Array
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria #=> Array
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].path #=> String
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].values #=> Array
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].values[0] #=> String
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.action.no_bid.no_bid_reason_code #=> Integer
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.action.header_tag.name #=> String
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.action.header_tag.value #=> String
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.holdback_percentage #=> Float
    #   resp.pending_flow_modules[0].module_parameters.rate_limiter.tps #=> Float
    #   resp.attributes.responder_error_masking #=> Array
    #   resp.attributes.responder_error_masking[0].http_code #=> String
    #   resp.attributes.responder_error_masking[0].action #=> String, one of "NO_BID", "PASSTHROUGH"
    #   resp.attributes.responder_error_masking[0].logging_types #=> Array
    #   resp.attributes.responder_error_masking[0].logging_types[0] #=> String, one of "NONE", "METRIC", "RESPONSE"
    #   resp.attributes.responder_error_masking[0].response_logging_percentage #=> Float
    #   resp.attributes.customer_provided_id #=> String
    #   resp.link_id #=> String
    #   resp.customer_provided_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/CreateLink AWS API Documentation
    #
    # @overload create_link(params = {})
    # @param [Hash] params ({})
    def create_link(params = {}, options = {})
      req = build_request(:create_link, params)
      req.send_request(options)
    end

    # Creates an outbound external link.
    #
    # @option params [required, String] :client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :gateway_id
    #   The unique identifier of the gateway.
    #
    # @option params [required, String] :public_endpoint
    #   The public endpoint of the link.
    #
    # @option params [Hash<String,String>] :tags
    #   A map of the key-value pairs of the tag or tags to assign to the
    #   resource.
    #
    # @return [Types::CreateOutboundExternalLinkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOutboundExternalLinkResponse#gateway_id #gateway_id} => String
    #   * {Types::CreateOutboundExternalLinkResponse#link_id #link_id} => String
    #   * {Types::CreateOutboundExternalLinkResponse#status #status} => String
    #
    #
    # @example Example: Create an outbound external link
    #
    #   # Create an outbound external link for a requester gateway to connect to external public responder endpoints
    #
    #   resp = client.create_outbound_external_link({
    #     client_token: "12345678-1234-1234-1234-123456789012", 
    #     gateway_id: "rtb-gw-12345678", 
    #     public_endpoint: "https://external-responder.example.com", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_id: "rtb-gw-12345678", 
    #     link_id: "link-87654321", 
    #     status: "ACTIVE", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_outbound_external_link({
    #     client_token: "String", # required
    #     gateway_id: "GatewayId", # required
    #     public_endpoint: "URL", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_id #=> String
    #   resp.link_id #=> String
    #   resp.status #=> String, one of "PENDING_CREATION", "PENDING_REQUEST", "REQUESTED", "ACCEPTED", "ACTIVE", "REJECTED", "FAILED", "PENDING_DELETION", "DELETED", "PENDING_UPDATE", "PENDING_ISOLATION", "ISOLATED", "PENDING_RESTORATION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/CreateOutboundExternalLink AWS API Documentation
    #
    # @overload create_outbound_external_link(params = {})
    # @param [Hash] params ({})
    def create_outbound_external_link(params = {}, options = {})
      req = build_request(:create_outbound_external_link, params)
      req.send_request(options)
    end

    # Creates a requester gateway.
    #
    # @option params [required, String] :vpc_id
    #   The unique identifier of the Virtual Private Cloud (VPC).
    #
    # @option params [required, Array<String>] :subnet_ids
    #   The unique identifiers of the subnets.
    #
    # @option params [required, Array<String>] :security_group_ids
    #   The unique identifiers of the security groups.
    #
    # @option params [required, String] :client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   An optional description for the requester gateway.
    #
    # @option params [Hash<String,String>] :tags
    #   A map of the key-value pairs of the tag or tags to assign to the
    #   resource.
    #
    # @return [Types::CreateRequesterGatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRequesterGatewayResponse#gateway_id #gateway_id} => String
    #   * {Types::CreateRequesterGatewayResponse#domain_name #domain_name} => String
    #   * {Types::CreateRequesterGatewayResponse#status #status} => String
    #
    #
    # @example Example: Create a requester gateway
    #
    #   # Create requester gateway
    #
    #   resp = client.create_requester_gateway({
    #     client_token: "12345678-1234-1234-1234-123456789012", 
    #     description: "My requester gateway", 
    #     security_group_ids: [
    #       "sg-12345678", 
    #     ], 
    #     subnet_ids: [
    #       "subnet-12345678", 
    #       "subnet-87654321", 
    #     ], 
    #     vpc_id: "vpc-12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     domain_name: "rtb-gw-12345678.example.com", 
    #     gateway_id: "rtb-gw-12345678", 
    #     status: "ACTIVE", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_requester_gateway({
    #     vpc_id: "VpcId", # required
    #     subnet_ids: ["SubnetId"], # required
    #     security_group_ids: ["SecurityGroupId"], # required
    #     client_token: "String", # required
    #     description: "CreateRequesterGatewayRequestDescriptionString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_id #=> String
    #   resp.domain_name #=> String
    #   resp.status #=> String, one of "PENDING_CREATION", "ACTIVE", "PENDING_DELETION", "DELETED", "ERROR", "PENDING_UPDATE", "ISOLATED", "PENDING_ISOLATION", "PENDING_RESTORATION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/CreateRequesterGateway AWS API Documentation
    #
    # @overload create_requester_gateway(params = {})
    # @param [Hash] params ({})
    def create_requester_gateway(params = {}, options = {})
      req = build_request(:create_requester_gateway, params)
      req.send_request(options)
    end

    # Creates a responder gateway.
    #
    # @option params [required, String] :vpc_id
    #   The unique identifier of the Virtual Private Cloud (VPC).
    #
    # @option params [required, Array<String>] :subnet_ids
    #   The unique identifiers of the subnets.
    #
    # @option params [required, Array<String>] :security_group_ids
    #   The unique identifiers of the security groups.
    #
    # @option params [String] :domain_name
    #   The domain name for the responder gateway.
    #
    # @option params [required, Integer] :port
    #   The networking port to use.
    #
    # @option params [required, String] :protocol
    #   The networking protocol to use.
    #
    # @option params [Types::TrustStoreConfiguration] :trust_store_configuration
    #   The configuration of the trust store.
    #
    # @option params [Types::ManagedEndpointConfiguration] :managed_endpoint_configuration
    #   The configuration for the managed endpoint.
    #
    # @option params [required, String] :client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   An optional description for the responder gateway.
    #
    # @option params [Hash<String,String>] :tags
    #   A map of the key-value pairs of the tag or tags to assign to the
    #   resource.
    #
    # @return [Types::CreateResponderGatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateResponderGatewayResponse#gateway_id #gateway_id} => String
    #   * {Types::CreateResponderGatewayResponse#status #status} => String
    #
    #
    # @example Example: Create a responder gateway
    #
    #   # Create responder gateway
    #
    #   resp = client.create_responder_gateway({
    #     client_token: "12345678-1234-1234-1234-123456789012", 
    #     description: "My responder gateway", 
    #     port: 443, 
    #     protocol: "HTTPS", 
    #     security_group_ids: [
    #       "sg-12345678", 
    #     ], 
    #     subnet_ids: [
    #       "subnet-12345678", 
    #       "subnet-87654321", 
    #     ], 
    #     vpc_id: "vpc-12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_id: "rtb-gw-12345678", 
    #     status: "ACTIVE", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_responder_gateway({
    #     vpc_id: "VpcId", # required
    #     subnet_ids: ["SubnetId"], # required
    #     security_group_ids: ["SecurityGroupId"], # required
    #     domain_name: "DomainName",
    #     port: 1, # required
    #     protocol: "HTTP", # required, accepts HTTP, HTTPS
    #     trust_store_configuration: {
    #       certificate_authority_certificates: ["Base64EncodedCertificateChain"], # required
    #     },
    #     managed_endpoint_configuration: {
    #       auto_scaling_groups: {
    #         auto_scaling_group_names: ["AutoScalingGroupName"], # required
    #         role_arn: "String", # required
    #       },
    #       eks_endpoints: {
    #         endpoints_resource_name: "KubernetesEndpointsResourceName", # required
    #         endpoints_resource_namespace: "KubernetesNamespace", # required
    #         cluster_api_server_endpoint_uri: "URI", # required
    #         cluster_api_server_ca_certificate_chain: "Base64EncodedCertificateChain", # required
    #         cluster_name: "KubernetesClusterName", # required
    #         role_arn: "String", # required
    #       },
    #     },
    #     client_token: "String", # required
    #     description: "CreateResponderGatewayRequestDescriptionString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_id #=> String
    #   resp.status #=> String, one of "PENDING_CREATION", "ACTIVE", "PENDING_DELETION", "DELETED", "ERROR", "PENDING_UPDATE", "ISOLATED", "PENDING_ISOLATION", "PENDING_RESTORATION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/CreateResponderGateway AWS API Documentation
    #
    # @overload create_responder_gateway(params = {})
    # @param [Hash] params ({})
    def create_responder_gateway(params = {}, options = {})
      req = build_request(:create_responder_gateway, params)
      req.send_request(options)
    end

    # Deletes an inbound external link.
    #
    # @option params [required, String] :gateway_id
    #   The unique identifier of the gateway.
    #
    # @option params [required, String] :link_id
    #   The unique identifier of the link.
    #
    # @return [Types::DeleteInboundExternalLinkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteInboundExternalLinkResponse#link_id #link_id} => String
    #   * {Types::DeleteInboundExternalLinkResponse#status #status} => String
    #
    #
    # @example Example: Delete an inbound external link
    #
    #   # Delete an inbound external link
    #
    #   resp = client.delete_inbound_external_link({
    #     gateway_id: "rtb-gw-12345678", 
    #     link_id: "link-87654321", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     link_id: "link-87654321", 
    #     status: "DELETED", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_inbound_external_link({
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.link_id #=> String
    #   resp.status #=> String, one of "PENDING_CREATION", "PENDING_REQUEST", "REQUESTED", "ACCEPTED", "ACTIVE", "REJECTED", "FAILED", "PENDING_DELETION", "DELETED", "PENDING_UPDATE", "PENDING_ISOLATION", "ISOLATED", "PENDING_RESTORATION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/DeleteInboundExternalLink AWS API Documentation
    #
    # @overload delete_inbound_external_link(params = {})
    # @param [Hash] params ({})
    def delete_inbound_external_link(params = {}, options = {})
      req = build_request(:delete_inbound_external_link, params)
      req.send_request(options)
    end

    # Deletes a link between RTB applications.
    #
    # Permanently removes the connection between RTB applications. This
    # action cannot be undone.
    #
    # @option params [required, String] :gateway_id
    #   The unique identifier of the gateway.
    #
    # @option params [required, String] :link_id
    #   The unique identifier of the link.
    #
    # @return [Types::DeleteLinkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteLinkResponse#link_id #link_id} => String
    #   * {Types::DeleteLinkResponse#status #status} => String
    #
    #
    # @example Example: Delete a link
    #
    #   # Deletes an existing link
    #
    #   resp = client.delete_link({
    #     gateway_id: "rtb-gw-12345678", 
    #     link_id: "link-87654321", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     link_id: "link-87654321", 
    #     status: "PENDING_DELETION", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_link({
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.link_id #=> String
    #   resp.status #=> String, one of "PENDING_CREATION", "PENDING_REQUEST", "REQUESTED", "ACCEPTED", "ACTIVE", "REJECTED", "FAILED", "PENDING_DELETION", "DELETED", "PENDING_UPDATE", "PENDING_ISOLATION", "ISOLATED", "PENDING_RESTORATION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/DeleteLink AWS API Documentation
    #
    # @overload delete_link(params = {})
    # @param [Hash] params ({})
    def delete_link(params = {}, options = {})
      req = build_request(:delete_link, params)
      req.send_request(options)
    end

    # Deletes an outbound external link.
    #
    # @option params [required, String] :gateway_id
    #   The unique identifier of the gateway.
    #
    # @option params [required, String] :link_id
    #   The unique identifier of the link.
    #
    # @return [Types::DeleteOutboundExternalLinkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteOutboundExternalLinkResponse#link_id #link_id} => String
    #   * {Types::DeleteOutboundExternalLinkResponse#status #status} => String
    #
    #
    # @example Example: Delete an outbound external link
    #
    #   # Delete an outbound external link
    #
    #   resp = client.delete_outbound_external_link({
    #     gateway_id: "rtb-gw-12345678", 
    #     link_id: "link-87654321", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     link_id: "link-87654321", 
    #     status: "DELETED", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_outbound_external_link({
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.link_id #=> String
    #   resp.status #=> String, one of "PENDING_CREATION", "PENDING_REQUEST", "REQUESTED", "ACCEPTED", "ACTIVE", "REJECTED", "FAILED", "PENDING_DELETION", "DELETED", "PENDING_UPDATE", "PENDING_ISOLATION", "ISOLATED", "PENDING_RESTORATION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/DeleteOutboundExternalLink AWS API Documentation
    #
    # @overload delete_outbound_external_link(params = {})
    # @param [Hash] params ({})
    def delete_outbound_external_link(params = {}, options = {})
      req = build_request(:delete_outbound_external_link, params)
      req.send_request(options)
    end

    # Deletes a requester gateway.
    #
    # @option params [required, String] :gateway_id
    #   The unique identifier of the gateway.
    #
    # @return [Types::DeleteRequesterGatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRequesterGatewayResponse#gateway_id #gateway_id} => String
    #   * {Types::DeleteRequesterGatewayResponse#status #status} => String
    #
    #
    # @example Example: Delete a requester gateway
    #
    #   # Delete requester gateway
    #
    #   resp = client.delete_requester_gateway({
    #     gateway_id: "rtb-gw-12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_id: "rtb-gw-12345678", 
    #     status: "PENDING_DELETION", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_requester_gateway({
    #     gateway_id: "GatewayId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_id #=> String
    #   resp.status #=> String, one of "PENDING_CREATION", "ACTIVE", "PENDING_DELETION", "DELETED", "ERROR", "PENDING_UPDATE", "ISOLATED", "PENDING_ISOLATION", "PENDING_RESTORATION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/DeleteRequesterGateway AWS API Documentation
    #
    # @overload delete_requester_gateway(params = {})
    # @param [Hash] params ({})
    def delete_requester_gateway(params = {}, options = {})
      req = build_request(:delete_requester_gateway, params)
      req.send_request(options)
    end

    # Deletes a responder gateway.
    #
    # @option params [required, String] :gateway_id
    #   The unique identifier of the gateway.
    #
    # @return [Types::DeleteResponderGatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteResponderGatewayResponse#gateway_id #gateway_id} => String
    #   * {Types::DeleteResponderGatewayResponse#status #status} => String
    #
    #
    # @example Example: Delete a responder gateway
    #
    #   # Delete responder gateway
    #
    #   resp = client.delete_responder_gateway({
    #     gateway_id: "rtb-gw-12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_id: "rtb-gw-12345678", 
    #     status: "PENDING_DELETION", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_responder_gateway({
    #     gateway_id: "GatewayId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_id #=> String
    #   resp.status #=> String, one of "PENDING_CREATION", "ACTIVE", "PENDING_DELETION", "DELETED", "ERROR", "PENDING_UPDATE", "ISOLATED", "PENDING_ISOLATION", "PENDING_RESTORATION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/DeleteResponderGateway AWS API Documentation
    #
    # @overload delete_responder_gateway(params = {})
    # @param [Hash] params ({})
    def delete_responder_gateway(params = {}, options = {})
      req = build_request(:delete_responder_gateway, params)
      req.send_request(options)
    end

    # Retrieves information about an inbound external link.
    #
    # @option params [required, String] :gateway_id
    #   The unique identifier of the gateway.
    #
    # @option params [required, String] :link_id
    #   The unique identifier of the link.
    #
    # @return [Types::GetInboundExternalLinkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInboundExternalLinkResponse#gateway_id #gateway_id} => String
    #   * {Types::GetInboundExternalLinkResponse#link_id #link_id} => String
    #   * {Types::GetInboundExternalLinkResponse#status #status} => String
    #   * {Types::GetInboundExternalLinkResponse#domain_name #domain_name} => String
    #   * {Types::GetInboundExternalLinkResponse#flow_modules #flow_modules} => Array&lt;Types::ModuleConfiguration&gt;
    #   * {Types::GetInboundExternalLinkResponse#pending_flow_modules #pending_flow_modules} => Array&lt;Types::ModuleConfiguration&gt;
    #   * {Types::GetInboundExternalLinkResponse#attributes #attributes} => Types::LinkAttributes
    #   * {Types::GetInboundExternalLinkResponse#created_at #created_at} => Time
    #   * {Types::GetInboundExternalLinkResponse#updated_at #updated_at} => Time
    #   * {Types::GetInboundExternalLinkResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    #
    # @example Example: Get inbound external link details
    #
    #   # Get details of an inbound external link
    #
    #   resp = client.get_inbound_external_link({
    #     gateway_id: "rtb-gw-12345678", 
    #     link_id: "link-87654321", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     created_at: Time.parse("2024-01-15T10:30:00Z"), 
    #     domain_name: "rtb-gw-12345678.example.com", 
    #     gateway_id: "rtb-gw-12345678", 
    #     link_id: "link-87654321", 
    #     status: "ACTIVE", 
    #     updated_at: Time.parse("2024-01-15T10:35:00Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_inbound_external_link({
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_id #=> String
    #   resp.link_id #=> String
    #   resp.status #=> String, one of "PENDING_CREATION", "PENDING_REQUEST", "REQUESTED", "ACCEPTED", "ACTIVE", "REJECTED", "FAILED", "PENDING_DELETION", "DELETED", "PENDING_UPDATE", "PENDING_ISOLATION", "ISOLATED", "PENDING_RESTORATION"
    #   resp.domain_name #=> String
    #   resp.flow_modules #=> Array
    #   resp.flow_modules[0].version #=> String
    #   resp.flow_modules[0].name #=> String
    #   resp.flow_modules[0].depends_on #=> Array
    #   resp.flow_modules[0].depends_on[0] #=> String
    #   resp.flow_modules[0].module_parameters.no_bid.reason #=> String
    #   resp.flow_modules[0].module_parameters.no_bid.reason_code #=> Integer
    #   resp.flow_modules[0].module_parameters.no_bid.pass_through_percentage #=> Float
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_type #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration #=> Array
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria #=> Array
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].path #=> String
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].values #=> Array
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].values[0] #=> String
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.action.no_bid.no_bid_reason_code #=> Integer
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.action.header_tag.name #=> String
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.action.header_tag.value #=> String
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.holdback_percentage #=> Float
    #   resp.flow_modules[0].module_parameters.rate_limiter.tps #=> Float
    #   resp.pending_flow_modules #=> Array
    #   resp.pending_flow_modules[0].version #=> String
    #   resp.pending_flow_modules[0].name #=> String
    #   resp.pending_flow_modules[0].depends_on #=> Array
    #   resp.pending_flow_modules[0].depends_on[0] #=> String
    #   resp.pending_flow_modules[0].module_parameters.no_bid.reason #=> String
    #   resp.pending_flow_modules[0].module_parameters.no_bid.reason_code #=> Integer
    #   resp.pending_flow_modules[0].module_parameters.no_bid.pass_through_percentage #=> Float
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_type #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration #=> Array
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria #=> Array
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].path #=> String
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].values #=> Array
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].values[0] #=> String
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.action.no_bid.no_bid_reason_code #=> Integer
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.action.header_tag.name #=> String
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.action.header_tag.value #=> String
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.holdback_percentage #=> Float
    #   resp.pending_flow_modules[0].module_parameters.rate_limiter.tps #=> Float
    #   resp.attributes.responder_error_masking #=> Array
    #   resp.attributes.responder_error_masking[0].http_code #=> String
    #   resp.attributes.responder_error_masking[0].action #=> String, one of "NO_BID", "PASSTHROUGH"
    #   resp.attributes.responder_error_masking[0].logging_types #=> Array
    #   resp.attributes.responder_error_masking[0].logging_types[0] #=> String, one of "NONE", "METRIC", "RESPONSE"
    #   resp.attributes.responder_error_masking[0].response_logging_percentage #=> Float
    #   resp.attributes.customer_provided_id #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * inbound_external_link_active
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/GetInboundExternalLink AWS API Documentation
    #
    # @overload get_inbound_external_link(params = {})
    # @param [Hash] params ({})
    def get_inbound_external_link(params = {}, options = {})
      req = build_request(:get_inbound_external_link, params)
      req.send_request(options)
    end

    # Retrieves information about a link between RTB applications.
    #
    # Returns detailed information about the link configuration, status, and
    # associated RTB applications.
    #
    # @option params [required, String] :gateway_id
    #   The unique identifier of the gateway.
    #
    # @option params [required, String] :link_id
    #   The unique identifier of the link.
    #
    # @return [Types::GetLinkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLinkResponse#gateway_id #gateway_id} => String
    #   * {Types::GetLinkResponse#peer_gateway_id #peer_gateway_id} => String
    #   * {Types::GetLinkResponse#status #status} => String
    #   * {Types::GetLinkResponse#created_at #created_at} => Time
    #   * {Types::GetLinkResponse#updated_at #updated_at} => Time
    #   * {Types::GetLinkResponse#direction #direction} => String
    #   * {Types::GetLinkResponse#flow_modules #flow_modules} => Array&lt;Types::ModuleConfiguration&gt;
    #   * {Types::GetLinkResponse#pending_flow_modules #pending_flow_modules} => Array&lt;Types::ModuleConfiguration&gt;
    #   * {Types::GetLinkResponse#attributes #attributes} => Types::LinkAttributes
    #   * {Types::GetLinkResponse#link_id #link_id} => String
    #   * {Types::GetLinkResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetLinkResponse#log_settings #log_settings} => Types::LinkLogSettings
    #
    #
    # @example Example: Get link details
    #
    #   # Retrieves details of a specific link
    #
    #   resp = client.get_link({
    #     gateway_id: "rtb-gw-12345678", 
    #     link_id: "link-87654321", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     created_at: Time.parse("2024-01-15T10:30:00Z"), 
    #     gateway_id: "rtb-gw-12345678", 
    #     link_id: "link-87654321", 
    #     peer_gateway_id: "rtb-gw-87654321", 
    #     status: "ACTIVE", 
    #     updated_at: Time.parse("2024-01-15T10:35:00Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_link({
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_id #=> String
    #   resp.peer_gateway_id #=> String
    #   resp.status #=> String, one of "PENDING_CREATION", "PENDING_REQUEST", "REQUESTED", "ACCEPTED", "ACTIVE", "REJECTED", "FAILED", "PENDING_DELETION", "DELETED", "PENDING_UPDATE", "PENDING_ISOLATION", "ISOLATED", "PENDING_RESTORATION"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.direction #=> String, one of "RESPONSE", "REQUEST"
    #   resp.flow_modules #=> Array
    #   resp.flow_modules[0].version #=> String
    #   resp.flow_modules[0].name #=> String
    #   resp.flow_modules[0].depends_on #=> Array
    #   resp.flow_modules[0].depends_on[0] #=> String
    #   resp.flow_modules[0].module_parameters.no_bid.reason #=> String
    #   resp.flow_modules[0].module_parameters.no_bid.reason_code #=> Integer
    #   resp.flow_modules[0].module_parameters.no_bid.pass_through_percentage #=> Float
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_type #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration #=> Array
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria #=> Array
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].path #=> String
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].values #=> Array
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].values[0] #=> String
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.action.no_bid.no_bid_reason_code #=> Integer
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.action.header_tag.name #=> String
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.action.header_tag.value #=> String
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.holdback_percentage #=> Float
    #   resp.flow_modules[0].module_parameters.rate_limiter.tps #=> Float
    #   resp.pending_flow_modules #=> Array
    #   resp.pending_flow_modules[0].version #=> String
    #   resp.pending_flow_modules[0].name #=> String
    #   resp.pending_flow_modules[0].depends_on #=> Array
    #   resp.pending_flow_modules[0].depends_on[0] #=> String
    #   resp.pending_flow_modules[0].module_parameters.no_bid.reason #=> String
    #   resp.pending_flow_modules[0].module_parameters.no_bid.reason_code #=> Integer
    #   resp.pending_flow_modules[0].module_parameters.no_bid.pass_through_percentage #=> Float
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_type #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration #=> Array
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria #=> Array
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].path #=> String
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].values #=> Array
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].values[0] #=> String
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.action.no_bid.no_bid_reason_code #=> Integer
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.action.header_tag.name #=> String
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.action.header_tag.value #=> String
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.holdback_percentage #=> Float
    #   resp.pending_flow_modules[0].module_parameters.rate_limiter.tps #=> Float
    #   resp.attributes.responder_error_masking #=> Array
    #   resp.attributes.responder_error_masking[0].http_code #=> String
    #   resp.attributes.responder_error_masking[0].action #=> String, one of "NO_BID", "PASSTHROUGH"
    #   resp.attributes.responder_error_masking[0].logging_types #=> Array
    #   resp.attributes.responder_error_masking[0].logging_types[0] #=> String, one of "NONE", "METRIC", "RESPONSE"
    #   resp.attributes.responder_error_masking[0].response_logging_percentage #=> Float
    #   resp.attributes.customer_provided_id #=> String
    #   resp.link_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.log_settings.application_logs.sampling.error_log #=> Float
    #   resp.log_settings.application_logs.sampling.filter_log #=> Float
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * link_accepted
    #   * link_active
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/GetLink AWS API Documentation
    #
    # @overload get_link(params = {})
    # @param [Hash] params ({})
    def get_link(params = {}, options = {})
      req = build_request(:get_link, params)
      req.send_request(options)
    end

    # Retrieves information about an outbound external link.
    #
    # @option params [required, String] :gateway_id
    #   The unique identifier of the gateway.
    #
    # @option params [required, String] :link_id
    #   The unique identifier of the link.
    #
    # @return [Types::GetOutboundExternalLinkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOutboundExternalLinkResponse#gateway_id #gateway_id} => String
    #   * {Types::GetOutboundExternalLinkResponse#link_id #link_id} => String
    #   * {Types::GetOutboundExternalLinkResponse#status #status} => String
    #   * {Types::GetOutboundExternalLinkResponse#public_endpoint #public_endpoint} => String
    #   * {Types::GetOutboundExternalLinkResponse#created_at #created_at} => Time
    #   * {Types::GetOutboundExternalLinkResponse#updated_at #updated_at} => Time
    #   * {Types::GetOutboundExternalLinkResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    #
    # @example Example: Get outbound external link details
    #
    #   # Get details of a specific outbound external link
    #
    #   resp = client.get_outbound_external_link({
    #     gateway_id: "rtb-gw-12345678", 
    #     link_id: "link-87654321", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     created_at: Time.parse("2024-01-15T10:30:00Z"), 
    #     gateway_id: "rtb-gw-12345678", 
    #     link_id: "link-87654321", 
    #     public_endpoint: "https://external-responder.example.com", 
    #     status: "ACTIVE", 
    #     updated_at: Time.parse("2024-01-15T10:35:00Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_outbound_external_link({
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_id #=> String
    #   resp.link_id #=> String
    #   resp.status #=> String, one of "PENDING_CREATION", "PENDING_REQUEST", "REQUESTED", "ACCEPTED", "ACTIVE", "REJECTED", "FAILED", "PENDING_DELETION", "DELETED", "PENDING_UPDATE", "PENDING_ISOLATION", "ISOLATED", "PENDING_RESTORATION"
    #   resp.public_endpoint #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * outbound_external_link_active
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/GetOutboundExternalLink AWS API Documentation
    #
    # @overload get_outbound_external_link(params = {})
    # @param [Hash] params ({})
    def get_outbound_external_link(params = {}, options = {})
      req = build_request(:get_outbound_external_link, params)
      req.send_request(options)
    end

    # Retrieves information about a requester gateway.
    #
    # @option params [required, String] :gateway_id
    #   The unique identifier of the gateway.
    #
    # @return [Types::GetRequesterGatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRequesterGatewayResponse#status #status} => String
    #   * {Types::GetRequesterGatewayResponse#domain_name #domain_name} => String
    #   * {Types::GetRequesterGatewayResponse#description #description} => String
    #   * {Types::GetRequesterGatewayResponse#created_at #created_at} => Time
    #   * {Types::GetRequesterGatewayResponse#updated_at #updated_at} => Time
    #   * {Types::GetRequesterGatewayResponse#vpc_id #vpc_id} => String
    #   * {Types::GetRequesterGatewayResponse#subnet_ids #subnet_ids} => Array&lt;String&gt;
    #   * {Types::GetRequesterGatewayResponse#security_group_ids #security_group_ids} => Array&lt;String&gt;
    #   * {Types::GetRequesterGatewayResponse#gateway_id #gateway_id} => String
    #   * {Types::GetRequesterGatewayResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetRequesterGatewayResponse#active_links_count #active_links_count} => Integer
    #   * {Types::GetRequesterGatewayResponse#total_links_count #total_links_count} => Integer
    #
    #
    # @example Example: Get requester gateway details
    #
    #   # Get requester gateway
    #
    #   resp = client.get_requester_gateway({
    #     gateway_id: "rtb-gw-12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     active_links_count: 2, 
    #     created_at: Time.parse("2024-01-15T10:30:00Z"), 
    #     description: "My requester gateway", 
    #     domain_name: "rtb-gw-12345678.example.com", 
    #     gateway_id: "rtb-gw-12345678", 
    #     security_group_ids: [
    #       "sg-12345678", 
    #     ], 
    #     status: "ACTIVE", 
    #     subnet_ids: [
    #       "subnet-12345678", 
    #       "subnet-87654321", 
    #     ], 
    #     total_links_count: 5, 
    #     updated_at: Time.parse("2024-01-15T10:35:00Z"), 
    #     vpc_id: "vpc-12345678", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_requester_gateway({
    #     gateway_id: "GatewayId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "PENDING_CREATION", "ACTIVE", "PENDING_DELETION", "DELETED", "ERROR", "PENDING_UPDATE", "ISOLATED", "PENDING_ISOLATION", "PENDING_RESTORATION"
    #   resp.domain_name #=> String
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.vpc_id #=> String
    #   resp.subnet_ids #=> Array
    #   resp.subnet_ids[0] #=> String
    #   resp.security_group_ids #=> Array
    #   resp.security_group_ids[0] #=> String
    #   resp.gateway_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.active_links_count #=> Integer
    #   resp.total_links_count #=> Integer
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * requester_gateway_active
    #   * requester_gateway_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/GetRequesterGateway AWS API Documentation
    #
    # @overload get_requester_gateway(params = {})
    # @param [Hash] params ({})
    def get_requester_gateway(params = {}, options = {})
      req = build_request(:get_requester_gateway, params)
      req.send_request(options)
    end

    # Retrieves information about a responder gateway.
    #
    # @option params [required, String] :gateway_id
    #   The unique identifier of the gateway.
    #
    # @return [Types::GetResponderGatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResponderGatewayResponse#vpc_id #vpc_id} => String
    #   * {Types::GetResponderGatewayResponse#subnet_ids #subnet_ids} => Array&lt;String&gt;
    #   * {Types::GetResponderGatewayResponse#security_group_ids #security_group_ids} => Array&lt;String&gt;
    #   * {Types::GetResponderGatewayResponse#status #status} => String
    #   * {Types::GetResponderGatewayResponse#description #description} => String
    #   * {Types::GetResponderGatewayResponse#created_at #created_at} => Time
    #   * {Types::GetResponderGatewayResponse#updated_at #updated_at} => Time
    #   * {Types::GetResponderGatewayResponse#domain_name #domain_name} => String
    #   * {Types::GetResponderGatewayResponse#port #port} => Integer
    #   * {Types::GetResponderGatewayResponse#protocol #protocol} => String
    #   * {Types::GetResponderGatewayResponse#trust_store_configuration #trust_store_configuration} => Types::TrustStoreConfiguration
    #   * {Types::GetResponderGatewayResponse#managed_endpoint_configuration #managed_endpoint_configuration} => Types::ManagedEndpointConfiguration
    #   * {Types::GetResponderGatewayResponse#gateway_id #gateway_id} => String
    #   * {Types::GetResponderGatewayResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetResponderGatewayResponse#active_links_count #active_links_count} => Integer
    #   * {Types::GetResponderGatewayResponse#total_links_count #total_links_count} => Integer
    #   * {Types::GetResponderGatewayResponse#inbound_links_count #inbound_links_count} => Integer
    #
    #
    # @example Example: Get responder gateway details
    #
    #   # Get responder gateway
    #
    #   resp = client.get_responder_gateway({
    #     gateway_id: "rtb-gw-12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     active_links_count: 2, 
    #     created_at: Time.parse("2024-01-15T10:30:00Z"), 
    #     description: "My responder gateway", 
    #     gateway_id: "rtb-gw-12345678", 
    #     inbound_links_count: 3, 
    #     port: 443, 
    #     protocol: "HTTPS", 
    #     security_group_ids: [
    #       "sg-12345678", 
    #     ], 
    #     status: "ACTIVE", 
    #     subnet_ids: [
    #       "subnet-12345678", 
    #       "subnet-87654321", 
    #     ], 
    #     total_links_count: 5, 
    #     updated_at: Time.parse("2024-01-15T10:35:00Z"), 
    #     vpc_id: "vpc-12345678", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_responder_gateway({
    #     gateway_id: "GatewayId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_id #=> String
    #   resp.subnet_ids #=> Array
    #   resp.subnet_ids[0] #=> String
    #   resp.security_group_ids #=> Array
    #   resp.security_group_ids[0] #=> String
    #   resp.status #=> String, one of "PENDING_CREATION", "ACTIVE", "PENDING_DELETION", "DELETED", "ERROR", "PENDING_UPDATE", "ISOLATED", "PENDING_ISOLATION", "PENDING_RESTORATION"
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.domain_name #=> String
    #   resp.port #=> Integer
    #   resp.protocol #=> String, one of "HTTP", "HTTPS"
    #   resp.trust_store_configuration.certificate_authority_certificates #=> Array
    #   resp.trust_store_configuration.certificate_authority_certificates[0] #=> String
    #   resp.managed_endpoint_configuration.auto_scaling_groups.auto_scaling_group_names #=> Array
    #   resp.managed_endpoint_configuration.auto_scaling_groups.auto_scaling_group_names[0] #=> String
    #   resp.managed_endpoint_configuration.auto_scaling_groups.role_arn #=> String
    #   resp.managed_endpoint_configuration.eks_endpoints.endpoints_resource_name #=> String
    #   resp.managed_endpoint_configuration.eks_endpoints.endpoints_resource_namespace #=> String
    #   resp.managed_endpoint_configuration.eks_endpoints.cluster_api_server_endpoint_uri #=> String
    #   resp.managed_endpoint_configuration.eks_endpoints.cluster_api_server_ca_certificate_chain #=> String
    #   resp.managed_endpoint_configuration.eks_endpoints.cluster_name #=> String
    #   resp.managed_endpoint_configuration.eks_endpoints.role_arn #=> String
    #   resp.gateway_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.active_links_count #=> Integer
    #   resp.total_links_count #=> Integer
    #   resp.inbound_links_count #=> Integer
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * responder_gateway_active
    #   * responder_gateway_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/GetResponderGateway AWS API Documentation
    #
    # @overload get_responder_gateway(params = {})
    # @param [Hash] params ({})
    def get_responder_gateway(params = {}, options = {})
      req = build_request(:get_responder_gateway, params)
      req.send_request(options)
    end

    # Lists links associated with an RTB application.
    #
    # Returns a list of all links for the specified RTB application,
    # including their status and configuration details.
    #
    # @option params [required, String] :gateway_id
    #   The unique identifier of the gateway.
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged. Each pagination token expires
    #   after 24 hours. Using an expired pagination token will return an *HTTP
    #   400 InvalidToken error*.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `nextToken` to obtain further pages of results.
    #
    #   This is only an upper limit. The actual number of results returned per
    #   call might be fewer than the specified maximum.
    #
    # @return [Types::ListLinksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLinksResponse#links #links} => Array&lt;Types::ListLinksResponseStructure&gt;
    #   * {Types::ListLinksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List links for a gateway
    #
    #   # Lists all links for the specified gateway
    #
    #   resp = client.list_links({
    #     gateway_id: "rtb-gw-12345678", 
    #     max_results: 10, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     links: [
    #       {
    #         created_at: Time.parse("2024-01-15T10:30:00Z"), 
    #         gateway_id: "rtb-gw-12345678", 
    #         link_id: "link-87654321", 
    #         peer_gateway_id: "rtb-gw-87654321", 
    #         status: "ACTIVE", 
    #         updated_at: Time.parse("2024-01-15T10:35:00Z"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_links({
    #     gateway_id: "GatewayId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.links #=> Array
    #   resp.links[0].gateway_id #=> String
    #   resp.links[0].peer_gateway_id #=> String
    #   resp.links[0].status #=> String, one of "PENDING_CREATION", "PENDING_REQUEST", "REQUESTED", "ACCEPTED", "ACTIVE", "REJECTED", "FAILED", "PENDING_DELETION", "DELETED", "PENDING_UPDATE", "PENDING_ISOLATION", "ISOLATED", "PENDING_RESTORATION"
    #   resp.links[0].created_at #=> Time
    #   resp.links[0].updated_at #=> Time
    #   resp.links[0].direction #=> String, one of "RESPONSE", "REQUEST"
    #   resp.links[0].flow_modules #=> Array
    #   resp.links[0].flow_modules[0].version #=> String
    #   resp.links[0].flow_modules[0].name #=> String
    #   resp.links[0].flow_modules[0].depends_on #=> Array
    #   resp.links[0].flow_modules[0].depends_on[0] #=> String
    #   resp.links[0].flow_modules[0].module_parameters.no_bid.reason #=> String
    #   resp.links[0].flow_modules[0].module_parameters.no_bid.reason_code #=> Integer
    #   resp.links[0].flow_modules[0].module_parameters.no_bid.pass_through_percentage #=> Float
    #   resp.links[0].flow_modules[0].module_parameters.open_rtb_attribute.filter_type #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.links[0].flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration #=> Array
    #   resp.links[0].flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria #=> Array
    #   resp.links[0].flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].path #=> String
    #   resp.links[0].flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].values #=> Array
    #   resp.links[0].flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].values[0] #=> String
    #   resp.links[0].flow_modules[0].module_parameters.open_rtb_attribute.action.no_bid.no_bid_reason_code #=> Integer
    #   resp.links[0].flow_modules[0].module_parameters.open_rtb_attribute.action.header_tag.name #=> String
    #   resp.links[0].flow_modules[0].module_parameters.open_rtb_attribute.action.header_tag.value #=> String
    #   resp.links[0].flow_modules[0].module_parameters.open_rtb_attribute.holdback_percentage #=> Float
    #   resp.links[0].flow_modules[0].module_parameters.rate_limiter.tps #=> Float
    #   resp.links[0].pending_flow_modules #=> Array
    #   resp.links[0].pending_flow_modules[0].version #=> String
    #   resp.links[0].pending_flow_modules[0].name #=> String
    #   resp.links[0].pending_flow_modules[0].depends_on #=> Array
    #   resp.links[0].pending_flow_modules[0].depends_on[0] #=> String
    #   resp.links[0].pending_flow_modules[0].module_parameters.no_bid.reason #=> String
    #   resp.links[0].pending_flow_modules[0].module_parameters.no_bid.reason_code #=> Integer
    #   resp.links[0].pending_flow_modules[0].module_parameters.no_bid.pass_through_percentage #=> Float
    #   resp.links[0].pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_type #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.links[0].pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration #=> Array
    #   resp.links[0].pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria #=> Array
    #   resp.links[0].pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].path #=> String
    #   resp.links[0].pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].values #=> Array
    #   resp.links[0].pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].values[0] #=> String
    #   resp.links[0].pending_flow_modules[0].module_parameters.open_rtb_attribute.action.no_bid.no_bid_reason_code #=> Integer
    #   resp.links[0].pending_flow_modules[0].module_parameters.open_rtb_attribute.action.header_tag.name #=> String
    #   resp.links[0].pending_flow_modules[0].module_parameters.open_rtb_attribute.action.header_tag.value #=> String
    #   resp.links[0].pending_flow_modules[0].module_parameters.open_rtb_attribute.holdback_percentage #=> Float
    #   resp.links[0].pending_flow_modules[0].module_parameters.rate_limiter.tps #=> Float
    #   resp.links[0].attributes.responder_error_masking #=> Array
    #   resp.links[0].attributes.responder_error_masking[0].http_code #=> String
    #   resp.links[0].attributes.responder_error_masking[0].action #=> String, one of "NO_BID", "PASSTHROUGH"
    #   resp.links[0].attributes.responder_error_masking[0].logging_types #=> Array
    #   resp.links[0].attributes.responder_error_masking[0].logging_types[0] #=> String, one of "NONE", "METRIC", "RESPONSE"
    #   resp.links[0].attributes.responder_error_masking[0].response_logging_percentage #=> Float
    #   resp.links[0].attributes.customer_provided_id #=> String
    #   resp.links[0].link_id #=> String
    #   resp.links[0].tags #=> Hash
    #   resp.links[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/ListLinks AWS API Documentation
    #
    # @overload list_links(params = {})
    # @param [Hash] params ({})
    def list_links(params = {}, options = {})
      req = build_request(:list_links, params)
      req.send_request(options)
    end

    # Lists requester gateways.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `nextToken` to obtain further pages of results.
    #
    #   This is only an upper limit. The actual number of results returned per
    #   call might be fewer than the specified maximum.
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged. Each pagination token expires
    #   after 24 hours. Using an expired pagination token will return an *HTTP
    #   400 InvalidToken error*.
    #
    # @return [Types::ListRequesterGatewaysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRequesterGatewaysResponse#gateway_ids #gateway_ids} => Array&lt;String&gt;
    #   * {Types::ListRequesterGatewaysResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List requester gateways with default pagination
    #
    #   # Lists requester gateways using default pagination settings
    #
    #   resp = client.list_requester_gateways({
    #     max_results: 10, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_ids: [
    #       "rtb-gw-12345", 
    #       "rtb-gw-67890", 
    #     ], 
    #   }
    #
    # @example Example: List requester gateways with pagination token
    #
    #   # Lists requester gateways using a pagination token to get the next page
    #
    #   resp = client.list_requester_gateways({
    #     max_results: 5, 
    #     next_token: "eyJsYXN0RXZhbHVhdGVkS2V5Ijp7ImlkIjp7IlMiOiJydGJhcHAtcmVxLTEyMzQ1In19fQ==", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_ids: [
    #       "rtb-gw-12345", 
    #       "rtb-gw-09876", 
    #     ], 
    #     next_token: "eyJsYXN0RXZhbHVhdGVkS2V5Ijp7ImlkIjp7IlMiOiJydGJhcHAtcmVxLWZnaGlqIn19fQ==", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_requester_gateways({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_ids #=> Array
    #   resp.gateway_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/ListRequesterGateways AWS API Documentation
    #
    # @overload list_requester_gateways(params = {})
    # @param [Hash] params ({})
    def list_requester_gateways(params = {}, options = {})
      req = build_request(:list_requester_gateways, params)
      req.send_request(options)
    end

    # Lists reponder gateways.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `nextToken` to obtain further pages of results.
    #
    #   This is only an upper limit. The actual number of results returned per
    #   call might be fewer than the specified maximum.
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged. Each pagination token expires
    #   after 24 hours. Using an expired pagination token will return an *HTTP
    #   400 InvalidToken error*.
    #
    # @return [Types::ListResponderGatewaysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResponderGatewaysResponse#gateway_ids #gateway_ids} => Array&lt;String&gt;
    #   * {Types::ListResponderGatewaysResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List responder gateways with default pagination
    #
    #   # Lists responder gateways using default pagination settings
    #
    #   resp = client.list_responder_gateways({
    #     max_results: 10, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_ids: [
    #       "rtb-gw-54321", 
    #       "rtb-gw-09876", 
    #     ], 
    #   }
    #
    # @example Example: List responder gateways with pagination token
    #
    #   # Lists responder gateways using a pagination token to get the next page
    #
    #   resp = client.list_responder_gateways({
    #     max_results: 3, 
    #     next_token: "eyJsYXN0RXZhbHVhdGVkS2V5Ijp7ImlkIjp7IlMiOiJydGJhcHAtcmVzcC01NDMyMSJ9fX0=", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_ids: [
    #       "rtb-gw-12345", 
    #       "rtb-gw-09876", 
    #     ], 
    #     next_token: "eyJsYXN0RXZhbHVhdGVkS2V5Ijp7ImlkIjp7IlMiOiJydGJhcHAtcmVzcC1hYmMzNCJ9fX0=", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_responder_gateways({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_ids #=> Array
    #   resp.gateway_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/ListResponderGateways AWS API Documentation
    #
    # @overload list_responder_gateways(params = {})
    # @param [Hash] params ({})
    def list_responder_gateways(params = {}, options = {})
      req = build_request(:list_responder_gateways, params)
      req.send_request(options)
    end

    # Lists tags for a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which you want to
    #   retrieve tags.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    #
    # @example Example: List tags for a resource
    #
    #   # Lists tags for a resource
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "arn:aws:rtbfabric:us-east-1:123456789012:gateway/rtb-gw-12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tags: {
    #       "Environment" => "Production", 
    #       "Team" => "RTB", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "RtbTaggableResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Rejects a link request between RTB applications.
    #
    # When a requester RTB application requests to link with a responder RTB
    # application, the responder can use this operation to decline the link
    # request.
    #
    # @option params [required, String] :gateway_id
    #   The unique identifier of the gateway.
    #
    # @option params [required, String] :link_id
    #   The unique identifier of the link.
    #
    # @return [Types::RejectLinkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RejectLinkResponse#gateway_id #gateway_id} => String
    #   * {Types::RejectLinkResponse#peer_gateway_id #peer_gateway_id} => String
    #   * {Types::RejectLinkResponse#status #status} => String
    #   * {Types::RejectLinkResponse#created_at #created_at} => Time
    #   * {Types::RejectLinkResponse#updated_at #updated_at} => Time
    #   * {Types::RejectLinkResponse#direction #direction} => String
    #   * {Types::RejectLinkResponse#flow_modules #flow_modules} => Array&lt;Types::ModuleConfiguration&gt;
    #   * {Types::RejectLinkResponse#pending_flow_modules #pending_flow_modules} => Array&lt;Types::ModuleConfiguration&gt;
    #   * {Types::RejectLinkResponse#attributes #attributes} => Types::LinkAttributes
    #   * {Types::RejectLinkResponse#link_id #link_id} => String
    #
    #
    # @example Example: Reject a link request
    #
    #   # Rejects a requested link request
    #
    #   resp = client.reject_link({
    #     gateway_id: "rtb-gw-12345678", 
    #     link_id: "link-87654321", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     created_at: Time.parse("2024-01-15T10:30:00Z"), 
    #     gateway_id: "rtb-gw-12345678", 
    #     link_id: "link-87654321", 
    #     peer_gateway_id: "rtb-gw-87654321", 
    #     status: "REJECTED", 
    #     updated_at: Time.parse("2024-01-15T10:35:00Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_link({
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_id #=> String
    #   resp.peer_gateway_id #=> String
    #   resp.status #=> String, one of "PENDING_CREATION", "PENDING_REQUEST", "REQUESTED", "ACCEPTED", "ACTIVE", "REJECTED", "FAILED", "PENDING_DELETION", "DELETED", "PENDING_UPDATE", "PENDING_ISOLATION", "ISOLATED", "PENDING_RESTORATION"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.direction #=> String, one of "RESPONSE", "REQUEST"
    #   resp.flow_modules #=> Array
    #   resp.flow_modules[0].version #=> String
    #   resp.flow_modules[0].name #=> String
    #   resp.flow_modules[0].depends_on #=> Array
    #   resp.flow_modules[0].depends_on[0] #=> String
    #   resp.flow_modules[0].module_parameters.no_bid.reason #=> String
    #   resp.flow_modules[0].module_parameters.no_bid.reason_code #=> Integer
    #   resp.flow_modules[0].module_parameters.no_bid.pass_through_percentage #=> Float
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_type #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration #=> Array
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria #=> Array
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].path #=> String
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].values #=> Array
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].values[0] #=> String
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.action.no_bid.no_bid_reason_code #=> Integer
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.action.header_tag.name #=> String
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.action.header_tag.value #=> String
    #   resp.flow_modules[0].module_parameters.open_rtb_attribute.holdback_percentage #=> Float
    #   resp.flow_modules[0].module_parameters.rate_limiter.tps #=> Float
    #   resp.pending_flow_modules #=> Array
    #   resp.pending_flow_modules[0].version #=> String
    #   resp.pending_flow_modules[0].name #=> String
    #   resp.pending_flow_modules[0].depends_on #=> Array
    #   resp.pending_flow_modules[0].depends_on[0] #=> String
    #   resp.pending_flow_modules[0].module_parameters.no_bid.reason #=> String
    #   resp.pending_flow_modules[0].module_parameters.no_bid.reason_code #=> Integer
    #   resp.pending_flow_modules[0].module_parameters.no_bid.pass_through_percentage #=> Float
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_type #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration #=> Array
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria #=> Array
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].path #=> String
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].values #=> Array
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.filter_configuration[0].criteria[0].values[0] #=> String
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.action.no_bid.no_bid_reason_code #=> Integer
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.action.header_tag.name #=> String
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.action.header_tag.value #=> String
    #   resp.pending_flow_modules[0].module_parameters.open_rtb_attribute.holdback_percentage #=> Float
    #   resp.pending_flow_modules[0].module_parameters.rate_limiter.tps #=> Float
    #   resp.attributes.responder_error_masking #=> Array
    #   resp.attributes.responder_error_masking[0].http_code #=> String
    #   resp.attributes.responder_error_masking[0].action #=> String, one of "NO_BID", "PASSTHROUGH"
    #   resp.attributes.responder_error_masking[0].logging_types #=> Array
    #   resp.attributes.responder_error_masking[0].logging_types[0] #=> String, one of "NONE", "METRIC", "RESPONSE"
    #   resp.attributes.responder_error_masking[0].response_logging_percentage #=> Float
    #   resp.attributes.customer_provided_id #=> String
    #   resp.link_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/RejectLink AWS API Documentation
    #
    # @overload reject_link(params = {})
    # @param [Hash] params ({})
    def reject_link(params = {}, options = {})
      req = build_request(:reject_link, params)
      req.send_request(options)
    end

    # Assigns one or more tags (key-value pairs) to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to tag.
    #
    # @option params [required, Hash<String,String>] :tags
    #   A map of the key-value pairs of the tag or tags to assign to the
    #   resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Add tags to a resource
    #
    #   # Adds tags to a resource
    #
    #   resp = client.tag_resource({
    #     resource_arn: "arn:aws:rtbfabric:us-east-1:123456789012:gateway/rtb-gw-12345678", 
    #     tags: {
    #       "Environment" => "Production", 
    #       "Team" => "RTB", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "RtbTaggableResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag or tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to untag.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the key-value pairs for the tag or tags you want to remove
    #   from the specified resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Remove tags from a resource
    #
    #   # Removes tags from a resource
    #
    #   resp = client.untag_resource({
    #     resource_arn: "arn:aws:rtbfabric:us-east-1:123456789012:gateway/rtb-gw-12345678", 
    #     tag_keys: [
    #       "Environment", 
    #       "Team", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "RtbTaggableResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the configuration of a link between RTB applications.
    #
    # Allows you to modify settings and parameters for an existing link.
    #
    # @option params [required, String] :gateway_id
    #   The unique identifier of the gateway.
    #
    # @option params [required, String] :link_id
    #   The unique identifier of the link.
    #
    # @option params [Types::LinkLogSettings] :log_settings
    #   Settings for the application logs.
    #
    # @return [Types::UpdateLinkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateLinkResponse#link_id #link_id} => String
    #   * {Types::UpdateLinkResponse#status #status} => String
    #
    #
    # @example Example: Update link settings
    #
    #   # Updates configuration settings for an existing link
    #
    #   resp = client.update_link({
    #     gateway_id: "rtb-gw-12345678", 
    #     link_id: "link-87654321", 
    #     log_settings: {
    #       application_logs: {
    #         sampling: {
    #           error_log: 100.0, 
    #           filter_log: 10.0, 
    #         }, 
    #       }, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     link_id: "link-87654321", 
    #     status: "ACTIVE", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_link({
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #     log_settings: {
    #       application_logs: { # required
    #         sampling: { # required
    #           error_log: 1.0, # required
    #           filter_log: 1.0, # required
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.link_id #=> String
    #   resp.status #=> String, one of "PENDING_CREATION", "PENDING_REQUEST", "REQUESTED", "ACCEPTED", "ACTIVE", "REJECTED", "FAILED", "PENDING_DELETION", "DELETED", "PENDING_UPDATE", "PENDING_ISOLATION", "ISOLATED", "PENDING_RESTORATION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/UpdateLink AWS API Documentation
    #
    # @overload update_link(params = {})
    # @param [Hash] params ({})
    def update_link(params = {}, options = {})
      req = build_request(:update_link, params)
      req.send_request(options)
    end

    # Updates a link module flow.
    #
    # @option params [required, String] :client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :gateway_id
    #   The unique identifier of the gateway.
    #
    # @option params [required, String] :link_id
    #   The unique identifier of the link.
    #
    # @option params [required, Array<Types::ModuleConfiguration>] :modules
    #   The configuration of a module.
    #
    # @return [Types::UpdateLinkModuleFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateLinkModuleFlowResponse#gateway_id #gateway_id} => String
    #   * {Types::UpdateLinkModuleFlowResponse#link_id #link_id} => String
    #   * {Types::UpdateLinkModuleFlowResponse#status #status} => String
    #
    #
    # @example Example: Update link module flow
    #
    #   # Update link module flow for link
    #
    #   resp = client.update_link_module_flow({
    #     client_token: "randomClientToken", 
    #     gateway_id: "rtb-gw-12345678", 
    #     link_id: "link-87654321", 
    #     modules: [
    #       {
    #         version: "1dot0dot0", 
    #         name: "noBidModule", 
    #         depends_on: [
    #         ], 
    #         module_parameters: {
    #           no_bid: {
    #             pass_through_percentage: 50.0, 
    #             reason: "test", 
    #             reason_code: 1, 
    #           }, 
    #         }, 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_id: "rtb-gw-12345678", 
    #     link_id: "link-87654321", 
    #     status: "ACTIVE", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_link_module_flow({
    #     client_token: "String", # required
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #     modules: [ # required
    #       {
    #         version: "Version",
    #         name: "FlowModuleName", # required
    #         depends_on: ["FlowModuleName"],
    #         module_parameters: {
    #           no_bid: {
    #             reason: "NoBidModuleParametersReasonString",
    #             reason_code: 1,
    #             pass_through_percentage: 1.0,
    #           },
    #           open_rtb_attribute: {
    #             filter_type: "INCLUDE", # required, accepts INCLUDE, EXCLUDE
    #             filter_configuration: [ # required
    #               {
    #                 criteria: [ # required
    #                   {
    #                     path: "String", # required
    #                     values: ["String"], # required
    #                   },
    #                 ],
    #               },
    #             ],
    #             action: { # required
    #               no_bid: {
    #                 no_bid_reason_code: 1,
    #               },
    #               header_tag: {
    #                 name: "String", # required
    #                 value: "String", # required
    #               },
    #             },
    #             holdback_percentage: 1.0, # required
    #           },
    #           rate_limiter: {
    #             tps: 1.0,
    #           },
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_id #=> String
    #   resp.link_id #=> String
    #   resp.status #=> String, one of "PENDING_CREATION", "PENDING_REQUEST", "REQUESTED", "ACCEPTED", "ACTIVE", "REJECTED", "FAILED", "PENDING_DELETION", "DELETED", "PENDING_UPDATE", "PENDING_ISOLATION", "ISOLATED", "PENDING_RESTORATION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/UpdateLinkModuleFlow AWS API Documentation
    #
    # @overload update_link_module_flow(params = {})
    # @param [Hash] params ({})
    def update_link_module_flow(params = {}, options = {})
      req = build_request(:update_link_module_flow, params)
      req.send_request(options)
    end

    # Updates a requester gateway.
    #
    # @option params [required, String] :client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :gateway_id
    #   The unique identifier of the gateway.
    #
    # @option params [String] :description
    #   An optional description for the requester gateway.
    #
    # @return [Types::UpdateRequesterGatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRequesterGatewayResponse#gateway_id #gateway_id} => String
    #   * {Types::UpdateRequesterGatewayResponse#status #status} => String
    #
    #
    # @example Example: Update requester gateway
    #
    #   # Update requester gateway
    #
    #   resp = client.update_requester_gateway({
    #     client_token: "12345678-1234-1234-1234-123456789012", 
    #     description: "Updated requester gateway description", 
    #     gateway_id: "rtb-gw-12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_id: "rtb-gw-12345678", 
    #     status: "PENDING_UPDATE", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_requester_gateway({
    #     client_token: "String", # required
    #     gateway_id: "GatewayId", # required
    #     description: "UpdateRequesterGatewayRequestDescriptionString",
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_id #=> String
    #   resp.status #=> String, one of "PENDING_CREATION", "ACTIVE", "PENDING_DELETION", "DELETED", "ERROR", "PENDING_UPDATE", "ISOLATED", "PENDING_ISOLATION", "PENDING_RESTORATION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/UpdateRequesterGateway AWS API Documentation
    #
    # @overload update_requester_gateway(params = {})
    # @param [Hash] params ({})
    def update_requester_gateway(params = {}, options = {})
      req = build_request(:update_requester_gateway, params)
      req.send_request(options)
    end

    # Updates a responder gateway.
    #
    # @option params [String] :domain_name
    #   The domain name for the responder gateway.
    #
    # @option params [required, Integer] :port
    #   The networking port to use.
    #
    # @option params [required, String] :protocol
    #   The networking protocol to use.
    #
    # @option params [Types::TrustStoreConfiguration] :trust_store_configuration
    #   The configuration of the trust store.
    #
    # @option params [Types::ManagedEndpointConfiguration] :managed_endpoint_configuration
    #   The configuration for the managed endpoint.
    #
    # @option params [required, String] :client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :gateway_id
    #   The unique identifier of the gateway.
    #
    # @option params [String] :description
    #   An optional description for the responder gateway.
    #
    # @return [Types::UpdateResponderGatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateResponderGatewayResponse#gateway_id #gateway_id} => String
    #   * {Types::UpdateResponderGatewayResponse#status #status} => String
    #
    #
    # @example Example: Update responder gateway
    #
    #   # Update responder gateway
    #
    #   resp = client.update_responder_gateway({
    #     client_token: "12345678-1234-1234-1234-123456789012", 
    #     description: "Updated responder gateway description", 
    #     gateway_id: "rtb-gw-12345678", 
    #     port: 8080, 
    #     protocol: "HTTP", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_id: "rtb-gw-12345678", 
    #     status: "PENDING_UPDATE", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_responder_gateway({
    #     domain_name: "DomainName",
    #     port: 1, # required
    #     protocol: "HTTP", # required, accepts HTTP, HTTPS
    #     trust_store_configuration: {
    #       certificate_authority_certificates: ["Base64EncodedCertificateChain"], # required
    #     },
    #     managed_endpoint_configuration: {
    #       auto_scaling_groups: {
    #         auto_scaling_group_names: ["AutoScalingGroupName"], # required
    #         role_arn: "String", # required
    #       },
    #       eks_endpoints: {
    #         endpoints_resource_name: "KubernetesEndpointsResourceName", # required
    #         endpoints_resource_namespace: "KubernetesNamespace", # required
    #         cluster_api_server_endpoint_uri: "URI", # required
    #         cluster_api_server_ca_certificate_chain: "Base64EncodedCertificateChain", # required
    #         cluster_name: "KubernetesClusterName", # required
    #         role_arn: "String", # required
    #       },
    #     },
    #     client_token: "String", # required
    #     gateway_id: "GatewayId", # required
    #     description: "UpdateResponderGatewayRequestDescriptionString",
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_id #=> String
    #   resp.status #=> String, one of "PENDING_CREATION", "ACTIVE", "PENDING_DELETION", "DELETED", "ERROR", "PENDING_UPDATE", "ISOLATED", "PENDING_ISOLATION", "PENDING_RESTORATION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/UpdateResponderGateway AWS API Documentation
    #
    # @overload update_responder_gateway(params = {})
    # @param [Hash] params ({})
    def update_responder_gateway(params = {}, options = {})
      req = build_request(:update_responder_gateway, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::RTBFabric')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-rtbfabric'
      context[:gem_version] = '1.1.0'
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
    # | waiter_name                   | params                              | :delay   | :max_attempts |
    # | ----------------------------- | ----------------------------------- | -------- | ------------- |
    # | inbound_external_link_active  | {Client#get_inbound_external_link}  | 30       | 5             |
    # | link_accepted                 | {Client#get_link}                   | 30       | 5             |
    # | link_active                   | {Client#get_link}                   | 30       | 5             |
    # | outbound_external_link_active | {Client#get_outbound_external_link} | 30       | 5             |
    # | requester_gateway_active      | {Client#get_requester_gateway}      | 30       | 5             |
    # | requester_gateway_deleted     | {Client#get_requester_gateway}      | 30       | 5             |
    # | responder_gateway_active      | {Client#get_responder_gateway}      | 30       | 5             |
    # | responder_gateway_deleted     | {Client#get_responder_gateway}      | 30       | 5             |
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
        inbound_external_link_active: Waiters::InboundExternalLinkActive,
        link_accepted: Waiters::LinkAccepted,
        link_active: Waiters::LinkActive,
        outbound_external_link_active: Waiters::OutboundExternalLinkActive,
        requester_gateway_active: Waiters::RequesterGatewayActive,
        requester_gateway_deleted: Waiters::RequesterGatewayDeleted,
        responder_gateway_active: Waiters::ResponderGatewayActive,
        responder_gateway_deleted: Waiters::ResponderGatewayDeleted
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
