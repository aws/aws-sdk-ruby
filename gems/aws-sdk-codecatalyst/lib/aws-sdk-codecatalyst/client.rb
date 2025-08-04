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

module Aws::CodeCatalyst
  # An API client for CodeCatalyst.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CodeCatalyst::Client.new(
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

    @identifier = :codecatalyst

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
    add_plugin(Aws::CodeCatalyst::Plugins::Endpoints)

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
    #   @option options [Aws::CodeCatalyst::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::CodeCatalyst::EndpointParameters`.
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

    # Creates a personal access token (PAT) for the current user. A personal
    # access token (PAT) is similar to a password. It is associated with
    # your user identity for use across all spaces and projects in Amazon
    # CodeCatalyst. You use PATs to access CodeCatalyst from resources that
    # include integrated development environments (IDEs) and Git-based
    # source repositories. PATs represent you in Amazon CodeCatalyst and you
    # can manage them in your user settings.For more information, see
    # [Managing personal access tokens in Amazon CodeCatalyst][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codecatalyst/latest/userguide/ipa-tokens-keys.html
    #
    # @option params [required, String] :name
    #   The friendly name of the personal access token.
    #
    # @option params [Time,DateTime,Date,Integer,String] :expires_time
    #   The date and time the personal access token expires, in coordinated
    #   universal time (UTC) timestamp format as specified in [RFC 3339][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #
    # @return [Types::CreateAccessTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccessTokenResponse#secret #secret} => String
    #   * {Types::CreateAccessTokenResponse#name #name} => String
    #   * {Types::CreateAccessTokenResponse#expires_time #expires_time} => Time
    #   * {Types::CreateAccessTokenResponse#access_token_id #access_token_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_access_token({
    #     name: "AccessTokenName", # required
    #     expires_time: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.secret #=> String
    #   resp.name #=> String
    #   resp.expires_time #=> Time
    #   resp.access_token_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/CreateAccessToken AWS API Documentation
    #
    # @overload create_access_token(params = {})
    # @param [Hash] params ({})
    def create_access_token(params = {}, options = {})
      req = build_request(:create_access_token, params)
      req.send_request(options)
    end

    # Creates a Dev Environment in Amazon CodeCatalyst, a cloud-based
    # development environment that you can use to quickly work on the code
    # stored in the source repositories of your project.
    #
    # <note markdown="1"> When created in the Amazon CodeCatalyst console, by default a Dev
    # Environment is configured to have a 2 core processor, 4GB of RAM, and
    # 16GB of persistent storage. None of these defaults apply to a Dev
    # Environment created programmatically.
    #
    #  </note>
    #
    # @option params [required, String] :space_name
    #   The name of the space.
    #
    # @option params [required, String] :project_name
    #   The name of the project in the space.
    #
    # @option params [Array<Types::RepositoryInput>] :repositories
    #   The source repository that contains the branch to clone into the Dev
    #   Environment.
    #
    # @option params [String] :client_token
    #   A user-specified idempotency token. Idempotency ensures that an API
    #   request completes only once. With an idempotent request, if the
    #   original request completes successfully, the subsequent retries return
    #   the result from the original successful request and have no additional
    #   effect.
    #
    # @option params [String] :alias
    #   The user-defined alias for a Dev Environment.
    #
    # @option params [Array<Types::IdeConfiguration>] :ides
    #   Information about the integrated development environment (IDE)
    #   configured for a Dev Environment.
    #
    #   <note markdown="1"> An IDE is required to create a Dev Environment. For Dev Environment
    #   creation, this field contains configuration information and must be
    #   provided.
    #
    #    </note>
    #
    # @option params [required, String] :instance_type
    #   The Amazon EC2 instace type to use for the Dev Environment.
    #
    # @option params [Integer] :inactivity_timeout_minutes
    #   The amount of time the Dev Environment will run without any activity
    #   detected before stopping, in minutes. Only whole integers are allowed.
    #   Dev Environments consume compute minutes when running.
    #
    # @option params [required, Types::PersistentStorageConfiguration] :persistent_storage
    #   Information about the amount of storage allocated to the Dev
    #   Environment.
    #
    #   <note markdown="1"> By default, a Dev Environment is configured to have 16GB of persistent
    #   storage when created from the Amazon CodeCatalyst console, but there
    #   is no default when programmatically creating a Dev Environment. Valid
    #   values for persistent storage are based on memory sizes in 16GB
    #   increments. Valid values are 16, 32, and 64.
    #
    #    </note>
    #
    # @option params [String] :vpc_connection_name
    #   The name of the connection that will be used to connect to Amazon VPC,
    #   if any.
    #
    # @return [Types::CreateDevEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDevEnvironmentResponse#space_name #space_name} => String
    #   * {Types::CreateDevEnvironmentResponse#project_name #project_name} => String
    #   * {Types::CreateDevEnvironmentResponse#id #id} => String
    #   * {Types::CreateDevEnvironmentResponse#vpc_connection_name #vpc_connection_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dev_environment({
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     repositories: [
    #       {
    #         repository_name: "SourceRepositoryNameString", # required
    #         branch_name: "SourceRepositoryBranchString",
    #       },
    #     ],
    #     client_token: "ClientToken",
    #     alias: "CreateDevEnvironmentRequestAliasString",
    #     ides: [
    #       {
    #         runtime: "IdeConfigurationRuntimeString",
    #         name: "IdeConfigurationNameString",
    #       },
    #     ],
    #     instance_type: "dev.standard1.small", # required, accepts dev.standard1.small, dev.standard1.medium, dev.standard1.large, dev.standard1.xlarge
    #     inactivity_timeout_minutes: 1,
    #     persistent_storage: { # required
    #       size_in_gi_b: 1, # required
    #     },
    #     vpc_connection_name: "NameString",
    #   })
    #
    # @example Response structure
    #
    #   resp.space_name #=> String
    #   resp.project_name #=> String
    #   resp.id #=> String
    #   resp.vpc_connection_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/CreateDevEnvironment AWS API Documentation
    #
    # @overload create_dev_environment(params = {})
    # @param [Hash] params ({})
    def create_dev_environment(params = {}, options = {})
      req = build_request(:create_dev_environment, params)
      req.send_request(options)
    end

    # Creates a project in a specified space.
    #
    # @option params [required, String] :space_name
    #   The name of the space.
    #
    # @option params [required, String] :display_name
    #   The friendly name of the project that will be displayed to users.
    #
    # @option params [String] :description
    #   The description of the project. This description will be displayed to
    #   all users of the project. We recommend providing a brief description
    #   of the project and its intended purpose.
    #
    # @return [Types::CreateProjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProjectResponse#space_name #space_name} => String
    #   * {Types::CreateProjectResponse#name #name} => String
    #   * {Types::CreateProjectResponse#display_name #display_name} => String
    #   * {Types::CreateProjectResponse#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project({
    #     space_name: "NameString", # required
    #     display_name: "ProjectDisplayName", # required
    #     description: "ProjectDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.space_name #=> String
    #   resp.name #=> String
    #   resp.display_name #=> String
    #   resp.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/CreateProject AWS API Documentation
    #
    # @overload create_project(params = {})
    # @param [Hash] params ({})
    def create_project(params = {}, options = {})
      req = build_request(:create_project, params)
      req.send_request(options)
    end

    # Creates an empty Git-based source repository in a specified project.
    # The repository is created with an initial empty commit with a default
    # branch named `main`.
    #
    # @option params [required, String] :space_name
    #   The name of the space.
    #
    # @option params [required, String] :project_name
    #   The name of the project in the space.
    #
    # @option params [required, String] :name
    #   The name of the source repository. For more information about name
    #   requirements, see [Quotas for source repositories][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codecatalyst/latest/userguide/source-quotas.html
    #
    # @option params [String] :description
    #   The description of the source repository.
    #
    # @return [Types::CreateSourceRepositoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSourceRepositoryResponse#space_name #space_name} => String
    #   * {Types::CreateSourceRepositoryResponse#project_name #project_name} => String
    #   * {Types::CreateSourceRepositoryResponse#name #name} => String
    #   * {Types::CreateSourceRepositoryResponse#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_source_repository({
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     name: "SourceRepositoryNameString", # required
    #     description: "SourceRepositoryDescriptionString",
    #   })
    #
    # @example Response structure
    #
    #   resp.space_name #=> String
    #   resp.project_name #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/CreateSourceRepository AWS API Documentation
    #
    # @overload create_source_repository(params = {})
    # @param [Hash] params ({})
    def create_source_repository(params = {}, options = {})
      req = build_request(:create_source_repository, params)
      req.send_request(options)
    end

    # Creates a branch in a specified source repository in Amazon
    # CodeCatalyst.
    #
    # <note markdown="1"> This API only creates a branch in a source repository hosted in Amazon
    # CodeCatalyst. You cannot use this API to create a branch in a linked
    # repository.
    #
    #  </note>
    #
    # @option params [required, String] :space_name
    #   The name of the space.
    #
    # @option params [required, String] :project_name
    #   The name of the project in the space.
    #
    # @option params [required, String] :source_repository_name
    #   The name of the repository where you want to create a branch.
    #
    # @option params [required, String] :name
    #   The name for the branch you're creating.
    #
    # @option params [String] :head_commit_id
    #   The commit ID in an existing branch from which you want to create the
    #   new branch.
    #
    # @return [Types::CreateSourceRepositoryBranchResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSourceRepositoryBranchResponse#ref #ref} => String
    #   * {Types::CreateSourceRepositoryBranchResponse#name #name} => String
    #   * {Types::CreateSourceRepositoryBranchResponse#last_updated_time #last_updated_time} => Time
    #   * {Types::CreateSourceRepositoryBranchResponse#head_commit_id #head_commit_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_source_repository_branch({
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     source_repository_name: "SourceRepositoryNameString", # required
    #     name: "SourceRepositoryBranchString", # required
    #     head_commit_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.ref #=> String
    #   resp.name #=> String
    #   resp.last_updated_time #=> Time
    #   resp.head_commit_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/CreateSourceRepositoryBranch AWS API Documentation
    #
    # @overload create_source_repository_branch(params = {})
    # @param [Hash] params ({})
    def create_source_repository_branch(params = {}, options = {})
      req = build_request(:create_source_repository_branch, params)
      req.send_request(options)
    end

    # Deletes a specified personal access token (PAT). A personal access
    # token can only be deleted by the user who created it.
    #
    # @option params [required, String] :id
    #   The ID of the personal access token to delete. You can find the IDs of
    #   all PATs associated with your Amazon Web Services Builder ID in a
    #   space by calling ListAccessTokens.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access_token({
    #     id: "AccessTokenId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/DeleteAccessToken AWS API Documentation
    #
    # @overload delete_access_token(params = {})
    # @param [Hash] params ({})
    def delete_access_token(params = {}, options = {})
      req = build_request(:delete_access_token, params)
      req.send_request(options)
    end

    # Deletes a Dev Environment.
    #
    # @option params [required, String] :space_name
    #   The name of the space.
    #
    # @option params [required, String] :project_name
    #   The name of the project in the space.
    #
    # @option params [required, String] :id
    #   The system-generated unique ID of the Dev Environment you want to
    #   delete. To retrieve a list of Dev Environment IDs, use
    #   ListDevEnvironments.
    #
    # @return [Types::DeleteDevEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDevEnvironmentResponse#space_name #space_name} => String
    #   * {Types::DeleteDevEnvironmentResponse#project_name #project_name} => String
    #   * {Types::DeleteDevEnvironmentResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dev_environment({
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     id: "Uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.space_name #=> String
    #   resp.project_name #=> String
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/DeleteDevEnvironment AWS API Documentation
    #
    # @overload delete_dev_environment(params = {})
    # @param [Hash] params ({})
    def delete_dev_environment(params = {}, options = {})
      req = build_request(:delete_dev_environment, params)
      req.send_request(options)
    end

    # Deletes a project in a space.
    #
    # @option params [required, String] :space_name
    #   The name of the space.
    #
    # @option params [required, String] :name
    #   The name of the project in the space. To retrieve a list of project
    #   names, use ListProjects.
    #
    # @return [Types::DeleteProjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteProjectResponse#space_name #space_name} => String
    #   * {Types::DeleteProjectResponse#name #name} => String
    #   * {Types::DeleteProjectResponse#display_name #display_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project({
    #     space_name: "NameString", # required
    #     name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.space_name #=> String
    #   resp.name #=> String
    #   resp.display_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/DeleteProject AWS API Documentation
    #
    # @overload delete_project(params = {})
    # @param [Hash] params ({})
    def delete_project(params = {}, options = {})
      req = build_request(:delete_project, params)
      req.send_request(options)
    end

    # Deletes a source repository in Amazon CodeCatalyst. You cannot use
    # this API to delete a linked repository. It can only be used to delete
    # a Amazon CodeCatalyst source repository.
    #
    # @option params [required, String] :space_name
    #   The name of the space.
    #
    # @option params [required, String] :project_name
    #   The name of the project in the space.
    #
    # @option params [required, String] :name
    #   The name of the source repository.
    #
    # @return [Types::DeleteSourceRepositoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSourceRepositoryResponse#space_name #space_name} => String
    #   * {Types::DeleteSourceRepositoryResponse#project_name #project_name} => String
    #   * {Types::DeleteSourceRepositoryResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_source_repository({
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     name: "SourceRepositoryNameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.space_name #=> String
    #   resp.project_name #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/DeleteSourceRepository AWS API Documentation
    #
    # @overload delete_source_repository(params = {})
    # @param [Hash] params ({})
    def delete_source_repository(params = {}, options = {})
      req = build_request(:delete_source_repository, params)
      req.send_request(options)
    end

    # Deletes a space.
    #
    # Deleting a space cannot be undone. Additionally, since space names
    # must be unique across Amazon CodeCatalyst, you cannot reuse names of
    # deleted spaces.
    #
    # @option params [required, String] :name
    #   The name of the space. To retrieve a list of space names, use
    #   ListSpaces.
    #
    # @return [Types::DeleteSpaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSpaceResponse#name #name} => String
    #   * {Types::DeleteSpaceResponse#display_name #display_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_space({
    #     name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.display_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/DeleteSpace AWS API Documentation
    #
    # @overload delete_space(params = {})
    # @param [Hash] params ({})
    def delete_space(params = {}, options = {})
      req = build_request(:delete_space, params)
      req.send_request(options)
    end

    # Returns information about a Dev Environment for a source repository in
    # a project. Dev Environments are specific to the user who creates them.
    #
    # @option params [required, String] :space_name
    #   The name of the space.
    #
    # @option params [required, String] :project_name
    #   The name of the project in the space.
    #
    # @option params [required, String] :id
    #   The system-generated unique ID of the Dev Environment for which you
    #   want to view information. To retrieve a list of Dev Environment IDs,
    #   use ListDevEnvironments.
    #
    # @return [Types::GetDevEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDevEnvironmentResponse#space_name #space_name} => String
    #   * {Types::GetDevEnvironmentResponse#project_name #project_name} => String
    #   * {Types::GetDevEnvironmentResponse#id #id} => String
    #   * {Types::GetDevEnvironmentResponse#last_updated_time #last_updated_time} => Time
    #   * {Types::GetDevEnvironmentResponse#creator_id #creator_id} => String
    #   * {Types::GetDevEnvironmentResponse#status #status} => String
    #   * {Types::GetDevEnvironmentResponse#status_reason #status_reason} => String
    #   * {Types::GetDevEnvironmentResponse#repositories #repositories} => Array&lt;Types::DevEnvironmentRepositorySummary&gt;
    #   * {Types::GetDevEnvironmentResponse#alias #alias} => String
    #   * {Types::GetDevEnvironmentResponse#ides #ides} => Array&lt;Types::Ide&gt;
    #   * {Types::GetDevEnvironmentResponse#instance_type #instance_type} => String
    #   * {Types::GetDevEnvironmentResponse#inactivity_timeout_minutes #inactivity_timeout_minutes} => Integer
    #   * {Types::GetDevEnvironmentResponse#persistent_storage #persistent_storage} => Types::PersistentStorage
    #   * {Types::GetDevEnvironmentResponse#vpc_connection_name #vpc_connection_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dev_environment({
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     id: "Uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.space_name #=> String
    #   resp.project_name #=> String
    #   resp.id #=> String
    #   resp.last_updated_time #=> Time
    #   resp.creator_id #=> String
    #   resp.status #=> String, one of "PENDING", "RUNNING", "STARTING", "STOPPING", "STOPPED", "FAILED", "DELETING", "DELETED"
    #   resp.status_reason #=> String
    #   resp.repositories #=> Array
    #   resp.repositories[0].repository_name #=> String
    #   resp.repositories[0].branch_name #=> String
    #   resp.alias #=> String
    #   resp.ides #=> Array
    #   resp.ides[0].runtime #=> String
    #   resp.ides[0].name #=> String
    #   resp.instance_type #=> String, one of "dev.standard1.small", "dev.standard1.medium", "dev.standard1.large", "dev.standard1.xlarge"
    #   resp.inactivity_timeout_minutes #=> Integer
    #   resp.persistent_storage.size_in_gi_b #=> Integer
    #   resp.vpc_connection_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/GetDevEnvironment AWS API Documentation
    #
    # @overload get_dev_environment(params = {})
    # @param [Hash] params ({})
    def get_dev_environment(params = {}, options = {})
      req = build_request(:get_dev_environment, params)
      req.send_request(options)
    end

    # Returns information about a project.
    #
    # @option params [required, String] :space_name
    #   The name of the space.
    #
    # @option params [required, String] :name
    #   The name of the project in the space.
    #
    # @return [Types::GetProjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProjectResponse#space_name #space_name} => String
    #   * {Types::GetProjectResponse#name #name} => String
    #   * {Types::GetProjectResponse#display_name #display_name} => String
    #   * {Types::GetProjectResponse#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_project({
    #     space_name: "NameString", # required
    #     name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.space_name #=> String
    #   resp.name #=> String
    #   resp.display_name #=> String
    #   resp.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/GetProject AWS API Documentation
    #
    # @overload get_project(params = {})
    # @param [Hash] params ({})
    def get_project(params = {}, options = {})
      req = build_request(:get_project, params)
      req.send_request(options)
    end

    # Returns information about a source repository.
    #
    # @option params [required, String] :space_name
    #   The name of the space.
    #
    # @option params [required, String] :project_name
    #   The name of the project in the space.
    #
    # @option params [required, String] :name
    #   The name of the source repository.
    #
    # @return [Types::GetSourceRepositoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSourceRepositoryResponse#space_name #space_name} => String
    #   * {Types::GetSourceRepositoryResponse#project_name #project_name} => String
    #   * {Types::GetSourceRepositoryResponse#name #name} => String
    #   * {Types::GetSourceRepositoryResponse#description #description} => String
    #   * {Types::GetSourceRepositoryResponse#last_updated_time #last_updated_time} => Time
    #   * {Types::GetSourceRepositoryResponse#created_time #created_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_source_repository({
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     name: "SourceRepositoryNameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.space_name #=> String
    #   resp.project_name #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.last_updated_time #=> Time
    #   resp.created_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/GetSourceRepository AWS API Documentation
    #
    # @overload get_source_repository(params = {})
    # @param [Hash] params ({})
    def get_source_repository(params = {}, options = {})
      req = build_request(:get_source_repository, params)
      req.send_request(options)
    end

    # Returns information about the URLs that can be used with a Git client
    # to clone a source repository.
    #
    # @option params [required, String] :space_name
    #   The name of the space.
    #
    # @option params [required, String] :project_name
    #   The name of the project in the space.
    #
    # @option params [required, String] :source_repository_name
    #   The name of the source repository.
    #
    # @return [Types::GetSourceRepositoryCloneUrlsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSourceRepositoryCloneUrlsResponse#https #https} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_source_repository_clone_urls({
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     source_repository_name: "SourceRepositoryNameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.https #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/GetSourceRepositoryCloneUrls AWS API Documentation
    #
    # @overload get_source_repository_clone_urls(params = {})
    # @param [Hash] params ({})
    def get_source_repository_clone_urls(params = {}, options = {})
      req = build_request(:get_source_repository_clone_urls, params)
      req.send_request(options)
    end

    # Returns information about an space.
    #
    # @option params [required, String] :name
    #   The name of the space.
    #
    # @return [Types::GetSpaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSpaceResponse#name #name} => String
    #   * {Types::GetSpaceResponse#region_name #region_name} => String
    #   * {Types::GetSpaceResponse#display_name #display_name} => String
    #   * {Types::GetSpaceResponse#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_space({
    #     name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.region_name #=> String
    #   resp.display_name #=> String
    #   resp.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/GetSpace AWS API Documentation
    #
    # @overload get_space(params = {})
    # @param [Hash] params ({})
    def get_space(params = {}, options = {})
      req = build_request(:get_space, params)
      req.send_request(options)
    end

    # Returns information about the Amazon Web Services account used for
    # billing purposes and the billing plan for the space.
    #
    # @option params [required, String] :space_name
    #   The name of the space.
    #
    # @return [Types::GetSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSubscriptionResponse#subscription_type #subscription_type} => String
    #   * {Types::GetSubscriptionResponse#aws_account_name #aws_account_name} => String
    #   * {Types::GetSubscriptionResponse#pending_subscription_type #pending_subscription_type} => String
    #   * {Types::GetSubscriptionResponse#pending_subscription_start_time #pending_subscription_start_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_subscription({
    #     space_name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.subscription_type #=> String
    #   resp.aws_account_name #=> String
    #   resp.pending_subscription_type #=> String
    #   resp.pending_subscription_start_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/GetSubscription AWS API Documentation
    #
    # @overload get_subscription(params = {})
    # @param [Hash] params ({})
    def get_subscription(params = {}, options = {})
      req = build_request(:get_subscription, params)
      req.send_request(options)
    end

    # Returns information about a user.
    #
    # @option params [String] :id
    #   The system-generated unique ID of the user.
    #
    # @option params [String] :user_name
    #   The name of the user as displayed in Amazon CodeCatalyst.
    #
    # @return [Types::GetUserDetailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserDetailsResponse#user_id #user_id} => String
    #   * {Types::GetUserDetailsResponse#user_name #user_name} => String
    #   * {Types::GetUserDetailsResponse#display_name #display_name} => String
    #   * {Types::GetUserDetailsResponse#primary_email #primary_email} => Types::EmailAddress
    #   * {Types::GetUserDetailsResponse#version #version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user_details({
    #     id: "GetUserDetailsRequestIdString",
    #     user_name: "GetUserDetailsRequestUserNameString",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_id #=> String
    #   resp.user_name #=> String
    #   resp.display_name #=> String
    #   resp.primary_email.email #=> String
    #   resp.primary_email.verified #=> Boolean
    #   resp.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/GetUserDetails AWS API Documentation
    #
    # @overload get_user_details(params = {})
    # @param [Hash] params ({})
    def get_user_details(params = {}, options = {})
      req = build_request(:get_user_details, params)
      req.send_request(options)
    end

    # Returns information about a workflow.
    #
    # @option params [required, String] :space_name
    #   The name of the space.
    #
    # @option params [required, String] :id
    #   The ID of the workflow. To rerieve a list of workflow IDs, use
    #   ListWorkflows.
    #
    # @option params [required, String] :project_name
    #   The name of the project in the space.
    #
    # @return [Types::GetWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkflowResponse#space_name #space_name} => String
    #   * {Types::GetWorkflowResponse#project_name #project_name} => String
    #   * {Types::GetWorkflowResponse#id #id} => String
    #   * {Types::GetWorkflowResponse#name #name} => String
    #   * {Types::GetWorkflowResponse#source_repository_name #source_repository_name} => String
    #   * {Types::GetWorkflowResponse#source_branch_name #source_branch_name} => String
    #   * {Types::GetWorkflowResponse#definition #definition} => Types::WorkflowDefinition
    #   * {Types::GetWorkflowResponse#created_time #created_time} => Time
    #   * {Types::GetWorkflowResponse#last_updated_time #last_updated_time} => Time
    #   * {Types::GetWorkflowResponse#run_mode #run_mode} => String
    #   * {Types::GetWorkflowResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow({
    #     space_name: "NameString", # required
    #     id: "Uuid", # required
    #     project_name: "GetWorkflowRequestProjectNameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.space_name #=> String
    #   resp.project_name #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.source_repository_name #=> String
    #   resp.source_branch_name #=> String
    #   resp.definition.path #=> String
    #   resp.created_time #=> Time
    #   resp.last_updated_time #=> Time
    #   resp.run_mode #=> String, one of "QUEUED", "PARALLEL", "SUPERSEDED"
    #   resp.status #=> String, one of "INVALID", "ACTIVE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/GetWorkflow AWS API Documentation
    #
    # @overload get_workflow(params = {})
    # @param [Hash] params ({})
    def get_workflow(params = {}, options = {})
      req = build_request(:get_workflow, params)
      req.send_request(options)
    end

    # Returns information about a specified run of a workflow.
    #
    # @option params [required, String] :space_name
    #   The name of the space.
    #
    # @option params [required, String] :id
    #   The ID of the workflow run. To retrieve a list of workflow run IDs,
    #   use ListWorkflowRuns.
    #
    # @option params [required, String] :project_name
    #   The name of the project in the space.
    #
    # @return [Types::GetWorkflowRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkflowRunResponse#space_name #space_name} => String
    #   * {Types::GetWorkflowRunResponse#project_name #project_name} => String
    #   * {Types::GetWorkflowRunResponse#id #id} => String
    #   * {Types::GetWorkflowRunResponse#workflow_id #workflow_id} => String
    #   * {Types::GetWorkflowRunResponse#status #status} => String
    #   * {Types::GetWorkflowRunResponse#status_reasons #status_reasons} => Array&lt;Types::WorkflowRunStatusReason&gt;
    #   * {Types::GetWorkflowRunResponse#start_time #start_time} => Time
    #   * {Types::GetWorkflowRunResponse#end_time #end_time} => Time
    #   * {Types::GetWorkflowRunResponse#last_updated_time #last_updated_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow_run({
    #     space_name: "NameString", # required
    #     id: "Uuid", # required
    #     project_name: "GetWorkflowRunRequestProjectNameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.space_name #=> String
    #   resp.project_name #=> String
    #   resp.id #=> String
    #   resp.workflow_id #=> String
    #   resp.status #=> String, one of "SUCCEEDED", "FAILED", "STOPPED", "SUPERSEDED", "CANCELLED", "NOT_RUN", "VALIDATING", "PROVISIONING", "IN_PROGRESS", "STOPPING", "ABANDONED"
    #   resp.status_reasons #=> Array
    #   resp.start_time #=> Time
    #   resp.end_time #=> Time
    #   resp.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/GetWorkflowRun AWS API Documentation
    #
    # @overload get_workflow_run(params = {})
    # @param [Hash] params ({})
    def get_workflow_run(params = {}, options = {})
      req = build_request(:get_workflow_run, params)
      req.send_request(options)
    end

    # Lists all personal access tokens (PATs) associated with the user who
    # calls the API. You can only list PATs associated with your Amazon Web
    # Services Builder ID.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to show in a single call to this API. If
    #   the number of results is larger than the number you specified, the
    #   response will include a `NextToken` element, which you can use to
    #   obtain additional results.
    #
    # @option params [String] :next_token
    #   A token returned from a call to this API to indicate the next batch of
    #   results to return, if any.
    #
    # @return [Types::ListAccessTokensResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccessTokensResponse#items #items} => Array&lt;Types::AccessTokenSummary&gt;
    #   * {Types::ListAccessTokensResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_access_tokens({
    #     max_results: 1,
    #     next_token: "ListAccessTokensRequestNextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].expires_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ListAccessTokens AWS API Documentation
    #
    # @overload list_access_tokens(params = {})
    # @param [Hash] params ({})
    def list_access_tokens(params = {}, options = {})
      req = build_request(:list_access_tokens, params)
      req.send_request(options)
    end

    # Retrieves a list of active sessions for a Dev Environment in a
    # project.
    #
    # @option params [required, String] :space_name
    #   The name of the space.
    #
    # @option params [required, String] :project_name
    #   The name of the project in the space.
    #
    # @option params [required, String] :dev_environment_id
    #   The system-generated unique ID of the Dev Environment.
    #
    # @option params [String] :next_token
    #   A token returned from a call to this API to indicate the next batch of
    #   results to return, if any.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to show in a single call to this API. If
    #   the number of results is larger than the number you specified, the
    #   response will include a `NextToken` element, which you can use to
    #   obtain additional results.
    #
    # @return [Types::ListDevEnvironmentSessionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDevEnvironmentSessionsResponse#items #items} => Array&lt;Types::DevEnvironmentSessionSummary&gt;
    #   * {Types::ListDevEnvironmentSessionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dev_environment_sessions({
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     dev_environment_id: "Uuid", # required
    #     next_token: "ListDevEnvironmentSessionsRequestNextTokenString",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].space_name #=> String
    #   resp.items[0].project_name #=> String
    #   resp.items[0].dev_environment_id #=> String
    #   resp.items[0].started_time #=> Time
    #   resp.items[0].id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ListDevEnvironmentSessions AWS API Documentation
    #
    # @overload list_dev_environment_sessions(params = {})
    # @param [Hash] params ({})
    def list_dev_environment_sessions(params = {}, options = {})
      req = build_request(:list_dev_environment_sessions, params)
      req.send_request(options)
    end

    # Retrieves a list of Dev Environments in a project.
    #
    # @option params [required, String] :space_name
    #   The name of the space.
    #
    # @option params [String] :project_name
    #   The name of the project in the space.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Information about filters to apply to narrow the results returned in
    #   the list.
    #
    # @option params [String] :next_token
    #   A token returned from a call to this API to indicate the next batch of
    #   results to return, if any.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to show in a single call to this API. If
    #   the number of results is larger than the number you specified, the
    #   response will include a `NextToken` element, which you can use to
    #   obtain additional results.
    #
    # @return [Types::ListDevEnvironmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDevEnvironmentsResponse#items #items} => Array&lt;Types::DevEnvironmentSummary&gt;
    #   * {Types::ListDevEnvironmentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dev_environments({
    #     space_name: "NameString", # required
    #     project_name: "NameString",
    #     filters: [
    #       {
    #         key: "String", # required
    #         values: ["String"], # required
    #         comparison_operator: "String",
    #       },
    #     ],
    #     next_token: "ListDevEnvironmentsRequestNextTokenString",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].space_name #=> String
    #   resp.items[0].project_name #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].last_updated_time #=> Time
    #   resp.items[0].creator_id #=> String
    #   resp.items[0].status #=> String, one of "PENDING", "RUNNING", "STARTING", "STOPPING", "STOPPED", "FAILED", "DELETING", "DELETED"
    #   resp.items[0].status_reason #=> String
    #   resp.items[0].repositories #=> Array
    #   resp.items[0].repositories[0].repository_name #=> String
    #   resp.items[0].repositories[0].branch_name #=> String
    #   resp.items[0].alias #=> String
    #   resp.items[0].ides #=> Array
    #   resp.items[0].ides[0].runtime #=> String
    #   resp.items[0].ides[0].name #=> String
    #   resp.items[0].instance_type #=> String, one of "dev.standard1.small", "dev.standard1.medium", "dev.standard1.large", "dev.standard1.xlarge"
    #   resp.items[0].inactivity_timeout_minutes #=> Integer
    #   resp.items[0].persistent_storage.size_in_gi_b #=> Integer
    #   resp.items[0].vpc_connection_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ListDevEnvironments AWS API Documentation
    #
    # @overload list_dev_environments(params = {})
    # @param [Hash] params ({})
    def list_dev_environments(params = {}, options = {})
      req = build_request(:list_dev_environments, params)
      req.send_request(options)
    end

    # Retrieves a list of events that occurred during a specific time in a
    # space. You can use these events to audit user and system activity in a
    # space. For more information, see [Monitoring][1] in the *Amazon
    # CodeCatalyst User Guide*.
    #
    # <note markdown="1"> ListEventLogs guarantees events for the last 30 days in a given space.
    # You can also view and retrieve a list of management events over the
    # last 90 days for Amazon CodeCatalyst in the CloudTrail console by
    # viewing Event history, or by creating a trail to create and maintain a
    # record of events that extends past 90 days. For more information, see
    # [Working with CloudTrail Event History][2] and [Working with
    # CloudTrail trails][3].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codecatalyst/latest/userguide/ipa-monitoring.html
    # [2]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/view-cloudtrail-events.html
    # [3]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-getting-started.html
    #
    # @option params [required, String] :space_name
    #   The name of the space.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The date and time when you want to start retrieving events, in
    #   coordinated universal time (UTC) timestamp format as specified in [RFC
    #   3339][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The time after which you do not want any events retrieved, in
    #   coordinated universal time (UTC) timestamp format as specified in [RFC
    #   3339][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #
    # @option params [String] :event_name
    #   The name of the event.
    #
    # @option params [String] :next_token
    #   A token returned from a call to this API to indicate the next batch of
    #   results to return, if any.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to show in a single call to this API. If
    #   the number of results is larger than the number you specified, the
    #   response will include a `NextToken` element, which you can use to
    #   obtain additional results.
    #
    # @return [Types::ListEventLogsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEventLogsResponse#next_token #next_token} => String
    #   * {Types::ListEventLogsResponse#items #items} => Array&lt;Types::EventLogEntry&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_logs({
    #     space_name: "NameString", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     event_name: "String",
    #     next_token: "ListEventLogsRequestNextTokenString",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].event_name #=> String
    #   resp.items[0].event_type #=> String
    #   resp.items[0].event_category #=> String
    #   resp.items[0].event_source #=> String
    #   resp.items[0].event_time #=> Time
    #   resp.items[0].operation_type #=> String, one of "READONLY", "MUTATION"
    #   resp.items[0].user_identity.user_type #=> String, one of "USER", "AWS_ACCOUNT", "UNKNOWN"
    #   resp.items[0].user_identity.principal_id #=> String
    #   resp.items[0].user_identity.user_name #=> String
    #   resp.items[0].user_identity.aws_account_id #=> String
    #   resp.items[0].project_information.name #=> String
    #   resp.items[0].project_information.project_id #=> String
    #   resp.items[0].request_id #=> String
    #   resp.items[0].request_payload.content_type #=> String
    #   resp.items[0].request_payload.data #=> String
    #   resp.items[0].response_payload.content_type #=> String
    #   resp.items[0].response_payload.data #=> String
    #   resp.items[0].error_code #=> String
    #   resp.items[0].source_ip_address #=> String
    #   resp.items[0].user_agent #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ListEventLogs AWS API Documentation
    #
    # @overload list_event_logs(params = {})
    # @param [Hash] params ({})
    def list_event_logs(params = {}, options = {})
      req = build_request(:list_event_logs, params)
      req.send_request(options)
    end

    # Retrieves a list of projects.
    #
    # @option params [required, String] :space_name
    #   The name of the space.
    #
    # @option params [String] :next_token
    #   A token returned from a call to this API to indicate the next batch of
    #   results to return, if any.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to show in a single call to this API. If
    #   the number of results is larger than the number you specified, the
    #   response will include a `NextToken` element, which you can use to
    #   obtain additional results.
    #
    # @option params [Array<Types::ProjectListFilter>] :filters
    #   Information about filters to apply to narrow the results returned in
    #   the list.
    #
    # @return [Types::ListProjectsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProjectsResponse#next_token #next_token} => String
    #   * {Types::ListProjectsResponse#items #items} => Array&lt;Types::ProjectSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_projects({
    #     space_name: "NameString", # required
    #     next_token: "ListProjectsRequestNextTokenString",
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "hasAccessTo", # required, accepts hasAccessTo, name
    #         values: ["String"], # required
    #         comparison_operator: "EQ", # accepts EQ, GT, GE, LT, LE, BEGINS_WITH
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.items #=> Array
    #   resp.items[0].name #=> String
    #   resp.items[0].display_name #=> String
    #   resp.items[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ListProjects AWS API Documentation
    #
    # @overload list_projects(params = {})
    # @param [Hash] params ({})
    def list_projects(params = {}, options = {})
      req = build_request(:list_projects, params)
      req.send_request(options)
    end

    # Retrieves a list of source repositories in a project.
    #
    # @option params [required, String] :space_name
    #   The name of the space.
    #
    # @option params [required, String] :project_name
    #   The name of the project in the space.
    #
    # @option params [String] :next_token
    #   A token returned from a call to this API to indicate the next batch of
    #   results to return, if any.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to show in a single call to this API. If
    #   the number of results is larger than the number you specified, the
    #   response will include a `NextToken` element, which you can use to
    #   obtain additional results.
    #
    # @return [Types::ListSourceRepositoriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSourceRepositoriesResponse#items #items} => Array&lt;Types::ListSourceRepositoriesItem&gt;
    #   * {Types::ListSourceRepositoriesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_source_repositories({
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     next_token: "ListSourceRepositoriesRequestNextTokenString",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].last_updated_time #=> Time
    #   resp.items[0].created_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ListSourceRepositories AWS API Documentation
    #
    # @overload list_source_repositories(params = {})
    # @param [Hash] params ({})
    def list_source_repositories(params = {}, options = {})
      req = build_request(:list_source_repositories, params)
      req.send_request(options)
    end

    # Retrieves a list of branches in a specified source repository.
    #
    # @option params [required, String] :space_name
    #   The name of the space.
    #
    # @option params [required, String] :project_name
    #   The name of the project in the space.
    #
    # @option params [required, String] :source_repository_name
    #   The name of the source repository.
    #
    # @option params [String] :next_token
    #   A token returned from a call to this API to indicate the next batch of
    #   results to return, if any.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to show in a single call to this API. If
    #   the number of results is larger than the number you specified, the
    #   response will include a `NextToken` element, which you can use to
    #   obtain additional results.
    #
    # @return [Types::ListSourceRepositoryBranchesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSourceRepositoryBranchesResponse#next_token #next_token} => String
    #   * {Types::ListSourceRepositoryBranchesResponse#items #items} => Array&lt;Types::ListSourceRepositoryBranchesItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_source_repository_branches({
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     source_repository_name: "SourceRepositoryNameString", # required
    #     next_token: "ListSourceRepositoryBranchesRequestNextTokenString",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.items #=> Array
    #   resp.items[0].ref #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].last_updated_time #=> Time
    #   resp.items[0].head_commit_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ListSourceRepositoryBranches AWS API Documentation
    #
    # @overload list_source_repository_branches(params = {})
    # @param [Hash] params ({})
    def list_source_repository_branches(params = {}, options = {})
      req = build_request(:list_source_repository_branches, params)
      req.send_request(options)
    end

    # Retrieves a list of spaces.
    #
    # @option params [String] :next_token
    #   A token returned from a call to this API to indicate the next batch of
    #   results to return, if any.
    #
    # @return [Types::ListSpacesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSpacesResponse#next_token #next_token} => String
    #   * {Types::ListSpacesResponse#items #items} => Array&lt;Types::SpaceSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_spaces({
    #     next_token: "ListSpacesRequestNextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.items #=> Array
    #   resp.items[0].name #=> String
    #   resp.items[0].region_name #=> String
    #   resp.items[0].display_name #=> String
    #   resp.items[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ListSpaces AWS API Documentation
    #
    # @overload list_spaces(params = {})
    # @param [Hash] params ({})
    def list_spaces(params = {}, options = {})
      req = build_request(:list_spaces, params)
      req.send_request(options)
    end

    # Retrieves a list of workflow runs of a specified workflow.
    #
    # @option params [required, String] :space_name
    #   The name of the space.
    #
    # @option params [String] :workflow_id
    #   The ID of the workflow. To retrieve a list of workflow IDs, use
    #   ListWorkflows.
    #
    # @option params [required, String] :project_name
    #   The name of the project in the space.
    #
    # @option params [String] :next_token
    #   A token returned from a call to this API to indicate the next batch of
    #   results to return, if any.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to show in a single call to this API. If
    #   the number of results is larger than the number you specified, the
    #   response will include a `NextToken` element, which you can use to
    #   obtain additional results.
    #
    # @option params [Array<Types::WorkflowRunSortCriteria>] :sort_by
    #   Information used to sort the items in the returned list.
    #
    # @return [Types::ListWorkflowRunsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkflowRunsResponse#next_token #next_token} => String
    #   * {Types::ListWorkflowRunsResponse#items #items} => Array&lt;Types::WorkflowRunSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workflow_runs({
    #     space_name: "NameString", # required
    #     workflow_id: "Uuid",
    #     project_name: "ListWorkflowRunsRequestProjectNameString", # required
    #     next_token: "ListWorkflowRunsRequestNextTokenString",
    #     max_results: 1,
    #     sort_by: [
    #       {
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].workflow_id #=> String
    #   resp.items[0].workflow_name #=> String
    #   resp.items[0].status #=> String, one of "SUCCEEDED", "FAILED", "STOPPED", "SUPERSEDED", "CANCELLED", "NOT_RUN", "VALIDATING", "PROVISIONING", "IN_PROGRESS", "STOPPING", "ABANDONED"
    #   resp.items[0].status_reasons #=> Array
    #   resp.items[0].start_time #=> Time
    #   resp.items[0].end_time #=> Time
    #   resp.items[0].last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ListWorkflowRuns AWS API Documentation
    #
    # @overload list_workflow_runs(params = {})
    # @param [Hash] params ({})
    def list_workflow_runs(params = {}, options = {})
      req = build_request(:list_workflow_runs, params)
      req.send_request(options)
    end

    # Retrieves a list of workflows in a specified project.
    #
    # @option params [required, String] :space_name
    #   The name of the space.
    #
    # @option params [required, String] :project_name
    #   The name of the project in the space.
    #
    # @option params [String] :next_token
    #   A token returned from a call to this API to indicate the next batch of
    #   results to return, if any.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to show in a single call to this API. If
    #   the number of results is larger than the number you specified, the
    #   response will include a `NextToken` element, which you can use to
    #   obtain additional results.
    #
    # @option params [Array<Types::WorkflowSortCriteria>] :sort_by
    #   Information used to sort the items in the returned list.
    #
    # @return [Types::ListWorkflowsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkflowsResponse#next_token #next_token} => String
    #   * {Types::ListWorkflowsResponse#items #items} => Array&lt;Types::WorkflowSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workflows({
    #     space_name: "ListWorkflowsRequestSpaceNameString", # required
    #     project_name: "NameString", # required
    #     next_token: "ListWorkflowsRequestNextTokenString",
    #     max_results: 1,
    #     sort_by: [
    #       {
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].source_repository_name #=> String
    #   resp.items[0].source_branch_name #=> String
    #   resp.items[0].definition.path #=> String
    #   resp.items[0].created_time #=> Time
    #   resp.items[0].last_updated_time #=> Time
    #   resp.items[0].run_mode #=> String, one of "QUEUED", "PARALLEL", "SUPERSEDED"
    #   resp.items[0].status #=> String, one of "INVALID", "ACTIVE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ListWorkflows AWS API Documentation
    #
    # @overload list_workflows(params = {})
    # @param [Hash] params ({})
    def list_workflows(params = {}, options = {})
      req = build_request(:list_workflows, params)
      req.send_request(options)
    end

    # Starts a specified Dev Environment and puts it into an active state.
    #
    # @option params [required, String] :space_name
    #   The name of the space.
    #
    # @option params [required, String] :project_name
    #   The name of the project in the space.
    #
    # @option params [required, String] :id
    #   The system-generated unique ID of the Dev Environment.
    #
    # @option params [Array<Types::IdeConfiguration>] :ides
    #   Information about the integrated development environment (IDE)
    #   configured for a Dev Environment.
    #
    # @option params [String] :instance_type
    #   The Amazon EC2 instace type to use for the Dev Environment.
    #
    # @option params [Integer] :inactivity_timeout_minutes
    #   The amount of time the Dev Environment will run without any activity
    #   detected before stopping, in minutes. Only whole integers are allowed.
    #   Dev Environments consume compute minutes when running.
    #
    # @return [Types::StartDevEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDevEnvironmentResponse#space_name #space_name} => String
    #   * {Types::StartDevEnvironmentResponse#project_name #project_name} => String
    #   * {Types::StartDevEnvironmentResponse#id #id} => String
    #   * {Types::StartDevEnvironmentResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_dev_environment({
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     id: "Uuid", # required
    #     ides: [
    #       {
    #         runtime: "IdeConfigurationRuntimeString",
    #         name: "IdeConfigurationNameString",
    #       },
    #     ],
    #     instance_type: "dev.standard1.small", # accepts dev.standard1.small, dev.standard1.medium, dev.standard1.large, dev.standard1.xlarge
    #     inactivity_timeout_minutes: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.space_name #=> String
    #   resp.project_name #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "PENDING", "RUNNING", "STARTING", "STOPPING", "STOPPED", "FAILED", "DELETING", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/StartDevEnvironment AWS API Documentation
    #
    # @overload start_dev_environment(params = {})
    # @param [Hash] params ({})
    def start_dev_environment(params = {}, options = {})
      req = build_request(:start_dev_environment, params)
      req.send_request(options)
    end

    # Starts a session for a specified Dev Environment.
    #
    # @option params [required, String] :space_name
    #   The name of the space.
    #
    # @option params [required, String] :project_name
    #   The name of the project in the space.
    #
    # @option params [required, String] :id
    #   The system-generated unique ID of the Dev Environment.
    #
    # @option params [required, Types::DevEnvironmentSessionConfiguration] :session_configuration
    #   Information about the configuration of a Dev Environment session.
    #
    # @return [Types::StartDevEnvironmentSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDevEnvironmentSessionResponse#access_details #access_details} => Types::DevEnvironmentAccessDetails
    #   * {Types::StartDevEnvironmentSessionResponse#session_id #session_id} => String
    #   * {Types::StartDevEnvironmentSessionResponse#space_name #space_name} => String
    #   * {Types::StartDevEnvironmentSessionResponse#project_name #project_name} => String
    #   * {Types::StartDevEnvironmentSessionResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_dev_environment_session({
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     id: "Uuid", # required
    #     session_configuration: { # required
    #       session_type: "SSM", # required, accepts SSM, SSH
    #       execute_command_session_configuration: {
    #         command: "ExecuteCommandSessionConfigurationCommandString", # required
    #         arguments: ["ExecuteCommandSessionConfigurationArgumentsMemberString"],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.access_details.stream_url #=> String
    #   resp.access_details.token_value #=> String
    #   resp.session_id #=> String
    #   resp.space_name #=> String
    #   resp.project_name #=> String
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/StartDevEnvironmentSession AWS API Documentation
    #
    # @overload start_dev_environment_session(params = {})
    # @param [Hash] params ({})
    def start_dev_environment_session(params = {}, options = {})
      req = build_request(:start_dev_environment_session, params)
      req.send_request(options)
    end

    # Begins a run of a specified workflow.
    #
    # @option params [required, String] :space_name
    #   The name of the space.
    #
    # @option params [required, String] :project_name
    #   The name of the project in the space.
    #
    # @option params [required, String] :workflow_id
    #   The system-generated unique ID of the workflow. To retrieve a list of
    #   workflow IDs, use ListWorkflows.
    #
    # @option params [String] :client_token
    #   A user-specified idempotency token. Idempotency ensures that an API
    #   request completes only once. With an idempotent request, if the
    #   original request completes successfully, the subsequent retries return
    #   the result from the original successful request and have no additional
    #   effect.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartWorkflowRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartWorkflowRunResponse#space_name #space_name} => String
    #   * {Types::StartWorkflowRunResponse#project_name #project_name} => String
    #   * {Types::StartWorkflowRunResponse#id #id} => String
    #   * {Types::StartWorkflowRunResponse#workflow_id #workflow_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_workflow_run({
    #     space_name: "StartWorkflowRunRequestSpaceNameString", # required
    #     project_name: "StartWorkflowRunRequestProjectNameString", # required
    #     workflow_id: "Uuid", # required
    #     client_token: "StartWorkflowRunRequestClientTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.space_name #=> String
    #   resp.project_name #=> String
    #   resp.id #=> String
    #   resp.workflow_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/StartWorkflowRun AWS API Documentation
    #
    # @overload start_workflow_run(params = {})
    # @param [Hash] params ({})
    def start_workflow_run(params = {}, options = {})
      req = build_request(:start_workflow_run, params)
      req.send_request(options)
    end

    # Pauses a specified Dev Environment and places it in a non-running
    # state. Stopped Dev Environments do not consume compute minutes.
    #
    # @option params [required, String] :space_name
    #   The name of the space.
    #
    # @option params [required, String] :project_name
    #   The name of the project in the space.
    #
    # @option params [required, String] :id
    #   The system-generated unique ID of the Dev Environment.
    #
    # @return [Types::StopDevEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopDevEnvironmentResponse#space_name #space_name} => String
    #   * {Types::StopDevEnvironmentResponse#project_name #project_name} => String
    #   * {Types::StopDevEnvironmentResponse#id #id} => String
    #   * {Types::StopDevEnvironmentResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_dev_environment({
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     id: "Uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.space_name #=> String
    #   resp.project_name #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "PENDING", "RUNNING", "STARTING", "STOPPING", "STOPPED", "FAILED", "DELETING", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/StopDevEnvironment AWS API Documentation
    #
    # @overload stop_dev_environment(params = {})
    # @param [Hash] params ({})
    def stop_dev_environment(params = {}, options = {})
      req = build_request(:stop_dev_environment, params)
      req.send_request(options)
    end

    # Stops a session for a specified Dev Environment.
    #
    # @option params [required, String] :space_name
    #   The name of the space.
    #
    # @option params [required, String] :project_name
    #   The name of the project in the space.
    #
    # @option params [required, String] :id
    #   The system-generated unique ID of the Dev Environment. To obtain this
    #   ID, use ListDevEnvironments.
    #
    # @option params [required, String] :session_id
    #   The system-generated unique ID of the Dev Environment session. This ID
    #   is returned by StartDevEnvironmentSession.
    #
    # @return [Types::StopDevEnvironmentSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopDevEnvironmentSessionResponse#space_name #space_name} => String
    #   * {Types::StopDevEnvironmentSessionResponse#project_name #project_name} => String
    #   * {Types::StopDevEnvironmentSessionResponse#id #id} => String
    #   * {Types::StopDevEnvironmentSessionResponse#session_id #session_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_dev_environment_session({
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     id: "Uuid", # required
    #     session_id: "StopDevEnvironmentSessionRequestSessionIdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.space_name #=> String
    #   resp.project_name #=> String
    #   resp.id #=> String
    #   resp.session_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/StopDevEnvironmentSession AWS API Documentation
    #
    # @overload stop_dev_environment_session(params = {})
    # @param [Hash] params ({})
    def stop_dev_environment_session(params = {}, options = {})
      req = build_request(:stop_dev_environment_session, params)
      req.send_request(options)
    end

    # Changes one or more values for a Dev Environment. Updating certain
    # values of the Dev Environment will cause a restart.
    #
    # @option params [required, String] :space_name
    #   The name of the space.
    #
    # @option params [required, String] :project_name
    #   The name of the project in the space.
    #
    # @option params [required, String] :id
    #   The system-generated unique ID of the Dev Environment.
    #
    # @option params [String] :alias
    #   The user-specified alias for the Dev Environment. Changing this value
    #   will not cause a restart.
    #
    # @option params [Array<Types::IdeConfiguration>] :ides
    #   Information about the integrated development environment (IDE)
    #   configured for a Dev Environment.
    #
    # @option params [String] :instance_type
    #   The Amazon EC2 instace type to use for the Dev Environment.
    #
    #   <note markdown="1"> Changing this value will cause a restart of the Dev Environment if it
    #   is running.
    #
    #    </note>
    #
    # @option params [Integer] :inactivity_timeout_minutes
    #   The amount of time the Dev Environment will run without any activity
    #   detected before stopping, in minutes. Only whole integers are allowed.
    #   Dev Environments consume compute minutes when running.
    #
    #   <note markdown="1"> Changing this value will cause a restart of the Dev Environment if it
    #   is running.
    #
    #    </note>
    #
    # @option params [String] :client_token
    #   A user-specified idempotency token. Idempotency ensures that an API
    #   request completes only once. With an idempotent request, if the
    #   original request completes successfully, the subsequent retries return
    #   the result from the original successful request and have no additional
    #   effect.
    #
    # @return [Types::UpdateDevEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDevEnvironmentResponse#id #id} => String
    #   * {Types::UpdateDevEnvironmentResponse#space_name #space_name} => String
    #   * {Types::UpdateDevEnvironmentResponse#project_name #project_name} => String
    #   * {Types::UpdateDevEnvironmentResponse#alias #alias} => String
    #   * {Types::UpdateDevEnvironmentResponse#ides #ides} => Array&lt;Types::IdeConfiguration&gt;
    #   * {Types::UpdateDevEnvironmentResponse#instance_type #instance_type} => String
    #   * {Types::UpdateDevEnvironmentResponse#inactivity_timeout_minutes #inactivity_timeout_minutes} => Integer
    #   * {Types::UpdateDevEnvironmentResponse#client_token #client_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dev_environment({
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     id: "Uuid", # required
    #     alias: "UpdateDevEnvironmentRequestAliasString",
    #     ides: [
    #       {
    #         runtime: "IdeConfigurationRuntimeString",
    #         name: "IdeConfigurationNameString",
    #       },
    #     ],
    #     instance_type: "dev.standard1.small", # accepts dev.standard1.small, dev.standard1.medium, dev.standard1.large, dev.standard1.xlarge
    #     inactivity_timeout_minutes: 1,
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.space_name #=> String
    #   resp.project_name #=> String
    #   resp.alias #=> String
    #   resp.ides #=> Array
    #   resp.ides[0].runtime #=> String
    #   resp.ides[0].name #=> String
    #   resp.instance_type #=> String, one of "dev.standard1.small", "dev.standard1.medium", "dev.standard1.large", "dev.standard1.xlarge"
    #   resp.inactivity_timeout_minutes #=> Integer
    #   resp.client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/UpdateDevEnvironment AWS API Documentation
    #
    # @overload update_dev_environment(params = {})
    # @param [Hash] params ({})
    def update_dev_environment(params = {}, options = {})
      req = build_request(:update_dev_environment, params)
      req.send_request(options)
    end

    # Changes one or more values for a project.
    #
    # @option params [required, String] :space_name
    #   The name of the space.
    #
    # @option params [required, String] :name
    #   The name of the project.
    #
    # @option params [String] :description
    #   The description of the project.
    #
    # @return [Types::UpdateProjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProjectResponse#space_name #space_name} => String
    #   * {Types::UpdateProjectResponse#name #name} => String
    #   * {Types::UpdateProjectResponse#display_name #display_name} => String
    #   * {Types::UpdateProjectResponse#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_project({
    #     space_name: "NameString", # required
    #     name: "NameString", # required
    #     description: "ProjectDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.space_name #=> String
    #   resp.name #=> String
    #   resp.display_name #=> String
    #   resp.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/UpdateProject AWS API Documentation
    #
    # @overload update_project(params = {})
    # @param [Hash] params ({})
    def update_project(params = {}, options = {})
      req = build_request(:update_project, params)
      req.send_request(options)
    end

    # Changes one or more values for a space.
    #
    # @option params [required, String] :name
    #   The name of the space.
    #
    # @option params [String] :description
    #   The description of the space.
    #
    # @return [Types::UpdateSpaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSpaceResponse#name #name} => String
    #   * {Types::UpdateSpaceResponse#display_name #display_name} => String
    #   * {Types::UpdateSpaceResponse#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_space({
    #     name: "NameString", # required
    #     description: "SpaceDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.display_name #=> String
    #   resp.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/UpdateSpace AWS API Documentation
    #
    # @overload update_space(params = {})
    # @param [Hash] params ({})
    def update_space(params = {}, options = {})
      req = build_request(:update_space, params)
      req.send_request(options)
    end

    # Verifies whether the calling user has a valid Amazon CodeCatalyst
    # login and session. If successful, this returns the ID of the user in
    # Amazon CodeCatalyst.
    #
    # @return [Types::VerifySessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VerifySessionResponse#identity #identity} => String
    #
    # @example Response structure
    #
    #   resp.identity #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/VerifySession AWS API Documentation
    #
    # @overload verify_session(params = {})
    # @param [Hash] params ({})
    def verify_session(params = {}, options = {})
      req = build_request(:verify_session, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::CodeCatalyst')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-codecatalyst'
      context[:gem_version] = '1.39.0'
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
