# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/request_compression.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:amplifybackend)

module Aws::AmplifyBackend
  # An API client for AmplifyBackend.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::AmplifyBackend::Client.new(
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

    @identifier = :amplifybackend

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
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::AmplifyBackend::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
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
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting ENV['AWS_EC2_METADATA_DISABLED']
    #       to true.
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
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
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
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
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
    #
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/<sdk_ua_app_id>. It should have a
    #     maximum length of 50.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
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
    #   @option options [Aws::TokenProvider] :token_provider
    #     A Bearer Token Provider. This can be an instance of any one of the
    #     following classes:
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
    #   @option options [Aws::AmplifyBackend::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::AmplifyBackend::EndpointParameters`
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Float] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set per-request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session.
    #
    #   @option options [Float] :ssl_timeout (nil) Sets the SSL timeout
    #     in seconds.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # This operation clones an existing backend.
    #
    # @option params [required, String] :app_id
    #
    # @option params [required, String] :backend_environment_name
    #
    # @option params [required, String] :target_environment_name
    #
    # @return [Types::CloneBackendResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CloneBackendResponse#app_id #app_id} => String
    #   * {Types::CloneBackendResponse#backend_environment_name #backend_environment_name} => String
    #   * {Types::CloneBackendResponse#error #error} => String
    #   * {Types::CloneBackendResponse#job_id #job_id} => String
    #   * {Types::CloneBackendResponse#operation #operation} => String
    #   * {Types::CloneBackendResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.clone_backend({
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     target_environment_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #   resp.backend_environment_name #=> String
    #   resp.error #=> String
    #   resp.job_id #=> String
    #   resp.operation #=> String
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CloneBackend AWS API Documentation
    #
    # @overload clone_backend(params = {})
    # @param [Hash] params ({})
    def clone_backend(params = {}, options = {})
      req = build_request(:clone_backend, params)
      req.send_request(options)
    end

    # This operation creates a backend for an Amplify app. Backends are
    # automatically created at the time of app creation.
    #
    # @option params [required, String] :app_id
    #
    # @option params [required, String] :app_name
    #
    # @option params [required, String] :backend_environment_name
    #
    # @option params [Types::ResourceConfig] :resource_config
    #
    # @option params [String] :resource_name
    #
    # @return [Types::CreateBackendResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBackendResponse#app_id #app_id} => String
    #   * {Types::CreateBackendResponse#backend_environment_name #backend_environment_name} => String
    #   * {Types::CreateBackendResponse#error #error} => String
    #   * {Types::CreateBackendResponse#job_id #job_id} => String
    #   * {Types::CreateBackendResponse#operation #operation} => String
    #   * {Types::CreateBackendResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_backend({
    #     app_id: "__string", # required
    #     app_name: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_config: {
    #     },
    #     resource_name: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #   resp.backend_environment_name #=> String
    #   resp.error #=> String
    #   resp.job_id #=> String
    #   resp.operation #=> String
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackend AWS API Documentation
    #
    # @overload create_backend(params = {})
    # @param [Hash] params ({})
    def create_backend(params = {}, options = {})
      req = build_request(:create_backend, params)
      req.send_request(options)
    end

    # Creates a new backend API resource.
    #
    # @option params [required, String] :app_id
    #
    # @option params [required, String] :backend_environment_name
    #
    # @option params [required, Types::BackendAPIResourceConfig] :resource_config
    #   The resource config for the data model, configured as a part of the
    #   Amplify project.
    #
    # @option params [required, String] :resource_name
    #
    # @return [Types::CreateBackendAPIResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBackendAPIResponse#app_id #app_id} => String
    #   * {Types::CreateBackendAPIResponse#backend_environment_name #backend_environment_name} => String
    #   * {Types::CreateBackendAPIResponse#error #error} => String
    #   * {Types::CreateBackendAPIResponse#job_id #job_id} => String
    #   * {Types::CreateBackendAPIResponse#operation #operation} => String
    #   * {Types::CreateBackendAPIResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_backend_api({
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_config: { # required
    #       additional_auth_types: [
    #         {
    #           mode: "API_KEY", # accepts API_KEY, AWS_IAM, AMAZON_COGNITO_USER_POOLS, OPENID_CONNECT
    #           settings: {
    #             cognito_user_pool_id: "__string",
    #             description: "__string",
    #             expiration_time: 1.0,
    #             open_id_auth_ttl: "__string",
    #             open_id_client_id: "__string",
    #             open_id_iat_ttl: "__string",
    #             open_id_issue_url: "__string",
    #             open_id_provider_name: "__string",
    #           },
    #         },
    #       ],
    #       api_name: "__string",
    #       conflict_resolution: {
    #         resolution_strategy: "OPTIMISTIC_CONCURRENCY", # accepts OPTIMISTIC_CONCURRENCY, LAMBDA, AUTOMERGE, NONE
    #       },
    #       default_auth_type: {
    #         mode: "API_KEY", # accepts API_KEY, AWS_IAM, AMAZON_COGNITO_USER_POOLS, OPENID_CONNECT
    #         settings: {
    #           cognito_user_pool_id: "__string",
    #           description: "__string",
    #           expiration_time: 1.0,
    #           open_id_auth_ttl: "__string",
    #           open_id_client_id: "__string",
    #           open_id_iat_ttl: "__string",
    #           open_id_issue_url: "__string",
    #           open_id_provider_name: "__string",
    #         },
    #       },
    #       service: "__string",
    #       transform_schema: "__string",
    #     },
    #     resource_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #   resp.backend_environment_name #=> String
    #   resp.error #=> String
    #   resp.job_id #=> String
    #   resp.operation #=> String
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendAPI AWS API Documentation
    #
    # @overload create_backend_api(params = {})
    # @param [Hash] params ({})
    def create_backend_api(params = {}, options = {})
      req = build_request(:create_backend_api, params)
      req.send_request(options)
    end

    # Creates a new backend authentication resource.
    #
    # @option params [required, String] :app_id
    #
    # @option params [required, String] :backend_environment_name
    #
    # @option params [required, Types::CreateBackendAuthResourceConfig] :resource_config
    #   Defines the resource configuration when creating an auth resource in
    #   your Amplify project.
    #
    # @option params [required, String] :resource_name
    #
    # @return [Types::CreateBackendAuthResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBackendAuthResponse#app_id #app_id} => String
    #   * {Types::CreateBackendAuthResponse#backend_environment_name #backend_environment_name} => String
    #   * {Types::CreateBackendAuthResponse#error #error} => String
    #   * {Types::CreateBackendAuthResponse#job_id #job_id} => String
    #   * {Types::CreateBackendAuthResponse#operation #operation} => String
    #   * {Types::CreateBackendAuthResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_backend_auth({
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_config: { # required
    #       auth_resources: "USER_POOL_ONLY", # required, accepts USER_POOL_ONLY, IDENTITY_POOL_AND_USER_POOL
    #       identity_pool_configs: {
    #         identity_pool_name: "__string", # required
    #         unauthenticated_login: false, # required
    #       },
    #       service: "COGNITO", # required, accepts COGNITO
    #       user_pool_configs: { # required
    #         forgot_password: {
    #           delivery_method: "EMAIL", # required, accepts EMAIL, SMS
    #           email_settings: {
    #             email_message: "__string",
    #             email_subject: "__string",
    #           },
    #           sms_settings: {
    #             sms_message: "__string",
    #           },
    #         },
    #         mfa: {
    #           mfa_mode: "ON", # required, accepts ON, OFF, OPTIONAL
    #           settings: {
    #             mfa_types: ["SMS"], # accepts SMS, TOTP
    #             sms_message: "__string",
    #           },
    #         },
    #         o_auth: {
    #           domain_prefix: "__string",
    #           o_auth_grant_type: "CODE", # required, accepts CODE, IMPLICIT
    #           o_auth_scopes: ["PHONE"], # required, accepts PHONE, EMAIL, OPENID, PROFILE, AWS_COGNITO_SIGNIN_USER_ADMIN
    #           redirect_sign_in_ur_is: ["__string"], # required
    #           redirect_sign_out_ur_is: ["__string"], # required
    #           social_provider_settings: {
    #             facebook: {
    #               client_id: "__string",
    #               client_secret: "__string",
    #             },
    #             google: {
    #               client_id: "__string",
    #               client_secret: "__string",
    #             },
    #             login_with_amazon: {
    #               client_id: "__string",
    #               client_secret: "__string",
    #             },
    #             sign_in_with_apple: {
    #               client_id: "__string",
    #               key_id: "__string",
    #               private_key: "__string",
    #               team_id: "__string",
    #             },
    #           },
    #         },
    #         password_policy: {
    #           additional_constraints: ["REQUIRE_DIGIT"], # accepts REQUIRE_DIGIT, REQUIRE_LOWERCASE, REQUIRE_SYMBOL, REQUIRE_UPPERCASE
    #           minimum_length: 1.0, # required
    #         },
    #         required_sign_up_attributes: ["ADDRESS"], # required, accepts ADDRESS, BIRTHDATE, EMAIL, FAMILY_NAME, GENDER, GIVEN_NAME, LOCALE, MIDDLE_NAME, NAME, NICKNAME, PHONE_NUMBER, PICTURE, PREFERRED_USERNAME, PROFILE, UPDATED_AT, WEBSITE, ZONE_INFO
    #         sign_in_method: "EMAIL", # required, accepts EMAIL, EMAIL_AND_PHONE_NUMBER, PHONE_NUMBER, USERNAME
    #         user_pool_name: "__string", # required
    #         verification_message: {
    #           delivery_method: "EMAIL", # required, accepts EMAIL, SMS
    #           email_settings: {
    #             email_message: "__string",
    #             email_subject: "__string",
    #           },
    #           sms_settings: {
    #             sms_message: "__string",
    #           },
    #         },
    #       },
    #     },
    #     resource_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #   resp.backend_environment_name #=> String
    #   resp.error #=> String
    #   resp.job_id #=> String
    #   resp.operation #=> String
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendAuth AWS API Documentation
    #
    # @overload create_backend_auth(params = {})
    # @param [Hash] params ({})
    def create_backend_auth(params = {}, options = {})
      req = build_request(:create_backend_auth, params)
      req.send_request(options)
    end

    # Creates a config object for a backend.
    #
    # @option params [required, String] :app_id
    #
    # @option params [String] :backend_manager_app_id
    #
    # @return [Types::CreateBackendConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBackendConfigResponse#app_id #app_id} => String
    #   * {Types::CreateBackendConfigResponse#backend_environment_name #backend_environment_name} => String
    #   * {Types::CreateBackendConfigResponse#job_id #job_id} => String
    #   * {Types::CreateBackendConfigResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_backend_config({
    #     app_id: "__string", # required
    #     backend_manager_app_id: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #   resp.backend_environment_name #=> String
    #   resp.job_id #=> String
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendConfig AWS API Documentation
    #
    # @overload create_backend_config(params = {})
    # @param [Hash] params ({})
    def create_backend_config(params = {}, options = {})
      req = build_request(:create_backend_config, params)
      req.send_request(options)
    end

    # Creates a backend storage resource.
    #
    # @option params [required, String] :app_id
    #
    # @option params [required, String] :backend_environment_name
    #
    # @option params [required, Types::CreateBackendStorageResourceConfig] :resource_config
    #   The resource configuration for creating backend storage.
    #
    # @option params [required, String] :resource_name
    #
    # @return [Types::CreateBackendStorageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBackendStorageResponse#app_id #app_id} => String
    #   * {Types::CreateBackendStorageResponse#backend_environment_name #backend_environment_name} => String
    #   * {Types::CreateBackendStorageResponse#job_id #job_id} => String
    #   * {Types::CreateBackendStorageResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_backend_storage({
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_config: { # required
    #       bucket_name: "__string",
    #       permissions: { # required
    #         authenticated: ["READ"], # required, accepts READ, CREATE_AND_UPDATE, DELETE
    #         un_authenticated: ["READ"], # accepts READ, CREATE_AND_UPDATE, DELETE
    #       },
    #       service_name: "S3", # required, accepts S3
    #     },
    #     resource_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #   resp.backend_environment_name #=> String
    #   resp.job_id #=> String
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateBackendStorage AWS API Documentation
    #
    # @overload create_backend_storage(params = {})
    # @param [Hash] params ({})
    def create_backend_storage(params = {}, options = {})
      req = build_request(:create_backend_storage, params)
      req.send_request(options)
    end

    # Generates a one-time challenge code to authenticate a user into your
    # Amplify Admin UI.
    #
    # @option params [required, String] :app_id
    #
    # @return [Types::CreateTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTokenResponse#app_id #app_id} => String
    #   * {Types::CreateTokenResponse#challenge_code #challenge_code} => String
    #   * {Types::CreateTokenResponse#session_id #session_id} => String
    #   * {Types::CreateTokenResponse#ttl #ttl} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_token({
    #     app_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #   resp.challenge_code #=> String
    #   resp.session_id #=> String
    #   resp.ttl #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/CreateToken AWS API Documentation
    #
    # @overload create_token(params = {})
    # @param [Hash] params ({})
    def create_token(params = {}, options = {})
      req = build_request(:create_token, params)
      req.send_request(options)
    end

    # Removes an existing environment from your Amplify project.
    #
    # @option params [required, String] :app_id
    #
    # @option params [required, String] :backend_environment_name
    #
    # @return [Types::DeleteBackendResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBackendResponse#app_id #app_id} => String
    #   * {Types::DeleteBackendResponse#backend_environment_name #backend_environment_name} => String
    #   * {Types::DeleteBackendResponse#error #error} => String
    #   * {Types::DeleteBackendResponse#job_id #job_id} => String
    #   * {Types::DeleteBackendResponse#operation #operation} => String
    #   * {Types::DeleteBackendResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backend({
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #   resp.backend_environment_name #=> String
    #   resp.error #=> String
    #   resp.job_id #=> String
    #   resp.operation #=> String
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/DeleteBackend AWS API Documentation
    #
    # @overload delete_backend(params = {})
    # @param [Hash] params ({})
    def delete_backend(params = {}, options = {})
      req = build_request(:delete_backend, params)
      req.send_request(options)
    end

    # Deletes an existing backend API resource.
    #
    # @option params [required, String] :app_id
    #
    # @option params [required, String] :backend_environment_name
    #
    # @option params [Types::BackendAPIResourceConfig] :resource_config
    #   The resource config for the data model, configured as a part of the
    #   Amplify project.
    #
    # @option params [required, String] :resource_name
    #
    # @return [Types::DeleteBackendAPIResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBackendAPIResponse#app_id #app_id} => String
    #   * {Types::DeleteBackendAPIResponse#backend_environment_name #backend_environment_name} => String
    #   * {Types::DeleteBackendAPIResponse#error #error} => String
    #   * {Types::DeleteBackendAPIResponse#job_id #job_id} => String
    #   * {Types::DeleteBackendAPIResponse#operation #operation} => String
    #   * {Types::DeleteBackendAPIResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backend_api({
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_config: {
    #       additional_auth_types: [
    #         {
    #           mode: "API_KEY", # accepts API_KEY, AWS_IAM, AMAZON_COGNITO_USER_POOLS, OPENID_CONNECT
    #           settings: {
    #             cognito_user_pool_id: "__string",
    #             description: "__string",
    #             expiration_time: 1.0,
    #             open_id_auth_ttl: "__string",
    #             open_id_client_id: "__string",
    #             open_id_iat_ttl: "__string",
    #             open_id_issue_url: "__string",
    #             open_id_provider_name: "__string",
    #           },
    #         },
    #       ],
    #       api_name: "__string",
    #       conflict_resolution: {
    #         resolution_strategy: "OPTIMISTIC_CONCURRENCY", # accepts OPTIMISTIC_CONCURRENCY, LAMBDA, AUTOMERGE, NONE
    #       },
    #       default_auth_type: {
    #         mode: "API_KEY", # accepts API_KEY, AWS_IAM, AMAZON_COGNITO_USER_POOLS, OPENID_CONNECT
    #         settings: {
    #           cognito_user_pool_id: "__string",
    #           description: "__string",
    #           expiration_time: 1.0,
    #           open_id_auth_ttl: "__string",
    #           open_id_client_id: "__string",
    #           open_id_iat_ttl: "__string",
    #           open_id_issue_url: "__string",
    #           open_id_provider_name: "__string",
    #         },
    #       },
    #       service: "__string",
    #       transform_schema: "__string",
    #     },
    #     resource_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #   resp.backend_environment_name #=> String
    #   resp.error #=> String
    #   resp.job_id #=> String
    #   resp.operation #=> String
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/DeleteBackendAPI AWS API Documentation
    #
    # @overload delete_backend_api(params = {})
    # @param [Hash] params ({})
    def delete_backend_api(params = {}, options = {})
      req = build_request(:delete_backend_api, params)
      req.send_request(options)
    end

    # Deletes an existing backend authentication resource.
    #
    # @option params [required, String] :app_id
    #
    # @option params [required, String] :backend_environment_name
    #
    # @option params [required, String] :resource_name
    #
    # @return [Types::DeleteBackendAuthResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBackendAuthResponse#app_id #app_id} => String
    #   * {Types::DeleteBackendAuthResponse#backend_environment_name #backend_environment_name} => String
    #   * {Types::DeleteBackendAuthResponse#error #error} => String
    #   * {Types::DeleteBackendAuthResponse#job_id #job_id} => String
    #   * {Types::DeleteBackendAuthResponse#operation #operation} => String
    #   * {Types::DeleteBackendAuthResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backend_auth({
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #   resp.backend_environment_name #=> String
    #   resp.error #=> String
    #   resp.job_id #=> String
    #   resp.operation #=> String
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/DeleteBackendAuth AWS API Documentation
    #
    # @overload delete_backend_auth(params = {})
    # @param [Hash] params ({})
    def delete_backend_auth(params = {}, options = {})
      req = build_request(:delete_backend_auth, params)
      req.send_request(options)
    end

    # Removes the specified backend storage resource.
    #
    # @option params [required, String] :app_id
    #
    # @option params [required, String] :backend_environment_name
    #
    # @option params [required, String] :resource_name
    #
    # @option params [required, String] :service_name
    #
    # @return [Types::DeleteBackendStorageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBackendStorageResponse#app_id #app_id} => String
    #   * {Types::DeleteBackendStorageResponse#backend_environment_name #backend_environment_name} => String
    #   * {Types::DeleteBackendStorageResponse#job_id #job_id} => String
    #   * {Types::DeleteBackendStorageResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backend_storage({
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_name: "__string", # required
    #     service_name: "S3", # required, accepts S3
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #   resp.backend_environment_name #=> String
    #   resp.job_id #=> String
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/DeleteBackendStorage AWS API Documentation
    #
    # @overload delete_backend_storage(params = {})
    # @param [Hash] params ({})
    def delete_backend_storage(params = {}, options = {})
      req = build_request(:delete_backend_storage, params)
      req.send_request(options)
    end

    # Deletes the challenge token based on the given appId and sessionId.
    #
    # @option params [required, String] :app_id
    #
    # @option params [required, String] :session_id
    #
    # @return [Types::DeleteTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTokenResponse#is_success #is_success} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_token({
    #     app_id: "__string", # required
    #     session_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.is_success #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/DeleteToken AWS API Documentation
    #
    # @overload delete_token(params = {})
    # @param [Hash] params ({})
    def delete_token(params = {}, options = {})
      req = build_request(:delete_token, params)
      req.send_request(options)
    end

    # Generates a model schema for an existing backend API resource.
    #
    # @option params [required, String] :app_id
    #
    # @option params [required, String] :backend_environment_name
    #
    # @option params [required, String] :resource_name
    #
    # @return [Types::GenerateBackendAPIModelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GenerateBackendAPIModelsResponse#app_id #app_id} => String
    #   * {Types::GenerateBackendAPIModelsResponse#backend_environment_name #backend_environment_name} => String
    #   * {Types::GenerateBackendAPIModelsResponse#error #error} => String
    #   * {Types::GenerateBackendAPIModelsResponse#job_id #job_id} => String
    #   * {Types::GenerateBackendAPIModelsResponse#operation #operation} => String
    #   * {Types::GenerateBackendAPIModelsResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_backend_api_models({
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #   resp.backend_environment_name #=> String
    #   resp.error #=> String
    #   resp.job_id #=> String
    #   resp.operation #=> String
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GenerateBackendAPIModels AWS API Documentation
    #
    # @overload generate_backend_api_models(params = {})
    # @param [Hash] params ({})
    def generate_backend_api_models(params = {}, options = {})
      req = build_request(:generate_backend_api_models, params)
      req.send_request(options)
    end

    # Provides project-level details for your Amplify UI project.
    #
    # @option params [required, String] :app_id
    #
    # @option params [String] :backend_environment_name
    #
    # @return [Types::GetBackendResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBackendResponse#amplify_feature_flags #amplify_feature_flags} => String
    #   * {Types::GetBackendResponse#amplify_meta_config #amplify_meta_config} => String
    #   * {Types::GetBackendResponse#app_id #app_id} => String
    #   * {Types::GetBackendResponse#app_name #app_name} => String
    #   * {Types::GetBackendResponse#backend_environment_list #backend_environment_list} => Array&lt;String&gt;
    #   * {Types::GetBackendResponse#backend_environment_name #backend_environment_name} => String
    #   * {Types::GetBackendResponse#error #error} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_backend({
    #     app_id: "__string", # required
    #     backend_environment_name: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.amplify_feature_flags #=> String
    #   resp.amplify_meta_config #=> String
    #   resp.app_id #=> String
    #   resp.app_name #=> String
    #   resp.backend_environment_list #=> Array
    #   resp.backend_environment_list[0] #=> String
    #   resp.backend_environment_name #=> String
    #   resp.error #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetBackend AWS API Documentation
    #
    # @overload get_backend(params = {})
    # @param [Hash] params ({})
    def get_backend(params = {}, options = {})
      req = build_request(:get_backend, params)
      req.send_request(options)
    end

    # Gets the details for a backend API.
    #
    # @option params [required, String] :app_id
    #
    # @option params [required, String] :backend_environment_name
    #
    # @option params [Types::BackendAPIResourceConfig] :resource_config
    #   The resource config for the data model, configured as a part of the
    #   Amplify project.
    #
    # @option params [required, String] :resource_name
    #
    # @return [Types::GetBackendAPIResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBackendAPIResponse#app_id #app_id} => String
    #   * {Types::GetBackendAPIResponse#backend_environment_name #backend_environment_name} => String
    #   * {Types::GetBackendAPIResponse#error #error} => String
    #   * {Types::GetBackendAPIResponse#resource_config #resource_config} => Types::BackendAPIResourceConfig
    #   * {Types::GetBackendAPIResponse#resource_name #resource_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_backend_api({
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_config: {
    #       additional_auth_types: [
    #         {
    #           mode: "API_KEY", # accepts API_KEY, AWS_IAM, AMAZON_COGNITO_USER_POOLS, OPENID_CONNECT
    #           settings: {
    #             cognito_user_pool_id: "__string",
    #             description: "__string",
    #             expiration_time: 1.0,
    #             open_id_auth_ttl: "__string",
    #             open_id_client_id: "__string",
    #             open_id_iat_ttl: "__string",
    #             open_id_issue_url: "__string",
    #             open_id_provider_name: "__string",
    #           },
    #         },
    #       ],
    #       api_name: "__string",
    #       conflict_resolution: {
    #         resolution_strategy: "OPTIMISTIC_CONCURRENCY", # accepts OPTIMISTIC_CONCURRENCY, LAMBDA, AUTOMERGE, NONE
    #       },
    #       default_auth_type: {
    #         mode: "API_KEY", # accepts API_KEY, AWS_IAM, AMAZON_COGNITO_USER_POOLS, OPENID_CONNECT
    #         settings: {
    #           cognito_user_pool_id: "__string",
    #           description: "__string",
    #           expiration_time: 1.0,
    #           open_id_auth_ttl: "__string",
    #           open_id_client_id: "__string",
    #           open_id_iat_ttl: "__string",
    #           open_id_issue_url: "__string",
    #           open_id_provider_name: "__string",
    #         },
    #       },
    #       service: "__string",
    #       transform_schema: "__string",
    #     },
    #     resource_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #   resp.backend_environment_name #=> String
    #   resp.error #=> String
    #   resp.resource_config.additional_auth_types #=> Array
    #   resp.resource_config.additional_auth_types[0].mode #=> String, one of "API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT"
    #   resp.resource_config.additional_auth_types[0].settings.cognito_user_pool_id #=> String
    #   resp.resource_config.additional_auth_types[0].settings.description #=> String
    #   resp.resource_config.additional_auth_types[0].settings.expiration_time #=> Float
    #   resp.resource_config.additional_auth_types[0].settings.open_id_auth_ttl #=> String
    #   resp.resource_config.additional_auth_types[0].settings.open_id_client_id #=> String
    #   resp.resource_config.additional_auth_types[0].settings.open_id_iat_ttl #=> String
    #   resp.resource_config.additional_auth_types[0].settings.open_id_issue_url #=> String
    #   resp.resource_config.additional_auth_types[0].settings.open_id_provider_name #=> String
    #   resp.resource_config.api_name #=> String
    #   resp.resource_config.conflict_resolution.resolution_strategy #=> String, one of "OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"
    #   resp.resource_config.default_auth_type.mode #=> String, one of "API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT"
    #   resp.resource_config.default_auth_type.settings.cognito_user_pool_id #=> String
    #   resp.resource_config.default_auth_type.settings.description #=> String
    #   resp.resource_config.default_auth_type.settings.expiration_time #=> Float
    #   resp.resource_config.default_auth_type.settings.open_id_auth_ttl #=> String
    #   resp.resource_config.default_auth_type.settings.open_id_client_id #=> String
    #   resp.resource_config.default_auth_type.settings.open_id_iat_ttl #=> String
    #   resp.resource_config.default_auth_type.settings.open_id_issue_url #=> String
    #   resp.resource_config.default_auth_type.settings.open_id_provider_name #=> String
    #   resp.resource_config.service #=> String
    #   resp.resource_config.transform_schema #=> String
    #   resp.resource_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetBackendAPI AWS API Documentation
    #
    # @overload get_backend_api(params = {})
    # @param [Hash] params ({})
    def get_backend_api(params = {}, options = {})
      req = build_request(:get_backend_api, params)
      req.send_request(options)
    end

    # Gets a model introspection schema for an existing backend API
    # resource.
    #
    # @option params [required, String] :app_id
    #
    # @option params [required, String] :backend_environment_name
    #
    # @option params [required, String] :resource_name
    #
    # @return [Types::GetBackendAPIModelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBackendAPIModelsResponse#models #models} => String
    #   * {Types::GetBackendAPIModelsResponse#status #status} => String
    #   * {Types::GetBackendAPIModelsResponse#model_introspection_schema #model_introspection_schema} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_backend_api_models({
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.models #=> String
    #   resp.status #=> String, one of "LATEST", "STALE"
    #   resp.model_introspection_schema #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetBackendAPIModels AWS API Documentation
    #
    # @overload get_backend_api_models(params = {})
    # @param [Hash] params ({})
    def get_backend_api_models(params = {}, options = {})
      req = build_request(:get_backend_api_models, params)
      req.send_request(options)
    end

    # Gets a backend auth details.
    #
    # @option params [required, String] :app_id
    #
    # @option params [required, String] :backend_environment_name
    #
    # @option params [required, String] :resource_name
    #
    # @return [Types::GetBackendAuthResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBackendAuthResponse#app_id #app_id} => String
    #   * {Types::GetBackendAuthResponse#backend_environment_name #backend_environment_name} => String
    #   * {Types::GetBackendAuthResponse#error #error} => String
    #   * {Types::GetBackendAuthResponse#resource_config #resource_config} => Types::CreateBackendAuthResourceConfig
    #   * {Types::GetBackendAuthResponse#resource_name #resource_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_backend_auth({
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #   resp.backend_environment_name #=> String
    #   resp.error #=> String
    #   resp.resource_config.auth_resources #=> String, one of "USER_POOL_ONLY", "IDENTITY_POOL_AND_USER_POOL"
    #   resp.resource_config.identity_pool_configs.identity_pool_name #=> String
    #   resp.resource_config.identity_pool_configs.unauthenticated_login #=> Boolean
    #   resp.resource_config.service #=> String, one of "COGNITO"
    #   resp.resource_config.user_pool_configs.forgot_password.delivery_method #=> String, one of "EMAIL", "SMS"
    #   resp.resource_config.user_pool_configs.forgot_password.email_settings.email_message #=> String
    #   resp.resource_config.user_pool_configs.forgot_password.email_settings.email_subject #=> String
    #   resp.resource_config.user_pool_configs.forgot_password.sms_settings.sms_message #=> String
    #   resp.resource_config.user_pool_configs.mfa.mfa_mode #=> String, one of "ON", "OFF", "OPTIONAL"
    #   resp.resource_config.user_pool_configs.mfa.settings.mfa_types #=> Array
    #   resp.resource_config.user_pool_configs.mfa.settings.mfa_types[0] #=> String, one of "SMS", "TOTP"
    #   resp.resource_config.user_pool_configs.mfa.settings.sms_message #=> String
    #   resp.resource_config.user_pool_configs.o_auth.domain_prefix #=> String
    #   resp.resource_config.user_pool_configs.o_auth.o_auth_grant_type #=> String, one of "CODE", "IMPLICIT"
    #   resp.resource_config.user_pool_configs.o_auth.o_auth_scopes #=> Array
    #   resp.resource_config.user_pool_configs.o_auth.o_auth_scopes[0] #=> String, one of "PHONE", "EMAIL", "OPENID", "PROFILE", "AWS_COGNITO_SIGNIN_USER_ADMIN"
    #   resp.resource_config.user_pool_configs.o_auth.redirect_sign_in_ur_is #=> Array
    #   resp.resource_config.user_pool_configs.o_auth.redirect_sign_in_ur_is[0] #=> String
    #   resp.resource_config.user_pool_configs.o_auth.redirect_sign_out_ur_is #=> Array
    #   resp.resource_config.user_pool_configs.o_auth.redirect_sign_out_ur_is[0] #=> String
    #   resp.resource_config.user_pool_configs.o_auth.social_provider_settings.facebook.client_id #=> String
    #   resp.resource_config.user_pool_configs.o_auth.social_provider_settings.facebook.client_secret #=> String
    #   resp.resource_config.user_pool_configs.o_auth.social_provider_settings.google.client_id #=> String
    #   resp.resource_config.user_pool_configs.o_auth.social_provider_settings.google.client_secret #=> String
    #   resp.resource_config.user_pool_configs.o_auth.social_provider_settings.login_with_amazon.client_id #=> String
    #   resp.resource_config.user_pool_configs.o_auth.social_provider_settings.login_with_amazon.client_secret #=> String
    #   resp.resource_config.user_pool_configs.o_auth.social_provider_settings.sign_in_with_apple.client_id #=> String
    #   resp.resource_config.user_pool_configs.o_auth.social_provider_settings.sign_in_with_apple.key_id #=> String
    #   resp.resource_config.user_pool_configs.o_auth.social_provider_settings.sign_in_with_apple.private_key #=> String
    #   resp.resource_config.user_pool_configs.o_auth.social_provider_settings.sign_in_with_apple.team_id #=> String
    #   resp.resource_config.user_pool_configs.password_policy.additional_constraints #=> Array
    #   resp.resource_config.user_pool_configs.password_policy.additional_constraints[0] #=> String, one of "REQUIRE_DIGIT", "REQUIRE_LOWERCASE", "REQUIRE_SYMBOL", "REQUIRE_UPPERCASE"
    #   resp.resource_config.user_pool_configs.password_policy.minimum_length #=> Float
    #   resp.resource_config.user_pool_configs.required_sign_up_attributes #=> Array
    #   resp.resource_config.user_pool_configs.required_sign_up_attributes[0] #=> String, one of "ADDRESS", "BIRTHDATE", "EMAIL", "FAMILY_NAME", "GENDER", "GIVEN_NAME", "LOCALE", "MIDDLE_NAME", "NAME", "NICKNAME", "PHONE_NUMBER", "PICTURE", "PREFERRED_USERNAME", "PROFILE", "UPDATED_AT", "WEBSITE", "ZONE_INFO"
    #   resp.resource_config.user_pool_configs.sign_in_method #=> String, one of "EMAIL", "EMAIL_AND_PHONE_NUMBER", "PHONE_NUMBER", "USERNAME"
    #   resp.resource_config.user_pool_configs.user_pool_name #=> String
    #   resp.resource_config.user_pool_configs.verification_message.delivery_method #=> String, one of "EMAIL", "SMS"
    #   resp.resource_config.user_pool_configs.verification_message.email_settings.email_message #=> String
    #   resp.resource_config.user_pool_configs.verification_message.email_settings.email_subject #=> String
    #   resp.resource_config.user_pool_configs.verification_message.sms_settings.sms_message #=> String
    #   resp.resource_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetBackendAuth AWS API Documentation
    #
    # @overload get_backend_auth(params = {})
    # @param [Hash] params ({})
    def get_backend_auth(params = {}, options = {})
      req = build_request(:get_backend_auth, params)
      req.send_request(options)
    end

    # Returns information about a specific job.
    #
    # @option params [required, String] :app_id
    #
    # @option params [required, String] :backend_environment_name
    #
    # @option params [required, String] :job_id
    #
    # @return [Types::GetBackendJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBackendJobResponse#app_id #app_id} => String
    #   * {Types::GetBackendJobResponse#backend_environment_name #backend_environment_name} => String
    #   * {Types::GetBackendJobResponse#create_time #create_time} => String
    #   * {Types::GetBackendJobResponse#error #error} => String
    #   * {Types::GetBackendJobResponse#job_id #job_id} => String
    #   * {Types::GetBackendJobResponse#operation #operation} => String
    #   * {Types::GetBackendJobResponse#status #status} => String
    #   * {Types::GetBackendJobResponse#update_time #update_time} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_backend_job({
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     job_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #   resp.backend_environment_name #=> String
    #   resp.create_time #=> String
    #   resp.error #=> String
    #   resp.job_id #=> String
    #   resp.operation #=> String
    #   resp.status #=> String
    #   resp.update_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetBackendJob AWS API Documentation
    #
    # @overload get_backend_job(params = {})
    # @param [Hash] params ({})
    def get_backend_job(params = {}, options = {})
      req = build_request(:get_backend_job, params)
      req.send_request(options)
    end

    # Gets details for a backend storage resource.
    #
    # @option params [required, String] :app_id
    #
    # @option params [required, String] :backend_environment_name
    #
    # @option params [required, String] :resource_name
    #
    # @return [Types::GetBackendStorageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBackendStorageResponse#app_id #app_id} => String
    #   * {Types::GetBackendStorageResponse#backend_environment_name #backend_environment_name} => String
    #   * {Types::GetBackendStorageResponse#resource_config #resource_config} => Types::GetBackendStorageResourceConfig
    #   * {Types::GetBackendStorageResponse#resource_name #resource_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_backend_storage({
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #   resp.backend_environment_name #=> String
    #   resp.resource_config.bucket_name #=> String
    #   resp.resource_config.imported #=> Boolean
    #   resp.resource_config.permissions.authenticated #=> Array
    #   resp.resource_config.permissions.authenticated[0] #=> String, one of "READ", "CREATE_AND_UPDATE", "DELETE"
    #   resp.resource_config.permissions.un_authenticated #=> Array
    #   resp.resource_config.permissions.un_authenticated[0] #=> String, one of "READ", "CREATE_AND_UPDATE", "DELETE"
    #   resp.resource_config.service_name #=> String, one of "S3"
    #   resp.resource_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetBackendStorage AWS API Documentation
    #
    # @overload get_backend_storage(params = {})
    # @param [Hash] params ({})
    def get_backend_storage(params = {}, options = {})
      req = build_request(:get_backend_storage, params)
      req.send_request(options)
    end

    # Gets the challenge token based on the given appId and sessionId.
    #
    # @option params [required, String] :app_id
    #
    # @option params [required, String] :session_id
    #
    # @return [Types::GetTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTokenResponse#app_id #app_id} => String
    #   * {Types::GetTokenResponse#challenge_code #challenge_code} => String
    #   * {Types::GetTokenResponse#session_id #session_id} => String
    #   * {Types::GetTokenResponse#ttl #ttl} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_token({
    #     app_id: "__string", # required
    #     session_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #   resp.challenge_code #=> String
    #   resp.session_id #=> String
    #   resp.ttl #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/GetToken AWS API Documentation
    #
    # @overload get_token(params = {})
    # @param [Hash] params ({})
    def get_token(params = {}, options = {})
      req = build_request(:get_token, params)
      req.send_request(options)
    end

    # Imports an existing backend authentication resource.
    #
    # @option params [required, String] :app_id
    #
    # @option params [required, String] :backend_environment_name
    #
    # @option params [String] :identity_pool_id
    #
    # @option params [required, String] :native_client_id
    #
    # @option params [required, String] :user_pool_id
    #
    # @option params [required, String] :web_client_id
    #
    # @return [Types::ImportBackendAuthResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportBackendAuthResponse#app_id #app_id} => String
    #   * {Types::ImportBackendAuthResponse#backend_environment_name #backend_environment_name} => String
    #   * {Types::ImportBackendAuthResponse#error #error} => String
    #   * {Types::ImportBackendAuthResponse#job_id #job_id} => String
    #   * {Types::ImportBackendAuthResponse#operation #operation} => String
    #   * {Types::ImportBackendAuthResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_backend_auth({
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     identity_pool_id: "__string",
    #     native_client_id: "__string", # required
    #     user_pool_id: "__string", # required
    #     web_client_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #   resp.backend_environment_name #=> String
    #   resp.error #=> String
    #   resp.job_id #=> String
    #   resp.operation #=> String
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/ImportBackendAuth AWS API Documentation
    #
    # @overload import_backend_auth(params = {})
    # @param [Hash] params ({})
    def import_backend_auth(params = {}, options = {})
      req = build_request(:import_backend_auth, params)
      req.send_request(options)
    end

    # Imports an existing backend storage resource.
    #
    # @option params [required, String] :app_id
    #
    # @option params [required, String] :backend_environment_name
    #
    # @option params [String] :bucket_name
    #
    # @option params [required, String] :service_name
    #
    # @return [Types::ImportBackendStorageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportBackendStorageResponse#app_id #app_id} => String
    #   * {Types::ImportBackendStorageResponse#backend_environment_name #backend_environment_name} => String
    #   * {Types::ImportBackendStorageResponse#job_id #job_id} => String
    #   * {Types::ImportBackendStorageResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_backend_storage({
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     bucket_name: "__string",
    #     service_name: "S3", # required, accepts S3
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #   resp.backend_environment_name #=> String
    #   resp.job_id #=> String
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/ImportBackendStorage AWS API Documentation
    #
    # @overload import_backend_storage(params = {})
    # @param [Hash] params ({})
    def import_backend_storage(params = {}, options = {})
      req = build_request(:import_backend_storage, params)
      req.send_request(options)
    end

    # Lists the jobs for the backend of an Amplify app.
    #
    # @option params [required, String] :app_id
    #
    # @option params [required, String] :backend_environment_name
    #
    # @option params [String] :job_id
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @option params [String] :operation
    #
    # @option params [String] :status
    #
    # @return [Types::ListBackendJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBackendJobsResponse#jobs #jobs} => Array&lt;Types::BackendJobRespObj&gt;
    #   * {Types::ListBackendJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_backend_jobs({
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     job_id: "__string",
    #     max_results: 1,
    #     next_token: "__string",
    #     operation: "__string",
    #     status: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].app_id #=> String
    #   resp.jobs[0].backend_environment_name #=> String
    #   resp.jobs[0].create_time #=> String
    #   resp.jobs[0].error #=> String
    #   resp.jobs[0].job_id #=> String
    #   resp.jobs[0].operation #=> String
    #   resp.jobs[0].status #=> String
    #   resp.jobs[0].update_time #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/ListBackendJobs AWS API Documentation
    #
    # @overload list_backend_jobs(params = {})
    # @param [Hash] params ({})
    def list_backend_jobs(params = {}, options = {})
      req = build_request(:list_backend_jobs, params)
      req.send_request(options)
    end

    # The list of S3 buckets in your account.
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListS3BucketsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListS3BucketsResponse#buckets #buckets} => Array&lt;Types::S3BucketInfo&gt;
    #   * {Types::ListS3BucketsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_s3_buckets({
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.buckets #=> Array
    #   resp.buckets[0].creation_date #=> String
    #   resp.buckets[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/ListS3Buckets AWS API Documentation
    #
    # @overload list_s3_buckets(params = {})
    # @param [Hash] params ({})
    def list_s3_buckets(params = {}, options = {})
      req = build_request(:list_s3_buckets, params)
      req.send_request(options)
    end

    # Removes all backend environments from your Amplify project.
    #
    # @option params [required, String] :app_id
    #
    # @option params [Boolean] :clean_amplify_app
    #
    # @return [Types::RemoveAllBackendsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RemoveAllBackendsResponse#app_id #app_id} => String
    #   * {Types::RemoveAllBackendsResponse#error #error} => String
    #   * {Types::RemoveAllBackendsResponse#job_id #job_id} => String
    #   * {Types::RemoveAllBackendsResponse#operation #operation} => String
    #   * {Types::RemoveAllBackendsResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_all_backends({
    #     app_id: "__string", # required
    #     clean_amplify_app: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #   resp.error #=> String
    #   resp.job_id #=> String
    #   resp.operation #=> String
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/RemoveAllBackends AWS API Documentation
    #
    # @overload remove_all_backends(params = {})
    # @param [Hash] params ({})
    def remove_all_backends(params = {}, options = {})
      req = build_request(:remove_all_backends, params)
      req.send_request(options)
    end

    # Removes the AWS resources required to access the Amplify Admin UI.
    #
    # @option params [required, String] :app_id
    #
    # @return [Types::RemoveBackendConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RemoveBackendConfigResponse#error #error} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_backend_config({
    #     app_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.error #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/RemoveBackendConfig AWS API Documentation
    #
    # @overload remove_backend_config(params = {})
    # @param [Hash] params ({})
    def remove_backend_config(params = {}, options = {})
      req = build_request(:remove_backend_config, params)
      req.send_request(options)
    end

    # Updates an existing backend API resource.
    #
    # @option params [required, String] :app_id
    #
    # @option params [required, String] :backend_environment_name
    #
    # @option params [Types::BackendAPIResourceConfig] :resource_config
    #   The resource config for the data model, configured as a part of the
    #   Amplify project.
    #
    # @option params [required, String] :resource_name
    #
    # @return [Types::UpdateBackendAPIResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBackendAPIResponse#app_id #app_id} => String
    #   * {Types::UpdateBackendAPIResponse#backend_environment_name #backend_environment_name} => String
    #   * {Types::UpdateBackendAPIResponse#error #error} => String
    #   * {Types::UpdateBackendAPIResponse#job_id #job_id} => String
    #   * {Types::UpdateBackendAPIResponse#operation #operation} => String
    #   * {Types::UpdateBackendAPIResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_backend_api({
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_config: {
    #       additional_auth_types: [
    #         {
    #           mode: "API_KEY", # accepts API_KEY, AWS_IAM, AMAZON_COGNITO_USER_POOLS, OPENID_CONNECT
    #           settings: {
    #             cognito_user_pool_id: "__string",
    #             description: "__string",
    #             expiration_time: 1.0,
    #             open_id_auth_ttl: "__string",
    #             open_id_client_id: "__string",
    #             open_id_iat_ttl: "__string",
    #             open_id_issue_url: "__string",
    #             open_id_provider_name: "__string",
    #           },
    #         },
    #       ],
    #       api_name: "__string",
    #       conflict_resolution: {
    #         resolution_strategy: "OPTIMISTIC_CONCURRENCY", # accepts OPTIMISTIC_CONCURRENCY, LAMBDA, AUTOMERGE, NONE
    #       },
    #       default_auth_type: {
    #         mode: "API_KEY", # accepts API_KEY, AWS_IAM, AMAZON_COGNITO_USER_POOLS, OPENID_CONNECT
    #         settings: {
    #           cognito_user_pool_id: "__string",
    #           description: "__string",
    #           expiration_time: 1.0,
    #           open_id_auth_ttl: "__string",
    #           open_id_client_id: "__string",
    #           open_id_iat_ttl: "__string",
    #           open_id_issue_url: "__string",
    #           open_id_provider_name: "__string",
    #         },
    #       },
    #       service: "__string",
    #       transform_schema: "__string",
    #     },
    #     resource_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #   resp.backend_environment_name #=> String
    #   resp.error #=> String
    #   resp.job_id #=> String
    #   resp.operation #=> String
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/UpdateBackendAPI AWS API Documentation
    #
    # @overload update_backend_api(params = {})
    # @param [Hash] params ({})
    def update_backend_api(params = {}, options = {})
      req = build_request(:update_backend_api, params)
      req.send_request(options)
    end

    # Updates an existing backend authentication resource.
    #
    # @option params [required, String] :app_id
    #
    # @option params [required, String] :backend_environment_name
    #
    # @option params [required, Types::UpdateBackendAuthResourceConfig] :resource_config
    #   Defines the resource configuration when updating an authentication
    #   resource in your Amplify project.
    #
    # @option params [required, String] :resource_name
    #
    # @return [Types::UpdateBackendAuthResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBackendAuthResponse#app_id #app_id} => String
    #   * {Types::UpdateBackendAuthResponse#backend_environment_name #backend_environment_name} => String
    #   * {Types::UpdateBackendAuthResponse#error #error} => String
    #   * {Types::UpdateBackendAuthResponse#job_id #job_id} => String
    #   * {Types::UpdateBackendAuthResponse#operation #operation} => String
    #   * {Types::UpdateBackendAuthResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_backend_auth({
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_config: { # required
    #       auth_resources: "USER_POOL_ONLY", # required, accepts USER_POOL_ONLY, IDENTITY_POOL_AND_USER_POOL
    #       identity_pool_configs: {
    #         unauthenticated_login: false,
    #       },
    #       service: "COGNITO", # required, accepts COGNITO
    #       user_pool_configs: { # required
    #         forgot_password: {
    #           delivery_method: "EMAIL", # accepts EMAIL, SMS
    #           email_settings: {
    #             email_message: "__string",
    #             email_subject: "__string",
    #           },
    #           sms_settings: {
    #             sms_message: "__string",
    #           },
    #         },
    #         mfa: {
    #           mfa_mode: "ON", # accepts ON, OFF, OPTIONAL
    #           settings: {
    #             mfa_types: ["SMS"], # accepts SMS, TOTP
    #             sms_message: "__string",
    #           },
    #         },
    #         o_auth: {
    #           domain_prefix: "__string",
    #           o_auth_grant_type: "CODE", # accepts CODE, IMPLICIT
    #           o_auth_scopes: ["PHONE"], # accepts PHONE, EMAIL, OPENID, PROFILE, AWS_COGNITO_SIGNIN_USER_ADMIN
    #           redirect_sign_in_ur_is: ["__string"],
    #           redirect_sign_out_ur_is: ["__string"],
    #           social_provider_settings: {
    #             facebook: {
    #               client_id: "__string",
    #               client_secret: "__string",
    #             },
    #             google: {
    #               client_id: "__string",
    #               client_secret: "__string",
    #             },
    #             login_with_amazon: {
    #               client_id: "__string",
    #               client_secret: "__string",
    #             },
    #             sign_in_with_apple: {
    #               client_id: "__string",
    #               key_id: "__string",
    #               private_key: "__string",
    #               team_id: "__string",
    #             },
    #           },
    #         },
    #         password_policy: {
    #           additional_constraints: ["REQUIRE_DIGIT"], # accepts REQUIRE_DIGIT, REQUIRE_LOWERCASE, REQUIRE_SYMBOL, REQUIRE_UPPERCASE
    #           minimum_length: 1.0,
    #         },
    #         verification_message: {
    #           delivery_method: "EMAIL", # required, accepts EMAIL, SMS
    #           email_settings: {
    #             email_message: "__string",
    #             email_subject: "__string",
    #           },
    #           sms_settings: {
    #             sms_message: "__string",
    #           },
    #         },
    #       },
    #     },
    #     resource_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #   resp.backend_environment_name #=> String
    #   resp.error #=> String
    #   resp.job_id #=> String
    #   resp.operation #=> String
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/UpdateBackendAuth AWS API Documentation
    #
    # @overload update_backend_auth(params = {})
    # @param [Hash] params ({})
    def update_backend_auth(params = {}, options = {})
      req = build_request(:update_backend_auth, params)
      req.send_request(options)
    end

    # Updates the AWS resources required to access the Amplify Admin UI.
    #
    # @option params [required, String] :app_id
    #
    # @option params [Types::LoginAuthConfigReqObj] :login_auth_config
    #   The request object for this operation.
    #
    # @return [Types::UpdateBackendConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBackendConfigResponse#app_id #app_id} => String
    #   * {Types::UpdateBackendConfigResponse#backend_manager_app_id #backend_manager_app_id} => String
    #   * {Types::UpdateBackendConfigResponse#error #error} => String
    #   * {Types::UpdateBackendConfigResponse#login_auth_config #login_auth_config} => Types::LoginAuthConfigReqObj
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_backend_config({
    #     app_id: "__string", # required
    #     login_auth_config: {
    #       aws_cognito_identity_pool_id: "__string",
    #       aws_cognito_region: "__string",
    #       aws_user_pools_id: "__string",
    #       aws_user_pools_web_client_id: "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #   resp.backend_manager_app_id #=> String
    #   resp.error #=> String
    #   resp.login_auth_config.aws_cognito_identity_pool_id #=> String
    #   resp.login_auth_config.aws_cognito_region #=> String
    #   resp.login_auth_config.aws_user_pools_id #=> String
    #   resp.login_auth_config.aws_user_pools_web_client_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/UpdateBackendConfig AWS API Documentation
    #
    # @overload update_backend_config(params = {})
    # @param [Hash] params ({})
    def update_backend_config(params = {}, options = {})
      req = build_request(:update_backend_config, params)
      req.send_request(options)
    end

    # Updates a specific job.
    #
    # @option params [required, String] :app_id
    #
    # @option params [required, String] :backend_environment_name
    #
    # @option params [required, String] :job_id
    #
    # @option params [String] :operation
    #
    # @option params [String] :status
    #
    # @return [Types::UpdateBackendJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBackendJobResponse#app_id #app_id} => String
    #   * {Types::UpdateBackendJobResponse#backend_environment_name #backend_environment_name} => String
    #   * {Types::UpdateBackendJobResponse#create_time #create_time} => String
    #   * {Types::UpdateBackendJobResponse#error #error} => String
    #   * {Types::UpdateBackendJobResponse#job_id #job_id} => String
    #   * {Types::UpdateBackendJobResponse#operation #operation} => String
    #   * {Types::UpdateBackendJobResponse#status #status} => String
    #   * {Types::UpdateBackendJobResponse#update_time #update_time} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_backend_job({
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     job_id: "__string", # required
    #     operation: "__string",
    #     status: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #   resp.backend_environment_name #=> String
    #   resp.create_time #=> String
    #   resp.error #=> String
    #   resp.job_id #=> String
    #   resp.operation #=> String
    #   resp.status #=> String
    #   resp.update_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/UpdateBackendJob AWS API Documentation
    #
    # @overload update_backend_job(params = {})
    # @param [Hash] params ({})
    def update_backend_job(params = {}, options = {})
      req = build_request(:update_backend_job, params)
      req.send_request(options)
    end

    # Updates an existing backend storage resource.
    #
    # @option params [required, String] :app_id
    #
    # @option params [required, String] :backend_environment_name
    #
    # @option params [required, Types::UpdateBackendStorageResourceConfig] :resource_config
    #   The resource configuration for updating backend storage.
    #
    # @option params [required, String] :resource_name
    #
    # @return [Types::UpdateBackendStorageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBackendStorageResponse#app_id #app_id} => String
    #   * {Types::UpdateBackendStorageResponse#backend_environment_name #backend_environment_name} => String
    #   * {Types::UpdateBackendStorageResponse#job_id #job_id} => String
    #   * {Types::UpdateBackendStorageResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_backend_storage({
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_config: { # required
    #       permissions: { # required
    #         authenticated: ["READ"], # required, accepts READ, CREATE_AND_UPDATE, DELETE
    #         un_authenticated: ["READ"], # accepts READ, CREATE_AND_UPDATE, DELETE
    #       },
    #       service_name: "S3", # required, accepts S3
    #     },
    #     resource_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #   resp.backend_environment_name #=> String
    #   resp.job_id #=> String
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11/UpdateBackendStorage AWS API Documentation
    #
    # @overload update_backend_storage(params = {})
    # @param [Hash] params ({})
    def update_backend_storage(params = {}, options = {})
      req = build_request(:update_backend_storage, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-amplifybackend'
      context[:gem_version] = '1.25.0'
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
