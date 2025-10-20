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

module Aws::AppIntegrationsService
  # An API client for AppIntegrationsService.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::AppIntegrationsService::Client.new(
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

    @identifier = :appintegrationsservice

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
    add_plugin(Aws::AppIntegrationsService::Plugins::Endpoints)

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
    #   @option options [Aws::AppIntegrationsService::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::AppIntegrationsService::EndpointParameters`.
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

    # Creates and persists an Application resource.
    #
    # @option params [required, String] :name
    #   The name of the application.
    #
    # @option params [required, String] :namespace
    #   The namespace of the application.
    #
    # @option params [String] :description
    #   The description of the application.
    #
    # @option params [required, Types::ApplicationSourceConfig] :application_source_config
    #   The configuration for where the application should be loaded from.
    #
    # @option params [Array<Types::Subscription>] :subscriptions
    #   The events that the application subscribes.
    #
    # @option params [Array<Types::Publication>] :publications
    #   The events that the application publishes.
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
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \{ "tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @option params [Array<String>] :permissions
    #   The configuration of events or requests that the application has
    #   access to.
    #
    # @option params [Boolean] :is_service
    #   Indicates whether the application is a service.
    #
    # @option params [Integer] :initialization_timeout
    #   The maximum time in milliseconds allowed to establish a connection
    #   with the workspace.
    #
    # @option params [Types::ApplicationConfig] :application_config
    #   The configuration settings for the application.
    #
    # @option params [Types::IframeConfig] :iframe_config
    #   The iframe configuration for the application.
    #
    # @return [Types::CreateApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateApplicationResponse#arn #arn} => String
    #   * {Types::CreateApplicationResponse#id #id} => String
    #
    #
    # @example Example: To create an application
    #
    #   # The following creates an application named My Application with access url https://example.com.
    #
    #   resp = client.create_application({
    #     application_source_config: {
    #       external_url_config: {
    #         access_url: "https://example.com", 
    #       }, 
    #     }, 
    #     description: "My first application.", 
    #     name: "My Application", 
    #     namespace: "myapplication", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:app-integrations:us-west-2:0123456789012:application/98542c53-e8ac-4570-9c85-c6552c8d9c5e", 
    #     id: "98542c53-e8ac-4570-9c85-c6552c8d9c5e", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application({
    #     name: "ApplicationName", # required
    #     namespace: "ApplicationNamespace", # required
    #     description: "Description",
    #     application_source_config: { # required
    #       external_url_config: {
    #         access_url: "URL", # required
    #         approved_origins: ["ApplicationTrustedSource"],
    #       },
    #     },
    #     subscriptions: [
    #       {
    #         event: "EventName", # required
    #         description: "Description",
    #       },
    #     ],
    #     publications: [
    #       {
    #         event: "EventName", # required
    #         schema: "EventDefinitionSchema", # required
    #         description: "Description",
    #       },
    #     ],
    #     client_token: "IdempotencyToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     permissions: ["Permission"],
    #     is_service: false,
    #     initialization_timeout: 1,
    #     application_config: {
    #       contact_handling: {
    #         scope: "CROSS_CONTACTS", # accepts CROSS_CONTACTS, PER_CONTACT
    #       },
    #     },
    #     iframe_config: {
    #       allow: ["IframePermission"],
    #       sandbox: ["IframePermission"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/CreateApplication AWS API Documentation
    #
    # @overload create_application(params = {})
    # @param [Hash] params ({})
    def create_application(params = {}, options = {})
      req = build_request(:create_application, params)
      req.send_request(options)
    end

    # Creates and persists a DataIntegration resource.
    #
    # <note markdown="1"> You cannot create a DataIntegration association for a DataIntegration
    # that has been previously associated. Use a different DataIntegration,
    # or recreate the DataIntegration using the `CreateDataIntegration` API.
    #
    #  </note>
    #
    # @option params [required, String] :name
    #   The name of the DataIntegration.
    #
    # @option params [String] :description
    #   A description of the DataIntegration.
    #
    # @option params [required, String] :kms_key
    #   The KMS key ARN for the DataIntegration.
    #
    # @option params [String] :source_uri
    #   The URI of the data source.
    #
    # @option params [Types::ScheduleConfiguration] :schedule_config
    #   The name of the data and how often it should be pulled from the
    #   source.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \{ "tags": \{"key1":"value1", "key2":"value2"}
    #   }.
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
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [Types::FileConfiguration] :file_configuration
    #   The configuration for what files should be pulled from the source.
    #
    # @option params [Hash<String,Hash>] :object_configuration
    #   The configuration for what data should be pulled from the source.
    #
    # @return [Types::CreateDataIntegrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataIntegrationResponse#arn #arn} => String
    #   * {Types::CreateDataIntegrationResponse#id #id} => String
    #   * {Types::CreateDataIntegrationResponse#name #name} => String
    #   * {Types::CreateDataIntegrationResponse#description #description} => String
    #   * {Types::CreateDataIntegrationResponse#kms_key #kms_key} => String
    #   * {Types::CreateDataIntegrationResponse#source_uri #source_uri} => String
    #   * {Types::CreateDataIntegrationResponse#schedule_configuration #schedule_configuration} => Types::ScheduleConfiguration
    #   * {Types::CreateDataIntegrationResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateDataIntegrationResponse#client_token #client_token} => String
    #   * {Types::CreateDataIntegrationResponse#file_configuration #file_configuration} => Types::FileConfiguration
    #   * {Types::CreateDataIntegrationResponse#object_configuration #object_configuration} => Hash&lt;String,Hash&lt;String,Array&lt;String&gt;&gt;&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_integration({
    #     name: "Name", # required
    #     description: "Description",
    #     kms_key: "NonBlankString", # required
    #     source_uri: "SourceURI",
    #     schedule_config: {
    #       first_execution_from: "NonBlankString",
    #       object: "Object",
    #       schedule_expression: "NonBlankString", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "IdempotencyToken",
    #     file_configuration: {
    #       folders: ["NonBlankLongString"], # required
    #       filters: {
    #         "NonBlankString" => ["Fields"],
    #       },
    #     },
    #     object_configuration: {
    #       "NonBlankString" => {
    #         "NonBlankString" => ["Fields"],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.kms_key #=> String
    #   resp.source_uri #=> String
    #   resp.schedule_configuration.first_execution_from #=> String
    #   resp.schedule_configuration.object #=> String
    #   resp.schedule_configuration.schedule_expression #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.client_token #=> String
    #   resp.file_configuration.folders #=> Array
    #   resp.file_configuration.folders[0] #=> String
    #   resp.file_configuration.filters #=> Hash
    #   resp.file_configuration.filters["NonBlankString"] #=> Array
    #   resp.file_configuration.filters["NonBlankString"][0] #=> String
    #   resp.object_configuration #=> Hash
    #   resp.object_configuration["NonBlankString"] #=> Hash
    #   resp.object_configuration["NonBlankString"]["NonBlankString"] #=> Array
    #   resp.object_configuration["NonBlankString"]["NonBlankString"][0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/CreateDataIntegration AWS API Documentation
    #
    # @overload create_data_integration(params = {})
    # @param [Hash] params ({})
    def create_data_integration(params = {}, options = {})
      req = build_request(:create_data_integration, params)
      req.send_request(options)
    end

    # Creates and persists a DataIntegrationAssociation resource.
    #
    # @option params [required, String] :data_integration_identifier
    #   A unique identifier for the DataIntegration.
    #
    # @option params [String] :client_id
    #   The identifier for the client that is associated with the
    #   DataIntegration association.
    #
    # @option params [Hash<String,Hash>] :object_configuration
    #   The configuration for what data should be pulled from the source.
    #
    # @option params [String] :destination_uri
    #   The URI of the data destination.
    #
    # @option params [Hash<String,String>] :client_association_metadata
    #   The mapping of metadata to be extracted from the data.
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
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [Types::ExecutionConfiguration] :execution_configuration
    #   The configuration for how the files should be pulled from the source.
    #
    # @return [Types::CreateDataIntegrationAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataIntegrationAssociationResponse#data_integration_association_id #data_integration_association_id} => String
    #   * {Types::CreateDataIntegrationAssociationResponse#data_integration_arn #data_integration_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_integration_association({
    #     data_integration_identifier: "Identifier", # required
    #     client_id: "ClientId",
    #     object_configuration: {
    #       "NonBlankString" => {
    #         "NonBlankString" => ["Fields"],
    #       },
    #     },
    #     destination_uri: "DestinationURI",
    #     client_association_metadata: {
    #       "NonBlankString" => "NonBlankString",
    #     },
    #     client_token: "IdempotencyToken",
    #     execution_configuration: {
    #       execution_mode: "ON_DEMAND", # required, accepts ON_DEMAND, SCHEDULED
    #       on_demand_configuration: {
    #         start_time: "NonBlankString", # required
    #         end_time: "NonBlankString",
    #       },
    #       schedule_configuration: {
    #         first_execution_from: "NonBlankString",
    #         object: "Object",
    #         schedule_expression: "NonBlankString", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.data_integration_association_id #=> String
    #   resp.data_integration_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/CreateDataIntegrationAssociation AWS API Documentation
    #
    # @overload create_data_integration_association(params = {})
    # @param [Hash] params ({})
    def create_data_integration_association(params = {}, options = {})
      req = build_request(:create_data_integration_association, params)
      req.send_request(options)
    end

    # Creates an EventIntegration, given a specified name, description, and
    # a reference to an Amazon EventBridge bus in your account and a partner
    # event source that pushes events to that bus. No objects are created in
    # the your account, only metadata that is persisted on the
    # EventIntegration control plane.
    #
    # @option params [required, String] :name
    #   The name of the event integration.
    #
    # @option params [String] :description
    #   The description of the event integration.
    #
    # @option params [required, Types::EventFilter] :event_filter
    #   The event filter.
    #
    # @option params [required, String] :event_bridge_bus
    #   The EventBridge bus.
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
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \{ "tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @return [Types::CreateEventIntegrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEventIntegrationResponse#event_integration_arn #event_integration_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_integration({
    #     name: "Name", # required
    #     description: "Description",
    #     event_filter: { # required
    #       source: "Source", # required
    #     },
    #     event_bridge_bus: "EventBridgeBus", # required
    #     client_token: "IdempotencyToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.event_integration_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/CreateEventIntegration AWS API Documentation
    #
    # @overload create_event_integration(params = {})
    # @param [Hash] params ({})
    def create_event_integration(params = {}, options = {})
      req = build_request(:create_event_integration, params)
      req.send_request(options)
    end

    # Deletes the Application. Only Applications that don't have any
    # Application Associations can be deleted.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the Application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete an application
    #
    #   # The following deletes an application.
    #
    #   resp = client.delete_application({
    #     arn: "arn:aws:app-integrations:us-west-2:0123456789012:application/98542c53-e8ac-4570-9c85-c6552c8d9c5e", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application({
    #     arn: "ArnOrUUID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/DeleteApplication AWS API Documentation
    #
    # @overload delete_application(params = {})
    # @param [Hash] params ({})
    def delete_application(params = {}, options = {})
      req = build_request(:delete_application, params)
      req.send_request(options)
    end

    # Deletes the DataIntegration. Only DataIntegrations that don't have
    # any DataIntegrationAssociations can be deleted. Deleting a
    # DataIntegration also deletes the underlying Amazon AppFlow flow and
    # service linked role.
    #
    # <note markdown="1"> You cannot create a DataIntegration association for a DataIntegration
    # that has been previously associated. Use a different DataIntegration,
    # or recreate the DataIntegration using the [CreateDataIntegration][1]
    # API.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html
    #
    # @option params [required, String] :data_integration_identifier
    #   A unique identifier for the DataIntegration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_integration({
    #     data_integration_identifier: "Identifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/DeleteDataIntegration AWS API Documentation
    #
    # @overload delete_data_integration(params = {})
    # @param [Hash] params ({})
    def delete_data_integration(params = {}, options = {})
      req = build_request(:delete_data_integration, params)
      req.send_request(options)
    end

    # Deletes the specified existing event integration. If the event
    # integration is associated with clients, the request is rejected.
    #
    # @option params [required, String] :name
    #   The name of the event integration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_integration({
    #     name: "Name", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/DeleteEventIntegration AWS API Documentation
    #
    # @overload delete_event_integration(params = {})
    # @param [Hash] params ({})
    def delete_event_integration(params = {}, options = {})
      req = build_request(:delete_event_integration, params)
      req.send_request(options)
    end

    # Get an Application resource.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the Application.
    #
    # @return [Types::GetApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApplicationResponse#arn #arn} => String
    #   * {Types::GetApplicationResponse#id #id} => String
    #   * {Types::GetApplicationResponse#name #name} => String
    #   * {Types::GetApplicationResponse#namespace #namespace} => String
    #   * {Types::GetApplicationResponse#description #description} => String
    #   * {Types::GetApplicationResponse#application_source_config #application_source_config} => Types::ApplicationSourceConfig
    #   * {Types::GetApplicationResponse#subscriptions #subscriptions} => Array&lt;Types::Subscription&gt;
    #   * {Types::GetApplicationResponse#publications #publications} => Array&lt;Types::Publication&gt;
    #   * {Types::GetApplicationResponse#created_time #created_time} => Time
    #   * {Types::GetApplicationResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::GetApplicationResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetApplicationResponse#permissions #permissions} => Array&lt;String&gt;
    #   * {Types::GetApplicationResponse#is_service #is_service} => Boolean
    #   * {Types::GetApplicationResponse#initialization_timeout #initialization_timeout} => Integer
    #   * {Types::GetApplicationResponse#application_config #application_config} => Types::ApplicationConfig
    #   * {Types::GetApplicationResponse#iframe_config #iframe_config} => Types::IframeConfig
    #
    #
    # @example Example: To get an application
    #
    #   # The following retrives an application.
    #
    #   resp = client.get_application({
    #     arn: "arn:aws:app-integrations:us-west-2:0123456789012:application/98542c53-e8ac-4570-9c85-c6552c8d9c5e", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     application_source_config: {
    #       external_url_config: {
    #         access_url: "https://example.com", 
    #       }, 
    #     }, 
    #     description: "My first application.", 
    #     name: "My Application", 
    #     namespace: "myapplication", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application({
    #     arn: "ArnOrUUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.namespace #=> String
    #   resp.description #=> String
    #   resp.application_source_config.external_url_config.access_url #=> String
    #   resp.application_source_config.external_url_config.approved_origins #=> Array
    #   resp.application_source_config.external_url_config.approved_origins[0] #=> String
    #   resp.subscriptions #=> Array
    #   resp.subscriptions[0].event #=> String
    #   resp.subscriptions[0].description #=> String
    #   resp.publications #=> Array
    #   resp.publications[0].event #=> String
    #   resp.publications[0].schema #=> String
    #   resp.publications[0].description #=> String
    #   resp.created_time #=> Time
    #   resp.last_modified_time #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0] #=> String
    #   resp.is_service #=> Boolean
    #   resp.initialization_timeout #=> Integer
    #   resp.application_config.contact_handling.scope #=> String, one of "CROSS_CONTACTS", "PER_CONTACT"
    #   resp.iframe_config.allow #=> Array
    #   resp.iframe_config.allow[0] #=> String
    #   resp.iframe_config.sandbox #=> Array
    #   resp.iframe_config.sandbox[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/GetApplication AWS API Documentation
    #
    # @overload get_application(params = {})
    # @param [Hash] params ({})
    def get_application(params = {}, options = {})
      req = build_request(:get_application, params)
      req.send_request(options)
    end

    # Returns information about the DataIntegration.
    #
    # <note markdown="1"> You cannot create a DataIntegration association for a DataIntegration
    # that has been previously associated. Use a different DataIntegration,
    # or recreate the DataIntegration using the [CreateDataIntegration][1]
    # API.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html
    #
    # @option params [required, String] :identifier
    #   A unique identifier.
    #
    # @return [Types::GetDataIntegrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataIntegrationResponse#arn #arn} => String
    #   * {Types::GetDataIntegrationResponse#id #id} => String
    #   * {Types::GetDataIntegrationResponse#name #name} => String
    #   * {Types::GetDataIntegrationResponse#description #description} => String
    #   * {Types::GetDataIntegrationResponse#kms_key #kms_key} => String
    #   * {Types::GetDataIntegrationResponse#source_uri #source_uri} => String
    #   * {Types::GetDataIntegrationResponse#schedule_configuration #schedule_configuration} => Types::ScheduleConfiguration
    #   * {Types::GetDataIntegrationResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetDataIntegrationResponse#file_configuration #file_configuration} => Types::FileConfiguration
    #   * {Types::GetDataIntegrationResponse#object_configuration #object_configuration} => Hash&lt;String,Hash&lt;String,Array&lt;String&gt;&gt;&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_integration({
    #     identifier: "Identifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.kms_key #=> String
    #   resp.source_uri #=> String
    #   resp.schedule_configuration.first_execution_from #=> String
    #   resp.schedule_configuration.object #=> String
    #   resp.schedule_configuration.schedule_expression #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.file_configuration.folders #=> Array
    #   resp.file_configuration.folders[0] #=> String
    #   resp.file_configuration.filters #=> Hash
    #   resp.file_configuration.filters["NonBlankString"] #=> Array
    #   resp.file_configuration.filters["NonBlankString"][0] #=> String
    #   resp.object_configuration #=> Hash
    #   resp.object_configuration["NonBlankString"] #=> Hash
    #   resp.object_configuration["NonBlankString"]["NonBlankString"] #=> Array
    #   resp.object_configuration["NonBlankString"]["NonBlankString"][0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/GetDataIntegration AWS API Documentation
    #
    # @overload get_data_integration(params = {})
    # @param [Hash] params ({})
    def get_data_integration(params = {}, options = {})
      req = build_request(:get_data_integration, params)
      req.send_request(options)
    end

    # Returns information about the event integration.
    #
    # @option params [required, String] :name
    #   The name of the event integration.
    #
    # @return [Types::GetEventIntegrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEventIntegrationResponse#name #name} => String
    #   * {Types::GetEventIntegrationResponse#description #description} => String
    #   * {Types::GetEventIntegrationResponse#event_integration_arn #event_integration_arn} => String
    #   * {Types::GetEventIntegrationResponse#event_bridge_bus #event_bridge_bus} => String
    #   * {Types::GetEventIntegrationResponse#event_filter #event_filter} => Types::EventFilter
    #   * {Types::GetEventIntegrationResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_integration({
    #     name: "Name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.event_integration_arn #=> String
    #   resp.event_bridge_bus #=> String
    #   resp.event_filter.source #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/GetEventIntegration AWS API Documentation
    #
    # @overload get_event_integration(params = {})
    # @param [Hash] params ({})
    def get_event_integration(params = {}, options = {})
      req = build_request(:get_event_integration, params)
      req.send_request(options)
    end

    # Returns a paginated list of application associations for an
    # application.
    #
    # @option params [required, String] :application_id
    #   A unique identifier for the Application.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListApplicationAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationAssociationsResponse#application_associations #application_associations} => Array&lt;Types::ApplicationAssociationSummary&gt;
    #   * {Types::ListApplicationAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list application associations of an application
    #
    #   # The following retrives application associations of an application
    #
    #   resp = client.list_application_associations({
    #     application_id: "98542c53-e8ac-4570-9c85-c6552c8d9c5e", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     application_associations: [
    #       {
    #         application_arn: "arn:aws:app-integrations:us-west-2:0123456789012:application/98542c53-e8ac-4570-9c85-c6552c8d9c5e", 
    #         application_association_arn: "arn:aws:app-integrations:us-west-2:0123456789012:application-association/98542c53-e8ac-4570-9c85-c6552c8d9c5e/461dfb57-320a-454d-9bba-bb560845ff38", 
    #         client_id: "connect.amazonaws.com", 
    #       }, 
    #     ], 
    #     next_token: "abc", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_application_associations({
    #     application_id: "ArnOrUUID", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.application_associations #=> Array
    #   resp.application_associations[0].application_association_arn #=> String
    #   resp.application_associations[0].application_arn #=> String
    #   resp.application_associations[0].client_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/ListApplicationAssociations AWS API Documentation
    #
    # @overload list_application_associations(params = {})
    # @param [Hash] params ({})
    def list_application_associations(params = {}, options = {})
      req = build_request(:list_application_associations, params)
      req.send_request(options)
    end

    # Lists applications in the account.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListApplicationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationsResponse#applications #applications} => Array&lt;Types::ApplicationSummary&gt;
    #   * {Types::ListApplicationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list applications in the account
    #
    #   # The following lists application summary in the account.
    #
    #   resp = client.list_applications({
    #     max_results: 1, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     applications: [
    #       {
    #         arn: "arn:aws:app-integrations:us-west-2:0123456789012:application/98542c53-e8ac-4570-9c85-c6552c8d9c5e", 
    #         id: "98542c53-e8ac-4570-9c85-c6552c8d9c5e", 
    #         name: "My Application", 
    #         namespace: "myapplication", 
    #       }, 
    #     ], 
    #     next_token: "abc", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_applications({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.applications #=> Array
    #   resp.applications[0].arn #=> String
    #   resp.applications[0].id #=> String
    #   resp.applications[0].name #=> String
    #   resp.applications[0].namespace #=> String
    #   resp.applications[0].created_time #=> Time
    #   resp.applications[0].last_modified_time #=> Time
    #   resp.applications[0].is_service #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/ListApplications AWS API Documentation
    #
    # @overload list_applications(params = {})
    # @param [Hash] params ({})
    def list_applications(params = {}, options = {})
      req = build_request(:list_applications, params)
      req.send_request(options)
    end

    # Returns a paginated list of DataIntegration associations in the
    # account.
    #
    # <note markdown="1"> You cannot create a DataIntegration association for a DataIntegration
    # that has been previously associated. Use a different DataIntegration,
    # or recreate the DataIntegration using the [CreateDataIntegration][1]
    # API.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html
    #
    # @option params [required, String] :data_integration_identifier
    #   A unique identifier for the DataIntegration.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListDataIntegrationAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataIntegrationAssociationsResponse#data_integration_associations #data_integration_associations} => Array&lt;Types::DataIntegrationAssociationSummary&gt;
    #   * {Types::ListDataIntegrationAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_integration_associations({
    #     data_integration_identifier: "Identifier", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.data_integration_associations #=> Array
    #   resp.data_integration_associations[0].data_integration_association_arn #=> String
    #   resp.data_integration_associations[0].data_integration_arn #=> String
    #   resp.data_integration_associations[0].client_id #=> String
    #   resp.data_integration_associations[0].destination_uri #=> String
    #   resp.data_integration_associations[0].last_execution_status.execution_status #=> String, one of "COMPLETED", "IN_PROGRESS", "FAILED"
    #   resp.data_integration_associations[0].last_execution_status.status_message #=> String
    #   resp.data_integration_associations[0].execution_configuration.execution_mode #=> String, one of "ON_DEMAND", "SCHEDULED"
    #   resp.data_integration_associations[0].execution_configuration.on_demand_configuration.start_time #=> String
    #   resp.data_integration_associations[0].execution_configuration.on_demand_configuration.end_time #=> String
    #   resp.data_integration_associations[0].execution_configuration.schedule_configuration.first_execution_from #=> String
    #   resp.data_integration_associations[0].execution_configuration.schedule_configuration.object #=> String
    #   resp.data_integration_associations[0].execution_configuration.schedule_configuration.schedule_expression #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/ListDataIntegrationAssociations AWS API Documentation
    #
    # @overload list_data_integration_associations(params = {})
    # @param [Hash] params ({})
    def list_data_integration_associations(params = {}, options = {})
      req = build_request(:list_data_integration_associations, params)
      req.send_request(options)
    end

    # Returns a paginated list of DataIntegrations in the account.
    #
    # <note markdown="1"> You cannot create a DataIntegration association for a DataIntegration
    # that has been previously associated. Use a different DataIntegration,
    # or recreate the DataIntegration using the [CreateDataIntegration][1]
    # API.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListDataIntegrationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataIntegrationsResponse#data_integrations #data_integrations} => Array&lt;Types::DataIntegrationSummary&gt;
    #   * {Types::ListDataIntegrationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_integrations({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.data_integrations #=> Array
    #   resp.data_integrations[0].arn #=> String
    #   resp.data_integrations[0].name #=> String
    #   resp.data_integrations[0].source_uri #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/ListDataIntegrations AWS API Documentation
    #
    # @overload list_data_integrations(params = {})
    # @param [Hash] params ({})
    def list_data_integrations(params = {}, options = {})
      req = build_request(:list_data_integrations, params)
      req.send_request(options)
    end

    # Returns a paginated list of event integration associations in the
    # account.
    #
    # @option params [required, String] :event_integration_name
    #   The name of the event integration.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListEventIntegrationAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEventIntegrationAssociationsResponse#event_integration_associations #event_integration_associations} => Array&lt;Types::EventIntegrationAssociation&gt;
    #   * {Types::ListEventIntegrationAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_integration_associations({
    #     event_integration_name: "Name", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.event_integration_associations #=> Array
    #   resp.event_integration_associations[0].event_integration_association_arn #=> String
    #   resp.event_integration_associations[0].event_integration_association_id #=> String
    #   resp.event_integration_associations[0].event_integration_name #=> String
    #   resp.event_integration_associations[0].client_id #=> String
    #   resp.event_integration_associations[0].event_bridge_rule_name #=> String
    #   resp.event_integration_associations[0].client_association_metadata #=> Hash
    #   resp.event_integration_associations[0].client_association_metadata["NonBlankString"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/ListEventIntegrationAssociations AWS API Documentation
    #
    # @overload list_event_integration_associations(params = {})
    # @param [Hash] params ({})
    def list_event_integration_associations(params = {}, options = {})
      req = build_request(:list_event_integration_associations, params)
      req.send_request(options)
    end

    # Returns a paginated list of event integrations in the account.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListEventIntegrationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEventIntegrationsResponse#event_integrations #event_integrations} => Array&lt;Types::EventIntegration&gt;
    #   * {Types::ListEventIntegrationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_integrations({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.event_integrations #=> Array
    #   resp.event_integrations[0].event_integration_arn #=> String
    #   resp.event_integrations[0].name #=> String
    #   resp.event_integrations[0].description #=> String
    #   resp.event_integrations[0].event_filter.source #=> String
    #   resp.event_integrations[0].event_bridge_bus #=> String
    #   resp.event_integrations[0].tags #=> Hash
    #   resp.event_integrations[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/ListEventIntegrations AWS API Documentation
    #
    # @overload list_event_integrations(params = {})
    # @param [Hash] params ({})
    def list_event_integrations(params = {}, options = {})
      req = build_request(:list_event_integrations, params)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Adds the specified tags to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \{ "tags": \{"key1":"value1", "key2":"value2"}
    #   }.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/TagResource AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates and persists an Application resource.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the Application.
    #
    # @option params [String] :name
    #   The name of the application.
    #
    # @option params [String] :description
    #   The description of the application.
    #
    # @option params [Types::ApplicationSourceConfig] :application_source_config
    #   The configuration for where the application should be loaded from.
    #
    # @option params [Array<Types::Subscription>] :subscriptions
    #   The events that the application subscribes.
    #
    # @option params [Array<Types::Publication>] :publications
    #   The events that the application publishes.
    #
    # @option params [Array<String>] :permissions
    #   The configuration of events or requests that the application has
    #   access to.
    #
    # @option params [Boolean] :is_service
    #   Indicates whether the application is a service.
    #
    # @option params [Integer] :initialization_timeout
    #   The maximum time in milliseconds allowed to establish a connection
    #   with the workspace.
    #
    # @option params [Types::ApplicationConfig] :application_config
    #   The configuration settings for the application.
    #
    # @option params [Types::IframeConfig] :iframe_config
    #   The iframe configuration for the application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To update an application
    #
    #   # The following updates an existing application named with a new name.
    #
    #   resp = client.update_application({
    #     arn: "arn:aws:app-integrations:us-west-2:0123456789012:application/98542c53-e8ac-4570-9c85-c6552c8d9c5e", 
    #     name: "My New Application Name", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application({
    #     arn: "ArnOrUUID", # required
    #     name: "ApplicationName",
    #     description: "Description",
    #     application_source_config: {
    #       external_url_config: {
    #         access_url: "URL", # required
    #         approved_origins: ["ApplicationTrustedSource"],
    #       },
    #     },
    #     subscriptions: [
    #       {
    #         event: "EventName", # required
    #         description: "Description",
    #       },
    #     ],
    #     publications: [
    #       {
    #         event: "EventName", # required
    #         schema: "EventDefinitionSchema", # required
    #         description: "Description",
    #       },
    #     ],
    #     permissions: ["Permission"],
    #     is_service: false,
    #     initialization_timeout: 1,
    #     application_config: {
    #       contact_handling: {
    #         scope: "CROSS_CONTACTS", # accepts CROSS_CONTACTS, PER_CONTACT
    #       },
    #     },
    #     iframe_config: {
    #       allow: ["IframePermission"],
    #       sandbox: ["IframePermission"],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/UpdateApplication AWS API Documentation
    #
    # @overload update_application(params = {})
    # @param [Hash] params ({})
    def update_application(params = {}, options = {})
      req = build_request(:update_application, params)
      req.send_request(options)
    end

    # Updates the description of a DataIntegration.
    #
    # <note markdown="1"> You cannot create a DataIntegration association for a DataIntegration
    # that has been previously associated. Use a different DataIntegration,
    # or recreate the DataIntegration using the [CreateDataIntegration][1]
    # API.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html
    #
    # @option params [required, String] :identifier
    #   A unique identifier for the DataIntegration.
    #
    # @option params [String] :name
    #   The name of the DataIntegration.
    #
    # @option params [String] :description
    #   A description of the DataIntegration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_integration({
    #     identifier: "Identifier", # required
    #     name: "Name",
    #     description: "Description",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/UpdateDataIntegration AWS API Documentation
    #
    # @overload update_data_integration(params = {})
    # @param [Hash] params ({})
    def update_data_integration(params = {}, options = {})
      req = build_request(:update_data_integration, params)
      req.send_request(options)
    end

    # Updates and persists a DataIntegrationAssociation resource.
    #
    # <note markdown="1"> Updating a DataIntegrationAssociation with ExecutionConfiguration will
    # rerun the on-demand job.
    #
    #  </note>
    #
    # @option params [required, String] :data_integration_identifier
    #   A unique identifier for the DataIntegration.
    #
    # @option params [required, String] :data_integration_association_identifier
    #   A unique identifier. of the DataIntegrationAssociation resource
    #
    # @option params [required, Types::ExecutionConfiguration] :execution_configuration
    #   The configuration for how the files should be pulled from the source.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_integration_association({
    #     data_integration_identifier: "Identifier", # required
    #     data_integration_association_identifier: "Identifier", # required
    #     execution_configuration: { # required
    #       execution_mode: "ON_DEMAND", # required, accepts ON_DEMAND, SCHEDULED
    #       on_demand_configuration: {
    #         start_time: "NonBlankString", # required
    #         end_time: "NonBlankString",
    #       },
    #       schedule_configuration: {
    #         first_execution_from: "NonBlankString",
    #         object: "Object",
    #         schedule_expression: "NonBlankString", # required
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/UpdateDataIntegrationAssociation AWS API Documentation
    #
    # @overload update_data_integration_association(params = {})
    # @param [Hash] params ({})
    def update_data_integration_association(params = {}, options = {})
      req = build_request(:update_data_integration_association, params)
      req.send_request(options)
    end

    # Updates the description of an event integration.
    #
    # @option params [required, String] :name
    #   The name of the event integration.
    #
    # @option params [String] :description
    #   The description of the event integration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_event_integration({
    #     name: "Name", # required
    #     description: "Description",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/UpdateEventIntegration AWS API Documentation
    #
    # @overload update_event_integration(params = {})
    # @param [Hash] params ({})
    def update_event_integration(params = {}, options = {})
      req = build_request(:update_event_integration, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::AppIntegrationsService')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-appintegrationsservice'
      context[:gem_version] = '1.58.0'
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
