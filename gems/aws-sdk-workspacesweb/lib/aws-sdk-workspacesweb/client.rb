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

module Aws::WorkSpacesWeb
  # An API client for WorkSpacesWeb.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::WorkSpacesWeb::Client.new(
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

    @identifier = :workspacesweb

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
    add_plugin(Aws::WorkSpacesWeb::Plugins::Endpoints)

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
    #   @option options [Aws::WorkSpacesWeb::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::WorkSpacesWeb::EndpointParameters`.
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

    # Associates a browser settings resource with a web portal.
    #
    # @option params [required, String] :portal_arn
    #   The ARN of the web portal.
    #
    # @option params [required, String] :browser_settings_arn
    #   The ARN of the browser settings.
    #
    # @return [Types::AssociateBrowserSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateBrowserSettingsResponse#portal_arn #portal_arn} => String
    #   * {Types::AssociateBrowserSettingsResponse#browser_settings_arn #browser_settings_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_browser_settings({
    #     portal_arn: "ARN", # required
    #     browser_settings_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.portal_arn #=> String
    #   resp.browser_settings_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/AssociateBrowserSettings AWS API Documentation
    #
    # @overload associate_browser_settings(params = {})
    # @param [Hash] params ({})
    def associate_browser_settings(params = {}, options = {})
      req = build_request(:associate_browser_settings, params)
      req.send_request(options)
    end

    # Associates a data protection settings resource with a web portal.
    #
    # @option params [required, String] :portal_arn
    #   The ARN of the web portal.
    #
    # @option params [required, String] :data_protection_settings_arn
    #   The ARN of the data protection settings.
    #
    # @return [Types::AssociateDataProtectionSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateDataProtectionSettingsResponse#portal_arn #portal_arn} => String
    #   * {Types::AssociateDataProtectionSettingsResponse#data_protection_settings_arn #data_protection_settings_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_data_protection_settings({
    #     portal_arn: "ARN", # required
    #     data_protection_settings_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.portal_arn #=> String
    #   resp.data_protection_settings_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/AssociateDataProtectionSettings AWS API Documentation
    #
    # @overload associate_data_protection_settings(params = {})
    # @param [Hash] params ({})
    def associate_data_protection_settings(params = {}, options = {})
      req = build_request(:associate_data_protection_settings, params)
      req.send_request(options)
    end

    # Associates an IP access settings resource with a web portal.
    #
    # @option params [required, String] :portal_arn
    #   The ARN of the web portal.
    #
    # @option params [required, String] :ip_access_settings_arn
    #   The ARN of the IP access settings.
    #
    # @return [Types::AssociateIpAccessSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateIpAccessSettingsResponse#portal_arn #portal_arn} => String
    #   * {Types::AssociateIpAccessSettingsResponse#ip_access_settings_arn #ip_access_settings_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_ip_access_settings({
    #     portal_arn: "ARN", # required
    #     ip_access_settings_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.portal_arn #=> String
    #   resp.ip_access_settings_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/AssociateIpAccessSettings AWS API Documentation
    #
    # @overload associate_ip_access_settings(params = {})
    # @param [Hash] params ({})
    def associate_ip_access_settings(params = {}, options = {})
      req = build_request(:associate_ip_access_settings, params)
      req.send_request(options)
    end

    # Associates a network settings resource with a web portal.
    #
    # @option params [required, String] :portal_arn
    #   The ARN of the web portal.
    #
    # @option params [required, String] :network_settings_arn
    #   The ARN of the network settings.
    #
    # @return [Types::AssociateNetworkSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateNetworkSettingsResponse#portal_arn #portal_arn} => String
    #   * {Types::AssociateNetworkSettingsResponse#network_settings_arn #network_settings_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_network_settings({
    #     portal_arn: "ARN", # required
    #     network_settings_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.portal_arn #=> String
    #   resp.network_settings_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/AssociateNetworkSettings AWS API Documentation
    #
    # @overload associate_network_settings(params = {})
    # @param [Hash] params ({})
    def associate_network_settings(params = {}, options = {})
      req = build_request(:associate_network_settings, params)
      req.send_request(options)
    end

    # Associates a session logger with a portal.
    #
    # @option params [required, String] :portal_arn
    #   The ARN of the portal to associate to the session logger ARN.
    #
    # @option params [required, String] :session_logger_arn
    #   The ARN of the session logger to associate to the portal ARN.
    #
    # @return [Types::AssociateSessionLoggerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateSessionLoggerResponse#portal_arn #portal_arn} => String
    #   * {Types::AssociateSessionLoggerResponse#session_logger_arn #session_logger_arn} => String
    #
    #
    # @example Example: Associate Session Logger with Portal
    #
    #   # Associates a session logger with a portal
    #
    #   resp = client.associate_session_logger({
    #     portal_arn: "arn:aws:workspaces-web:us-west-2:123456789012:portal/12345678-1234-1234-1234-123456789012", 
    #     session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/11111111-1111-1111-1111-111111111111", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     portal_arn: "arn:aws:workspaces-web:us-west-2:123456789012:portal/12345678-1234-1234-1234-123456789012", 
    #     session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/11111111-1111-1111-1111-111111111111", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_session_logger({
    #     portal_arn: "ARN", # required
    #     session_logger_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.portal_arn #=> String
    #   resp.session_logger_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/AssociateSessionLogger AWS API Documentation
    #
    # @overload associate_session_logger(params = {})
    # @param [Hash] params ({})
    def associate_session_logger(params = {}, options = {})
      req = build_request(:associate_session_logger, params)
      req.send_request(options)
    end

    # Associates a trust store with a web portal.
    #
    # @option params [required, String] :portal_arn
    #   The ARN of the web portal.
    #
    # @option params [required, String] :trust_store_arn
    #   The ARN of the trust store.
    #
    # @return [Types::AssociateTrustStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateTrustStoreResponse#portal_arn #portal_arn} => String
    #   * {Types::AssociateTrustStoreResponse#trust_store_arn #trust_store_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_trust_store({
    #     portal_arn: "ARN", # required
    #     trust_store_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.portal_arn #=> String
    #   resp.trust_store_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/AssociateTrustStore AWS API Documentation
    #
    # @overload associate_trust_store(params = {})
    # @param [Hash] params ({})
    def associate_trust_store(params = {}, options = {})
      req = build_request(:associate_trust_store, params)
      req.send_request(options)
    end

    # Associates a user access logging settings resource with a web portal.
    #
    # @option params [required, String] :portal_arn
    #   The ARN of the web portal.
    #
    # @option params [required, String] :user_access_logging_settings_arn
    #   The ARN of the user access logging settings.
    #
    # @return [Types::AssociateUserAccessLoggingSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateUserAccessLoggingSettingsResponse#portal_arn #portal_arn} => String
    #   * {Types::AssociateUserAccessLoggingSettingsResponse#user_access_logging_settings_arn #user_access_logging_settings_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_user_access_logging_settings({
    #     portal_arn: "ARN", # required
    #     user_access_logging_settings_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.portal_arn #=> String
    #   resp.user_access_logging_settings_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/AssociateUserAccessLoggingSettings AWS API Documentation
    #
    # @overload associate_user_access_logging_settings(params = {})
    # @param [Hash] params ({})
    def associate_user_access_logging_settings(params = {}, options = {})
      req = build_request(:associate_user_access_logging_settings, params)
      req.send_request(options)
    end

    # Associates a user settings resource with a web portal.
    #
    # @option params [required, String] :portal_arn
    #   The ARN of the web portal.
    #
    # @option params [required, String] :user_settings_arn
    #   The ARN of the user settings.
    #
    # @return [Types::AssociateUserSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateUserSettingsResponse#portal_arn #portal_arn} => String
    #   * {Types::AssociateUserSettingsResponse#user_settings_arn #user_settings_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_user_settings({
    #     portal_arn: "ARN", # required
    #     user_settings_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.portal_arn #=> String
    #   resp.user_settings_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/AssociateUserSettings AWS API Documentation
    #
    # @overload associate_user_settings(params = {})
    # @param [Hash] params ({})
    def associate_user_settings(params = {}, options = {})
      req = build_request(:associate_user_settings, params)
      req.send_request(options)
    end

    # Creates a browser settings resource that can be associated with a web
    # portal. Once associated with a web portal, browser settings control
    # how the browser will behave once a user starts a streaming session for
    # the web portal.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to add to the browser settings resource. A tag is a key-value
    #   pair.
    #
    # @option params [String] :customer_managed_key
    #   The custom managed key of the browser settings.
    #
    # @option params [Hash<String,String>] :additional_encryption_context
    #   Additional encryption context of the browser settings.
    #
    # @option params [String] :browser_policy
    #   A JSON string containing Chrome Enterprise policies that will be
    #   applied to all streaming sessions.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token returns the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::WebContentFilteringPolicy] :web_content_filtering_policy
    #   The policy that specifies which URLs end users are allowed to access
    #   or which URLs or domain categories they are restricted from accessing
    #   for enhanced security.
    #
    # @return [Types::CreateBrowserSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBrowserSettingsResponse#browser_settings_arn #browser_settings_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_browser_settings({
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     customer_managed_key: "keyArn",
    #     additional_encryption_context: {
    #       "StringType" => "StringType",
    #     },
    #     browser_policy: "BrowserPolicy",
    #     client_token: "ClientToken",
    #     web_content_filtering_policy: {
    #       blocked_categories: ["Cults"], # accepts Cults, Gambling, Nudity, Pornography, SexEducation, Tasteless, Violence, DownloadSites, ImageSharing, PeerToPeer, StreamingMediaAndDownloads, GenerativeAI, CriminalActivity, Hacking, HateAndIntolerance, IllegalDrug, IllegalSoftware, SchoolCheating, SelfHarm, Weapons, Chat, Games, InstantMessaging, ProfessionalNetwork, SocialNetworking, WebBasedEmail, ParkedDomains
    #       allowed_urls: ["UrlPattern"],
    #       blocked_urls: ["UrlPattern"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.browser_settings_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/CreateBrowserSettings AWS API Documentation
    #
    # @overload create_browser_settings(params = {})
    # @param [Hash] params ({})
    def create_browser_settings(params = {}, options = {})
      req = build_request(:create_browser_settings, params)
      req.send_request(options)
    end

    # Creates a data protection settings resource that can be associated
    # with a web portal.
    #
    # @option params [String] :display_name
    #   The display name of the data protection settings.
    #
    # @option params [String] :description
    #   The description of the data protection settings.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to add to the data protection settings resource. A tag is a
    #   key-value pair.
    #
    # @option params [String] :customer_managed_key
    #   The custom managed key of the data protection settings.
    #
    # @option params [Hash<String,String>] :additional_encryption_context
    #   Additional encryption context of the data protection settings.
    #
    # @option params [Types::InlineRedactionConfiguration] :inline_redaction_configuration
    #   The inline redaction configuration of the data protection settings
    #   that will be applied to all sessions.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token returns the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateDataProtectionSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataProtectionSettingsResponse#data_protection_settings_arn #data_protection_settings_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_protection_settings({
    #     display_name: "DisplayNameSafe",
    #     description: "DescriptionSafe",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     customer_managed_key: "keyArn",
    #     additional_encryption_context: {
    #       "StringType" => "StringType",
    #     },
    #     inline_redaction_configuration: {
    #       inline_redaction_patterns: [ # required
    #         {
    #           built_in_pattern_id: "BuiltInPatternId",
    #           custom_pattern: {
    #             pattern_name: "PatternName", # required
    #             pattern_regex: "Regex", # required
    #             pattern_description: "DescriptionSafe",
    #             keyword_regex: "Regex",
    #           },
    #           redaction_place_holder: { # required
    #             redaction_place_holder_type: "CustomText", # required, accepts CustomText
    #             redaction_place_holder_text: "RedactionPlaceHolderText",
    #           },
    #           enforced_urls: ["InlineRedactionUrl"],
    #           exempt_urls: ["InlineRedactionUrl"],
    #           confidence_level: 1,
    #         },
    #       ],
    #       global_enforced_urls: ["InlineRedactionUrl"],
    #       global_exempt_urls: ["InlineRedactionUrl"],
    #       global_confidence_level: 1,
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.data_protection_settings_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/CreateDataProtectionSettings AWS API Documentation
    #
    # @overload create_data_protection_settings(params = {})
    # @param [Hash] params ({})
    def create_data_protection_settings(params = {}, options = {})
      req = build_request(:create_data_protection_settings, params)
      req.send_request(options)
    end

    # Creates an identity provider resource that is then associated with a
    # web portal.
    #
    # @option params [required, String] :portal_arn
    #   The ARN of the web portal.
    #
    # @option params [required, String] :identity_provider_name
    #   The identity provider name.
    #
    # @option params [required, String] :identity_provider_type
    #   The identity provider type.
    #
    # @option params [required, Hash<String,String>] :identity_provider_details
    #   The identity provider details. The following list describes the
    #   provider detail keys for each identity provider type.
    #
    #   * For Google and Login with Amazon:
    #
    #     * `client_id`
    #
    #     * `client_secret`
    #
    #     * `authorize_scopes`
    #   * For Facebook:
    #
    #     * `client_id`
    #
    #     * `client_secret`
    #
    #     * `authorize_scopes`
    #
    #     * `api_version`
    #   * For Sign in with Apple:
    #
    #     * `client_id`
    #
    #     * `team_id`
    #
    #     * `key_id`
    #
    #     * `private_key`
    #
    #     * `authorize_scopes`
    #   * For OIDC providers:
    #
    #     * `client_id`
    #
    #     * `client_secret`
    #
    #     * `attributes_request_method`
    #
    #     * `oidc_issuer`
    #
    #     * `authorize_scopes`
    #
    #     * `authorize_url` *if not available from discovery URL specified by
    #       `oidc_issuer` key*
    #
    #     * `token_url` *if not available from discovery URL specified by
    #       `oidc_issuer` key*
    #
    #     * `attributes_url` *if not available from discovery URL specified by
    #       `oidc_issuer` key*
    #
    #     * `jwks_uri` *if not available from discovery URL specified by
    #       `oidc_issuer` key*
    #   * For SAML providers:
    #
    #     * `MetadataFile` OR `MetadataURL`
    #
    #     * `IDPSignout` (boolean) *optional*
    #
    #     * `IDPInit` (boolean) *optional*
    #
    #     * `RequestSigningAlgorithm` (string) *optional* - Only accepts
    #       `rsa-sha256`
    #
    #     * `EncryptedResponses` (boolean) *optional*
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token returns the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to add to the identity provider resource. A tag is a
    #   key-value pair.
    #
    # @return [Types::CreateIdentityProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIdentityProviderResponse#identity_provider_arn #identity_provider_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_identity_provider({
    #     portal_arn: "ARN", # required
    #     identity_provider_name: "IdentityProviderName", # required
    #     identity_provider_type: "SAML", # required, accepts SAML, Facebook, Google, LoginWithAmazon, SignInWithApple, OIDC
    #     identity_provider_details: { # required
    #       "StringType" => "StringType",
    #     },
    #     client_token: "ClientToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_provider_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/CreateIdentityProvider AWS API Documentation
    #
    # @overload create_identity_provider(params = {})
    # @param [Hash] params ({})
    def create_identity_provider(params = {}, options = {})
      req = build_request(:create_identity_provider, params)
      req.send_request(options)
    end

    # Creates an IP access settings resource that can be associated with a
    # web portal.
    #
    # @option params [String] :display_name
    #   The display name of the IP access settings.
    #
    # @option params [String] :description
    #   The description of the IP access settings.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to add to the IP access settings resource. A tag is a
    #   key-value pair.
    #
    # @option params [String] :customer_managed_key
    #   The custom managed key of the IP access settings.
    #
    # @option params [Hash<String,String>] :additional_encryption_context
    #   Additional encryption context of the IP access settings.
    #
    # @option params [required, Array<Types::IpRule>] :ip_rules
    #   The IP rules of the IP access settings.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token returns the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateIpAccessSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIpAccessSettingsResponse#ip_access_settings_arn #ip_access_settings_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ip_access_settings({
    #     display_name: "DisplayName",
    #     description: "Description",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     customer_managed_key: "keyArn",
    #     additional_encryption_context: {
    #       "StringType" => "StringType",
    #     },
    #     ip_rules: [ # required
    #       {
    #         ip_range: "IpRange", # required
    #         description: "Description",
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.ip_access_settings_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/CreateIpAccessSettings AWS API Documentation
    #
    # @overload create_ip_access_settings(params = {})
    # @param [Hash] params ({})
    def create_ip_access_settings(params = {}, options = {})
      req = build_request(:create_ip_access_settings, params)
      req.send_request(options)
    end

    # Creates a network settings resource that can be associated with a web
    # portal. Once associated with a web portal, network settings define how
    # streaming instances will connect with your specified VPC.
    #
    # @option params [required, String] :vpc_id
    #   The VPC that streaming instances will connect to.
    #
    # @option params [required, Array<String>] :subnet_ids
    #   The subnets in which network interfaces are created to connect
    #   streaming instances to your VPC. At least two of these subnets must be
    #   in different availability zones.
    #
    # @option params [required, Array<String>] :security_group_ids
    #   One or more security groups used to control access from streaming
    #   instances to your VPC.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to add to the network settings resource. A tag is a key-value
    #   pair.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token returns the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateNetworkSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNetworkSettingsResponse#network_settings_arn #network_settings_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_network_settings({
    #     vpc_id: "VpcId", # required
    #     subnet_ids: ["SubnetId"], # required
    #     security_group_ids: ["SecurityGroupId"], # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.network_settings_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/CreateNetworkSettings AWS API Documentation
    #
    # @overload create_network_settings(params = {})
    # @param [Hash] params ({})
    def create_network_settings(params = {}, options = {})
      req = build_request(:create_network_settings, params)
      req.send_request(options)
    end

    # Creates a web portal.
    #
    # @option params [String] :display_name
    #   The name of the web portal. This is not visible to users who log into
    #   the web portal.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to add to the web portal. A tag is a key-value pair.
    #
    # @option params [String] :customer_managed_key
    #   The customer managed key of the web portal.
    #
    # @option params [Hash<String,String>] :additional_encryption_context
    #   The additional encryption context of the portal.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token returns the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :authentication_type
    #   The type of authentication integration points used when signing into
    #   the web portal. Defaults to `Standard`.
    #
    #   `Standard` web portals are authenticated directly through your
    #   identity provider. You need to call `CreateIdentityProvider` to
    #   integrate your identity provider with your web portal. User and group
    #   access to your web portal is controlled through your identity
    #   provider.
    #
    #   `IAM Identity Center` web portals are authenticated through IAM
    #   Identity Center. Identity sources (including external identity
    #   provider integration), plus user and group access to your web portal,
    #   can be configured in the IAM Identity Center.
    #
    # @option params [String] :instance_type
    #   The type and resources of the underlying instance.
    #
    # @option params [Integer] :max_concurrent_sessions
    #   The maximum number of concurrent sessions for the portal.
    #
    # @return [Types::CreatePortalResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePortalResponse#portal_arn #portal_arn} => String
    #   * {Types::CreatePortalResponse#portal_endpoint #portal_endpoint} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_portal({
    #     display_name: "DisplayName",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     customer_managed_key: "keyArn",
    #     additional_encryption_context: {
    #       "StringType" => "StringType",
    #     },
    #     client_token: "ClientToken",
    #     authentication_type: "Standard", # accepts Standard, IAM_Identity_Center
    #     instance_type: "standard.regular", # accepts standard.regular, standard.large, standard.xlarge
    #     max_concurrent_sessions: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.portal_arn #=> String
    #   resp.portal_endpoint #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/CreatePortal AWS API Documentation
    #
    # @overload create_portal(params = {})
    # @param [Hash] params ({})
    def create_portal(params = {}, options = {})
      req = build_request(:create_portal, params)
      req.send_request(options)
    end

    # Creates a session logger.
    #
    # @option params [required, Types::EventFilter] :event_filter
    #   The filter that specifies the events to monitor.
    #
    # @option params [required, Types::LogConfiguration] :log_configuration
    #   The configuration that specifies where logs are delivered.
    #
    # @option params [String] :display_name
    #   The human-readable display name for the session logger resource.
    #
    # @option params [String] :customer_managed_key
    #   The custom managed key of the session logger.
    #
    # @option params [Hash<String,String>] :additional_encryption_context
    #   The additional encryption context of the session logger.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to add to the session logger.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token returns the result from the original successful request.
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateSessionLoggerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSessionLoggerResponse#session_logger_arn #session_logger_arn} => String
    #
    #
    # @example Example: Create Session Logger with All Events
    #
    #   # Creates a session logger that captures all events and stores them in S3 with JSON format and flat folder structure
    #
    #   resp = client.create_session_logger({
    #     display_name: "Session Logger with All Events", 
    #     event_filter: {
    #       all: {
    #       }, 
    #     }, 
    #     log_configuration: {
    #       s3: {
    #         bucket: "my-session-logs-bucket", 
    #         bucket_owner: "123456789012", 
    #         folder_structure: "Flat", 
    #         key_prefix: "session-logs/all/events", 
    #         log_file_format: "Json", 
    #       }, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/12345678-1234-1234-1234-123456789012", 
    #   }
    #
    # @example Example: Create Session Logger with Specific Events
    #
    #   # Creates a session logger that captures only specific events with JSONLines format and nested folder structure
    #
    #   resp = client.create_session_logger({
    #     additional_encryption_context: {
    #       "EncryptionContextKey" => "EncryptionContextValue", 
    #     }, 
    #     customer_managed_key: "arn:aws:kms:us-west-2:123456789012:key/12345678-1234-1234-1234-123456789012", 
    #     display_name: "Session Logger with Each Events", 
    #     event_filter: {
    #       include: [
    #         "SessionStart", 
    #         "SessionEnd", 
    #         "UrlLoad", 
    #         "WebsiteInteract", 
    #       ], 
    #     }, 
    #     log_configuration: {
    #       s3: {
    #         bucket: "my-session-logs-bucket", 
    #         bucket_owner: "123456789012", 
    #         folder_structure: "NestedByDate", 
    #         key_prefix: "session-logs/each/event", 
    #         log_file_format: "JSONLines", 
    #       }, 
    #     }, 
    #     tags: [
    #       {
    #         key: "KEY-1", 
    #         value: "VALUE-1", 
    #       }, 
    #       {
    #         key: "KEY-2", 
    #         value: "VALUE-2", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/87654321-4321-4321-4321-210987654321", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_session_logger({
    #     event_filter: { # required
    #       all: {
    #       },
    #       include: ["WebsiteInteract"], # accepts WebsiteInteract, FileDownloadFromSecureBrowserToRemoteDisk, FileTransferFromRemoteToLocalDisk, FileTransferFromLocalToRemoteDisk, FileUploadFromRemoteDiskToSecureBrowser, ContentPasteToWebsite, ContentTransferFromLocalToRemoteClipboard, ContentCopyFromWebsite, UrlLoad, TabOpen, TabClose, PrintJobSubmit, SessionConnect, SessionStart, SessionDisconnect, SessionEnd, UrlBlockByContentFilter
    #     },
    #     log_configuration: { # required
    #       s3: {
    #         bucket: "S3Bucket", # required
    #         key_prefix: "S3KeyPrefix",
    #         bucket_owner: "S3BucketOwner",
    #         log_file_format: "JSONLines", # required, accepts JSONLines, Json
    #         folder_structure: "Flat", # required, accepts Flat, NestedByDate
    #       },
    #     },
    #     display_name: "DisplayNameSafe",
    #     customer_managed_key: "keyArn",
    #     additional_encryption_context: {
    #       "StringType" => "StringType",
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.session_logger_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/CreateSessionLogger AWS API Documentation
    #
    # @overload create_session_logger(params = {})
    # @param [Hash] params ({})
    def create_session_logger(params = {}, options = {})
      req = build_request(:create_session_logger, params)
      req.send_request(options)
    end

    # Creates a trust store that can be associated with a web portal. A
    # trust store contains certificate authority (CA) certificates. Once
    # associated with a web portal, the browser in a streaming session will
    # recognize certificates that have been issued using any of the CAs in
    # the trust store. If your organization has internal websites that use
    # certificates issued by private CAs, you should add the private CA
    # certificate to the trust store.
    #
    # @option params [required, Array<String, StringIO, File>] :certificate_list
    #   A list of CA certificates to be added to the trust store.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to add to the trust store. A tag is a key-value pair.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token returns the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateTrustStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTrustStoreResponse#trust_store_arn #trust_store_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_trust_store({
    #     certificate_list: ["data"], # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.trust_store_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/CreateTrustStore AWS API Documentation
    #
    # @overload create_trust_store(params = {})
    # @param [Hash] params ({})
    def create_trust_store(params = {}, options = {})
      req = build_request(:create_trust_store, params)
      req.send_request(options)
    end

    # Creates a user access logging settings resource that can be associated
    # with a web portal.
    #
    # @option params [required, String] :kinesis_stream_arn
    #   The ARN of the Kinesis stream.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to add to the user settings resource. A tag is a key-value
    #   pair.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token returns the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateUserAccessLoggingSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserAccessLoggingSettingsResponse#user_access_logging_settings_arn #user_access_logging_settings_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_access_logging_settings({
    #     kinesis_stream_arn: "KinesisStreamArn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_access_logging_settings_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/CreateUserAccessLoggingSettings AWS API Documentation
    #
    # @overload create_user_access_logging_settings(params = {})
    # @param [Hash] params ({})
    def create_user_access_logging_settings(params = {}, options = {})
      req = build_request(:create_user_access_logging_settings, params)
      req.send_request(options)
    end

    # Creates a user settings resource that can be associated with a web
    # portal. Once associated with a web portal, user settings control how
    # users can transfer data between a streaming session and the their
    # local devices.
    #
    # @option params [required, String] :copy_allowed
    #   Specifies whether the user can copy text from the streaming session to
    #   the local device.
    #
    # @option params [required, String] :paste_allowed
    #   Specifies whether the user can paste text from the local device to the
    #   streaming session.
    #
    # @option params [required, String] :download_allowed
    #   Specifies whether the user can download files from the streaming
    #   session to the local device.
    #
    # @option params [required, String] :upload_allowed
    #   Specifies whether the user can upload files from the local device to
    #   the streaming session.
    #
    # @option params [required, String] :print_allowed
    #   Specifies whether the user can print to the local device.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to add to the user settings resource. A tag is a key-value
    #   pair.
    #
    # @option params [Integer] :disconnect_timeout_in_minutes
    #   The amount of time that a streaming session remains active after users
    #   disconnect.
    #
    # @option params [Integer] :idle_disconnect_timeout_in_minutes
    #   The amount of time that users can be idle (inactive) before they are
    #   disconnected from their streaming session and the disconnect timeout
    #   interval begins.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token returns the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::CookieSynchronizationConfiguration] :cookie_synchronization_configuration
    #   The configuration that specifies which cookies should be synchronized
    #   from the end user's local browser to the remote browser.
    #
    # @option params [String] :customer_managed_key
    #   The customer managed key used to encrypt sensitive information in the
    #   user settings.
    #
    # @option params [Hash<String,String>] :additional_encryption_context
    #   The additional encryption context of the user settings.
    #
    # @option params [String] :deep_link_allowed
    #   Specifies whether the user can use deep links that open automatically
    #   when connecting to a session.
    #
    # @option params [Types::ToolbarConfiguration] :toolbar_configuration
    #   The configuration of the toolbar. This allows administrators to select
    #   the toolbar type and visual mode, set maximum display resolution for
    #   sessions, and choose which items are visible to end users during their
    #   sessions. If administrators do not modify these settings, end users
    #   retain control over their toolbar preferences.
    #
    # @return [Types::CreateUserSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserSettingsResponse#user_settings_arn #user_settings_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_settings({
    #     copy_allowed: "Disabled", # required, accepts Disabled, Enabled
    #     paste_allowed: "Disabled", # required, accepts Disabled, Enabled
    #     download_allowed: "Disabled", # required, accepts Disabled, Enabled
    #     upload_allowed: "Disabled", # required, accepts Disabled, Enabled
    #     print_allowed: "Disabled", # required, accepts Disabled, Enabled
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     disconnect_timeout_in_minutes: 1,
    #     idle_disconnect_timeout_in_minutes: 1,
    #     client_token: "ClientToken",
    #     cookie_synchronization_configuration: {
    #       allowlist: [ # required
    #         {
    #           domain: "CookieDomain", # required
    #           name: "CookieName",
    #           path: "CookiePath",
    #         },
    #       ],
    #       blocklist: [
    #         {
    #           domain: "CookieDomain", # required
    #           name: "CookieName",
    #           path: "CookiePath",
    #         },
    #       ],
    #     },
    #     customer_managed_key: "keyArn",
    #     additional_encryption_context: {
    #       "StringType" => "StringType",
    #     },
    #     deep_link_allowed: "Disabled", # accepts Disabled, Enabled
    #     toolbar_configuration: {
    #       toolbar_type: "Floating", # accepts Floating, Docked
    #       visual_mode: "Dark", # accepts Dark, Light
    #       hidden_toolbar_items: ["Windows"], # accepts Windows, DualMonitor, FullScreen, Webcam, Microphone
    #       max_display_resolution: "size4096X2160", # accepts size4096X2160, size3840X2160, size3440X1440, size2560X1440, size1920X1080, size1280X720, size1024X768, size800X600
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.user_settings_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/CreateUserSettings AWS API Documentation
    #
    # @overload create_user_settings(params = {})
    # @param [Hash] params ({})
    def create_user_settings(params = {}, options = {})
      req = build_request(:create_user_settings, params)
      req.send_request(options)
    end

    # Deletes browser settings.
    #
    # @option params [required, String] :browser_settings_arn
    #   The ARN of the browser settings.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_browser_settings({
    #     browser_settings_arn: "ARN", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DeleteBrowserSettings AWS API Documentation
    #
    # @overload delete_browser_settings(params = {})
    # @param [Hash] params ({})
    def delete_browser_settings(params = {}, options = {})
      req = build_request(:delete_browser_settings, params)
      req.send_request(options)
    end

    # Deletes data protection settings.
    #
    # @option params [required, String] :data_protection_settings_arn
    #   The ARN of the data protection settings.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_protection_settings({
    #     data_protection_settings_arn: "ARN", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DeleteDataProtectionSettings AWS API Documentation
    #
    # @overload delete_data_protection_settings(params = {})
    # @param [Hash] params ({})
    def delete_data_protection_settings(params = {}, options = {})
      req = build_request(:delete_data_protection_settings, params)
      req.send_request(options)
    end

    # Deletes the identity provider.
    #
    # @option params [required, String] :identity_provider_arn
    #   The ARN of the identity provider.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_identity_provider({
    #     identity_provider_arn: "SubresourceARN", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DeleteIdentityProvider AWS API Documentation
    #
    # @overload delete_identity_provider(params = {})
    # @param [Hash] params ({})
    def delete_identity_provider(params = {}, options = {})
      req = build_request(:delete_identity_provider, params)
      req.send_request(options)
    end

    # Deletes IP access settings.
    #
    # @option params [required, String] :ip_access_settings_arn
    #   The ARN of the IP access settings.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ip_access_settings({
    #     ip_access_settings_arn: "ARN", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DeleteIpAccessSettings AWS API Documentation
    #
    # @overload delete_ip_access_settings(params = {})
    # @param [Hash] params ({})
    def delete_ip_access_settings(params = {}, options = {})
      req = build_request(:delete_ip_access_settings, params)
      req.send_request(options)
    end

    # Deletes network settings.
    #
    # @option params [required, String] :network_settings_arn
    #   The ARN of the network settings.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_network_settings({
    #     network_settings_arn: "ARN", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DeleteNetworkSettings AWS API Documentation
    #
    # @overload delete_network_settings(params = {})
    # @param [Hash] params ({})
    def delete_network_settings(params = {}, options = {})
      req = build_request(:delete_network_settings, params)
      req.send_request(options)
    end

    # Deletes a web portal.
    #
    # @option params [required, String] :portal_arn
    #   The ARN of the web portal.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_portal({
    #     portal_arn: "ARN", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DeletePortal AWS API Documentation
    #
    # @overload delete_portal(params = {})
    # @param [Hash] params ({})
    def delete_portal(params = {}, options = {})
      req = build_request(:delete_portal, params)
      req.send_request(options)
    end

    # Deletes a session logger resource.
    #
    # @option params [required, String] :session_logger_arn
    #   The ARN of the session logger.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Delete Session Logger
    #
    #   # Deletes a session logger resource
    #
    #   resp = client.delete_session_logger({
    #     session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/12345678-1234-1234-1234-123456789012", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_session_logger({
    #     session_logger_arn: "ARN", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DeleteSessionLogger AWS API Documentation
    #
    # @overload delete_session_logger(params = {})
    # @param [Hash] params ({})
    def delete_session_logger(params = {}, options = {})
      req = build_request(:delete_session_logger, params)
      req.send_request(options)
    end

    # Deletes the trust store.
    #
    # @option params [required, String] :trust_store_arn
    #   The ARN of the trust store.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_trust_store({
    #     trust_store_arn: "ARN", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DeleteTrustStore AWS API Documentation
    #
    # @overload delete_trust_store(params = {})
    # @param [Hash] params ({})
    def delete_trust_store(params = {}, options = {})
      req = build_request(:delete_trust_store, params)
      req.send_request(options)
    end

    # Deletes user access logging settings.
    #
    # @option params [required, String] :user_access_logging_settings_arn
    #   The ARN of the user access logging settings.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_access_logging_settings({
    #     user_access_logging_settings_arn: "ARN", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DeleteUserAccessLoggingSettings AWS API Documentation
    #
    # @overload delete_user_access_logging_settings(params = {})
    # @param [Hash] params ({})
    def delete_user_access_logging_settings(params = {}, options = {})
      req = build_request(:delete_user_access_logging_settings, params)
      req.send_request(options)
    end

    # Deletes user settings.
    #
    # @option params [required, String] :user_settings_arn
    #   The ARN of the user settings.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_settings({
    #     user_settings_arn: "ARN", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DeleteUserSettings AWS API Documentation
    #
    # @overload delete_user_settings(params = {})
    # @param [Hash] params ({})
    def delete_user_settings(params = {}, options = {})
      req = build_request(:delete_user_settings, params)
      req.send_request(options)
    end

    # Disassociates browser settings from a web portal.
    #
    # @option params [required, String] :portal_arn
    #   The ARN of the web portal.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_browser_settings({
    #     portal_arn: "ARN", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DisassociateBrowserSettings AWS API Documentation
    #
    # @overload disassociate_browser_settings(params = {})
    # @param [Hash] params ({})
    def disassociate_browser_settings(params = {}, options = {})
      req = build_request(:disassociate_browser_settings, params)
      req.send_request(options)
    end

    # Disassociates data protection settings from a web portal.
    #
    # @option params [required, String] :portal_arn
    #   The ARN of the web portal.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_data_protection_settings({
    #     portal_arn: "ARN", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DisassociateDataProtectionSettings AWS API Documentation
    #
    # @overload disassociate_data_protection_settings(params = {})
    # @param [Hash] params ({})
    def disassociate_data_protection_settings(params = {}, options = {})
      req = build_request(:disassociate_data_protection_settings, params)
      req.send_request(options)
    end

    # Disassociates IP access settings from a web portal.
    #
    # @option params [required, String] :portal_arn
    #   The ARN of the web portal.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_ip_access_settings({
    #     portal_arn: "ARN", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DisassociateIpAccessSettings AWS API Documentation
    #
    # @overload disassociate_ip_access_settings(params = {})
    # @param [Hash] params ({})
    def disassociate_ip_access_settings(params = {}, options = {})
      req = build_request(:disassociate_ip_access_settings, params)
      req.send_request(options)
    end

    # Disassociates network settings from a web portal.
    #
    # @option params [required, String] :portal_arn
    #   The ARN of the web portal.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_network_settings({
    #     portal_arn: "ARN", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DisassociateNetworkSettings AWS API Documentation
    #
    # @overload disassociate_network_settings(params = {})
    # @param [Hash] params ({})
    def disassociate_network_settings(params = {}, options = {})
      req = build_request(:disassociate_network_settings, params)
      req.send_request(options)
    end

    # Disassociates a session logger from a portal.
    #
    # @option params [required, String] :portal_arn
    #   The ARN of the portal to disassociate from the a session logger.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Disassociate Session Logger from Portal
    #
    #   # Removes the association between a session logger and a portal
    #
    #   resp = client.disassociate_session_logger({
    #     portal_arn: "arn:aws:workspaces-web:us-west-2:123456789012:portal/12345678-1234-1234-1234-123456789012", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_session_logger({
    #     portal_arn: "ARN", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DisassociateSessionLogger AWS API Documentation
    #
    # @overload disassociate_session_logger(params = {})
    # @param [Hash] params ({})
    def disassociate_session_logger(params = {}, options = {})
      req = build_request(:disassociate_session_logger, params)
      req.send_request(options)
    end

    # Disassociates a trust store from a web portal.
    #
    # @option params [required, String] :portal_arn
    #   The ARN of the web portal.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_trust_store({
    #     portal_arn: "ARN", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DisassociateTrustStore AWS API Documentation
    #
    # @overload disassociate_trust_store(params = {})
    # @param [Hash] params ({})
    def disassociate_trust_store(params = {}, options = {})
      req = build_request(:disassociate_trust_store, params)
      req.send_request(options)
    end

    # Disassociates user access logging settings from a web portal.
    #
    # @option params [required, String] :portal_arn
    #   The ARN of the web portal.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_user_access_logging_settings({
    #     portal_arn: "ARN", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DisassociateUserAccessLoggingSettings AWS API Documentation
    #
    # @overload disassociate_user_access_logging_settings(params = {})
    # @param [Hash] params ({})
    def disassociate_user_access_logging_settings(params = {}, options = {})
      req = build_request(:disassociate_user_access_logging_settings, params)
      req.send_request(options)
    end

    # Disassociates user settings from a web portal.
    #
    # @option params [required, String] :portal_arn
    #   The ARN of the web portal.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_user_settings({
    #     portal_arn: "ARN", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/DisassociateUserSettings AWS API Documentation
    #
    # @overload disassociate_user_settings(params = {})
    # @param [Hash] params ({})
    def disassociate_user_settings(params = {}, options = {})
      req = build_request(:disassociate_user_settings, params)
      req.send_request(options)
    end

    # Expires an active secure browser session.
    #
    # @option params [required, String] :portal_id
    #   The ID of the web portal for the session.
    #
    # @option params [required, String] :session_id
    #   The ID of the session to expire.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.expire_session({
    #     portal_id: "PortalId", # required
    #     session_id: "SessionId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ExpireSession AWS API Documentation
    #
    # @overload expire_session(params = {})
    # @param [Hash] params ({})
    def expire_session(params = {}, options = {})
      req = build_request(:expire_session, params)
      req.send_request(options)
    end

    # Gets browser settings.
    #
    # @option params [required, String] :browser_settings_arn
    #   The ARN of the browser settings.
    #
    # @return [Types::GetBrowserSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBrowserSettingsResponse#browser_settings #browser_settings} => Types::BrowserSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_browser_settings({
    #     browser_settings_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.browser_settings.browser_settings_arn #=> String
    #   resp.browser_settings.associated_portal_arns #=> Array
    #   resp.browser_settings.associated_portal_arns[0] #=> String
    #   resp.browser_settings.browser_policy #=> String
    #   resp.browser_settings.customer_managed_key #=> String
    #   resp.browser_settings.additional_encryption_context #=> Hash
    #   resp.browser_settings.additional_encryption_context["StringType"] #=> String
    #   resp.browser_settings.web_content_filtering_policy.blocked_categories #=> Array
    #   resp.browser_settings.web_content_filtering_policy.blocked_categories[0] #=> String, one of "Cults", "Gambling", "Nudity", "Pornography", "SexEducation", "Tasteless", "Violence", "DownloadSites", "ImageSharing", "PeerToPeer", "StreamingMediaAndDownloads", "GenerativeAI", "CriminalActivity", "Hacking", "HateAndIntolerance", "IllegalDrug", "IllegalSoftware", "SchoolCheating", "SelfHarm", "Weapons", "Chat", "Games", "InstantMessaging", "ProfessionalNetwork", "SocialNetworking", "WebBasedEmail", "ParkedDomains"
    #   resp.browser_settings.web_content_filtering_policy.allowed_urls #=> Array
    #   resp.browser_settings.web_content_filtering_policy.allowed_urls[0] #=> String
    #   resp.browser_settings.web_content_filtering_policy.blocked_urls #=> Array
    #   resp.browser_settings.web_content_filtering_policy.blocked_urls[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetBrowserSettings AWS API Documentation
    #
    # @overload get_browser_settings(params = {})
    # @param [Hash] params ({})
    def get_browser_settings(params = {}, options = {})
      req = build_request(:get_browser_settings, params)
      req.send_request(options)
    end

    # Gets the data protection settings.
    #
    # @option params [required, String] :data_protection_settings_arn
    #   The ARN of the data protection settings.
    #
    # @return [Types::GetDataProtectionSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataProtectionSettingsResponse#data_protection_settings #data_protection_settings} => Types::DataProtectionSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_protection_settings({
    #     data_protection_settings_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data_protection_settings.data_protection_settings_arn #=> String
    #   resp.data_protection_settings.inline_redaction_configuration.inline_redaction_patterns #=> Array
    #   resp.data_protection_settings.inline_redaction_configuration.inline_redaction_patterns[0].built_in_pattern_id #=> String
    #   resp.data_protection_settings.inline_redaction_configuration.inline_redaction_patterns[0].custom_pattern.pattern_name #=> String
    #   resp.data_protection_settings.inline_redaction_configuration.inline_redaction_patterns[0].custom_pattern.pattern_regex #=> String
    #   resp.data_protection_settings.inline_redaction_configuration.inline_redaction_patterns[0].custom_pattern.pattern_description #=> String
    #   resp.data_protection_settings.inline_redaction_configuration.inline_redaction_patterns[0].custom_pattern.keyword_regex #=> String
    #   resp.data_protection_settings.inline_redaction_configuration.inline_redaction_patterns[0].redaction_place_holder.redaction_place_holder_type #=> String, one of "CustomText"
    #   resp.data_protection_settings.inline_redaction_configuration.inline_redaction_patterns[0].redaction_place_holder.redaction_place_holder_text #=> String
    #   resp.data_protection_settings.inline_redaction_configuration.inline_redaction_patterns[0].enforced_urls #=> Array
    #   resp.data_protection_settings.inline_redaction_configuration.inline_redaction_patterns[0].enforced_urls[0] #=> String
    #   resp.data_protection_settings.inline_redaction_configuration.inline_redaction_patterns[0].exempt_urls #=> Array
    #   resp.data_protection_settings.inline_redaction_configuration.inline_redaction_patterns[0].exempt_urls[0] #=> String
    #   resp.data_protection_settings.inline_redaction_configuration.inline_redaction_patterns[0].confidence_level #=> Integer
    #   resp.data_protection_settings.inline_redaction_configuration.global_enforced_urls #=> Array
    #   resp.data_protection_settings.inline_redaction_configuration.global_enforced_urls[0] #=> String
    #   resp.data_protection_settings.inline_redaction_configuration.global_exempt_urls #=> Array
    #   resp.data_protection_settings.inline_redaction_configuration.global_exempt_urls[0] #=> String
    #   resp.data_protection_settings.inline_redaction_configuration.global_confidence_level #=> Integer
    #   resp.data_protection_settings.associated_portal_arns #=> Array
    #   resp.data_protection_settings.associated_portal_arns[0] #=> String
    #   resp.data_protection_settings.display_name #=> String
    #   resp.data_protection_settings.description #=> String
    #   resp.data_protection_settings.creation_date #=> Time
    #   resp.data_protection_settings.customer_managed_key #=> String
    #   resp.data_protection_settings.additional_encryption_context #=> Hash
    #   resp.data_protection_settings.additional_encryption_context["StringType"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetDataProtectionSettings AWS API Documentation
    #
    # @overload get_data_protection_settings(params = {})
    # @param [Hash] params ({})
    def get_data_protection_settings(params = {}, options = {})
      req = build_request(:get_data_protection_settings, params)
      req.send_request(options)
    end

    # Gets the identity provider.
    #
    # @option params [required, String] :identity_provider_arn
    #   The ARN of the identity provider.
    #
    # @return [Types::GetIdentityProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIdentityProviderResponse#identity_provider #identity_provider} => Types::IdentityProvider
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_identity_provider({
    #     identity_provider_arn: "SubresourceARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_provider.identity_provider_arn #=> String
    #   resp.identity_provider.identity_provider_name #=> String
    #   resp.identity_provider.identity_provider_type #=> String, one of "SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"
    #   resp.identity_provider.identity_provider_details #=> Hash
    #   resp.identity_provider.identity_provider_details["StringType"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetIdentityProvider AWS API Documentation
    #
    # @overload get_identity_provider(params = {})
    # @param [Hash] params ({})
    def get_identity_provider(params = {}, options = {})
      req = build_request(:get_identity_provider, params)
      req.send_request(options)
    end

    # Gets the IP access settings.
    #
    # @option params [required, String] :ip_access_settings_arn
    #   The ARN of the IP access settings.
    #
    # @return [Types::GetIpAccessSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIpAccessSettingsResponse#ip_access_settings #ip_access_settings} => Types::IpAccessSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ip_access_settings({
    #     ip_access_settings_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ip_access_settings.ip_access_settings_arn #=> String
    #   resp.ip_access_settings.associated_portal_arns #=> Array
    #   resp.ip_access_settings.associated_portal_arns[0] #=> String
    #   resp.ip_access_settings.ip_rules #=> Array
    #   resp.ip_access_settings.ip_rules[0].ip_range #=> String
    #   resp.ip_access_settings.ip_rules[0].description #=> String
    #   resp.ip_access_settings.display_name #=> String
    #   resp.ip_access_settings.description #=> String
    #   resp.ip_access_settings.creation_date #=> Time
    #   resp.ip_access_settings.customer_managed_key #=> String
    #   resp.ip_access_settings.additional_encryption_context #=> Hash
    #   resp.ip_access_settings.additional_encryption_context["StringType"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetIpAccessSettings AWS API Documentation
    #
    # @overload get_ip_access_settings(params = {})
    # @param [Hash] params ({})
    def get_ip_access_settings(params = {}, options = {})
      req = build_request(:get_ip_access_settings, params)
      req.send_request(options)
    end

    # Gets the network settings.
    #
    # @option params [required, String] :network_settings_arn
    #   The ARN of the network settings.
    #
    # @return [Types::GetNetworkSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNetworkSettingsResponse#network_settings #network_settings} => Types::NetworkSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_network_settings({
    #     network_settings_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.network_settings.network_settings_arn #=> String
    #   resp.network_settings.associated_portal_arns #=> Array
    #   resp.network_settings.associated_portal_arns[0] #=> String
    #   resp.network_settings.vpc_id #=> String
    #   resp.network_settings.subnet_ids #=> Array
    #   resp.network_settings.subnet_ids[0] #=> String
    #   resp.network_settings.security_group_ids #=> Array
    #   resp.network_settings.security_group_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetNetworkSettings AWS API Documentation
    #
    # @overload get_network_settings(params = {})
    # @param [Hash] params ({})
    def get_network_settings(params = {}, options = {})
      req = build_request(:get_network_settings, params)
      req.send_request(options)
    end

    # Gets the web portal.
    #
    # @option params [required, String] :portal_arn
    #   The ARN of the web portal.
    #
    # @return [Types::GetPortalResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPortalResponse#portal #portal} => Types::Portal
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_portal({
    #     portal_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.portal.portal_arn #=> String
    #   resp.portal.renderer_type #=> String, one of "AppStream"
    #   resp.portal.browser_type #=> String, one of "Chrome"
    #   resp.portal.portal_status #=> String, one of "Incomplete", "Pending", "Active"
    #   resp.portal.portal_endpoint #=> String
    #   resp.portal.display_name #=> String
    #   resp.portal.creation_date #=> Time
    #   resp.portal.browser_settings_arn #=> String
    #   resp.portal.data_protection_settings_arn #=> String
    #   resp.portal.user_settings_arn #=> String
    #   resp.portal.network_settings_arn #=> String
    #   resp.portal.session_logger_arn #=> String
    #   resp.portal.trust_store_arn #=> String
    #   resp.portal.status_reason #=> String
    #   resp.portal.user_access_logging_settings_arn #=> String
    #   resp.portal.authentication_type #=> String, one of "Standard", "IAM_Identity_Center"
    #   resp.portal.ip_access_settings_arn #=> String
    #   resp.portal.customer_managed_key #=> String
    #   resp.portal.additional_encryption_context #=> Hash
    #   resp.portal.additional_encryption_context["StringType"] #=> String
    #   resp.portal.instance_type #=> String, one of "standard.regular", "standard.large", "standard.xlarge"
    #   resp.portal.max_concurrent_sessions #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetPortal AWS API Documentation
    #
    # @overload get_portal(params = {})
    # @param [Hash] params ({})
    def get_portal(params = {}, options = {})
      req = build_request(:get_portal, params)
      req.send_request(options)
    end

    # Gets the service provider metadata.
    #
    # @option params [required, String] :portal_arn
    #   The ARN of the web portal.
    #
    # @return [Types::GetPortalServiceProviderMetadataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPortalServiceProviderMetadataResponse#portal_arn #portal_arn} => String
    #   * {Types::GetPortalServiceProviderMetadataResponse#service_provider_saml_metadata #service_provider_saml_metadata} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_portal_service_provider_metadata({
    #     portal_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.portal_arn #=> String
    #   resp.service_provider_saml_metadata #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetPortalServiceProviderMetadata AWS API Documentation
    #
    # @overload get_portal_service_provider_metadata(params = {})
    # @param [Hash] params ({})
    def get_portal_service_provider_metadata(params = {}, options = {})
      req = build_request(:get_portal_service_provider_metadata, params)
      req.send_request(options)
    end

    # Gets information for a secure browser session.
    #
    # @option params [required, String] :portal_id
    #   The ID of the web portal for the session.
    #
    # @option params [required, String] :session_id
    #   The ID of the session.
    #
    # @return [Types::GetSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSessionResponse#session #session} => Types::Session
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_session({
    #     portal_id: "PortalId", # required
    #     session_id: "SessionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.session.portal_arn #=> String
    #   resp.session.session_id #=> String
    #   resp.session.username #=> String
    #   resp.session.client_ip_addresses #=> Array
    #   resp.session.client_ip_addresses[0] #=> String
    #   resp.session.status #=> String, one of "Active", "Terminated"
    #   resp.session.start_time #=> Time
    #   resp.session.end_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetSession AWS API Documentation
    #
    # @overload get_session(params = {})
    # @param [Hash] params ({})
    def get_session(params = {}, options = {})
      req = build_request(:get_session, params)
      req.send_request(options)
    end

    # Gets details about a specific session logger resource.
    #
    # @option params [required, String] :session_logger_arn
    #   The ARN of the session logger.
    #
    # @return [Types::GetSessionLoggerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSessionLoggerResponse#session_logger #session_logger} => Types::SessionLogger
    #
    #
    # @example Example: Get Session Logger with All Events
    #
    #   # Retrieves a session logger configured for all events
    #
    #   resp = client.get_session_logger({
    #     session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/12345678-1234-1234-1234-123456789012", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     session_logger: {
    #       associated_portal_arns: [
    #         "arn:aws:workspaces-web:us-west-2:123456789012:portal/87654321-4321-4321-4321-210987654321", 
    #       ], 
    #       creation_date: Time.parse("2024-01-15T10:30:00Z"), 
    #       display_name: "Session Logger with All Events", 
    #       event_filter: {
    #         all: {
    #         }, 
    #       }, 
    #       log_configuration: {
    #         s3: {
    #           bucket: "my-session-logs-bucket-1", 
    #           bucket_owner: "123456789012", 
    #           folder_structure: "Flat", 
    #           key_prefix: "session-logs/all/events", 
    #           log_file_format: "Json", 
    #         }, 
    #       }, 
    #       session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/12345678-1234-1234-1234-123456789012", 
    #     }, 
    #   }
    #
    # @example Example: Get Session Logger with Specific Events
    #
    #   # Retrieves a session logger configured for specific events
    #
    #   resp = client.get_session_logger({
    #     session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/87654321-4321-4321-4321-210987654321", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     session_logger: {
    #       additional_encryption_context: {
    #         "EncryptionContextKey" => "EncryptionContextValue", 
    #       }, 
    #       creation_date: Time.parse("2024-01-15T14:45:00Z"), 
    #       customer_managed_key: "arn:aws:kms:us-west-2:123456789012:key/12345678-1234-1234-1234-123456789012", 
    #       display_name: "Session Logger with Each Events", 
    #       event_filter: {
    #         include: [
    #           "SessionStart", 
    #           "SessionEnd", 
    #           "UrlLoad", 
    #           "WebsiteInteract", 
    #         ], 
    #       }, 
    #       log_configuration: {
    #         s3: {
    #           bucket: "my-session-logs-bucket-2", 
    #           bucket_owner: "123456789012", 
    #           folder_structure: "NestedByDate", 
    #           key_prefix: "session-logs/each/event", 
    #           log_file_format: "JSONLines", 
    #         }, 
    #       }, 
    #       session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/87654321-4321-4321-4321-210987654321", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_session_logger({
    #     session_logger_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.session_logger.session_logger_arn #=> String
    #   resp.session_logger.event_filter.include #=> Array
    #   resp.session_logger.event_filter.include[0] #=> String, one of "WebsiteInteract", "FileDownloadFromSecureBrowserToRemoteDisk", "FileTransferFromRemoteToLocalDisk", "FileTransferFromLocalToRemoteDisk", "FileUploadFromRemoteDiskToSecureBrowser", "ContentPasteToWebsite", "ContentTransferFromLocalToRemoteClipboard", "ContentCopyFromWebsite", "UrlLoad", "TabOpen", "TabClose", "PrintJobSubmit", "SessionConnect", "SessionStart", "SessionDisconnect", "SessionEnd", "UrlBlockByContentFilter"
    #   resp.session_logger.log_configuration.s3.bucket #=> String
    #   resp.session_logger.log_configuration.s3.key_prefix #=> String
    #   resp.session_logger.log_configuration.s3.bucket_owner #=> String
    #   resp.session_logger.log_configuration.s3.log_file_format #=> String, one of "JSONLines", "Json"
    #   resp.session_logger.log_configuration.s3.folder_structure #=> String, one of "Flat", "NestedByDate"
    #   resp.session_logger.customer_managed_key #=> String
    #   resp.session_logger.additional_encryption_context #=> Hash
    #   resp.session_logger.additional_encryption_context["StringType"] #=> String
    #   resp.session_logger.associated_portal_arns #=> Array
    #   resp.session_logger.associated_portal_arns[0] #=> String
    #   resp.session_logger.display_name #=> String
    #   resp.session_logger.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetSessionLogger AWS API Documentation
    #
    # @overload get_session_logger(params = {})
    # @param [Hash] params ({})
    def get_session_logger(params = {}, options = {})
      req = build_request(:get_session_logger, params)
      req.send_request(options)
    end

    # Gets the trust store.
    #
    # @option params [required, String] :trust_store_arn
    #   The ARN of the trust store.
    #
    # @return [Types::GetTrustStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTrustStoreResponse#trust_store #trust_store} => Types::TrustStore
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_trust_store({
    #     trust_store_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.trust_store.associated_portal_arns #=> Array
    #   resp.trust_store.associated_portal_arns[0] #=> String
    #   resp.trust_store.trust_store_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetTrustStore AWS API Documentation
    #
    # @overload get_trust_store(params = {})
    # @param [Hash] params ({})
    def get_trust_store(params = {}, options = {})
      req = build_request(:get_trust_store, params)
      req.send_request(options)
    end

    # Gets the trust store certificate.
    #
    # @option params [required, String] :trust_store_arn
    #   The ARN of the trust store certificate.
    #
    # @option params [required, String] :thumbprint
    #   The thumbprint of the trust store certificate.
    #
    # @return [Types::GetTrustStoreCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTrustStoreCertificateResponse#trust_store_arn #trust_store_arn} => String
    #   * {Types::GetTrustStoreCertificateResponse#certificate #certificate} => Types::Certificate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_trust_store_certificate({
    #     trust_store_arn: "ARN", # required
    #     thumbprint: "CertificateThumbprint", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.trust_store_arn #=> String
    #   resp.certificate.thumbprint #=> String
    #   resp.certificate.subject #=> String
    #   resp.certificate.issuer #=> String
    #   resp.certificate.not_valid_before #=> Time
    #   resp.certificate.not_valid_after #=> Time
    #   resp.certificate.body #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetTrustStoreCertificate AWS API Documentation
    #
    # @overload get_trust_store_certificate(params = {})
    # @param [Hash] params ({})
    def get_trust_store_certificate(params = {}, options = {})
      req = build_request(:get_trust_store_certificate, params)
      req.send_request(options)
    end

    # Gets user access logging settings.
    #
    # @option params [required, String] :user_access_logging_settings_arn
    #   The ARN of the user access logging settings.
    #
    # @return [Types::GetUserAccessLoggingSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserAccessLoggingSettingsResponse#user_access_logging_settings #user_access_logging_settings} => Types::UserAccessLoggingSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user_access_logging_settings({
    #     user_access_logging_settings_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_access_logging_settings.user_access_logging_settings_arn #=> String
    #   resp.user_access_logging_settings.associated_portal_arns #=> Array
    #   resp.user_access_logging_settings.associated_portal_arns[0] #=> String
    #   resp.user_access_logging_settings.kinesis_stream_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetUserAccessLoggingSettings AWS API Documentation
    #
    # @overload get_user_access_logging_settings(params = {})
    # @param [Hash] params ({})
    def get_user_access_logging_settings(params = {}, options = {})
      req = build_request(:get_user_access_logging_settings, params)
      req.send_request(options)
    end

    # Gets user settings.
    #
    # @option params [required, String] :user_settings_arn
    #   The ARN of the user settings.
    #
    # @return [Types::GetUserSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserSettingsResponse#user_settings #user_settings} => Types::UserSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user_settings({
    #     user_settings_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_settings.user_settings_arn #=> String
    #   resp.user_settings.associated_portal_arns #=> Array
    #   resp.user_settings.associated_portal_arns[0] #=> String
    #   resp.user_settings.copy_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings.paste_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings.download_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings.upload_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings.print_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings.disconnect_timeout_in_minutes #=> Integer
    #   resp.user_settings.idle_disconnect_timeout_in_minutes #=> Integer
    #   resp.user_settings.cookie_synchronization_configuration.allowlist #=> Array
    #   resp.user_settings.cookie_synchronization_configuration.allowlist[0].domain #=> String
    #   resp.user_settings.cookie_synchronization_configuration.allowlist[0].name #=> String
    #   resp.user_settings.cookie_synchronization_configuration.allowlist[0].path #=> String
    #   resp.user_settings.cookie_synchronization_configuration.blocklist #=> Array
    #   resp.user_settings.cookie_synchronization_configuration.blocklist[0].domain #=> String
    #   resp.user_settings.cookie_synchronization_configuration.blocklist[0].name #=> String
    #   resp.user_settings.cookie_synchronization_configuration.blocklist[0].path #=> String
    #   resp.user_settings.customer_managed_key #=> String
    #   resp.user_settings.additional_encryption_context #=> Hash
    #   resp.user_settings.additional_encryption_context["StringType"] #=> String
    #   resp.user_settings.deep_link_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings.toolbar_configuration.toolbar_type #=> String, one of "Floating", "Docked"
    #   resp.user_settings.toolbar_configuration.visual_mode #=> String, one of "Dark", "Light"
    #   resp.user_settings.toolbar_configuration.hidden_toolbar_items #=> Array
    #   resp.user_settings.toolbar_configuration.hidden_toolbar_items[0] #=> String, one of "Windows", "DualMonitor", "FullScreen", "Webcam", "Microphone"
    #   resp.user_settings.toolbar_configuration.max_display_resolution #=> String, one of "size4096X2160", "size3840X2160", "size3440X1440", "size2560X1440", "size1920X1080", "size1280X720", "size1024X768", "size800X600"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetUserSettings AWS API Documentation
    #
    # @overload get_user_settings(params = {})
    # @param [Hash] params ({})
    def get_user_settings(params = {}, options = {})
      req = build_request(:get_user_settings, params)
      req.send_request(options)
    end

    # Retrieves a list of browser settings.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be included in the next page.
    #
    # @return [Types::ListBrowserSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBrowserSettingsResponse#browser_settings #browser_settings} => Array&lt;Types::BrowserSettingsSummary&gt;
    #   * {Types::ListBrowserSettingsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_browser_settings({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.browser_settings #=> Array
    #   resp.browser_settings[0].browser_settings_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListBrowserSettings AWS API Documentation
    #
    # @overload list_browser_settings(params = {})
    # @param [Hash] params ({})
    def list_browser_settings(params = {}, options = {})
      req = build_request(:list_browser_settings, params)
      req.send_request(options)
    end

    # Retrieves a list of data protection settings.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be included in the next page.
    #
    # @return [Types::ListDataProtectionSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataProtectionSettingsResponse#data_protection_settings #data_protection_settings} => Array&lt;Types::DataProtectionSettingsSummary&gt;
    #   * {Types::ListDataProtectionSettingsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_protection_settings({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.data_protection_settings #=> Array
    #   resp.data_protection_settings[0].data_protection_settings_arn #=> String
    #   resp.data_protection_settings[0].display_name #=> String
    #   resp.data_protection_settings[0].description #=> String
    #   resp.data_protection_settings[0].creation_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListDataProtectionSettings AWS API Documentation
    #
    # @overload list_data_protection_settings(params = {})
    # @param [Hash] params ({})
    def list_data_protection_settings(params = {}, options = {})
      req = build_request(:list_data_protection_settings, params)
      req.send_request(options)
    end

    # Retrieves a list of identity providers for a specific web portal.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be included in the next page.
    #
    # @option params [required, String] :portal_arn
    #   The ARN of the web portal.
    #
    # @return [Types::ListIdentityProvidersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIdentityProvidersResponse#next_token #next_token} => String
    #   * {Types::ListIdentityProvidersResponse#identity_providers #identity_providers} => Array&lt;Types::IdentityProviderSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_identity_providers({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     portal_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.identity_providers #=> Array
    #   resp.identity_providers[0].identity_provider_arn #=> String
    #   resp.identity_providers[0].identity_provider_name #=> String
    #   resp.identity_providers[0].identity_provider_type #=> String, one of "SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListIdentityProviders AWS API Documentation
    #
    # @overload list_identity_providers(params = {})
    # @param [Hash] params ({})
    def list_identity_providers(params = {}, options = {})
      req = build_request(:list_identity_providers, params)
      req.send_request(options)
    end

    # Retrieves a list of IP access settings.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be included in the next page.
    #
    # @return [Types::ListIpAccessSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIpAccessSettingsResponse#ip_access_settings #ip_access_settings} => Array&lt;Types::IpAccessSettingsSummary&gt;
    #   * {Types::ListIpAccessSettingsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ip_access_settings({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.ip_access_settings #=> Array
    #   resp.ip_access_settings[0].ip_access_settings_arn #=> String
    #   resp.ip_access_settings[0].display_name #=> String
    #   resp.ip_access_settings[0].description #=> String
    #   resp.ip_access_settings[0].creation_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListIpAccessSettings AWS API Documentation
    #
    # @overload list_ip_access_settings(params = {})
    # @param [Hash] params ({})
    def list_ip_access_settings(params = {}, options = {})
      req = build_request(:list_ip_access_settings, params)
      req.send_request(options)
    end

    # Retrieves a list of network settings.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be included in the next page.
    #
    # @return [Types::ListNetworkSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNetworkSettingsResponse#network_settings #network_settings} => Array&lt;Types::NetworkSettingsSummary&gt;
    #   * {Types::ListNetworkSettingsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_network_settings({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.network_settings #=> Array
    #   resp.network_settings[0].network_settings_arn #=> String
    #   resp.network_settings[0].vpc_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListNetworkSettings AWS API Documentation
    #
    # @overload list_network_settings(params = {})
    # @param [Hash] params ({})
    def list_network_settings(params = {}, options = {})
      req = build_request(:list_network_settings, params)
      req.send_request(options)
    end

    # Retrieves a list or web portals.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be included in the next page.
    #
    # @return [Types::ListPortalsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPortalsResponse#portals #portals} => Array&lt;Types::PortalSummary&gt;
    #   * {Types::ListPortalsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_portals({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.portals #=> Array
    #   resp.portals[0].portal_arn #=> String
    #   resp.portals[0].renderer_type #=> String, one of "AppStream"
    #   resp.portals[0].browser_type #=> String, one of "Chrome"
    #   resp.portals[0].portal_status #=> String, one of "Incomplete", "Pending", "Active"
    #   resp.portals[0].portal_endpoint #=> String
    #   resp.portals[0].display_name #=> String
    #   resp.portals[0].creation_date #=> Time
    #   resp.portals[0].browser_settings_arn #=> String
    #   resp.portals[0].data_protection_settings_arn #=> String
    #   resp.portals[0].user_settings_arn #=> String
    #   resp.portals[0].network_settings_arn #=> String
    #   resp.portals[0].session_logger_arn #=> String
    #   resp.portals[0].trust_store_arn #=> String
    #   resp.portals[0].user_access_logging_settings_arn #=> String
    #   resp.portals[0].authentication_type #=> String, one of "Standard", "IAM_Identity_Center"
    #   resp.portals[0].ip_access_settings_arn #=> String
    #   resp.portals[0].instance_type #=> String, one of "standard.regular", "standard.large", "standard.xlarge"
    #   resp.portals[0].max_concurrent_sessions #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListPortals AWS API Documentation
    #
    # @overload list_portals(params = {})
    # @param [Hash] params ({})
    def list_portals(params = {}, options = {})
      req = build_request(:list_portals, params)
      req.send_request(options)
    end

    # Lists all available session logger resources.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be included in the next page.
    #
    # @return [Types::ListSessionLoggersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSessionLoggersResponse#session_loggers #session_loggers} => Array&lt;Types::SessionLoggerSummary&gt;
    #   * {Types::ListSessionLoggersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List All Session Loggers
    #
    #   # Lists all session loggers in the account without pagination
    #
    #   resp = client.list_session_loggers({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     session_loggers: [
    #       {
    #         creation_date: Time.parse("2024-01-15T10:30:00Z"), 
    #         display_name: "Session Logger with All Events", 
    #         log_configuration: {
    #           s3: {
    #             bucket: "my-session-logs-bucket-1", 
    #             bucket_owner: "123456789012", 
    #             folder_structure: "Flat", 
    #             key_prefix: "session-logs/all/events", 
    #             log_file_format: "Json", 
    #           }, 
    #         }, 
    #         session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/12345678-1234-1234-1234-123456789012", 
    #       }, 
    #       {
    #         creation_date: Time.parse("2024-01-15T14:45:00Z"), 
    #         display_name: "Session Logger with Each Events", 
    #         log_configuration: {
    #           s3: {
    #             bucket: "my-session-logs-bucket-2", 
    #             bucket_owner: "123456789012", 
    #             folder_structure: "NestedByDate", 
    #             key_prefix: "session-logs/each/event", 
    #             log_file_format: "JSONLines", 
    #           }, 
    #         }, 
    #         session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/87654321-4321-4321-4321-210987654321", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: List Session Loggers with Pagination
    #
    #   # Lists session loggers with pagination parameters
    #
    #   resp = client.list_session_loggers({
    #     max_results: 1, 
    #     next_token: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     next_token: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9", 
    #     session_loggers: [
    #       {
    #         creation_date: Time.parse("2024-03-15T12:45:00Z"), 
    #         display_name: "Session Logger Example with Pagination", 
    #         log_configuration: {
    #           s3: {
    #             bucket: "my-session-logs-bucket-3", 
    #             bucket_owner: "123456789012", 
    #             folder_structure: "Flat", 
    #             key_prefix: "session-logs/pagination/example", 
    #             log_file_format: "JSONLines", 
    #           }, 
    #         }, 
    #         session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/11111111-1111-1111-1111-111111111111", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_session_loggers({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.session_loggers #=> Array
    #   resp.session_loggers[0].session_logger_arn #=> String
    #   resp.session_loggers[0].log_configuration.s3.bucket #=> String
    #   resp.session_loggers[0].log_configuration.s3.key_prefix #=> String
    #   resp.session_loggers[0].log_configuration.s3.bucket_owner #=> String
    #   resp.session_loggers[0].log_configuration.s3.log_file_format #=> String, one of "JSONLines", "Json"
    #   resp.session_loggers[0].log_configuration.s3.folder_structure #=> String, one of "Flat", "NestedByDate"
    #   resp.session_loggers[0].display_name #=> String
    #   resp.session_loggers[0].creation_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListSessionLoggers AWS API Documentation
    #
    # @overload list_session_loggers(params = {})
    # @param [Hash] params ({})
    def list_session_loggers(params = {}, options = {})
      req = build_request(:list_session_loggers, params)
      req.send_request(options)
    end

    # Lists information for multiple secure browser sessions from a specific
    # portal.
    #
    # @option params [required, String] :portal_id
    #   The ID of the web portal for the sessions.
    #
    # @option params [String] :username
    #   The username of the session.
    #
    # @option params [String] :session_id
    #   The ID of the session.
    #
    # @option params [String] :sort_by
    #   The method in which the returned sessions should be sorted.
    #
    # @option params [String] :status
    #   The status of the session.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be included in the next page.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #
    # @return [Types::ListSessionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSessionsResponse#sessions #sessions} => Array&lt;Types::SessionSummary&gt;
    #   * {Types::ListSessionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sessions({
    #     portal_id: "PortalId", # required
    #     username: "Username",
    #     session_id: "SessionId",
    #     sort_by: "StartTimeAscending", # accepts StartTimeAscending, StartTimeDescending
    #     status: "Active", # accepts Active, Terminated
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.sessions #=> Array
    #   resp.sessions[0].portal_arn #=> String
    #   resp.sessions[0].session_id #=> String
    #   resp.sessions[0].username #=> String
    #   resp.sessions[0].status #=> String, one of "Active", "Terminated"
    #   resp.sessions[0].start_time #=> Time
    #   resp.sessions[0].end_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListSessions AWS API Documentation
    #
    # @overload list_sessions(params = {})
    # @param [Hash] params ({})
    def list_sessions(params = {}, options = {})
      req = build_request(:list_sessions, params)
      req.send_request(options)
    end

    # Retrieves a list of tags for a resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Retrieves a list of trust store certificates.
    #
    # @option params [required, String] :trust_store_arn
    #   The ARN of the trust store
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be included in the next page.
    #
    # @return [Types::ListTrustStoreCertificatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrustStoreCertificatesResponse#certificate_list #certificate_list} => Array&lt;Types::CertificateSummary&gt;
    #   * {Types::ListTrustStoreCertificatesResponse#trust_store_arn #trust_store_arn} => String
    #   * {Types::ListTrustStoreCertificatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_trust_store_certificates({
    #     trust_store_arn: "ARN", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_list #=> Array
    #   resp.certificate_list[0].thumbprint #=> String
    #   resp.certificate_list[0].subject #=> String
    #   resp.certificate_list[0].issuer #=> String
    #   resp.certificate_list[0].not_valid_before #=> Time
    #   resp.certificate_list[0].not_valid_after #=> Time
    #   resp.trust_store_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListTrustStoreCertificates AWS API Documentation
    #
    # @overload list_trust_store_certificates(params = {})
    # @param [Hash] params ({})
    def list_trust_store_certificates(params = {}, options = {})
      req = build_request(:list_trust_store_certificates, params)
      req.send_request(options)
    end

    # Retrieves a list of trust stores.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be included in the next page.
    #
    # @return [Types::ListTrustStoresResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrustStoresResponse#trust_stores #trust_stores} => Array&lt;Types::TrustStoreSummary&gt;
    #   * {Types::ListTrustStoresResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_trust_stores({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.trust_stores #=> Array
    #   resp.trust_stores[0].trust_store_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListTrustStores AWS API Documentation
    #
    # @overload list_trust_stores(params = {})
    # @param [Hash] params ({})
    def list_trust_stores(params = {}, options = {})
      req = build_request(:list_trust_stores, params)
      req.send_request(options)
    end

    # Retrieves a list of user access logging settings.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be included in the next page.
    #
    # @return [Types::ListUserAccessLoggingSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUserAccessLoggingSettingsResponse#user_access_logging_settings #user_access_logging_settings} => Array&lt;Types::UserAccessLoggingSettingsSummary&gt;
    #   * {Types::ListUserAccessLoggingSettingsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_access_logging_settings({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.user_access_logging_settings #=> Array
    #   resp.user_access_logging_settings[0].user_access_logging_settings_arn #=> String
    #   resp.user_access_logging_settings[0].kinesis_stream_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListUserAccessLoggingSettings AWS API Documentation
    #
    # @overload list_user_access_logging_settings(params = {})
    # @param [Hash] params ({})
    def list_user_access_logging_settings(params = {}, options = {})
      req = build_request(:list_user_access_logging_settings, params)
      req.send_request(options)
    end

    # Retrieves a list of user settings.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be included in the next page.
    #
    # @return [Types::ListUserSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUserSettingsResponse#user_settings #user_settings} => Array&lt;Types::UserSettingsSummary&gt;
    #   * {Types::ListUserSettingsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_settings({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.user_settings #=> Array
    #   resp.user_settings[0].user_settings_arn #=> String
    #   resp.user_settings[0].copy_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings[0].paste_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings[0].download_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings[0].upload_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings[0].print_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings[0].disconnect_timeout_in_minutes #=> Integer
    #   resp.user_settings[0].idle_disconnect_timeout_in_minutes #=> Integer
    #   resp.user_settings[0].cookie_synchronization_configuration.allowlist #=> Array
    #   resp.user_settings[0].cookie_synchronization_configuration.allowlist[0].domain #=> String
    #   resp.user_settings[0].cookie_synchronization_configuration.allowlist[0].name #=> String
    #   resp.user_settings[0].cookie_synchronization_configuration.allowlist[0].path #=> String
    #   resp.user_settings[0].cookie_synchronization_configuration.blocklist #=> Array
    #   resp.user_settings[0].cookie_synchronization_configuration.blocklist[0].domain #=> String
    #   resp.user_settings[0].cookie_synchronization_configuration.blocklist[0].name #=> String
    #   resp.user_settings[0].cookie_synchronization_configuration.blocklist[0].path #=> String
    #   resp.user_settings[0].deep_link_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings[0].toolbar_configuration.toolbar_type #=> String, one of "Floating", "Docked"
    #   resp.user_settings[0].toolbar_configuration.visual_mode #=> String, one of "Dark", "Light"
    #   resp.user_settings[0].toolbar_configuration.hidden_toolbar_items #=> Array
    #   resp.user_settings[0].toolbar_configuration.hidden_toolbar_items[0] #=> String, one of "Windows", "DualMonitor", "FullScreen", "Webcam", "Microphone"
    #   resp.user_settings[0].toolbar_configuration.max_display_resolution #=> String, one of "size4096X2160", "size3840X2160", "size3440X1440", "size2560X1440", "size1920X1080", "size1280X720", "size1024X768", "size800X600"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListUserSettings AWS API Documentation
    #
    # @overload list_user_settings(params = {})
    # @param [Hash] params ({})
    def list_user_settings(params = {}, options = {})
      req = build_request(:list_user_settings, params)
      req.send_request(options)
    end

    # Adds or overwrites one or more tags for the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags of the resource.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token returns the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ARN", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ARN", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates browser settings.
    #
    # @option params [required, String] :browser_settings_arn
    #   The ARN of the browser settings.
    #
    # @option params [String] :browser_policy
    #   A JSON string containing Chrome Enterprise policies that will be
    #   applied to all streaming sessions.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token return the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::WebContentFilteringPolicy] :web_content_filtering_policy
    #   The policy that specifies which URLs end users are allowed to access
    #   or which URLs or domain categories they are restricted from accessing
    #   for enhanced security.
    #
    # @return [Types::UpdateBrowserSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBrowserSettingsResponse#browser_settings #browser_settings} => Types::BrowserSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_browser_settings({
    #     browser_settings_arn: "ARN", # required
    #     browser_policy: "BrowserPolicy",
    #     client_token: "ClientToken",
    #     web_content_filtering_policy: {
    #       blocked_categories: ["Cults"], # accepts Cults, Gambling, Nudity, Pornography, SexEducation, Tasteless, Violence, DownloadSites, ImageSharing, PeerToPeer, StreamingMediaAndDownloads, GenerativeAI, CriminalActivity, Hacking, HateAndIntolerance, IllegalDrug, IllegalSoftware, SchoolCheating, SelfHarm, Weapons, Chat, Games, InstantMessaging, ProfessionalNetwork, SocialNetworking, WebBasedEmail, ParkedDomains
    #       allowed_urls: ["UrlPattern"],
    #       blocked_urls: ["UrlPattern"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.browser_settings.browser_settings_arn #=> String
    #   resp.browser_settings.associated_portal_arns #=> Array
    #   resp.browser_settings.associated_portal_arns[0] #=> String
    #   resp.browser_settings.browser_policy #=> String
    #   resp.browser_settings.customer_managed_key #=> String
    #   resp.browser_settings.additional_encryption_context #=> Hash
    #   resp.browser_settings.additional_encryption_context["StringType"] #=> String
    #   resp.browser_settings.web_content_filtering_policy.blocked_categories #=> Array
    #   resp.browser_settings.web_content_filtering_policy.blocked_categories[0] #=> String, one of "Cults", "Gambling", "Nudity", "Pornography", "SexEducation", "Tasteless", "Violence", "DownloadSites", "ImageSharing", "PeerToPeer", "StreamingMediaAndDownloads", "GenerativeAI", "CriminalActivity", "Hacking", "HateAndIntolerance", "IllegalDrug", "IllegalSoftware", "SchoolCheating", "SelfHarm", "Weapons", "Chat", "Games", "InstantMessaging", "ProfessionalNetwork", "SocialNetworking", "WebBasedEmail", "ParkedDomains"
    #   resp.browser_settings.web_content_filtering_policy.allowed_urls #=> Array
    #   resp.browser_settings.web_content_filtering_policy.allowed_urls[0] #=> String
    #   resp.browser_settings.web_content_filtering_policy.blocked_urls #=> Array
    #   resp.browser_settings.web_content_filtering_policy.blocked_urls[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UpdateBrowserSettings AWS API Documentation
    #
    # @overload update_browser_settings(params = {})
    # @param [Hash] params ({})
    def update_browser_settings(params = {}, options = {})
      req = build_request(:update_browser_settings, params)
      req.send_request(options)
    end

    # Updates data protection settings.
    #
    # @option params [required, String] :data_protection_settings_arn
    #   The ARN of the data protection settings.
    #
    # @option params [Types::InlineRedactionConfiguration] :inline_redaction_configuration
    #   The inline redaction configuration of the data protection settings
    #   that will be applied to all sessions.
    #
    # @option params [String] :display_name
    #   The display name of the data protection settings.
    #
    # @option params [String] :description
    #   The description of the data protection settings.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token return the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateDataProtectionSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDataProtectionSettingsResponse#data_protection_settings #data_protection_settings} => Types::DataProtectionSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_protection_settings({
    #     data_protection_settings_arn: "ARN", # required
    #     inline_redaction_configuration: {
    #       inline_redaction_patterns: [ # required
    #         {
    #           built_in_pattern_id: "BuiltInPatternId",
    #           custom_pattern: {
    #             pattern_name: "PatternName", # required
    #             pattern_regex: "Regex", # required
    #             pattern_description: "DescriptionSafe",
    #             keyword_regex: "Regex",
    #           },
    #           redaction_place_holder: { # required
    #             redaction_place_holder_type: "CustomText", # required, accepts CustomText
    #             redaction_place_holder_text: "RedactionPlaceHolderText",
    #           },
    #           enforced_urls: ["InlineRedactionUrl"],
    #           exempt_urls: ["InlineRedactionUrl"],
    #           confidence_level: 1,
    #         },
    #       ],
    #       global_enforced_urls: ["InlineRedactionUrl"],
    #       global_exempt_urls: ["InlineRedactionUrl"],
    #       global_confidence_level: 1,
    #     },
    #     display_name: "DisplayNameSafe",
    #     description: "DescriptionSafe",
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.data_protection_settings.data_protection_settings_arn #=> String
    #   resp.data_protection_settings.inline_redaction_configuration.inline_redaction_patterns #=> Array
    #   resp.data_protection_settings.inline_redaction_configuration.inline_redaction_patterns[0].built_in_pattern_id #=> String
    #   resp.data_protection_settings.inline_redaction_configuration.inline_redaction_patterns[0].custom_pattern.pattern_name #=> String
    #   resp.data_protection_settings.inline_redaction_configuration.inline_redaction_patterns[0].custom_pattern.pattern_regex #=> String
    #   resp.data_protection_settings.inline_redaction_configuration.inline_redaction_patterns[0].custom_pattern.pattern_description #=> String
    #   resp.data_protection_settings.inline_redaction_configuration.inline_redaction_patterns[0].custom_pattern.keyword_regex #=> String
    #   resp.data_protection_settings.inline_redaction_configuration.inline_redaction_patterns[0].redaction_place_holder.redaction_place_holder_type #=> String, one of "CustomText"
    #   resp.data_protection_settings.inline_redaction_configuration.inline_redaction_patterns[0].redaction_place_holder.redaction_place_holder_text #=> String
    #   resp.data_protection_settings.inline_redaction_configuration.inline_redaction_patterns[0].enforced_urls #=> Array
    #   resp.data_protection_settings.inline_redaction_configuration.inline_redaction_patterns[0].enforced_urls[0] #=> String
    #   resp.data_protection_settings.inline_redaction_configuration.inline_redaction_patterns[0].exempt_urls #=> Array
    #   resp.data_protection_settings.inline_redaction_configuration.inline_redaction_patterns[0].exempt_urls[0] #=> String
    #   resp.data_protection_settings.inline_redaction_configuration.inline_redaction_patterns[0].confidence_level #=> Integer
    #   resp.data_protection_settings.inline_redaction_configuration.global_enforced_urls #=> Array
    #   resp.data_protection_settings.inline_redaction_configuration.global_enforced_urls[0] #=> String
    #   resp.data_protection_settings.inline_redaction_configuration.global_exempt_urls #=> Array
    #   resp.data_protection_settings.inline_redaction_configuration.global_exempt_urls[0] #=> String
    #   resp.data_protection_settings.inline_redaction_configuration.global_confidence_level #=> Integer
    #   resp.data_protection_settings.associated_portal_arns #=> Array
    #   resp.data_protection_settings.associated_portal_arns[0] #=> String
    #   resp.data_protection_settings.display_name #=> String
    #   resp.data_protection_settings.description #=> String
    #   resp.data_protection_settings.creation_date #=> Time
    #   resp.data_protection_settings.customer_managed_key #=> String
    #   resp.data_protection_settings.additional_encryption_context #=> Hash
    #   resp.data_protection_settings.additional_encryption_context["StringType"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UpdateDataProtectionSettings AWS API Documentation
    #
    # @overload update_data_protection_settings(params = {})
    # @param [Hash] params ({})
    def update_data_protection_settings(params = {}, options = {})
      req = build_request(:update_data_protection_settings, params)
      req.send_request(options)
    end

    # Updates the identity provider.
    #
    # @option params [required, String] :identity_provider_arn
    #   The ARN of the identity provider.
    #
    # @option params [String] :identity_provider_name
    #   The name of the identity provider.
    #
    # @option params [String] :identity_provider_type
    #   The type of the identity provider.
    #
    # @option params [Hash<String,String>] :identity_provider_details
    #   The details of the identity provider. The following list describes the
    #   provider detail keys for each identity provider type.
    #
    #   * For Google and Login with Amazon:
    #
    #     * `client_id`
    #
    #     * `client_secret`
    #
    #     * `authorize_scopes`
    #   * For Facebook:
    #
    #     * `client_id`
    #
    #     * `client_secret`
    #
    #     * `authorize_scopes`
    #
    #     * `api_version`
    #   * For Sign in with Apple:
    #
    #     * `client_id`
    #
    #     * `team_id`
    #
    #     * `key_id`
    #
    #     * `private_key`
    #
    #     * `authorize_scopes`
    #   * For OIDC providers:
    #
    #     * `client_id`
    #
    #     * `client_secret`
    #
    #     * `attributes_request_method`
    #
    #     * `oidc_issuer`
    #
    #     * `authorize_scopes`
    #
    #     * `authorize_url` *if not available from discovery URL specified by
    #       `oidc_issuer` key*
    #
    #     * `token_url` *if not available from discovery URL specified by
    #       `oidc_issuer` key*
    #
    #     * `attributes_url` *if not available from discovery URL specified by
    #       `oidc_issuer` key*
    #
    #     * `jwks_uri` *if not available from discovery URL specified by
    #       `oidc_issuer` key*
    #   * For SAML providers:
    #
    #     * `MetadataFile` OR `MetadataURL`
    #
    #     * `IDPSignout` (boolean) *optional*
    #
    #     * `IDPInit` (boolean) *optional*
    #
    #     * `RequestSigningAlgorithm` (string) *optional* - Only accepts
    #       `rsa-sha256`
    #
    #     * `EncryptedResponses` (boolean) *optional*
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token return the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateIdentityProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIdentityProviderResponse#identity_provider #identity_provider} => Types::IdentityProvider
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_identity_provider({
    #     identity_provider_arn: "SubresourceARN", # required
    #     identity_provider_name: "IdentityProviderName",
    #     identity_provider_type: "SAML", # accepts SAML, Facebook, Google, LoginWithAmazon, SignInWithApple, OIDC
    #     identity_provider_details: {
    #       "StringType" => "StringType",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_provider.identity_provider_arn #=> String
    #   resp.identity_provider.identity_provider_name #=> String
    #   resp.identity_provider.identity_provider_type #=> String, one of "SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"
    #   resp.identity_provider.identity_provider_details #=> Hash
    #   resp.identity_provider.identity_provider_details["StringType"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UpdateIdentityProvider AWS API Documentation
    #
    # @overload update_identity_provider(params = {})
    # @param [Hash] params ({})
    def update_identity_provider(params = {}, options = {})
      req = build_request(:update_identity_provider, params)
      req.send_request(options)
    end

    # Updates IP access settings.
    #
    # @option params [required, String] :ip_access_settings_arn
    #   The ARN of the IP access settings.
    #
    # @option params [String] :display_name
    #   The display name of the IP access settings.
    #
    # @option params [String] :description
    #   The description of the IP access settings.
    #
    # @option params [Array<Types::IpRule>] :ip_rules
    #   The updated IP rules of the IP access settings.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token return the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateIpAccessSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIpAccessSettingsResponse#ip_access_settings #ip_access_settings} => Types::IpAccessSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ip_access_settings({
    #     ip_access_settings_arn: "ARN", # required
    #     display_name: "DisplayName",
    #     description: "Description",
    #     ip_rules: [
    #       {
    #         ip_range: "IpRange", # required
    #         description: "Description",
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.ip_access_settings.ip_access_settings_arn #=> String
    #   resp.ip_access_settings.associated_portal_arns #=> Array
    #   resp.ip_access_settings.associated_portal_arns[0] #=> String
    #   resp.ip_access_settings.ip_rules #=> Array
    #   resp.ip_access_settings.ip_rules[0].ip_range #=> String
    #   resp.ip_access_settings.ip_rules[0].description #=> String
    #   resp.ip_access_settings.display_name #=> String
    #   resp.ip_access_settings.description #=> String
    #   resp.ip_access_settings.creation_date #=> Time
    #   resp.ip_access_settings.customer_managed_key #=> String
    #   resp.ip_access_settings.additional_encryption_context #=> Hash
    #   resp.ip_access_settings.additional_encryption_context["StringType"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UpdateIpAccessSettings AWS API Documentation
    #
    # @overload update_ip_access_settings(params = {})
    # @param [Hash] params ({})
    def update_ip_access_settings(params = {}, options = {})
      req = build_request(:update_ip_access_settings, params)
      req.send_request(options)
    end

    # Updates network settings.
    #
    # @option params [required, String] :network_settings_arn
    #   The ARN of the network settings.
    #
    # @option params [String] :vpc_id
    #   The VPC that streaming instances will connect to.
    #
    # @option params [Array<String>] :subnet_ids
    #   The subnets in which network interfaces are created to connect
    #   streaming instances to your VPC. At least two of these subnets must be
    #   in different availability zones.
    #
    # @option params [Array<String>] :security_group_ids
    #   One or more security groups used to control access from streaming
    #   instances to your VPC.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token return the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateNetworkSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateNetworkSettingsResponse#network_settings #network_settings} => Types::NetworkSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_network_settings({
    #     network_settings_arn: "ARN", # required
    #     vpc_id: "VpcId",
    #     subnet_ids: ["SubnetId"],
    #     security_group_ids: ["SecurityGroupId"],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.network_settings.network_settings_arn #=> String
    #   resp.network_settings.associated_portal_arns #=> Array
    #   resp.network_settings.associated_portal_arns[0] #=> String
    #   resp.network_settings.vpc_id #=> String
    #   resp.network_settings.subnet_ids #=> Array
    #   resp.network_settings.subnet_ids[0] #=> String
    #   resp.network_settings.security_group_ids #=> Array
    #   resp.network_settings.security_group_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UpdateNetworkSettings AWS API Documentation
    #
    # @overload update_network_settings(params = {})
    # @param [Hash] params ({})
    def update_network_settings(params = {}, options = {})
      req = build_request(:update_network_settings, params)
      req.send_request(options)
    end

    # Updates a web portal.
    #
    # @option params [required, String] :portal_arn
    #   The ARN of the web portal.
    #
    # @option params [String] :display_name
    #   The name of the web portal. This is not visible to users who log into
    #   the web portal.
    #
    # @option params [String] :authentication_type
    #   The type of authentication integration points used when signing into
    #   the web portal. Defaults to `Standard`.
    #
    #   `Standard` web portals are authenticated directly through your
    #   identity provider. You need to call `CreateIdentityProvider` to
    #   integrate your identity provider with your web portal. User and group
    #   access to your web portal is controlled through your identity
    #   provider.
    #
    #   `IAM Identity Center` web portals are authenticated through IAM
    #   Identity Center. Identity sources (including external identity
    #   provider integration), plus user and group access to your web portal,
    #   can be configured in the IAM Identity Center.
    #
    # @option params [String] :instance_type
    #   The type and resources of the underlying instance.
    #
    # @option params [Integer] :max_concurrent_sessions
    #   The maximum number of concurrent sessions for the portal.
    #
    # @return [Types::UpdatePortalResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePortalResponse#portal #portal} => Types::Portal
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_portal({
    #     portal_arn: "ARN", # required
    #     display_name: "DisplayName",
    #     authentication_type: "Standard", # accepts Standard, IAM_Identity_Center
    #     instance_type: "standard.regular", # accepts standard.regular, standard.large, standard.xlarge
    #     max_concurrent_sessions: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.portal.portal_arn #=> String
    #   resp.portal.renderer_type #=> String, one of "AppStream"
    #   resp.portal.browser_type #=> String, one of "Chrome"
    #   resp.portal.portal_status #=> String, one of "Incomplete", "Pending", "Active"
    #   resp.portal.portal_endpoint #=> String
    #   resp.portal.display_name #=> String
    #   resp.portal.creation_date #=> Time
    #   resp.portal.browser_settings_arn #=> String
    #   resp.portal.data_protection_settings_arn #=> String
    #   resp.portal.user_settings_arn #=> String
    #   resp.portal.network_settings_arn #=> String
    #   resp.portal.session_logger_arn #=> String
    #   resp.portal.trust_store_arn #=> String
    #   resp.portal.status_reason #=> String
    #   resp.portal.user_access_logging_settings_arn #=> String
    #   resp.portal.authentication_type #=> String, one of "Standard", "IAM_Identity_Center"
    #   resp.portal.ip_access_settings_arn #=> String
    #   resp.portal.customer_managed_key #=> String
    #   resp.portal.additional_encryption_context #=> Hash
    #   resp.portal.additional_encryption_context["StringType"] #=> String
    #   resp.portal.instance_type #=> String, one of "standard.regular", "standard.large", "standard.xlarge"
    #   resp.portal.max_concurrent_sessions #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UpdatePortal AWS API Documentation
    #
    # @overload update_portal(params = {})
    # @param [Hash] params ({})
    def update_portal(params = {}, options = {})
      req = build_request(:update_portal, params)
      req.send_request(options)
    end

    # Updates the details of a session logger.
    #
    # @option params [required, String] :session_logger_arn
    #   The ARN of the session logger to update.
    #
    # @option params [Types::EventFilter] :event_filter
    #   The updated eventFilter.
    #
    # @option params [Types::LogConfiguration] :log_configuration
    #   The updated logConfiguration.
    #
    # @option params [String] :display_name
    #   The updated display name.
    #
    # @return [Types::UpdateSessionLoggerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSessionLoggerResponse#session_logger #session_logger} => Types::SessionLogger
    #
    #
    # @example Example: Update Session Logger Event Filter
    #
    #   # Updates a session logger to capture specific events instead of all events
    #
    #   resp = client.update_session_logger({
    #     event_filter: {
    #       include: [
    #         "SessionStart", 
    #         "SessionEnd", 
    #         "UrlLoad", 
    #         "WebsiteInteract", 
    #       ], 
    #     }, 
    #     session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/12345678-1234-1234-1234-123456789012", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     session_logger: {
    #       creation_date: Time.parse("2024-01-15T10:30:00Z"), 
    #       display_name: "Updated Session Logger with Specific Events", 
    #       event_filter: {
    #         include: [
    #           "SessionStart", 
    #           "SessionEnd", 
    #           "UrlLoad", 
    #           "WebsiteInteract", 
    #         ], 
    #       }, 
    #       log_configuration: {
    #         s3: {
    #           bucket: "my-session-logs-bucket", 
    #           bucket_owner: "123456789012", 
    #           folder_structure: "Flat", 
    #           key_prefix: "updated/session-logs/each/event", 
    #           log_file_format: "Json", 
    #         }, 
    #       }, 
    #       session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/12345678-1234-1234-1234-123456789012", 
    #     }, 
    #   }
    #
    # @example Example: Update Session Logger Configuration
    #
    #   # Updates the log configuration of a session logger
    #
    #   resp = client.update_session_logger({
    #     log_configuration: {
    #       s3: {
    #         bucket: "updated-my-session-logs-bucket-2", 
    #         bucket_owner: "123456789012", 
    #         folder_structure: "Flat", 
    #         key_prefix: "updated/key/prefix", 
    #         log_file_format: "Json", 
    #       }, 
    #     }, 
    #     session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/87654321-4321-4321-4321-210987654321", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     session_logger: {
    #       additional_encryption_context: {
    #         "EncryptionContextKey" => "EncryptionContextValue", 
    #       }, 
    #       creation_date: Time.parse("2024-01-15T14:45:00Z"), 
    #       customer_managed_key: "arn:aws:kms:us-west-2:123456789012:key/12345678-1234-1234-1234-123456789012", 
    #       display_name: "Updated Session Logger with Log Config", 
    #       event_filter: {
    #         all: {
    #         }, 
    #       }, 
    #       log_configuration: {
    #         s3: {
    #           bucket: "updated-my-session-logs-bucket-2", 
    #           bucket_owner: "123456789012", 
    #           folder_structure: "Flat", 
    #           key_prefix: "updated/key/prefix", 
    #           log_file_format: "Json", 
    #         }, 
    #       }, 
    #       session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/87654321-4321-4321-4321-210987654321", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_session_logger({
    #     session_logger_arn: "ARN", # required
    #     event_filter: {
    #       all: {
    #       },
    #       include: ["WebsiteInteract"], # accepts WebsiteInteract, FileDownloadFromSecureBrowserToRemoteDisk, FileTransferFromRemoteToLocalDisk, FileTransferFromLocalToRemoteDisk, FileUploadFromRemoteDiskToSecureBrowser, ContentPasteToWebsite, ContentTransferFromLocalToRemoteClipboard, ContentCopyFromWebsite, UrlLoad, TabOpen, TabClose, PrintJobSubmit, SessionConnect, SessionStart, SessionDisconnect, SessionEnd, UrlBlockByContentFilter
    #     },
    #     log_configuration: {
    #       s3: {
    #         bucket: "S3Bucket", # required
    #         key_prefix: "S3KeyPrefix",
    #         bucket_owner: "S3BucketOwner",
    #         log_file_format: "JSONLines", # required, accepts JSONLines, Json
    #         folder_structure: "Flat", # required, accepts Flat, NestedByDate
    #       },
    #     },
    #     display_name: "DisplayNameSafe",
    #   })
    #
    # @example Response structure
    #
    #   resp.session_logger.session_logger_arn #=> String
    #   resp.session_logger.event_filter.include #=> Array
    #   resp.session_logger.event_filter.include[0] #=> String, one of "WebsiteInteract", "FileDownloadFromSecureBrowserToRemoteDisk", "FileTransferFromRemoteToLocalDisk", "FileTransferFromLocalToRemoteDisk", "FileUploadFromRemoteDiskToSecureBrowser", "ContentPasteToWebsite", "ContentTransferFromLocalToRemoteClipboard", "ContentCopyFromWebsite", "UrlLoad", "TabOpen", "TabClose", "PrintJobSubmit", "SessionConnect", "SessionStart", "SessionDisconnect", "SessionEnd", "UrlBlockByContentFilter"
    #   resp.session_logger.log_configuration.s3.bucket #=> String
    #   resp.session_logger.log_configuration.s3.key_prefix #=> String
    #   resp.session_logger.log_configuration.s3.bucket_owner #=> String
    #   resp.session_logger.log_configuration.s3.log_file_format #=> String, one of "JSONLines", "Json"
    #   resp.session_logger.log_configuration.s3.folder_structure #=> String, one of "Flat", "NestedByDate"
    #   resp.session_logger.customer_managed_key #=> String
    #   resp.session_logger.additional_encryption_context #=> Hash
    #   resp.session_logger.additional_encryption_context["StringType"] #=> String
    #   resp.session_logger.associated_portal_arns #=> Array
    #   resp.session_logger.associated_portal_arns[0] #=> String
    #   resp.session_logger.display_name #=> String
    #   resp.session_logger.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UpdateSessionLogger AWS API Documentation
    #
    # @overload update_session_logger(params = {})
    # @param [Hash] params ({})
    def update_session_logger(params = {}, options = {})
      req = build_request(:update_session_logger, params)
      req.send_request(options)
    end

    # Updates the trust store.
    #
    # @option params [required, String] :trust_store_arn
    #   The ARN of the trust store.
    #
    # @option params [Array<String, StringIO, File>] :certificates_to_add
    #   A list of CA certificates to add to the trust store.
    #
    # @option params [Array<String>] :certificates_to_delete
    #   A list of CA certificates to delete from a trust store.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token return the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateTrustStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTrustStoreResponse#trust_store_arn #trust_store_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_trust_store({
    #     trust_store_arn: "ARN", # required
    #     certificates_to_add: ["data"],
    #     certificates_to_delete: ["CertificateThumbprint"],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.trust_store_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UpdateTrustStore AWS API Documentation
    #
    # @overload update_trust_store(params = {})
    # @param [Hash] params ({})
    def update_trust_store(params = {}, options = {})
      req = build_request(:update_trust_store, params)
      req.send_request(options)
    end

    # Updates the user access logging settings.
    #
    # @option params [required, String] :user_access_logging_settings_arn
    #   The ARN of the user access logging settings.
    #
    # @option params [String] :kinesis_stream_arn
    #   The ARN of the Kinesis stream.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token return the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateUserAccessLoggingSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserAccessLoggingSettingsResponse#user_access_logging_settings #user_access_logging_settings} => Types::UserAccessLoggingSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_access_logging_settings({
    #     user_access_logging_settings_arn: "ARN", # required
    #     kinesis_stream_arn: "KinesisStreamArn",
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_access_logging_settings.user_access_logging_settings_arn #=> String
    #   resp.user_access_logging_settings.associated_portal_arns #=> Array
    #   resp.user_access_logging_settings.associated_portal_arns[0] #=> String
    #   resp.user_access_logging_settings.kinesis_stream_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UpdateUserAccessLoggingSettings AWS API Documentation
    #
    # @overload update_user_access_logging_settings(params = {})
    # @param [Hash] params ({})
    def update_user_access_logging_settings(params = {}, options = {})
      req = build_request(:update_user_access_logging_settings, params)
      req.send_request(options)
    end

    # Updates the user settings.
    #
    # @option params [required, String] :user_settings_arn
    #   The ARN of the user settings.
    #
    # @option params [String] :copy_allowed
    #   Specifies whether the user can copy text from the streaming session to
    #   the local device.
    #
    # @option params [String] :paste_allowed
    #   Specifies whether the user can paste text from the local device to the
    #   streaming session.
    #
    # @option params [String] :download_allowed
    #   Specifies whether the user can download files from the streaming
    #   session to the local device.
    #
    # @option params [String] :upload_allowed
    #   Specifies whether the user can upload files from the local device to
    #   the streaming session.
    #
    # @option params [String] :print_allowed
    #   Specifies whether the user can print to the local device.
    #
    # @option params [Integer] :disconnect_timeout_in_minutes
    #   The amount of time that a streaming session remains active after users
    #   disconnect.
    #
    # @option params [Integer] :idle_disconnect_timeout_in_minutes
    #   The amount of time that users can be idle (inactive) before they are
    #   disconnected from their streaming session and the disconnect timeout
    #   interval begins.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token return the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::CookieSynchronizationConfiguration] :cookie_synchronization_configuration
    #   The configuration that specifies which cookies should be synchronized
    #   from the end user's local browser to the remote browser.
    #
    #   If the allowlist and blocklist are empty, the configuration becomes
    #   null.
    #
    # @option params [String] :deep_link_allowed
    #   Specifies whether the user can use deep links that open automatically
    #   when connecting to a session.
    #
    # @option params [Types::ToolbarConfiguration] :toolbar_configuration
    #   The configuration of the toolbar. This allows administrators to select
    #   the toolbar type and visual mode, set maximum display resolution for
    #   sessions, and choose which items are visible to end users during their
    #   sessions. If administrators do not modify these settings, end users
    #   retain control over their toolbar preferences.
    #
    # @return [Types::UpdateUserSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserSettingsResponse#user_settings #user_settings} => Types::UserSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_settings({
    #     user_settings_arn: "ARN", # required
    #     copy_allowed: "Disabled", # accepts Disabled, Enabled
    #     paste_allowed: "Disabled", # accepts Disabled, Enabled
    #     download_allowed: "Disabled", # accepts Disabled, Enabled
    #     upload_allowed: "Disabled", # accepts Disabled, Enabled
    #     print_allowed: "Disabled", # accepts Disabled, Enabled
    #     disconnect_timeout_in_minutes: 1,
    #     idle_disconnect_timeout_in_minutes: 1,
    #     client_token: "ClientToken",
    #     cookie_synchronization_configuration: {
    #       allowlist: [ # required
    #         {
    #           domain: "CookieDomain", # required
    #           name: "CookieName",
    #           path: "CookiePath",
    #         },
    #       ],
    #       blocklist: [
    #         {
    #           domain: "CookieDomain", # required
    #           name: "CookieName",
    #           path: "CookiePath",
    #         },
    #       ],
    #     },
    #     deep_link_allowed: "Disabled", # accepts Disabled, Enabled
    #     toolbar_configuration: {
    #       toolbar_type: "Floating", # accepts Floating, Docked
    #       visual_mode: "Dark", # accepts Dark, Light
    #       hidden_toolbar_items: ["Windows"], # accepts Windows, DualMonitor, FullScreen, Webcam, Microphone
    #       max_display_resolution: "size4096X2160", # accepts size4096X2160, size3840X2160, size3440X1440, size2560X1440, size1920X1080, size1280X720, size1024X768, size800X600
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.user_settings.user_settings_arn #=> String
    #   resp.user_settings.associated_portal_arns #=> Array
    #   resp.user_settings.associated_portal_arns[0] #=> String
    #   resp.user_settings.copy_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings.paste_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings.download_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings.upload_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings.print_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings.disconnect_timeout_in_minutes #=> Integer
    #   resp.user_settings.idle_disconnect_timeout_in_minutes #=> Integer
    #   resp.user_settings.cookie_synchronization_configuration.allowlist #=> Array
    #   resp.user_settings.cookie_synchronization_configuration.allowlist[0].domain #=> String
    #   resp.user_settings.cookie_synchronization_configuration.allowlist[0].name #=> String
    #   resp.user_settings.cookie_synchronization_configuration.allowlist[0].path #=> String
    #   resp.user_settings.cookie_synchronization_configuration.blocklist #=> Array
    #   resp.user_settings.cookie_synchronization_configuration.blocklist[0].domain #=> String
    #   resp.user_settings.cookie_synchronization_configuration.blocklist[0].name #=> String
    #   resp.user_settings.cookie_synchronization_configuration.blocklist[0].path #=> String
    #   resp.user_settings.customer_managed_key #=> String
    #   resp.user_settings.additional_encryption_context #=> Hash
    #   resp.user_settings.additional_encryption_context["StringType"] #=> String
    #   resp.user_settings.deep_link_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings.toolbar_configuration.toolbar_type #=> String, one of "Floating", "Docked"
    #   resp.user_settings.toolbar_configuration.visual_mode #=> String, one of "Dark", "Light"
    #   resp.user_settings.toolbar_configuration.hidden_toolbar_items #=> Array
    #   resp.user_settings.toolbar_configuration.hidden_toolbar_items[0] #=> String, one of "Windows", "DualMonitor", "FullScreen", "Webcam", "Microphone"
    #   resp.user_settings.toolbar_configuration.max_display_resolution #=> String, one of "size4096X2160", "size3840X2160", "size3440X1440", "size2560X1440", "size1920X1080", "size1280X720", "size1024X768", "size800X600"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UpdateUserSettings AWS API Documentation
    #
    # @overload update_user_settings(params = {})
    # @param [Hash] params ({})
    def update_user_settings(params = {}, options = {})
      req = build_request(:update_user_settings, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::WorkSpacesWeb')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-workspacesweb'
      context[:gem_version] = '1.52.0'
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
