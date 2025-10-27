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

module Aws::IoTManagedIntegrations
  # An API client for IoTManagedIntegrations.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::IoTManagedIntegrations::Client.new(
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

    @identifier = :iotmanagedintegrations

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
    add_plugin(Aws::IoTManagedIntegrations::Plugins::Endpoints)

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
    #   @option options [Aws::IoTManagedIntegrations::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::IoTManagedIntegrations::EndpointParameters`.
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

    # Creates a new account association via the destination id.
    #
    # @option params [String] :client_token
    #   An idempotency token. If you retry a request that completed
    #   successfully initially using the same client token and parameters,
    #   then the retry attempt will succeed without performing any further
    #   actions.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :connector_destination_id
    #   The identifier of the connector destination.
    #
    # @option params [String] :name
    #   The name of the destination for the new account association.
    #
    # @option params [String] :description
    #   A description of the account association request.
    #
    # @option params [Hash<String,String>] :tags
    #   A set of key/value pairs that are used to manage the account
    #   association.
    #
    # @return [Types::CreateAccountAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccountAssociationResponse#o_auth_authorization_url #o_auth_authorization_url} => String
    #   * {Types::CreateAccountAssociationResponse#account_association_id #account_association_id} => String
    #   * {Types::CreateAccountAssociationResponse#association_state #association_state} => String
    #   * {Types::CreateAccountAssociationResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_account_association({
    #     client_token: "ClientToken",
    #     connector_destination_id: "ConnectorDestinationId", # required
    #     name: "AccountAssociationName",
    #     description: "AccountAssociationDescription",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.o_auth_authorization_url #=> String
    #   resp.account_association_id #=> String
    #   resp.association_state #=> String, one of "ASSOCIATION_IN_PROGRESS", "ASSOCIATION_FAILED", "ASSOCIATION_SUCCEEDED", "ASSOCIATION_DELETING", "REFRESH_TOKEN_EXPIRED"
    #   resp.arn #=> String
    #
    # @overload create_account_association(params = {})
    # @param [Hash] params ({})
    def create_account_association(params = {}, options = {})
      req = build_request(:create_account_association, params)
      req.send_request(options)
    end

    # Creates a C2C (cloud-to-cloud) connector.
    #
    # @option params [required, String] :name
    #   The display name of the C2C connector.
    #
    # @option params [required, Types::EndpointConfig] :endpoint_config
    #   The configuration details for the cloud connector endpoint, including
    #   connection parameters and authentication requirements.
    #
    # @option params [String] :description
    #   A description of the C2C connector.
    #
    # @option params [String] :endpoint_type
    #   The type of endpoint used for the cloud connector, which defines how
    #   the connector communicates with external services.
    #
    # @option params [String] :client_token
    #   An idempotency token. If you retry a request that completed
    #   successfully initially using the same client token and parameters,
    #   then the retry attempt will succeed without performing any further
    #   actions.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateCloudConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCloudConnectorResponse#id #id} => String
    #
    #
    # @example Example: CreateCloudConnector happy path for TP Link
    #
    #   resp = client.create_cloud_connector({
    #     client_token: "1234567890", 
    #     endpoint_config: {
    #       lambda: {
    #         arn: "arn:aws:lambda:us-east-1:111122223333:function:my-function:myVersion", 
    #       }, 
    #     }, 
    #     endpoint_type: "LAMBDA", 
    #     name: "Connector for TP Link Cloud", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     id: "TPLinkConnector1211", 
    #   }
    #
    # @example Example: CreateCloudConnector happy path for Ring
    #
    #   resp = client.create_cloud_connector({
    #     client_token: "12312321", 
    #     endpoint_config: {
    #       lambda: {
    #         arn: "arn:aws:lambda:us-east-1:111122223333:function:my-function:myVersion", 
    #       }, 
    #     }, 
    #     endpoint_type: "LAMBDA", 
    #     name: "Connector for Ring Cloud", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     id: "RingConnector1212", 
    #   }
    #
    # @example Example: CreateCloudConnector error path for Ring connector which already exists
    #
    #   resp = client.create_cloud_connector({
    #     client_token: "1213123123", 
    #     endpoint_config: {
    #       lambda: {
    #         arn: "arn:aws:lambda:us-east-1:111122223333:function:my-function:myVersion2", 
    #       }, 
    #     }, 
    #     endpoint_type: "LAMBDA", 
    #     name: "Connector for Ring Cloud", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cloud_connector({
    #     name: "DisplayName", # required
    #     endpoint_config: { # required
    #       lambda: {
    #         arn: "LambdaArn", # required
    #       },
    #     },
    #     description: "CloudConnectorDescription",
    #     endpoint_type: "LAMBDA", # accepts LAMBDA
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #
    # @overload create_cloud_connector(params = {})
    # @param [Hash] params ({})
    def create_cloud_connector(params = {}, options = {})
      req = build_request(:create_cloud_connector, params)
      req.send_request(options)
    end

    # Create a connector destination for connecting a cloud-to-cloud (C2C)
    # connector to the customer's Amazon Web Services account.
    #
    # @option params [String] :name
    #   The display name of the connector destination.
    #
    # @option params [String] :description
    #   A description of the connector destination.
    #
    # @option params [required, String] :cloud_connector_id
    #   The identifier of the C2C connector.
    #
    # @option params [required, String] :auth_type
    #   The authentication type used for the connector destination, which
    #   determines how credentials and access are managed.
    #
    # @option params [required, Types::AuthConfig] :auth_config
    #   The authentication configuration details for the connector
    #   destination, including OAuth settings and other authentication
    #   parameters.
    #
    # @option params [required, Types::SecretsManager] :secrets_manager
    #   The AWS Secrets Manager configuration used to securely store and
    #   manage sensitive information for the connector destination.
    #
    # @option params [String] :client_token
    #   An idempotency token. If you retry a request that completed
    #   successfully initially using the same client token and parameters,
    #   then the retry attempt will succeed without performing any further
    #   actions.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateConnectorDestinationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConnectorDestinationResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connector_destination({
    #     name: "ConnectorDestinationName",
    #     description: "ConnectorDestinationDescription",
    #     cloud_connector_id: "CloudConnectorId", # required
    #     auth_type: "OAUTH", # required, accepts OAUTH
    #     auth_config: { # required
    #       o_auth: {
    #         auth_url: "AuthUrl", # required
    #         token_url: "TokenUrl", # required
    #         scope: "String",
    #         token_endpoint_authentication_scheme: "HTTP_BASIC", # required, accepts HTTP_BASIC, REQUEST_BODY_CREDENTIALS
    #         o_auth_complete_redirect_url: "String",
    #         proactive_refresh_token_renewal: {
    #           enabled: false,
    #           days_before_renewal: 1,
    #         },
    #       },
    #     },
    #     secrets_manager: { # required
    #       arn: "SecretsManagerArn", # required
    #       version_id: "SecretsManagerVersionId", # required
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #
    # @overload create_connector_destination(params = {})
    # @param [Hash] params ({})
    def create_connector_destination(params = {}, options = {})
      req = build_request(:create_connector_destination, params)
      req.send_request(options)
    end

    # Create a product credential locker. This operation will trigger the
    # creation of all the manufacturing resources including the Wi-Fi setup
    # key pair and device certificate.
    #
    # @option params [String] :name
    #   The name of the credential locker.
    #
    # @option params [String] :client_token
    #   An idempotency token. If you retry a request that completed
    #   successfully initially using the same client token and parameters,
    #   then the retry attempt will succeed without performing any further
    #   actions.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   A set of key/value pairs that are used to manage the credential
    #   locker.
    #
    # @return [Types::CreateCredentialLockerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCredentialLockerResponse#id #id} => String
    #   * {Types::CreateCredentialLockerResponse#arn #arn} => String
    #   * {Types::CreateCredentialLockerResponse#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_credential_locker({
    #     name: "CredentialLockerName",
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.created_at #=> Time
    #
    # @overload create_credential_locker(params = {})
    # @param [Hash] params ({})
    def create_credential_locker(params = {}, options = {})
      req = build_request(:create_credential_locker, params)
      req.send_request(options)
    end

    # Create a destination. IoT managed integrations uses the destination to
    # determine where to deliver notifications for a device.
    #
    # @option params [required, String] :delivery_destination_arn
    #   The Amazon Resource Name (ARN) of the customer-managed destination.
    #
    # @option params [required, String] :delivery_destination_type
    #   The destination type for the customer-managed destination.
    #
    # @option params [required, String] :name
    #   The name of the customer-managed destination.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the delivery destination role.
    #
    # @option params [String] :client_token
    #   An idempotency token. If you retry a request that completed
    #   successfully initially using the same client token and parameters,
    #   then the retry attempt will succeed without performing any further
    #   actions.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   The description of the customer-managed destination.
    #
    # @option params [Hash<String,String>] :tags
    #   A set of key/value pairs that are used to manage the destination.
    #
    # @return [Types::CreateDestinationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDestinationResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_destination({
    #     delivery_destination_arn: "DeliveryDestinationArn", # required
    #     delivery_destination_type: "KINESIS", # required, accepts KINESIS
    #     name: "DestinationName", # required
    #     role_arn: "DeliveryDestinationRoleArn", # required
    #     client_token: "ClientToken",
    #     description: "DestinationDescription",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @overload create_destination(params = {})
    # @param [Hash] params ({})
    def create_destination(params = {}, options = {})
      req = build_request(:create_destination, params)
      req.send_request(options)
    end

    # Set the event log configuration for the account, resource type, or
    # specific resource.
    #
    # @option params [required, String] :resource_type
    #   The type of resource for the event log configuration.
    #
    # @option params [String] :resource_id
    #   The identifier of the resource for the event log configuration.
    #
    # @option params [required, String] :event_log_level
    #   The logging level for the event log configuration.
    #
    # @option params [String] :client_token
    #   An idempotency token. If you retry a request that completed
    #   successfully initially using the same client token and parameters,
    #   then the retry attempt will succeed without performing any further
    #   actions.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateEventLogConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEventLogConfigurationResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_log_configuration({
    #     resource_type: "SmartHomeResourceType", # required
    #     resource_id: "SmartHomeResourceId",
    #     event_log_level: "DEBUG", # required, accepts DEBUG, ERROR, INFO, WARN
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #
    # @overload create_event_log_configuration(params = {})
    # @param [Hash] params ({})
    def create_event_log_configuration(params = {}, options = {})
      req = build_request(:create_event_log_configuration, params)
      req.send_request(options)
    end

    # Creates a managed thing. A managed thing contains the device
    # identifier, protocol supported, and capabilities of the device in a
    # protocol-specific format.
    #
    # @option params [required, String] :role
    #   The type of device used. This will be the hub controller, cloud
    #   device, or AWS IoT device.
    #
    # @option params [String] :owner
    #   Owner of the device, usually an indication of whom the device belongs
    #   to. This value should not contain personal identifiable information.
    #
    # @option params [String] :credential_locker_id
    #   The identifier of the credential for the managed thing.
    #
    # @option params [required, String] :authentication_material
    #   The authentication material defining the device connectivity setup
    #   requests. The authentication materials used are the device bar code.
    #
    # @option params [required, String] :authentication_material_type
    #   The type of authentication material used for device connectivity setup
    #   requests.
    #
    # @option params [String] :serial_number
    #   The serial number of the device.
    #
    # @option params [String] :brand
    #   The brand of the device.
    #
    # @option params [String] :model
    #   The model of the device.
    #
    # @option params [String] :name
    #   The name of the managed thing representing the physical device.
    #
    # @option params [Types::CapabilityReport] :capability_report
    #   A report of the capabilities for the managed thing.
    #
    # @option params [Array<Types::CapabilitySchemaItem>] :capability_schemas
    #   The capability schemas that define the functionality and features
    #   supported by the managed thing, including device capabilities and
    #   their associated properties.
    #
    # @option params [String] :capabilities
    #   The capabilities of the device such as light bulb.
    #
    # @option params [String] :client_token
    #   An idempotency token. If you retry a request that completed
    #   successfully initially using the same client token and parameters,
    #   then the retry attempt will succeed without performing any further
    #   actions.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :classification
    #   The classification of the managed thing such as light bulb or
    #   thermostat.
    #
    # @option params [Hash<String,String>] :tags
    #   A set of key/value pairs that are used to manage the managed thing.
    #
    # @option params [Hash<String,String>] :meta_data
    #   The metadata for the managed thing.
    #
    #   <note markdown="1"> The `managedThing` `metadata` parameter is used for associating
    #   attributes with a `managedThing` that can be used for grouping
    #   over-the-air (OTA) tasks. Name value pairs in `metadata` can be used
    #   in the `OtaTargetQueryString` parameter for the `CreateOtaTask` API
    #   operation.
    #
    #    </note>
    #
    # @return [Types::CreateManagedThingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateManagedThingResponse#id #id} => String
    #   * {Types::CreateManagedThingResponse#arn #arn} => String
    #   * {Types::CreateManagedThingResponse#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_managed_thing({
    #     role: "CONTROLLER", # required, accepts CONTROLLER, DEVICE
    #     owner: "Owner",
    #     credential_locker_id: "CredentialLockerId",
    #     authentication_material: "AuthMaterialString", # required
    #     authentication_material_type: "CUSTOM_PROTOCOL_QR_BAR_CODE", # required, accepts CUSTOM_PROTOCOL_QR_BAR_CODE, WIFI_SETUP_QR_BAR_CODE, ZWAVE_QR_BAR_CODE, ZIGBEE_QR_BAR_CODE, DISCOVERED_DEVICE
    #     serial_number: "SerialNumber",
    #     brand: "Brand",
    #     model: "Model",
    #     name: "Name",
    #     capability_report: {
    #       version: "CapabilityReportVersion", # required
    #       node_id: "NodeId",
    #       endpoints: [ # required
    #         {
    #           id: "EndpointId", # required
    #           device_types: ["DeviceType"], # required
    #           capabilities: [ # required
    #             {
    #               id: "SchemaVersionedId", # required
    #               name: "CapabilityName", # required
    #               version: "CapabilityVersion", # required
    #               properties: ["PropertyName"], # required
    #               actions: ["ActionName"], # required
    #               events: ["EventName"], # required
    #             },
    #           ],
    #         },
    #       ],
    #     },
    #     capability_schemas: [
    #       {
    #         format: "AWS", # required, accepts AWS, ZCL, CONNECTOR
    #         capability_id: "SchemaVersionedId", # required
    #         extrinsic_id: "ExtrinsicSchemaId", # required
    #         extrinsic_version: 1, # required
    #         schema: { # required
    #         },
    #       },
    #     ],
    #     capabilities: "Capabilities",
    #     client_token: "ClientToken",
    #     classification: "Classification",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     meta_data: {
    #       "AttributeName" => "AttributeValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.created_at #=> Time
    #
    # @overload create_managed_thing(params = {})
    # @param [Hash] params ({})
    def create_managed_thing(params = {}, options = {})
      req = build_request(:create_managed_thing, params)
      req.send_request(options)
    end

    # Creates a notification configuration. A configuration is a connection
    # between an event type and a destination that you have already created.
    #
    # @option params [required, String] :event_type
    #   The type of event triggering a device notification to the
    #   customer-managed destination.
    #
    # @option params [required, String] :destination_name
    #   The name of the destination for the notification configuration.
    #
    # @option params [String] :client_token
    #   An idempotency token. If you retry a request that completed
    #   successfully initially using the same client token and parameters,
    #   then the retry attempt will succeed without performing any further
    #   actions.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   A set of key/value pairs that are used to manage the notification
    #   configuration.
    #
    # @return [Types::CreateNotificationConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNotificationConfigurationResponse#event_type #event_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_notification_configuration({
    #     event_type: "DEVICE_COMMAND", # required, accepts DEVICE_COMMAND, DEVICE_COMMAND_REQUEST, DEVICE_DISCOVERY_STATUS, DEVICE_EVENT, DEVICE_LIFE_CYCLE, DEVICE_STATE, DEVICE_OTA, CONNECTOR_ASSOCIATION, ACCOUNT_ASSOCIATION, CONNECTOR_ERROR_REPORT
    #     destination_name: "DestinationName", # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.event_type #=> String, one of "DEVICE_COMMAND", "DEVICE_COMMAND_REQUEST", "DEVICE_DISCOVERY_STATUS", "DEVICE_EVENT", "DEVICE_LIFE_CYCLE", "DEVICE_STATE", "DEVICE_OTA", "CONNECTOR_ASSOCIATION", "ACCOUNT_ASSOCIATION", "CONNECTOR_ERROR_REPORT"
    #
    # @overload create_notification_configuration(params = {})
    # @param [Hash] params ({})
    def create_notification_configuration(params = {}, options = {})
      req = build_request(:create_notification_configuration, params)
      req.send_request(options)
    end

    # Create an over-the-air (OTA) task to update a device.
    #
    # @option params [String] :description
    #   The description of the over-the-air (OTA) task.
    #
    # @option params [required, String] :s3_url
    #   The URL to the Amazon S3 bucket where the over-the-air (OTA) task is
    #   stored.
    #
    # @option params [String] :protocol
    #   The connection protocol the over-the-air (OTA) task uses to update the
    #   device.
    #
    # @option params [Array<String>] :target
    #   The device targeted for the over-the-air (OTA) task.
    #
    # @option params [String] :task_configuration_id
    #   The identifier for the over-the-air (OTA) task configuration.
    #
    # @option params [String] :ota_mechanism
    #   The deployment mechanism for the over-the-air (OTA) task.
    #
    # @option params [required, String] :ota_type
    #   The frequency type for the over-the-air (OTA) task.
    #
    # @option params [String] :ota_target_query_string
    #   The query string to add things to the thing group.
    #
    # @option params [String] :client_token
    #   An idempotency token. If you retry a request that completed
    #   successfully initially using the same client token and parameters,
    #   then the retry attempt will succeed without performing any further
    #   actions.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::OtaTaskSchedulingConfig] :ota_scheduling_config
    #   Over-the-air (OTA) task scheduling config.
    #
    # @option params [Types::OtaTaskExecutionRetryConfig] :ota_task_execution_retry_config
    #   Over-the-air (OTA) task retry config.
    #
    # @option params [Hash<String,String>] :tags
    #   A set of key/value pairs that are used to manage the over-the-air
    #   (OTA) task.
    #
    # @return [Types::CreateOtaTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOtaTaskResponse#task_id #task_id} => String
    #   * {Types::CreateOtaTaskResponse#task_arn #task_arn} => String
    #   * {Types::CreateOtaTaskResponse#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ota_task({
    #     description: "OtaDescription",
    #     s3_url: "S3Url", # required
    #     protocol: "HTTP", # accepts HTTP
    #     target: ["String"],
    #     task_configuration_id: "OtaTaskConfigurationId",
    #     ota_mechanism: "PUSH", # accepts PUSH
    #     ota_type: "ONE_TIME", # required, accepts ONE_TIME, CONTINUOUS
    #     ota_target_query_string: "OtaTargetQueryString",
    #     client_token: "ClientToken",
    #     ota_scheduling_config: {
    #       end_behavior: "STOP_ROLLOUT", # accepts STOP_ROLLOUT, CANCEL, FORCE_CANCEL
    #       end_time: "EndTime",
    #       maintenance_windows: [
    #         {
    #           duration_in_minutes: 1,
    #           start_time: "StartTime",
    #         },
    #       ],
    #       start_time: "ScheduleStartTime",
    #     },
    #     ota_task_execution_retry_config: {
    #       retry_config_criteria: [
    #         {
    #           failure_type: "FAILED", # accepts FAILED, TIMED_OUT, ALL
    #           min_number_of_retries: 1,
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
    #   resp.task_id #=> String
    #   resp.task_arn #=> String
    #   resp.description #=> String
    #
    # @overload create_ota_task(params = {})
    # @param [Hash] params ({})
    def create_ota_task(params = {}, options = {})
      req = build_request(:create_ota_task, params)
      req.send_request(options)
    end

    # Create a configuraiton for the over-the-air (OTA) task.
    #
    # @option params [String] :description
    #   A description of the over-the-air (OTA) task configuration.
    #
    # @option params [String] :name
    #   The name of the over-the-air (OTA) task.
    #
    # @option params [Types::PushConfig] :push_config
    #   Describes the type of configuration used for the over-the-air (OTA)
    #   task.
    #
    # @option params [String] :client_token
    #   An idempotency token. If you retry a request that completed
    #   successfully initially using the same client token and parameters,
    #   then the retry attempt will succeed without performing any further
    #   actions.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateOtaTaskConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOtaTaskConfigurationResponse#task_configuration_id #task_configuration_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ota_task_configuration({
    #     description: "OtaDescription",
    #     name: "OtaTaskConfigurationName",
    #     push_config: {
    #       abort_config: {
    #         abort_config_criteria_list: [
    #           {
    #             action: "CANCEL", # accepts CANCEL
    #             failure_type: "FAILED", # accepts FAILED, REJECTED, TIMED_OUT, ALL
    #             min_number_of_executed_things: 1,
    #             threshold_percentage: 1.0,
    #           },
    #         ],
    #       },
    #       rollout_config: {
    #         exponential_rollout_rate: {
    #           base_rate_per_minute: 1,
    #           increment_factor: 1.0,
    #           rate_increase_criteria: {
    #             number_of_notified_things: 1,
    #             number_of_succeeded_things: 1,
    #           },
    #         },
    #         maximum_per_minute: 1,
    #       },
    #       timeout_config: {
    #         in_progress_timeout_in_minutes: 1,
    #       },
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.task_configuration_id #=> String
    #
    # @overload create_ota_task_configuration(params = {})
    # @param [Hash] params ({})
    def create_ota_task_configuration(params = {}, options = {})
      req = build_request(:create_ota_task_configuration, params)
      req.send_request(options)
    end

    # Create a provisioning profile for a device to execute the provisioning
    # flows using a provisioning template. The provisioning template is a
    # document that defines the set of resources and policies applied to a
    # device during the provisioning process.
    #
    # @option params [required, String] :provisioning_type
    #   The type of provisioning workflow the device uses for onboarding to
    #   IoT managed integrations.
    #
    # @option params [String] :ca_certificate
    #   The id of the certificate authority (CA) certificate.
    #
    # @option params [String] :name
    #   The name of the provisioning template.
    #
    # @option params [String] :client_token
    #   An idempotency token. If you retry a request that completed
    #   successfully initially using the same client token and parameters,
    #   then the retry attempt will succeed without performing any further
    #   actions.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   A set of key/value pairs that are used to manage the provisioning
    #   profile.
    #
    # @return [Types::CreateProvisioningProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProvisioningProfileResponse#arn #arn} => String
    #   * {Types::CreateProvisioningProfileResponse#name #name} => String
    #   * {Types::CreateProvisioningProfileResponse#provisioning_type #provisioning_type} => String
    #   * {Types::CreateProvisioningProfileResponse#id #id} => String
    #   * {Types::CreateProvisioningProfileResponse#claim_certificate #claim_certificate} => String
    #   * {Types::CreateProvisioningProfileResponse#claim_certificate_private_key #claim_certificate_private_key} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_provisioning_profile({
    #     provisioning_type: "FLEET_PROVISIONING", # required, accepts FLEET_PROVISIONING, JITR
    #     ca_certificate: "CaCertificate",
    #     name: "ProvisioningProfileName",
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.provisioning_type #=> String, one of "FLEET_PROVISIONING", "JITR"
    #   resp.id #=> String
    #   resp.claim_certificate #=> String
    #   resp.claim_certificate_private_key #=> String
    #
    # @overload create_provisioning_profile(params = {})
    # @param [Hash] params ({})
    def create_provisioning_profile(params = {}, options = {})
      req = build_request(:create_provisioning_profile, params)
      req.send_request(options)
    end

    # Remove a third party account and related devices from an end user.
    #
    # @option params [required, String] :account_association_id
    #   The unique identifier of the account association to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_account_association({
    #     account_association_id: "AccountAssociationId", # required
    #   })
    #
    # @overload delete_account_association(params = {})
    # @param [Hash] params ({})
    def delete_account_association(params = {}, options = {})
      req = build_request(:delete_account_association, params)
      req.send_request(options)
    end

    # Delete a cloud connector.
    #
    # @option params [required, String] :identifier
    #   The identifier of the cloud connector.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cloud_connector({
    #     identifier: "CloudConnectorId", # required
    #   })
    #
    # @overload delete_cloud_connector(params = {})
    # @param [Hash] params ({})
    def delete_cloud_connector(params = {}, options = {})
      req = build_request(:delete_cloud_connector, params)
      req.send_request(options)
    end

    # Delete a connector destination for connecting a cloud-to-cloud (C2C)
    # connector to the customer's Amazon Web Services account.
    #
    # @option params [required, String] :identifier
    #   The identifier of the connector destination.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connector_destination({
    #     identifier: "ConnectorDestinationId", # required
    #   })
    #
    # @overload delete_connector_destination(params = {})
    # @param [Hash] params ({})
    def delete_connector_destination(params = {}, options = {})
      req = build_request(:delete_connector_destination, params)
      req.send_request(options)
    end

    # Delete a credential locker.
    #
    # <note markdown="1"> This operation can't be undone and any existing device won't be able
    # to use IoT managed integrations.
    #
    #  </note>
    #
    # @option params [required, String] :identifier
    #   The identifier of the credential locker.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_credential_locker({
    #     identifier: "CredentialLockerId", # required
    #   })
    #
    # @overload delete_credential_locker(params = {})
    # @param [Hash] params ({})
    def delete_credential_locker(params = {}, options = {})
      req = build_request(:delete_credential_locker, params)
      req.send_request(options)
    end

    # Deletes a customer-managed destination specified by id.
    #
    # @option params [required, String] :name
    #   The id of the customer-managed destination.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_destination({
    #     name: "DestinationName", # required
    #   })
    #
    # @overload delete_destination(params = {})
    # @param [Hash] params ({})
    def delete_destination(params = {}, options = {})
      req = build_request(:delete_destination, params)
      req.send_request(options)
    end

    # Delete an event log configuration.
    #
    # @option params [required, String] :id
    #   The identifier of the event log configuration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_log_configuration({
    #     id: "LogConfigurationId", # required
    #   })
    #
    # @overload delete_event_log_configuration(params = {})
    # @param [Hash] params ({})
    def delete_event_log_configuration(params = {}, options = {})
      req = build_request(:delete_event_log_configuration, params)
      req.send_request(options)
    end

    # Delete a managed thing. If a controller is deleted, all of the devices
    # connected to it will have their status changed to `PENDING`. It is not
    # possible to remove a cloud device.
    #
    # @option params [required, String] :identifier
    #   The id of the managed thing.
    #
    # @option params [Boolean] :force
    #   When set to `TRUE`, a forceful deteletion of the managed thing will
    #   occur. When set to `FALSE`, a non-forceful deletion of the managed
    #   thing will occur.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_managed_thing({
    #     identifier: "ManagedThingId", # required
    #     force: false,
    #   })
    #
    # @overload delete_managed_thing(params = {})
    # @param [Hash] params ({})
    def delete_managed_thing(params = {}, options = {})
      req = build_request(:delete_managed_thing, params)
      req.send_request(options)
    end

    # Deletes a notification configuration.
    #
    # @option params [required, String] :event_type
    #   The type of event triggering a device notification to the
    #   customer-managed destination.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_notification_configuration({
    #     event_type: "DEVICE_COMMAND", # required, accepts DEVICE_COMMAND, DEVICE_COMMAND_REQUEST, DEVICE_DISCOVERY_STATUS, DEVICE_EVENT, DEVICE_LIFE_CYCLE, DEVICE_STATE, DEVICE_OTA, CONNECTOR_ASSOCIATION, ACCOUNT_ASSOCIATION, CONNECTOR_ERROR_REPORT
    #   })
    #
    # @overload delete_notification_configuration(params = {})
    # @param [Hash] params ({})
    def delete_notification_configuration(params = {}, options = {})
      req = build_request(:delete_notification_configuration, params)
      req.send_request(options)
    end

    # Delete the over-the-air (OTA) task.
    #
    # @option params [required, String] :identifier
    #   The identifier of the over-the-air (OTA) task.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ota_task({
    #     identifier: "OtaTaskId", # required
    #   })
    #
    # @overload delete_ota_task(params = {})
    # @param [Hash] params ({})
    def delete_ota_task(params = {}, options = {})
      req = build_request(:delete_ota_task, params)
      req.send_request(options)
    end

    # Delete the over-the-air (OTA) task configuration.
    #
    # @option params [required, String] :identifier
    #   The identifier of the over-the-air (OTA) task configuration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ota_task_configuration({
    #     identifier: "OtaTaskConfigurationId", # required
    #   })
    #
    # @overload delete_ota_task_configuration(params = {})
    # @param [Hash] params ({})
    def delete_ota_task_configuration(params = {}, options = {})
      req = build_request(:delete_ota_task_configuration, params)
      req.send_request(options)
    end

    # Delete a provisioning profile.
    #
    # @option params [required, String] :identifier
    #   The name of the provisioning template.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_provisioning_profile({
    #     identifier: "ProvisioningProfileId", # required
    #   })
    #
    # @overload delete_provisioning_profile(params = {})
    # @param [Hash] params ({})
    def delete_provisioning_profile(params = {}, options = {})
      req = build_request(:delete_provisioning_profile, params)
      req.send_request(options)
    end

    # Deregisters an account association, removing the connection between a
    # managed thing and a third-party account.
    #
    # @option params [required, String] :managed_thing_id
    #   The identifier of the managed thing to be deregistered from the
    #   account association.
    #
    # @option params [required, String] :account_association_id
    #   The unique identifier of the account association to be deregistered.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_account_association({
    #     managed_thing_id: "ManagedThingId", # required
    #     account_association_id: "AccountAssociationId", # required
    #   })
    #
    # @overload deregister_account_association(params = {})
    # @param [Hash] params ({})
    def deregister_account_association(params = {}, options = {})
      req = build_request(:deregister_account_association, params)
      req.send_request(options)
    end

    # Get an account association for an Amazon Web Services account linked
    # to a customer-managed destination.
    #
    # @option params [required, String] :account_association_id
    #   The unique identifier of the account association to retrieve.
    #
    # @return [Types::GetAccountAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountAssociationResponse#account_association_id #account_association_id} => String
    #   * {Types::GetAccountAssociationResponse#association_state #association_state} => String
    #   * {Types::GetAccountAssociationResponse#error_message #error_message} => String
    #   * {Types::GetAccountAssociationResponse#connector_destination_id #connector_destination_id} => String
    #   * {Types::GetAccountAssociationResponse#name #name} => String
    #   * {Types::GetAccountAssociationResponse#description #description} => String
    #   * {Types::GetAccountAssociationResponse#arn #arn} => String
    #   * {Types::GetAccountAssociationResponse#o_auth_authorization_url #o_auth_authorization_url} => String
    #   * {Types::GetAccountAssociationResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_account_association({
    #     account_association_id: "AccountAssociationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account_association_id #=> String
    #   resp.association_state #=> String, one of "ASSOCIATION_IN_PROGRESS", "ASSOCIATION_FAILED", "ASSOCIATION_SUCCEEDED", "ASSOCIATION_DELETING", "REFRESH_TOKEN_EXPIRED"
    #   resp.error_message #=> String
    #   resp.connector_destination_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.arn #=> String
    #   resp.o_auth_authorization_url #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @overload get_account_association(params = {})
    # @param [Hash] params ({})
    def get_account_association(params = {}, options = {})
      req = build_request(:get_account_association, params)
      req.send_request(options)
    end

    # Gets all the information about a connector for a connector developer.
    #
    # @option params [required, String] :identifier
    #   The identifier of the C2C connector.
    #
    # @return [Types::GetCloudConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCloudConnectorResponse#name #name} => String
    #   * {Types::GetCloudConnectorResponse#endpoint_config #endpoint_config} => Types::EndpointConfig
    #   * {Types::GetCloudConnectorResponse#description #description} => String
    #   * {Types::GetCloudConnectorResponse#endpoint_type #endpoint_type} => String
    #   * {Types::GetCloudConnectorResponse#id #id} => String
    #   * {Types::GetCloudConnectorResponse#type #type} => String
    #
    #
    # @example Example: GetCloudConnector happy path for TP Link to get connector resource
    #
    #   resp = client.get_cloud_connector({
    #     identifier: "123456789012", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     endpoint_config: {
    #       lambda: {
    #         arn: "arn:aws:lambda:us-east-1:111122223333:function:my-function:myVersion", 
    #       }, 
    #     }, 
    #     endpoint_type: "LAMBDA", 
    #     id: "123456789012", 
    #     name: "Connector for TP Link Cloud V2", 
    #   }
    #
    # @example Example: GetCloudConnector happy path for Ring to pending status
    #
    #   resp = client.get_cloud_connector({
    #     identifier: "123456789012", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     endpoint_config: {
    #       lambda: {
    #         arn: "arn:aws:lambda:us-east-1:111122223333:function:my-function:myVersion", 
    #       }, 
    #     }, 
    #     name: "Connector for Ring Cloud", 
    #   }
    #
    # @example Example: GetCloudConnector error Id for Ring connector which does not exist
    #
    #   resp = client.get_cloud_connector({
    #     identifier: "123456789012", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cloud_connector({
    #     identifier: "CloudConnectorId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.endpoint_config.lambda.arn #=> String
    #   resp.description #=> String
    #   resp.endpoint_type #=> String, one of "LAMBDA"
    #   resp.id #=> String
    #   resp.type #=> String, one of "LISTED", "UNLISTED"
    #
    # @overload get_cloud_connector(params = {})
    # @param [Hash] params ({})
    def get_cloud_connector(params = {}, options = {})
      req = build_request(:get_cloud_connector, params)
      req.send_request(options)
    end

    # Get a connector destination of a cloud-to-cloud (C2C) connector
    # connecting to a customer's Amazon Web Services account.
    #
    # @option params [required, String] :identifier
    #   The identifier of the C2C connector destination.
    #
    # @return [Types::GetConnectorDestinationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConnectorDestinationResponse#name #name} => String
    #   * {Types::GetConnectorDestinationResponse#description #description} => String
    #   * {Types::GetConnectorDestinationResponse#cloud_connector_id #cloud_connector_id} => String
    #   * {Types::GetConnectorDestinationResponse#id #id} => String
    #   * {Types::GetConnectorDestinationResponse#auth_type #auth_type} => String
    #   * {Types::GetConnectorDestinationResponse#auth_config #auth_config} => Types::AuthConfig
    #   * {Types::GetConnectorDestinationResponse#secrets_manager #secrets_manager} => Types::SecretsManager
    #   * {Types::GetConnectorDestinationResponse#o_auth_complete_redirect_url #o_auth_complete_redirect_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connector_destination({
    #     identifier: "ConnectorDestinationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.cloud_connector_id #=> String
    #   resp.id #=> String
    #   resp.auth_type #=> String, one of "OAUTH"
    #   resp.auth_config.o_auth.auth_url #=> String
    #   resp.auth_config.o_auth.token_url #=> String
    #   resp.auth_config.o_auth.scope #=> String
    #   resp.auth_config.o_auth.token_endpoint_authentication_scheme #=> String, one of "HTTP_BASIC", "REQUEST_BODY_CREDENTIALS"
    #   resp.auth_config.o_auth.o_auth_complete_redirect_url #=> String
    #   resp.auth_config.o_auth.proactive_refresh_token_renewal.enabled #=> Boolean
    #   resp.auth_config.o_auth.proactive_refresh_token_renewal.days_before_renewal #=> Integer
    #   resp.secrets_manager.arn #=> String
    #   resp.secrets_manager.version_id #=> String
    #   resp.o_auth_complete_redirect_url #=> String
    #
    # @overload get_connector_destination(params = {})
    # @param [Hash] params ({})
    def get_connector_destination(params = {}, options = {})
      req = build_request(:get_connector_destination, params)
      req.send_request(options)
    end

    # Get information on an existing credential locker
    #
    # @option params [required, String] :identifier
    #   The identifier of the credential locker.
    #
    # @return [Types::GetCredentialLockerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCredentialLockerResponse#id #id} => String
    #   * {Types::GetCredentialLockerResponse#arn #arn} => String
    #   * {Types::GetCredentialLockerResponse#name #name} => String
    #   * {Types::GetCredentialLockerResponse#created_at #created_at} => Time
    #   * {Types::GetCredentialLockerResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_credential_locker({
    #     identifier: "CredentialLockerId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.created_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @overload get_credential_locker(params = {})
    # @param [Hash] params ({})
    def get_credential_locker(params = {}, options = {})
      req = build_request(:get_credential_locker, params)
      req.send_request(options)
    end

    # Returns the IoT managed integrations custom endpoint.
    #
    # @return [Types::GetCustomEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCustomEndpointResponse#endpoint_address #endpoint_address} => String
    #
    # @example Response structure
    #
    #   resp.endpoint_address #=> String
    #
    # @overload get_custom_endpoint(params = {})
    # @param [Hash] params ({})
    def get_custom_endpoint(params = {}, options = {})
      req = build_request(:get_custom_endpoint, params)
      req.send_request(options)
    end

    # Retrieves information about the default encryption configuration for
    # the Amazon Web Services account in the default or specified region.
    # For more information, see [Key management][1] in the *AWS IoT SiteWise
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/key-management.html
    #
    # @return [Types::GetDefaultEncryptionConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDefaultEncryptionConfigurationResponse#configuration_status #configuration_status} => Types::ConfigurationStatus
    #   * {Types::GetDefaultEncryptionConfigurationResponse#encryption_type #encryption_type} => String
    #   * {Types::GetDefaultEncryptionConfigurationResponse#kms_key_arn #kms_key_arn} => String
    #
    # @example Response structure
    #
    #   resp.configuration_status.error.code #=> String
    #   resp.configuration_status.error.message #=> String
    #   resp.configuration_status.state #=> String, one of "ENABLED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"
    #   resp.encryption_type #=> String, one of "MANAGED_INTEGRATIONS_DEFAULT_ENCRYPTION", "CUSTOMER_KEY_ENCRYPTION"
    #   resp.kms_key_arn #=> String
    #
    # @overload get_default_encryption_configuration(params = {})
    # @param [Hash] params ({})
    def get_default_encryption_configuration(params = {}, options = {})
      req = build_request(:get_default_encryption_configuration, params)
      req.send_request(options)
    end

    # Gets a destination by ID.
    #
    # @option params [required, String] :name
    #   The name of the customer-managed destination.
    #
    # @return [Types::GetDestinationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDestinationResponse#description #description} => String
    #   * {Types::GetDestinationResponse#delivery_destination_arn #delivery_destination_arn} => String
    #   * {Types::GetDestinationResponse#delivery_destination_type #delivery_destination_type} => String
    #   * {Types::GetDestinationResponse#name #name} => String
    #   * {Types::GetDestinationResponse#role_arn #role_arn} => String
    #   * {Types::GetDestinationResponse#created_at #created_at} => Time
    #   * {Types::GetDestinationResponse#updated_at #updated_at} => Time
    #   * {Types::GetDestinationResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_destination({
    #     name: "DestinationName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.description #=> String
    #   resp.delivery_destination_arn #=> String
    #   resp.delivery_destination_type #=> String, one of "KINESIS"
    #   resp.name #=> String
    #   resp.role_arn #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @overload get_destination(params = {})
    # @param [Hash] params ({})
    def get_destination(params = {}, options = {})
      req = build_request(:get_destination, params)
      req.send_request(options)
    end

    # Get the current state of a device discovery.
    #
    # @option params [required, String] :identifier
    #   The id of the device discovery job request.
    #
    # @return [Types::GetDeviceDiscoveryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeviceDiscoveryResponse#id #id} => String
    #   * {Types::GetDeviceDiscoveryResponse#arn #arn} => String
    #   * {Types::GetDeviceDiscoveryResponse#discovery_type #discovery_type} => String
    #   * {Types::GetDeviceDiscoveryResponse#status #status} => String
    #   * {Types::GetDeviceDiscoveryResponse#started_at #started_at} => Time
    #   * {Types::GetDeviceDiscoveryResponse#controller_id #controller_id} => String
    #   * {Types::GetDeviceDiscoveryResponse#connector_association_id #connector_association_id} => String
    #   * {Types::GetDeviceDiscoveryResponse#account_association_id #account_association_id} => String
    #   * {Types::GetDeviceDiscoveryResponse#finished_at #finished_at} => Time
    #   * {Types::GetDeviceDiscoveryResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device_discovery({
    #     identifier: "DeviceDiscoveryId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.discovery_type #=> String, one of "ZWAVE", "ZIGBEE", "CLOUD", "CUSTOM"
    #   resp.status #=> String, one of "RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT"
    #   resp.started_at #=> Time
    #   resp.controller_id #=> String
    #   resp.connector_association_id #=> String
    #   resp.account_association_id #=> String
    #   resp.finished_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @overload get_device_discovery(params = {})
    # @param [Hash] params ({})
    def get_device_discovery(params = {}, options = {})
      req = build_request(:get_device_discovery, params)
      req.send_request(options)
    end

    # Get an event log configuration.
    #
    # @option params [required, String] :id
    #   The identifier of the event log configuration.
    #
    # @return [Types::GetEventLogConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEventLogConfigurationResponse#id #id} => String
    #   * {Types::GetEventLogConfigurationResponse#resource_type #resource_type} => String
    #   * {Types::GetEventLogConfigurationResponse#resource_id #resource_id} => String
    #   * {Types::GetEventLogConfigurationResponse#event_log_level #event_log_level} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_log_configuration({
    #     id: "LogConfigurationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.resource_type #=> String
    #   resp.resource_id #=> String
    #   resp.event_log_level #=> String, one of "DEBUG", "ERROR", "INFO", "WARN"
    #
    # @overload get_event_log_configuration(params = {})
    # @param [Hash] params ({})
    def get_event_log_configuration(params = {}, options = {})
      req = build_request(:get_event_log_configuration, params)
      req.send_request(options)
    end

    # Get a hub configuration.
    #
    # @return [Types::GetHubConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetHubConfigurationResponse#hub_token_timer_expiry_setting_in_seconds #hub_token_timer_expiry_setting_in_seconds} => Integer
    #   * {Types::GetHubConfigurationResponse#updated_at #updated_at} => Time
    #
    # @example Response structure
    #
    #   resp.hub_token_timer_expiry_setting_in_seconds #=> Integer
    #   resp.updated_at #=> Time
    #
    # @overload get_hub_configuration(params = {})
    # @param [Hash] params ({})
    def get_hub_configuration(params = {}, options = {})
      req = build_request(:get_hub_configuration, params)
      req.send_request(options)
    end

    # Get the attributes and capabilities associated with a managed thing.
    #
    # @option params [required, String] :identifier
    #   The id of the managed thing.
    #
    # @return [Types::GetManagedThingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetManagedThingResponse#id #id} => String
    #   * {Types::GetManagedThingResponse#arn #arn} => String
    #   * {Types::GetManagedThingResponse#owner #owner} => String
    #   * {Types::GetManagedThingResponse#credential_locker_id #credential_locker_id} => String
    #   * {Types::GetManagedThingResponse#advertised_product_id #advertised_product_id} => String
    #   * {Types::GetManagedThingResponse#role #role} => String
    #   * {Types::GetManagedThingResponse#provisioning_status #provisioning_status} => String
    #   * {Types::GetManagedThingResponse#name #name} => String
    #   * {Types::GetManagedThingResponse#model #model} => String
    #   * {Types::GetManagedThingResponse#brand #brand} => String
    #   * {Types::GetManagedThingResponse#serial_number #serial_number} => String
    #   * {Types::GetManagedThingResponse#universal_product_code #universal_product_code} => String
    #   * {Types::GetManagedThingResponse#international_article_number #international_article_number} => String
    #   * {Types::GetManagedThingResponse#connector_policy_id #connector_policy_id} => String
    #   * {Types::GetManagedThingResponse#connector_destination_id #connector_destination_id} => String
    #   * {Types::GetManagedThingResponse#connector_device_id #connector_device_id} => String
    #   * {Types::GetManagedThingResponse#device_specific_key #device_specific_key} => String
    #   * {Types::GetManagedThingResponse#mac_address #mac_address} => String
    #   * {Types::GetManagedThingResponse#parent_controller_id #parent_controller_id} => String
    #   * {Types::GetManagedThingResponse#classification #classification} => String
    #   * {Types::GetManagedThingResponse#created_at #created_at} => Time
    #   * {Types::GetManagedThingResponse#updated_at #updated_at} => Time
    #   * {Types::GetManagedThingResponse#activated_at #activated_at} => Time
    #   * {Types::GetManagedThingResponse#hub_network_mode #hub_network_mode} => String
    #   * {Types::GetManagedThingResponse#meta_data #meta_data} => Hash&lt;String,String&gt;
    #   * {Types::GetManagedThingResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_managed_thing({
    #     identifier: "ManagedThingId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.owner #=> String
    #   resp.credential_locker_id #=> String
    #   resp.advertised_product_id #=> String
    #   resp.role #=> String, one of "CONTROLLER", "DEVICE"
    #   resp.provisioning_status #=> String, one of "UNASSOCIATED", "PRE_ASSOCIATED", "DISCOVERED", "ACTIVATED", "DELETION_FAILED", "DELETE_IN_PROGRESS", "ISOLATED", "DELETED"
    #   resp.name #=> String
    #   resp.model #=> String
    #   resp.brand #=> String
    #   resp.serial_number #=> String
    #   resp.universal_product_code #=> String
    #   resp.international_article_number #=> String
    #   resp.connector_policy_id #=> String
    #   resp.connector_destination_id #=> String
    #   resp.connector_device_id #=> String
    #   resp.device_specific_key #=> String
    #   resp.mac_address #=> String
    #   resp.parent_controller_id #=> String
    #   resp.classification #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.activated_at #=> Time
    #   resp.hub_network_mode #=> String, one of "STANDARD", "NETWORK_WIDE_EXCLUSION"
    #   resp.meta_data #=> Hash
    #   resp.meta_data["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @overload get_managed_thing(params = {})
    # @param [Hash] params ({})
    def get_managed_thing(params = {}, options = {})
      req = build_request(:get_managed_thing, params)
      req.send_request(options)
    end

    # Get the capabilities for a managed thing using the device ID.
    #
    # @option params [required, String] :identifier
    #   The id of the device.
    #
    # @return [Types::GetManagedThingCapabilitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetManagedThingCapabilitiesResponse#managed_thing_id #managed_thing_id} => String
    #   * {Types::GetManagedThingCapabilitiesResponse#capabilities #capabilities} => String
    #   * {Types::GetManagedThingCapabilitiesResponse#capability_report #capability_report} => Types::CapabilityReport
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_managed_thing_capabilities({
    #     identifier: "ManagedThingId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.managed_thing_id #=> String
    #   resp.capabilities #=> String
    #   resp.capability_report.version #=> String
    #   resp.capability_report.node_id #=> String
    #   resp.capability_report.endpoints #=> Array
    #   resp.capability_report.endpoints[0].id #=> String
    #   resp.capability_report.endpoints[0].device_types #=> Array
    #   resp.capability_report.endpoints[0].device_types[0] #=> String
    #   resp.capability_report.endpoints[0].capabilities #=> Array
    #   resp.capability_report.endpoints[0].capabilities[0].id #=> String
    #   resp.capability_report.endpoints[0].capabilities[0].name #=> String
    #   resp.capability_report.endpoints[0].capabilities[0].version #=> String
    #   resp.capability_report.endpoints[0].capabilities[0].properties #=> Array
    #   resp.capability_report.endpoints[0].capabilities[0].properties[0] #=> String
    #   resp.capability_report.endpoints[0].capabilities[0].actions #=> Array
    #   resp.capability_report.endpoints[0].capabilities[0].actions[0] #=> String
    #   resp.capability_report.endpoints[0].capabilities[0].events #=> Array
    #   resp.capability_report.endpoints[0].capabilities[0].events[0] #=> String
    #
    # @overload get_managed_thing_capabilities(params = {})
    # @param [Hash] params ({})
    def get_managed_thing_capabilities(params = {}, options = {})
      req = build_request(:get_managed_thing_capabilities, params)
      req.send_request(options)
    end

    # Get the connectivity status of a managed thing.
    #
    # @option params [required, String] :identifier
    #   The identifier of a managed thing.
    #
    # @return [Types::GetManagedThingConnectivityDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetManagedThingConnectivityDataResponse#managed_thing_id #managed_thing_id} => String
    #   * {Types::GetManagedThingConnectivityDataResponse#connected #connected} => Boolean
    #   * {Types::GetManagedThingConnectivityDataResponse#timestamp #timestamp} => Time
    #   * {Types::GetManagedThingConnectivityDataResponse#disconnect_reason #disconnect_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_managed_thing_connectivity_data({
    #     identifier: "ManagedThingId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.managed_thing_id #=> String
    #   resp.connected #=> Boolean
    #   resp.timestamp #=> Time
    #   resp.disconnect_reason #=> String, one of "AUTH_ERROR", "CLIENT_INITIATED_DISCONNECT", "CLIENT_ERROR", "CONNECTION_LOST", "DUPLICATE_CLIENTID", "FORBIDDEN_ACCESS", "MQTT_KEEP_ALIVE_TIMEOUT", "SERVER_ERROR", "SERVER_INITIATED_DISCONNECT", "THROTTLED", "WEBSOCKET_TTL_EXPIRATION", "CUSTOMAUTH_TTL_EXPIRATION", "UNKNOWN", "NONE"
    #
    # @overload get_managed_thing_connectivity_data(params = {})
    # @param [Hash] params ({})
    def get_managed_thing_connectivity_data(params = {}, options = {})
      req = build_request(:get_managed_thing_connectivity_data, params)
      req.send_request(options)
    end

    # Get the metadata information for a managed thing.
    #
    # <note markdown="1"> The `managedThing` `metadata` parameter is used for associating
    # attributes with a `managedThing` that can be used for grouping
    # over-the-air (OTA) tasks. Name value pairs in `metadata` can be used
    # in the `OtaTargetQueryString` parameter for the `CreateOtaTask` API
    # operation.
    #
    #  </note>
    #
    # @option params [required, String] :identifier
    #   The managed thing id.
    #
    # @return [Types::GetManagedThingMetaDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetManagedThingMetaDataResponse#managed_thing_id #managed_thing_id} => String
    #   * {Types::GetManagedThingMetaDataResponse#meta_data #meta_data} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_managed_thing_meta_data({
    #     identifier: "ManagedThingId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.managed_thing_id #=> String
    #   resp.meta_data #=> Hash
    #   resp.meta_data["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #
    # @overload get_managed_thing_meta_data(params = {})
    # @param [Hash] params ({})
    def get_managed_thing_meta_data(params = {}, options = {})
      req = build_request(:get_managed_thing_meta_data, params)
      req.send_request(options)
    end

    # Returns the managed thing state for the given device Id.
    #
    # @option params [required, String] :managed_thing_id
    #   The id of the device.
    #
    # @return [Types::GetManagedThingStateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetManagedThingStateResponse#endpoints #endpoints} => Array&lt;Types::StateEndpoint&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_managed_thing_state({
    #     managed_thing_id: "ManagedThingId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoints #=> Array
    #   resp.endpoints[0].endpoint_id #=> String
    #   resp.endpoints[0].capabilities #=> Array
    #   resp.endpoints[0].capabilities[0].id #=> String
    #   resp.endpoints[0].capabilities[0].name #=> String
    #   resp.endpoints[0].capabilities[0].version #=> String
    #
    # @overload get_managed_thing_state(params = {})
    # @param [Hash] params ({})
    def get_managed_thing_state(params = {}, options = {})
      req = build_request(:get_managed_thing_state, params)
      req.send_request(options)
    end

    # Get a notification configuration.
    #
    # @option params [required, String] :event_type
    #   The type of event triggering a device notification to the
    #   customer-managed destination.
    #
    # @return [Types::GetNotificationConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNotificationConfigurationResponse#event_type #event_type} => String
    #   * {Types::GetNotificationConfigurationResponse#destination_name #destination_name} => String
    #   * {Types::GetNotificationConfigurationResponse#created_at #created_at} => Time
    #   * {Types::GetNotificationConfigurationResponse#updated_at #updated_at} => Time
    #   * {Types::GetNotificationConfigurationResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_notification_configuration({
    #     event_type: "DEVICE_COMMAND", # required, accepts DEVICE_COMMAND, DEVICE_COMMAND_REQUEST, DEVICE_DISCOVERY_STATUS, DEVICE_EVENT, DEVICE_LIFE_CYCLE, DEVICE_STATE, DEVICE_OTA, CONNECTOR_ASSOCIATION, ACCOUNT_ASSOCIATION, CONNECTOR_ERROR_REPORT
    #   })
    #
    # @example Response structure
    #
    #   resp.event_type #=> String, one of "DEVICE_COMMAND", "DEVICE_COMMAND_REQUEST", "DEVICE_DISCOVERY_STATUS", "DEVICE_EVENT", "DEVICE_LIFE_CYCLE", "DEVICE_STATE", "DEVICE_OTA", "CONNECTOR_ASSOCIATION", "ACCOUNT_ASSOCIATION", "CONNECTOR_ERROR_REPORT"
    #   resp.destination_name #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @overload get_notification_configuration(params = {})
    # @param [Hash] params ({})
    def get_notification_configuration(params = {}, options = {})
      req = build_request(:get_notification_configuration, params)
      req.send_request(options)
    end

    # Get the over-the-air (OTA) task.
    #
    # @option params [required, String] :identifier
    #   The over-the-air (OTA) task id.
    #
    # @return [Types::GetOtaTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOtaTaskResponse#task_id #task_id} => String
    #   * {Types::GetOtaTaskResponse#task_arn #task_arn} => String
    #   * {Types::GetOtaTaskResponse#description #description} => String
    #   * {Types::GetOtaTaskResponse#s3_url #s3_url} => String
    #   * {Types::GetOtaTaskResponse#protocol #protocol} => String
    #   * {Types::GetOtaTaskResponse#ota_type #ota_type} => String
    #   * {Types::GetOtaTaskResponse#ota_target_query_string #ota_target_query_string} => String
    #   * {Types::GetOtaTaskResponse#ota_mechanism #ota_mechanism} => String
    #   * {Types::GetOtaTaskResponse#target #target} => Array&lt;String&gt;
    #   * {Types::GetOtaTaskResponse#created_at #created_at} => Time
    #   * {Types::GetOtaTaskResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetOtaTaskResponse#task_configuration_id #task_configuration_id} => String
    #   * {Types::GetOtaTaskResponse#task_processing_details #task_processing_details} => Types::TaskProcessingDetails
    #   * {Types::GetOtaTaskResponse#ota_scheduling_config #ota_scheduling_config} => Types::OtaTaskSchedulingConfig
    #   * {Types::GetOtaTaskResponse#ota_task_execution_retry_config #ota_task_execution_retry_config} => Types::OtaTaskExecutionRetryConfig
    #   * {Types::GetOtaTaskResponse#status #status} => String
    #   * {Types::GetOtaTaskResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ota_task({
    #     identifier: "OtaTaskId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_id #=> String
    #   resp.task_arn #=> String
    #   resp.description #=> String
    #   resp.s3_url #=> String
    #   resp.protocol #=> String, one of "HTTP"
    #   resp.ota_type #=> String, one of "ONE_TIME", "CONTINUOUS"
    #   resp.ota_target_query_string #=> String
    #   resp.ota_mechanism #=> String, one of "PUSH"
    #   resp.target #=> Array
    #   resp.target[0] #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.task_configuration_id #=> String
    #   resp.task_processing_details.number_of_canceled_things #=> Integer
    #   resp.task_processing_details.number_of_failed_things #=> Integer
    #   resp.task_processing_details.number_of_in_progress_things #=> Integer
    #   resp.task_processing_details.number_of_queued_things #=> Integer
    #   resp.task_processing_details.number_of_rejected_things #=> Integer
    #   resp.task_processing_details.number_of_removed_things #=> Integer
    #   resp.task_processing_details.number_of_succeeded_things #=> Integer
    #   resp.task_processing_details.number_of_timed_out_things #=> Integer
    #   resp.task_processing_details.processing_targets #=> Array
    #   resp.task_processing_details.processing_targets[0] #=> String
    #   resp.ota_scheduling_config.end_behavior #=> String, one of "STOP_ROLLOUT", "CANCEL", "FORCE_CANCEL"
    #   resp.ota_scheduling_config.end_time #=> String
    #   resp.ota_scheduling_config.maintenance_windows #=> Array
    #   resp.ota_scheduling_config.maintenance_windows[0].duration_in_minutes #=> Integer
    #   resp.ota_scheduling_config.maintenance_windows[0].start_time #=> String
    #   resp.ota_scheduling_config.start_time #=> String
    #   resp.ota_task_execution_retry_config.retry_config_criteria #=> Array
    #   resp.ota_task_execution_retry_config.retry_config_criteria[0].failure_type #=> String, one of "FAILED", "TIMED_OUT", "ALL"
    #   resp.ota_task_execution_retry_config.retry_config_criteria[0].min_number_of_retries #=> Integer
    #   resp.status #=> String, one of "IN_PROGRESS", "CANCELED", "COMPLETED", "DELETION_IN_PROGRESS", "SCHEDULED"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @overload get_ota_task(params = {})
    # @param [Hash] params ({})
    def get_ota_task(params = {}, options = {})
      req = build_request(:get_ota_task, params)
      req.send_request(options)
    end

    # Get a configuraiton for the over-the-air (OTA) task.
    #
    # @option params [required, String] :identifier
    #   The over-the-air (OTA) task configuration id.
    #
    # @return [Types::GetOtaTaskConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOtaTaskConfigurationResponse#task_configuration_id #task_configuration_id} => String
    #   * {Types::GetOtaTaskConfigurationResponse#name #name} => String
    #   * {Types::GetOtaTaskConfigurationResponse#push_config #push_config} => Types::PushConfig
    #   * {Types::GetOtaTaskConfigurationResponse#description #description} => String
    #   * {Types::GetOtaTaskConfigurationResponse#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ota_task_configuration({
    #     identifier: "OtaTaskConfigurationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_configuration_id #=> String
    #   resp.name #=> String
    #   resp.push_config.abort_config.abort_config_criteria_list #=> Array
    #   resp.push_config.abort_config.abort_config_criteria_list[0].action #=> String, one of "CANCEL"
    #   resp.push_config.abort_config.abort_config_criteria_list[0].failure_type #=> String, one of "FAILED", "REJECTED", "TIMED_OUT", "ALL"
    #   resp.push_config.abort_config.abort_config_criteria_list[0].min_number_of_executed_things #=> Integer
    #   resp.push_config.abort_config.abort_config_criteria_list[0].threshold_percentage #=> Float
    #   resp.push_config.rollout_config.exponential_rollout_rate.base_rate_per_minute #=> Integer
    #   resp.push_config.rollout_config.exponential_rollout_rate.increment_factor #=> Float
    #   resp.push_config.rollout_config.exponential_rollout_rate.rate_increase_criteria.number_of_notified_things #=> Integer
    #   resp.push_config.rollout_config.exponential_rollout_rate.rate_increase_criteria.number_of_succeeded_things #=> Integer
    #   resp.push_config.rollout_config.maximum_per_minute #=> Integer
    #   resp.push_config.timeout_config.in_progress_timeout_in_minutes #=> Integer
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #
    # @overload get_ota_task_configuration(params = {})
    # @param [Hash] params ({})
    def get_ota_task_configuration(params = {}, options = {})
      req = build_request(:get_ota_task_configuration, params)
      req.send_request(options)
    end

    # Get a provisioning profile by template name.
    #
    # @option params [required, String] :identifier
    #   The provisioning template the device uses for the provisioning
    #   process.
    #
    # @return [Types::GetProvisioningProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProvisioningProfileResponse#arn #arn} => String
    #   * {Types::GetProvisioningProfileResponse#name #name} => String
    #   * {Types::GetProvisioningProfileResponse#provisioning_type #provisioning_type} => String
    #   * {Types::GetProvisioningProfileResponse#id #id} => String
    #   * {Types::GetProvisioningProfileResponse#claim_certificate #claim_certificate} => String
    #   * {Types::GetProvisioningProfileResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_provisioning_profile({
    #     identifier: "ProvisioningProfileId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.provisioning_type #=> String, one of "FLEET_PROVISIONING", "JITR"
    #   resp.id #=> String
    #   resp.claim_certificate #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @overload get_provisioning_profile(params = {})
    # @param [Hash] params ({})
    def get_provisioning_profile(params = {}, options = {})
      req = build_request(:get_provisioning_profile, params)
      req.send_request(options)
    end

    # Get the runtime log configuration for a specific managed thing or for
    # all managed things as a group.
    #
    # @option params [required, String] :managed_thing_id
    #   The id for a managed thing.
    #
    # @return [Types::GetRuntimeLogConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRuntimeLogConfigurationResponse#managed_thing_id #managed_thing_id} => String
    #   * {Types::GetRuntimeLogConfigurationResponse#runtime_log_configurations #runtime_log_configurations} => Types::RuntimeLogConfigurations
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_runtime_log_configuration({
    #     managed_thing_id: "ManagedThingId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.managed_thing_id #=> String
    #   resp.runtime_log_configurations.log_level #=> String, one of "DEBUG", "ERROR", "INFO", "WARN"
    #   resp.runtime_log_configurations.log_flush_level #=> String, one of "DEBUG", "ERROR", "INFO", "WARN"
    #   resp.runtime_log_configurations.local_store_location #=> String
    #   resp.runtime_log_configurations.local_store_file_rotation_max_files #=> Integer
    #   resp.runtime_log_configurations.local_store_file_rotation_max_bytes #=> Integer
    #   resp.runtime_log_configurations.upload_log #=> Boolean
    #   resp.runtime_log_configurations.upload_period_minutes #=> Integer
    #   resp.runtime_log_configurations.delete_local_store_after_upload #=> Boolean
    #
    # @overload get_runtime_log_configuration(params = {})
    # @param [Hash] params ({})
    def get_runtime_log_configuration(params = {}, options = {})
      req = build_request(:get_runtime_log_configuration, params)
      req.send_request(options)
    end

    # Gets a schema version with the provided information.
    #
    # @option params [required, String] :type
    #   The type of schema version.
    #
    # @option params [required, String] :schema_versioned_id
    #   Schema id with a version specified. If the version is missing, it
    #   defaults to latest version.
    #
    # @option params [String] :format
    #   The format of the schema version.
    #
    # @return [Types::GetSchemaVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSchemaVersionResponse#schema_id #schema_id} => String
    #   * {Types::GetSchemaVersionResponse#type #type} => String
    #   * {Types::GetSchemaVersionResponse#description #description} => String
    #   * {Types::GetSchemaVersionResponse#namespace #namespace} => String
    #   * {Types::GetSchemaVersionResponse#semantic_version #semantic_version} => String
    #   * {Types::GetSchemaVersionResponse#visibility #visibility} => String
    #   * {Types::GetSchemaVersionResponse#schema #schema} => Hash,Array,String,Numeric,Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_schema_version({
    #     type: "capability", # required, accepts capability, definition
    #     schema_versioned_id: "SchemaVersionedId", # required
    #     format: "AWS", # accepts AWS, ZCL, CONNECTOR
    #   })
    #
    # @example Response structure
    #
    #   resp.schema_id #=> String
    #   resp.type #=> String, one of "capability", "definition"
    #   resp.description #=> String
    #   resp.namespace #=> String
    #   resp.semantic_version #=> String
    #   resp.visibility #=> String, one of "PUBLIC", "PRIVATE"
    #
    # @overload get_schema_version(params = {})
    # @param [Hash] params ({})
    def get_schema_version(params = {}, options = {})
      req = build_request(:get_schema_version, params)
      req.send_request(options)
    end

    # Lists all account associations, with optional filtering by connector
    # destination ID.
    #
    # @option params [String] :connector_destination_id
    #   The identifier of the connector destination to filter account
    #   associations by.
    #
    # @option params [Integer] :max_results
    #   The maximum number of account associations to return in a single
    #   response.
    #
    # @option params [String] :next_token
    #   A token used for pagination of results.
    #
    # @return [Types::ListAccountAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccountAssociationsResponse#items #items} => Array&lt;Types::AccountAssociationItem&gt;
    #   * {Types::ListAccountAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_account_associations({
    #     connector_destination_id: "ConnectorDestinationId",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].account_association_id #=> String
    #   resp.items[0].association_state #=> String, one of "ASSOCIATION_IN_PROGRESS", "ASSOCIATION_FAILED", "ASSOCIATION_SUCCEEDED", "ASSOCIATION_DELETING", "REFRESH_TOKEN_EXPIRED"
    #   resp.items[0].error_message #=> String
    #   resp.items[0].connector_destination_id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @overload list_account_associations(params = {})
    # @param [Hash] params ({})
    def list_account_associations(params = {}, options = {})
      req = build_request(:list_account_associations, params)
      req.send_request(options)
    end

    # Returns a list of connectors based on permissions.
    #
    # @option params [String] :type
    #   The type of cloud connectors to filter by when listing available
    #   connectors.
    #
    # @option params [String] :lambda_arn
    #   The Amazon Resource Name (ARN) of the Lambda function to filter cloud
    #   connectors by.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @option params [String] :next_token
    #   A token that can be used to retrieve the next set of results.
    #
    # @return [Types::ListCloudConnectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCloudConnectorsResponse#items #items} => Array&lt;Types::ConnectorItem&gt;
    #   * {Types::ListCloudConnectorsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: ListCloudConnectors happy path to get a list of connector resources
    #
    #   resp = client.list_cloud_connectors({
    #     max_results: 5, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         description: "Description for TP Link Cloud V2", 
    #         endpoint_config: {
    #           lambda: {
    #             arn: "arn:aws:lambda:us-east-1:111122223333:function:my-function:myVersion", 
    #           }, 
    #         }, 
    #         endpoint_type: "LAMBDA", 
    #         name: "Connector for TP Link Cloud V2", 
    #       }, 
    #       {
    #         description: "Description for Ring Cloud", 
    #         endpoint_config: {
    #           lambda: {
    #             arn: "arn:aws:lambda:us-east-1:111122223333:function:my-function:myVersion", 
    #           }, 
    #         }, 
    #         endpoint_type: "LAMBDA", 
    #         name: "Connector for Ring Cloud", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: ListCloudConnectors error path for unauthorized user
    #
    #   resp = client.list_cloud_connectors({
    #     max_results: 5, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cloud_connectors({
    #     type: "LISTED", # accepts LISTED, UNLISTED
    #     lambda_arn: "LambdaArn",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].name #=> String
    #   resp.items[0].endpoint_config.lambda.arn #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].endpoint_type #=> String, one of "LAMBDA"
    #   resp.items[0].id #=> String
    #   resp.items[0].type #=> String, one of "LISTED", "UNLISTED"
    #   resp.next_token #=> String
    #
    # @overload list_cloud_connectors(params = {})
    # @param [Hash] params ({})
    def list_cloud_connectors(params = {}, options = {})
      req = build_request(:list_cloud_connectors, params)
      req.send_request(options)
    end

    # Lists all connector destinations, with optional filtering by cloud
    # connector ID.
    #
    # @option params [String] :cloud_connector_id
    #   The identifier of the cloud connector to filter connector destinations
    #   by.
    #
    # @option params [String] :next_token
    #   A token used for pagination of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of connector destinations to return in a single
    #   response.
    #
    # @return [Types::ListConnectorDestinationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConnectorDestinationsResponse#connector_destination_list #connector_destination_list} => Array&lt;Types::ConnectorDestinationSummary&gt;
    #   * {Types::ListConnectorDestinationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_connector_destinations({
    #     cloud_connector_id: "CloudConnectorId",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.connector_destination_list #=> Array
    #   resp.connector_destination_list[0].name #=> String
    #   resp.connector_destination_list[0].description #=> String
    #   resp.connector_destination_list[0].cloud_connector_id #=> String
    #   resp.connector_destination_list[0].id #=> String
    #   resp.next_token #=> String
    #
    # @overload list_connector_destinations(params = {})
    # @param [Hash] params ({})
    def list_connector_destinations(params = {}, options = {})
      req = build_request(:list_connector_destinations, params)
      req.send_request(options)
    end

    # List information on an existing credential locker.
    #
    # @option params [String] :next_token
    #   A token that can be used to retrieve the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @return [Types::ListCredentialLockersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCredentialLockersResponse#items #items} => Array&lt;Types::CredentialLockerSummary&gt;
    #   * {Types::ListCredentialLockersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_credential_lockers({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].arn #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_credential_lockers(params = {})
    # @param [Hash] params ({})
    def list_credential_lockers(params = {}, options = {})
      req = build_request(:list_credential_lockers, params)
      req.send_request(options)
    end

    # List all destination names under one Amazon Web Services account.
    #
    # @option params [String] :next_token
    #   A token that can be used to retrieve the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @return [Types::ListDestinationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDestinationsResponse#destination_list #destination_list} => Array&lt;Types::DestinationSummary&gt;
    #   * {Types::ListDestinationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_destinations({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.destination_list #=> Array
    #   resp.destination_list[0].description #=> String
    #   resp.destination_list[0].delivery_destination_arn #=> String
    #   resp.destination_list[0].delivery_destination_type #=> String, one of "KINESIS"
    #   resp.destination_list[0].name #=> String
    #   resp.destination_list[0].role_arn #=> String
    #   resp.next_token #=> String
    #
    # @overload list_destinations(params = {})
    # @param [Hash] params ({})
    def list_destinations(params = {}, options = {})
      req = build_request(:list_destinations, params)
      req.send_request(options)
    end

    # Lists all device discovery tasks, with optional filtering by type and
    # status.
    #
    # @option params [String] :next_token
    #   A token used for pagination of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of device discovery jobs to return in a single
    #   response.
    #
    # @option params [String] :type_filter
    #   The discovery type to filter device discovery jobs by.
    #
    # @option params [String] :status_filter
    #   The status to filter device discovery jobs by.
    #
    # @return [Types::ListDeviceDiscoveriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDeviceDiscoveriesResponse#items #items} => Array&lt;Types::DeviceDiscoverySummary&gt;
    #   * {Types::ListDeviceDiscoveriesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_device_discoveries({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     type_filter: "ZWAVE", # accepts ZWAVE, ZIGBEE, CLOUD, CUSTOM
    #     status_filter: "RUNNING", # accepts RUNNING, SUCCEEDED, FAILED, TIMED_OUT
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].discovery_type #=> String, one of "ZWAVE", "ZIGBEE", "CLOUD", "CUSTOM"
    #   resp.items[0].status #=> String, one of "RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT"
    #   resp.next_token #=> String
    #
    # @overload list_device_discoveries(params = {})
    # @param [Hash] params ({})
    def list_device_discoveries(params = {}, options = {})
      req = build_request(:list_device_discoveries, params)
      req.send_request(options)
    end

    # Lists all devices discovered during a specific device discovery task.
    #
    # @option params [required, String] :identifier
    #   The identifier of the device discovery job to list discovered devices
    #   for.
    #
    # @option params [String] :next_token
    #   A token used for pagination of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of discovered devices to return in a single
    #   response.
    #
    # @return [Types::ListDiscoveredDevicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDiscoveredDevicesResponse#items #items} => Array&lt;Types::DiscoveredDeviceSummary&gt;
    #   * {Types::ListDiscoveredDevicesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_discovered_devices({
    #     identifier: "DeviceDiscoveryId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].connector_device_id #=> String
    #   resp.items[0].connector_device_name #=> String
    #   resp.items[0].device_types #=> Array
    #   resp.items[0].device_types[0] #=> String
    #   resp.items[0].managed_thing_id #=> String
    #   resp.items[0].modification #=> String, one of "DISCOVERED", "UPDATED", "NO_CHANGE"
    #   resp.items[0].discovered_at #=> Time
    #   resp.items[0].brand #=> String
    #   resp.items[0].model #=> String
    #   resp.items[0].authentication_material #=> String
    #   resp.next_token #=> String
    #
    # @overload list_discovered_devices(params = {})
    # @param [Hash] params ({})
    def list_discovered_devices(params = {}, options = {})
      req = build_request(:list_discovered_devices, params)
      req.send_request(options)
    end

    # List all event log configurations for an account.
    #
    # @option params [String] :next_token
    #   A token that can be used to retrieve the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @return [Types::ListEventLogConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEventLogConfigurationsResponse#event_log_configuration_list #event_log_configuration_list} => Array&lt;Types::EventLogConfigurationSummary&gt;
    #   * {Types::ListEventLogConfigurationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_log_configurations({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.event_log_configuration_list #=> Array
    #   resp.event_log_configuration_list[0].id #=> String
    #   resp.event_log_configuration_list[0].resource_type #=> String
    #   resp.event_log_configuration_list[0].resource_id #=> String
    #   resp.event_log_configuration_list[0].event_log_level #=> String, one of "DEBUG", "ERROR", "INFO", "WARN"
    #   resp.next_token #=> String
    #
    # @overload list_event_log_configurations(params = {})
    # @param [Hash] params ({})
    def list_event_log_configurations(params = {}, options = {})
      req = build_request(:list_event_log_configurations, params)
      req.send_request(options)
    end

    # Lists all account associations for a specific managed thing.
    #
    # @option params [String] :managed_thing_id
    #   The identifier of the managed thing to list account associations for.
    #
    # @option params [String] :account_association_id
    #   The identifier of the account association to filter results by. When
    #   specified, only associations with this account association ID will be
    #   returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of account associations to return in a single
    #   response.
    #
    # @option params [String] :next_token
    #   A token used for pagination of results.
    #
    # @return [Types::ListManagedThingAccountAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListManagedThingAccountAssociationsResponse#items #items} => Array&lt;Types::ManagedThingAssociation&gt;
    #   * {Types::ListManagedThingAccountAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_managed_thing_account_associations({
    #     managed_thing_id: "ManagedThingId",
    #     account_association_id: "AccountAssociationId",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].managed_thing_id #=> String
    #   resp.items[0].account_association_id #=> String
    #   resp.next_token #=> String
    #
    # @overload list_managed_thing_account_associations(params = {})
    # @param [Hash] params ({})
    def list_managed_thing_account_associations(params = {}, options = {})
      req = build_request(:list_managed_thing_account_associations, params)
      req.send_request(options)
    end

    # List schemas associated with a managed thing.
    #
    # @option params [required, String] :identifier
    #   The managed thing id.
    #
    # @option params [String] :endpoint_id_filter
    #   Filter on an endpoint id.
    #
    # @option params [String] :capability_id_filter
    #   Filter on a capability id.
    #
    # @option params [String] :next_token
    #   A token that can be used to retrieve the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @return [Types::ListManagedThingSchemasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListManagedThingSchemasResponse#items #items} => Array&lt;Types::ManagedThingSchemaListItem&gt;
    #   * {Types::ListManagedThingSchemasResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_managed_thing_schemas({
    #     identifier: "ManagedThingId", # required
    #     endpoint_id_filter: "EndpointId",
    #     capability_id_filter: "CapabilityId",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].endpoint_id #=> String
    #   resp.items[0].capability_id #=> String
    #   resp.next_token #=> String
    #
    # @overload list_managed_thing_schemas(params = {})
    # @param [Hash] params ({})
    def list_managed_thing_schemas(params = {}, options = {})
      req = build_request(:list_managed_thing_schemas, params)
      req.send_request(options)
    end

    # Listing all managed things with provision for filters.
    #
    # @option params [String] :owner_filter
    #   Filter on device owners when listing managed things.
    #
    # @option params [String] :credential_locker_filter
    #   Filter on a credential locker for a managed thing.
    #
    # @option params [String] :role_filter
    #   Filter on the type of device used. This will be the Amazon Web
    #   Services hub controller, cloud device, or IoT device.
    #
    # @option params [String] :parent_controller_identifier_filter
    #   Filter on a parent controller id for a managed thing.
    #
    # @option params [String] :connector_policy_id_filter
    #   Filter on a connector policy id for a managed thing.
    #
    # @option params [String] :connector_destination_id_filter
    #   Filter managed things by the connector destination ID they are
    #   associated with.
    #
    # @option params [String] :connector_device_id_filter
    #   Filter managed things by the connector device ID they are associated
    #   with. When specified, only managed things with this connector device
    #   ID will be returned.
    #
    # @option params [String] :serial_number_filter
    #   Filter on the serial number of the device.
    #
    # @option params [String] :provisioning_status_filter
    #   Filter on the status of the device.
    #
    # @option params [String] :next_token
    #   A token that can be used to retrieve the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @return [Types::ListManagedThingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListManagedThingsResponse#items #items} => Array&lt;Types::ManagedThingSummary&gt;
    #   * {Types::ListManagedThingsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_managed_things({
    #     owner_filter: "Owner",
    #     credential_locker_filter: "CredentialLockerId",
    #     role_filter: "CONTROLLER", # accepts CONTROLLER, DEVICE
    #     parent_controller_identifier_filter: "ParentControllerId",
    #     connector_policy_id_filter: "ConnectorPolicyId",
    #     connector_destination_id_filter: "ConnectorDestinationId",
    #     connector_device_id_filter: "ConnectorDeviceId",
    #     serial_number_filter: "SerialNumber",
    #     provisioning_status_filter: "UNASSOCIATED", # accepts UNASSOCIATED, PRE_ASSOCIATED, DISCOVERED, ACTIVATED, DELETION_FAILED, DELETE_IN_PROGRESS, ISOLATED, DELETED
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].arn #=> String
    #   resp.items[0].advertised_product_id #=> String
    #   resp.items[0].brand #=> String
    #   resp.items[0].classification #=> String
    #   resp.items[0].connector_device_id #=> String
    #   resp.items[0].connector_policy_id #=> String
    #   resp.items[0].connector_destination_id #=> String
    #   resp.items[0].model #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].owner #=> String
    #   resp.items[0].credential_locker_id #=> String
    #   resp.items[0].parent_controller_id #=> String
    #   resp.items[0].provisioning_status #=> String, one of "UNASSOCIATED", "PRE_ASSOCIATED", "DISCOVERED", "ACTIVATED", "DELETION_FAILED", "DELETE_IN_PROGRESS", "ISOLATED", "DELETED"
    #   resp.items[0].role #=> String, one of "CONTROLLER", "DEVICE"
    #   resp.items[0].serial_number #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].activated_at #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_managed_things(params = {})
    # @param [Hash] params ({})
    def list_managed_things(params = {}, options = {})
      req = build_request(:list_managed_things, params)
      req.send_request(options)
    end

    # List all notification configurations.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @option params [String] :next_token
    #   A token that can be used to retrieve the next set of results.
    #
    # @return [Types::ListNotificationConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNotificationConfigurationsResponse#notification_configuration_list #notification_configuration_list} => Array&lt;Types::NotificationConfigurationSummary&gt;
    #   * {Types::ListNotificationConfigurationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_notification_configurations({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.notification_configuration_list #=> Array
    #   resp.notification_configuration_list[0].event_type #=> String, one of "DEVICE_COMMAND", "DEVICE_COMMAND_REQUEST", "DEVICE_DISCOVERY_STATUS", "DEVICE_EVENT", "DEVICE_LIFE_CYCLE", "DEVICE_STATE", "DEVICE_OTA", "CONNECTOR_ASSOCIATION", "ACCOUNT_ASSOCIATION", "CONNECTOR_ERROR_REPORT"
    #   resp.notification_configuration_list[0].destination_name #=> String
    #   resp.next_token #=> String
    #
    # @overload list_notification_configurations(params = {})
    # @param [Hash] params ({})
    def list_notification_configurations(params = {}, options = {})
      req = build_request(:list_notification_configurations, params)
      req.send_request(options)
    end

    # List all of the over-the-air (OTA) task configurations.
    #
    # @option params [String] :next_token
    #   A token that can be used to retrieve the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @return [Types::ListOtaTaskConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOtaTaskConfigurationsResponse#items #items} => Array&lt;Types::OtaTaskConfigurationSummary&gt;
    #   * {Types::ListOtaTaskConfigurationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ota_task_configurations({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].task_configuration_id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_ota_task_configurations(params = {})
    # @param [Hash] params ({})
    def list_ota_task_configurations(params = {}, options = {})
      req = build_request(:list_ota_task_configurations, params)
      req.send_request(options)
    end

    # List all of the over-the-air (OTA) task executions.
    #
    # @option params [required, String] :identifier
    #   The over-the-air (OTA) task id.
    #
    # @option params [String] :next_token
    #   A token that can be used to retrieve the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @return [Types::ListOtaTaskExecutionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOtaTaskExecutionsResponse#execution_summaries #execution_summaries} => Array&lt;Types::OtaTaskExecutionSummaries&gt;
    #   * {Types::ListOtaTaskExecutionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ota_task_executions({
    #     identifier: "OtaTaskId", # required
    #     next_token: "OtaNextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.execution_summaries #=> Array
    #   resp.execution_summaries[0].task_execution_summary.execution_number #=> Integer
    #   resp.execution_summaries[0].task_execution_summary.last_updated_at #=> Time
    #   resp.execution_summaries[0].task_execution_summary.queued_at #=> Time
    #   resp.execution_summaries[0].task_execution_summary.retry_attempt #=> Integer
    #   resp.execution_summaries[0].task_execution_summary.started_at #=> Time
    #   resp.execution_summaries[0].task_execution_summary.status #=> String, one of "QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "TIMED_OUT", "REJECTED", "REMOVED", "CANCELED"
    #   resp.execution_summaries[0].managed_thing_id #=> String
    #   resp.next_token #=> String
    #
    # @overload list_ota_task_executions(params = {})
    # @param [Hash] params ({})
    def list_ota_task_executions(params = {}, options = {})
      req = build_request(:list_ota_task_executions, params)
      req.send_request(options)
    end

    # List all of the over-the-air (OTA) tasks.
    #
    # @option params [String] :next_token
    #   A token that can be used to retrieve the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @return [Types::ListOtaTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOtaTasksResponse#tasks #tasks} => Array&lt;Types::OtaTaskSummary&gt;
    #   * {Types::ListOtaTasksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ota_tasks({
    #     next_token: "OtaNextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tasks #=> Array
    #   resp.tasks[0].task_id #=> String
    #   resp.tasks[0].task_arn #=> String
    #   resp.tasks[0].created_at #=> Time
    #   resp.tasks[0].last_updated_at #=> Time
    #   resp.tasks[0].task_configuration_id #=> String
    #   resp.tasks[0].status #=> String, one of "IN_PROGRESS", "CANCELED", "COMPLETED", "DELETION_IN_PROGRESS", "SCHEDULED"
    #   resp.next_token #=> String
    #
    # @overload list_ota_tasks(params = {})
    # @param [Hash] params ({})
    def list_ota_tasks(params = {}, options = {})
      req = build_request(:list_ota_tasks, params)
      req.send_request(options)
    end

    # List the provisioning profiles within the Amazon Web Services account.
    #
    # @option params [String] :next_token
    #   A token that can be used to retrieve the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @return [Types::ListProvisioningProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProvisioningProfilesResponse#items #items} => Array&lt;Types::ProvisioningProfileSummary&gt;
    #   * {Types::ListProvisioningProfilesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_provisioning_profiles({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].name #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].arn #=> String
    #   resp.items[0].provisioning_type #=> String, one of "FLEET_PROVISIONING", "JITR"
    #   resp.next_token #=> String
    #
    # @overload list_provisioning_profiles(params = {})
    # @param [Hash] params ({})
    def list_provisioning_profiles(params = {}, options = {})
      req = build_request(:list_provisioning_profiles, params)
      req.send_request(options)
    end

    # Lists schema versions with the provided information.
    #
    # @option params [required, String] :type
    #   Filter on the type of schema version.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @option params [String] :next_token
    #   A token that can be used to retrieve the next set of results.
    #
    # @option params [String] :schema_id
    #   Filter on the id of the schema version.
    #
    # @option params [String] :namespace
    #   Filter on the name of the schema version.
    #
    # @option params [String] :visibility
    #   The visibility of the schema version.
    #
    # @option params [String] :semantic_version
    #   The schema version. If this is left blank, it defaults to the latest
    #   version.
    #
    # @return [Types::ListSchemaVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSchemaVersionsResponse#items #items} => Array&lt;Types::SchemaVersionListItem&gt;
    #   * {Types::ListSchemaVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: ListSchemaVersions happy path for an example schema version.
    #
    #   resp = client.list_schema_versions({
    #     schema_id: "example.ColorControl", 
    #     type: "capability", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         description: "The Color Control cluster defined as Harmony Capability.", 
    #         namespace: "matter", 
    #         schema_id: "example.ColorControl", 
    #         semantic_version: "1.4", 
    #         type: "capability", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: ListSchemaVersions by version.
    #
    #   resp = client.list_schema_versions({
    #     semantic_version: "34.56", 
    #     type: "capability", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         description: "The Color Control cluster defined as Harmony Capability.", 
    #         namespace: "matter", 
    #         schema_id: "example.ColorControl", 
    #         semantic_version: "1.4", 
    #         type: "capability", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: ListSchemaVersions error  for invalid input.
    #
    #   resp = client.list_schema_versions({
    #     namespace: "matter", 
    #     schema_id: "example.ColorControl", 
    #     type: "capability", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_schema_versions({
    #     type: "capability", # required, accepts capability, definition
    #     max_results: 1,
    #     next_token: "NextToken",
    #     schema_id: "SchemaId",
    #     namespace: "SchemaVersionNamespaceName",
    #     visibility: "PUBLIC", # accepts PUBLIC, PRIVATE
    #     semantic_version: "SchemaVersionVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].schema_id #=> String
    #   resp.items[0].type #=> String, one of "capability", "definition"
    #   resp.items[0].description #=> String
    #   resp.items[0].namespace #=> String
    #   resp.items[0].semantic_version #=> String
    #   resp.items[0].visibility #=> String, one of "PUBLIC", "PRIVATE"
    #   resp.next_token #=> String
    #
    # @overload list_schema_versions(params = {})
    # @param [Hash] params ({})
    def list_schema_versions(params = {}, options = {})
      req = build_request(:list_schema_versions, params)
      req.send_request(options)
    end

    # List tags for the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource for which to list tags.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "IoTManagedIntegrationsResourceARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Sets the default encryption configuration for the Amazon Web Services
    # account. For more information, see [Key management][1] in the AWS IoT
    # SiteWise User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/key-management.html
    #
    # @option params [required, String] :encryption_type
    #   The type of encryption used for the encryption configuration.
    #
    # @option params [String] :kms_key_arn
    #   The Key Amazon Resource Name (ARN) of the AWS KMS key used for KMS
    #   encryption if you use `KMS_BASED_ENCRYPTION`.
    #
    # @return [Types::PutDefaultEncryptionConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutDefaultEncryptionConfigurationResponse#configuration_status #configuration_status} => Types::ConfigurationStatus
    #   * {Types::PutDefaultEncryptionConfigurationResponse#encryption_type #encryption_type} => String
    #   * {Types::PutDefaultEncryptionConfigurationResponse#kms_key_arn #kms_key_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_default_encryption_configuration({
    #     encryption_type: "MANAGED_INTEGRATIONS_DEFAULT_ENCRYPTION", # required, accepts MANAGED_INTEGRATIONS_DEFAULT_ENCRYPTION, CUSTOMER_KEY_ENCRYPTION
    #     kms_key_arn: "KmsKeyArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_status.error.code #=> String
    #   resp.configuration_status.error.message #=> String
    #   resp.configuration_status.state #=> String, one of "ENABLED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"
    #   resp.encryption_type #=> String, one of "MANAGED_INTEGRATIONS_DEFAULT_ENCRYPTION", "CUSTOMER_KEY_ENCRYPTION"
    #   resp.kms_key_arn #=> String
    #
    # @overload put_default_encryption_configuration(params = {})
    # @param [Hash] params ({})
    def put_default_encryption_configuration(params = {}, options = {})
      req = build_request(:put_default_encryption_configuration, params)
      req.send_request(options)
    end

    # Update a hub configuration.
    #
    # @option params [required, Integer] :hub_token_timer_expiry_setting_in_seconds
    #   A user-defined integer value that represents the hub token timer
    #   expiry setting in seconds.
    #
    # @return [Types::PutHubConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutHubConfigurationResponse#hub_token_timer_expiry_setting_in_seconds #hub_token_timer_expiry_setting_in_seconds} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_hub_configuration({
    #     hub_token_timer_expiry_setting_in_seconds: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.hub_token_timer_expiry_setting_in_seconds #=> Integer
    #
    # @overload put_hub_configuration(params = {})
    # @param [Hash] params ({})
    def put_hub_configuration(params = {}, options = {})
      req = build_request(:put_hub_configuration, params)
      req.send_request(options)
    end

    # Set the runtime log configuration for a specific managed thing or for
    # all managed things as a group.
    #
    # @option params [required, String] :managed_thing_id
    #   The id for a managed thing.
    #
    # @option params [required, Types::RuntimeLogConfigurations] :runtime_log_configurations
    #   The runtime log configuration for a managed thing.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_runtime_log_configuration({
    #     managed_thing_id: "ManagedThingId", # required
    #     runtime_log_configurations: { # required
    #       log_level: "DEBUG", # accepts DEBUG, ERROR, INFO, WARN
    #       log_flush_level: "DEBUG", # accepts DEBUG, ERROR, INFO, WARN
    #       local_store_location: "LocalStoreLocation",
    #       local_store_file_rotation_max_files: 1,
    #       local_store_file_rotation_max_bytes: 1,
    #       upload_log: false,
    #       upload_period_minutes: 1,
    #       delete_local_store_after_upload: false,
    #     },
    #   })
    #
    # @overload put_runtime_log_configuration(params = {})
    # @param [Hash] params ({})
    def put_runtime_log_configuration(params = {}, options = {})
      req = build_request(:put_runtime_log_configuration, params)
      req.send_request(options)
    end

    # Registers an account association with a managed thing, establishing a
    # connection between a device and a third-party account.
    #
    # @option params [required, String] :managed_thing_id
    #   The identifier of the managed thing to register with the account
    #   association.
    #
    # @option params [required, String] :account_association_id
    #   The identifier of the account association to register with the managed
    #   thing.
    #
    # @option params [required, String] :device_discovery_id
    #   The identifier of the device discovery job associated with this
    #   registration.
    #
    # @return [Types::RegisterAccountAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterAccountAssociationResponse#account_association_id #account_association_id} => String
    #   * {Types::RegisterAccountAssociationResponse#device_discovery_id #device_discovery_id} => String
    #   * {Types::RegisterAccountAssociationResponse#managed_thing_id #managed_thing_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_account_association({
    #     managed_thing_id: "ManagedThingId", # required
    #     account_association_id: "AccountAssociationId", # required
    #     device_discovery_id: "DeviceDiscoveryId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account_association_id #=> String
    #   resp.device_discovery_id #=> String
    #   resp.managed_thing_id #=> String
    #
    # @overload register_account_association(params = {})
    # @param [Hash] params ({})
    def register_account_association(params = {}, options = {})
      req = build_request(:register_account_association, params)
      req.send_request(options)
    end

    # Customers can request IoT managed integrations to manage the server
    # trust for them or bring their own external server trusts for the
    # custom domain. Returns an IoT managed integrations endpoint.
    #
    # @return [Types::RegisterCustomEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterCustomEndpointResponse#endpoint_address #endpoint_address} => String
    #
    # @example Response structure
    #
    #   resp.endpoint_address #=> String
    #
    # @overload register_custom_endpoint(params = {})
    # @param [Hash] params ({})
    def register_custom_endpoint(params = {}, options = {})
      req = build_request(:register_custom_endpoint, params)
      req.send_request(options)
    end

    # Reset a runtime log configuration for a specific managed thing or for
    # all managed things as a group.
    #
    # @option params [required, String] :managed_thing_id
    #   The id of a managed thing.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_runtime_log_configuration({
    #     managed_thing_id: "ManagedThingId", # required
    #   })
    #
    # @overload reset_runtime_log_configuration(params = {})
    # @param [Hash] params ({})
    def reset_runtime_log_configuration(params = {}, options = {})
      req = build_request(:reset_runtime_log_configuration, params)
      req.send_request(options)
    end

    # Relays third-party device events for a connector such as a new device
    # or a device state change event.
    #
    # @option params [required, String] :connector_id
    #   The id of the connector between the third-party cloud provider and IoT
    #   managed integrations.
    #
    # @option params [String] :user_id
    #   The id of the third-party cloud provider.
    #
    # @option params [required, String] :operation
    #   The Open Connectivity Foundation (OCF) operation requested to be
    #   performed on the managed thing.
    #
    #   <note markdown="1"> The field op can have a value of "I" or "U". The field "cn" will
    #   contain the capability types.
    #
    #    </note>
    #
    # @option params [String] :operation_version
    #   The Open Connectivity Foundation (OCF) security specification version
    #   for the operation being requested on the managed thing. For more
    #   information, see [OCF Security Specification][1].
    #
    #
    #
    #   [1]: https://openconnectivity.org/specs/OCF_Security_Specification_v1.0.0.pdf
    #
    # @option params [Integer] :status_code
    #   The status code of the Open Connectivity Foundation (OCF) operation
    #   being performed on the managed thing.
    #
    # @option params [String] :message
    #   The device state change event payload.
    #
    #   This parameter will include the following three fields:
    #
    #   * `uri`: `schema auc://<PARTNER-DEVICE-ID>/ResourcePath` (The
    #     `Resourcepath` corresponds to an OCF resource.)
    #
    #   * `op`: For device state changes, this field must populate as `n+d`.
    #
    #   * `cn`: The content depends on the OCF resource referenced in
    #     `ResourcePath`.
    #
    # @option params [String] :device_discovery_id
    #   The id for the device discovery job.
    #
    # @option params [String] :connector_device_id
    #   The third-party device id as defined by the connector. This device id
    #   must not contain personal identifiable information (PII).
    #
    #   <note markdown="1"> This parameter is used for cloud-to-cloud devices only.
    #
    #    </note>
    #
    # @option params [String] :trace_id
    #   The trace request identifier used to correlate a command request and
    #   response. This is specified by the device owner, but will be generated
    #   by IoT managed integrations if not provided by the device owner.
    #
    # @option params [Array<Types::Device>] :devices
    #   The list of devices.
    #
    # @option params [Types::MatterEndpoint] :matter_endpoint
    #   The device endpoint.
    #
    # @return [Types::SendConnectorEventResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendConnectorEventResponse#connector_id #connector_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_connector_event({
    #     connector_id: "ConnectorId", # required
    #     user_id: "ThirdPartyUserId",
    #     operation: "DEVICE_COMMAND_RESPONSE", # required, accepts DEVICE_COMMAND_RESPONSE, DEVICE_DISCOVERY, DEVICE_EVENT, DEVICE_COMMAND_REQUEST
    #     operation_version: "ConnectorEventOperationVersion",
    #     status_code: 1,
    #     message: "ConnectorEventMessage",
    #     device_discovery_id: "DeviceDiscoveryId",
    #     connector_device_id: "ConnectorDeviceId",
    #     trace_id: "TraceId",
    #     devices: [
    #       {
    #         connector_device_id: "ConnectorDeviceId", # required
    #         connector_device_name: "ConnectorDeviceName",
    #         capability_report: { # required
    #           version: "CapabilityReportVersion", # required
    #           node_id: "NodeId",
    #           endpoints: [ # required
    #             {
    #               id: "EndpointId", # required
    #               device_types: ["DeviceType"], # required
    #               clusters: [ # required
    #                 {
    #                   id: "ClusterId", # required
    #                   revision: 1, # required
    #                   public_id: "SchemaVersionedId",
    #                   name: "CapabilityName",
    #                   spec_version: "SpecVersion",
    #                   attributes: [
    #                     {
    #                       id: "MatterAttributeId",
    #                       name: "ActionName",
    #                       value: {
    #                       },
    #                     },
    #                   ],
    #                   commands: ["MatterCommandId"],
    #                   events: ["MatterEventId"],
    #                   feature_map: 1,
    #                   generated_commands: ["MatterCommandId"],
    #                   fabric_index: 1,
    #                 },
    #               ],
    #               parts: ["EndpointId"],
    #               semantic_tags: ["EndpointSemanticTag"],
    #               client_clusters: ["ClusterId"],
    #             },
    #           ],
    #         },
    #         capability_schemas: [
    #           {
    #             format: "AWS", # required, accepts AWS, ZCL, CONNECTOR
    #             capability_id: "SchemaVersionedId", # required
    #             extrinsic_id: "ExtrinsicSchemaId", # required
    #             extrinsic_version: 1, # required
    #             schema: { # required
    #             },
    #           },
    #         ],
    #         device_metadata: {
    #         },
    #       },
    #     ],
    #     matter_endpoint: {
    #       id: "EndpointId",
    #       clusters: [
    #         {
    #           id: "ClusterId",
    #           attributes: {
    #           },
    #           commands: {
    #             "MatterCommandId" => {
    #             },
    #           },
    #           events: {
    #             "MatterEventId" => {
    #             },
    #           },
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.connector_id #=> String
    #
    # @overload send_connector_event(params = {})
    # @param [Hash] params ({})
    def send_connector_event(params = {}, options = {})
      req = build_request(:send_connector_event, params)
      req.send_request(options)
    end

    # Send the command to the device represented by the managed thing.
    #
    # @option params [required, String] :managed_thing_id
    #   The id of the device.
    #
    # @option params [required, Array<Types::CommandEndpoint>] :endpoints
    #   The device endpoint.
    #
    # @option params [String] :connector_association_id
    #   The ID tracking the current discovery process for one connector
    #   association.
    #
    # @option params [String] :account_association_id
    #   The identifier of the account association to use when sending a
    #   command to a managed thing.
    #
    # @return [Types::SendManagedThingCommandResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendManagedThingCommandResponse#trace_id #trace_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_managed_thing_command({
    #     managed_thing_id: "ManagedThingId", # required
    #     endpoints: [ # required
    #       {
    #         endpoint_id: "EndpointId", # required
    #         capabilities: [ # required
    #           {
    #             id: "SchemaVersionedId", # required
    #             name: "CapabilityName", # required
    #             version: "CapabilityVersion", # required
    #             actions: [ # required
    #               {
    #                 name: "CapabilityActionName", # required
    #                 ref: "ActionReference",
    #                 action_trace_id: "ActionTraceId",
    #                 parameters: {
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #     ],
    #     connector_association_id: "ConnectorAssociationId",
    #     account_association_id: "AccountAssociationId",
    #   })
    #
    # @example Response structure
    #
    #   resp.trace_id #=> String
    #
    # @overload send_managed_thing_command(params = {})
    # @param [Hash] params ({})
    def send_managed_thing_command(params = {}, options = {})
      req = build_request(:send_managed_thing_command, params)
      req.send_request(options)
    end

    # Initiates a refresh of an existing account association to update its
    # authorization and connection status.
    #
    # @option params [required, String] :account_association_id
    #   The unique identifier of the account association to refresh.
    #
    # @return [Types::StartAccountAssociationRefreshResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartAccountAssociationRefreshResponse#o_auth_authorization_url #o_auth_authorization_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_account_association_refresh({
    #     account_association_id: "AccountAssociationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.o_auth_authorization_url #=> String
    #
    # @overload start_account_association_refresh(params = {})
    # @param [Hash] params ({})
    def start_account_association_refresh(params = {}, options = {})
      req = build_request(:start_account_association_refresh, params)
      req.send_request(options)
    end

    # This API is used to start device discovery for hub-connected and
    # third-party-connected devices. The authentication material (install
    # code) is passed as a message to the controller telling it to start the
    # discovery.
    #
    # @option params [required, String] :discovery_type
    #   The discovery type supporting the type of device to be discovered in
    #   the device discovery task request.
    #
    # @option params [Hash<String,String>] :custom_protocol_detail
    #   Additional protocol-specific details required for device discovery,
    #   which vary based on the discovery type.
    #
    #   <note markdown="1"> For a `DiscoveryType` of `CUSTOM`, the string-to-string map must have
    #   a key value of `Name` set to a non-empty-string.
    #
    #    </note>
    #
    # @option params [String] :controller_identifier
    #   The id of the end-user's IoT hub.
    #
    # @option params [String] :connector_association_identifier
    #   The id of the connector association.
    #
    # @option params [String] :account_association_id
    #   The identifier of the cloud-to-cloud account association to use for
    #   discovery of third-party devices.
    #
    # @option params [String] :authentication_material
    #   The authentication material required to start the local device
    #   discovery job request.
    #
    # @option params [String] :authentication_material_type
    #   The type of authentication material used for device discovery jobs.
    #
    # @option params [String] :client_token
    #   An idempotency token. If you retry a request that completed
    #   successfully initially using the same client token and parameters,
    #   then the retry attempt will succeed without performing any further
    #   actions.
    #
    # @option params [Hash<String,String>] :tags
    #   A set of key/value pairs that are used to manage the device discovery
    #   request.
    #
    # @return [Types::StartDeviceDiscoveryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDeviceDiscoveryResponse#id #id} => String
    #   * {Types::StartDeviceDiscoveryResponse#started_at #started_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_device_discovery({
    #     discovery_type: "ZWAVE", # required, accepts ZWAVE, ZIGBEE, CLOUD, CUSTOM
    #     custom_protocol_detail: {
    #       "CustomProtocolDetailKey" => "CustomProtocolDetailValue",
    #     },
    #     controller_identifier: "ManagedThingId",
    #     connector_association_identifier: "ConnectorAssociationId",
    #     account_association_id: "AccountAssociationId",
    #     authentication_material: "DiscoveryAuthMaterialString",
    #     authentication_material_type: "ZWAVE_INSTALL_CODE", # accepts ZWAVE_INSTALL_CODE
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.started_at #=> Time
    #
    # @overload start_device_discovery(params = {})
    # @param [Hash] params ({})
    def start_device_discovery(params = {}, options = {})
      req = build_request(:start_device_discovery, params)
      req.send_request(options)
    end

    # Add tags for the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to which to add tags.
    #
    # @option params [required, Hash<String,String>] :tags
    #   A set of key/value pairs that are used to manage the resource
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "IoTManagedIntegrationsResourceARN", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Remove tags for the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to which to add tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "IoTManagedIntegrationsResourceARN", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the properties of an existing account association.
    #
    # @option params [required, String] :account_association_id
    #   The unique identifier of the account association to update.
    #
    # @option params [String] :name
    #   The new name to assign to the account association.
    #
    # @option params [String] :description
    #   The new description to assign to the account association.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account_association({
    #     account_association_id: "AccountAssociationId", # required
    #     name: "AccountAssociationName",
    #     description: "AccountAssociationDescription",
    #   })
    #
    # @overload update_account_association(params = {})
    # @param [Hash] params ({})
    def update_account_association(params = {}, options = {})
      req = build_request(:update_account_association, params)
      req.send_request(options)
    end

    # Update an existing cloud connector.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the cloud connector to update.
    #
    # @option params [String] :name
    #   The new display name to assign to the cloud connector.
    #
    # @option params [String] :description
    #   The new description to assign to the cloud connector.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: UpdateCloudConnector happy path for TP Link to update display name
    #
    #   resp = client.update_cloud_connector({
    #     identifier: "123456789012", 
    #     name: "Connector for TP Link Cloud V2", 
    #   })
    #
    # @example Example: UpdateCloudConnector error Id for Ring connector which does not exist
    #
    #   resp = client.update_cloud_connector({
    #     identifier: "123456789012", 
    #     name: "Connector for Ring Cloud", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cloud_connector({
    #     identifier: "CloudConnectorId", # required
    #     name: "DisplayName",
    #     description: "CloudConnectorDescription",
    #   })
    #
    # @overload update_cloud_connector(params = {})
    # @param [Hash] params ({})
    def update_cloud_connector(params = {}, options = {})
      req = build_request(:update_cloud_connector, params)
      req.send_request(options)
    end

    # Updates the properties of an existing connector destination.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the connector destination to update.
    #
    # @option params [String] :description
    #   The new description to assign to the connector destination.
    #
    # @option params [String] :name
    #   The new display name to assign to the connector destination.
    #
    # @option params [String] :auth_type
    #   The new authentication type to use for the connector destination.
    #
    # @option params [Types::AuthConfigUpdate] :auth_config
    #   The updated authentication configuration details for the connector
    #   destination.
    #
    # @option params [Types::SecretsManager] :secrets_manager
    #   The updated AWS Secrets Manager configuration for the connector
    #   destination.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_connector_destination({
    #     identifier: "ConnectorDestinationId", # required
    #     description: "ConnectorDestinationDescription",
    #     name: "ConnectorDestinationName",
    #     auth_type: "OAUTH", # accepts OAUTH
    #     auth_config: {
    #       o_auth_update: {
    #         o_auth_complete_redirect_url: "String",
    #         proactive_refresh_token_renewal: {
    #           enabled: false,
    #           days_before_renewal: 1,
    #         },
    #       },
    #     },
    #     secrets_manager: {
    #       arn: "SecretsManagerArn", # required
    #       version_id: "SecretsManagerVersionId", # required
    #     },
    #   })
    #
    # @overload update_connector_destination(params = {})
    # @param [Hash] params ({})
    def update_connector_destination(params = {}, options = {})
      req = build_request(:update_connector_destination, params)
      req.send_request(options)
    end

    # Update a destination specified by id.
    #
    # @option params [required, String] :name
    #   The name of the customer-managed destination.
    #
    # @option params [String] :delivery_destination_arn
    #   The Amazon Resource Name (ARN) of the customer-managed destination.
    #
    # @option params [String] :delivery_destination_type
    #   The destination type for the customer-managed destination.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of the delivery destination role.
    #
    # @option params [String] :description
    #   The description of the customer-managed destination.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_destination({
    #     name: "DestinationName", # required
    #     delivery_destination_arn: "DeliveryDestinationArn",
    #     delivery_destination_type: "KINESIS", # accepts KINESIS
    #     role_arn: "DeliveryDestinationRoleArn",
    #     description: "DestinationDescription",
    #   })
    #
    # @overload update_destination(params = {})
    # @param [Hash] params ({})
    def update_destination(params = {}, options = {})
      req = build_request(:update_destination, params)
      req.send_request(options)
    end

    # Update an event log configuration by log configuration ID.
    #
    # @option params [required, String] :id
    #   The log configuration id.
    #
    # @option params [required, String] :event_log_level
    #   The log level for the event in terms of severity.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_event_log_configuration({
    #     id: "LogConfigurationId", # required
    #     event_log_level: "DEBUG", # required, accepts DEBUG, ERROR, INFO, WARN
    #   })
    #
    # @overload update_event_log_configuration(params = {})
    # @param [Hash] params ({})
    def update_event_log_configuration(params = {}, options = {})
      req = build_request(:update_event_log_configuration, params)
      req.send_request(options)
    end

    # Update the attributes and capabilities associated with a managed
    # thing.
    #
    # @option params [required, String] :identifier
    #   The id of the managed thing.
    #
    # @option params [String] :owner
    #   Owner of the device, usually an indication of whom the device belongs
    #   to. This value should not contain personal identifiable information.
    #
    # @option params [String] :credential_locker_id
    #   The identifier of the credential for the managed thing.
    #
    # @option params [String] :serial_number
    #   The serial number of the device.
    #
    # @option params [String] :brand
    #   The brand of the device.
    #
    # @option params [String] :model
    #   The model of the device.
    #
    # @option params [String] :name
    #   The name of the managed thing representing the physical device.
    #
    # @option params [Types::CapabilityReport] :capability_report
    #   A report of the capabilities for the managed thing.
    #
    # @option params [Array<Types::CapabilitySchemaItem>] :capability_schemas
    #   The updated capability schemas that define the functionality and
    #   features supported by the managed thing.
    #
    # @option params [String] :capabilities
    #   The capabilities of the device such as light bulb.
    #
    # @option params [String] :classification
    #   The classification of the managed thing such as light bulb or
    #   thermostat.
    #
    # @option params [String] :hub_network_mode
    #   The network mode for the hub-connected device.
    #
    # @option params [Hash<String,String>] :meta_data
    #   The metadata for the managed thing.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_managed_thing({
    #     identifier: "ManagedThingId", # required
    #     owner: "Owner",
    #     credential_locker_id: "CredentialLockerId",
    #     serial_number: "SerialNumber",
    #     brand: "Brand",
    #     model: "Model",
    #     name: "Name",
    #     capability_report: {
    #       version: "CapabilityReportVersion", # required
    #       node_id: "NodeId",
    #       endpoints: [ # required
    #         {
    #           id: "EndpointId", # required
    #           device_types: ["DeviceType"], # required
    #           capabilities: [ # required
    #             {
    #               id: "SchemaVersionedId", # required
    #               name: "CapabilityName", # required
    #               version: "CapabilityVersion", # required
    #               properties: ["PropertyName"], # required
    #               actions: ["ActionName"], # required
    #               events: ["EventName"], # required
    #             },
    #           ],
    #         },
    #       ],
    #     },
    #     capability_schemas: [
    #       {
    #         format: "AWS", # required, accepts AWS, ZCL, CONNECTOR
    #         capability_id: "SchemaVersionedId", # required
    #         extrinsic_id: "ExtrinsicSchemaId", # required
    #         extrinsic_version: 1, # required
    #         schema: { # required
    #         },
    #       },
    #     ],
    #     capabilities: "Capabilities",
    #     classification: "Classification",
    #     hub_network_mode: "STANDARD", # accepts STANDARD, NETWORK_WIDE_EXCLUSION
    #     meta_data: {
    #       "AttributeName" => "AttributeValue",
    #     },
    #   })
    #
    # @overload update_managed_thing(params = {})
    # @param [Hash] params ({})
    def update_managed_thing(params = {}, options = {})
      req = build_request(:update_managed_thing, params)
      req.send_request(options)
    end

    # Update a notification configuration.
    #
    # @option params [required, String] :event_type
    #   The type of event triggering a device notification to the
    #   customer-managed destination.
    #
    # @option params [required, String] :destination_name
    #   The name of the destination for the notification configuration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_notification_configuration({
    #     event_type: "DEVICE_COMMAND", # required, accepts DEVICE_COMMAND, DEVICE_COMMAND_REQUEST, DEVICE_DISCOVERY_STATUS, DEVICE_EVENT, DEVICE_LIFE_CYCLE, DEVICE_STATE, DEVICE_OTA, CONNECTOR_ASSOCIATION, ACCOUNT_ASSOCIATION, CONNECTOR_ERROR_REPORT
    #     destination_name: "DestinationName", # required
    #   })
    #
    # @overload update_notification_configuration(params = {})
    # @param [Hash] params ({})
    def update_notification_configuration(params = {}, options = {})
      req = build_request(:update_notification_configuration, params)
      req.send_request(options)
    end

    # Update an over-the-air (OTA) task.
    #
    # @option params [required, String] :identifier
    #   The over-the-air (OTA) task id.
    #
    # @option params [String] :description
    #   The description of the over-the-air (OTA) task.
    #
    # @option params [String] :task_configuration_id
    #   The identifier for the over-the-air (OTA) task configuration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ota_task({
    #     identifier: "OtaTaskId", # required
    #     description: "OtaDescription",
    #     task_configuration_id: "OtaTaskConfigurationId",
    #   })
    #
    # @overload update_ota_task(params = {})
    # @param [Hash] params ({})
    def update_ota_task(params = {}, options = {})
      req = build_request(:update_ota_task, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::IoTManagedIntegrations')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-iotmanagedintegrations'
      context[:gem_version] = '1.11.0'
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
