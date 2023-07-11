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

Aws::Plugins::GlobalConfiguration.add_identifier(:appfabric)

module Aws::AppFabric
  # An API client for AppFabric.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::AppFabric::Client.new(
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

    @identifier = :appfabric

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
    add_plugin(Aws::AppFabric::Plugins::Endpoints)

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
    #   @option options [Aws::AppFabric::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::AppFabric::EndpointParameters`
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

    # Gets user access details in a batch request.
    #
    # This action polls data from the tasks that are kicked off by the
    # `StartUserAccessTasks` action.
    #
    # @option params [required, String] :app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #
    # @option params [required, Array<String>] :task_id_list
    #   The tasks IDs to use for the request.
    #
    # @return [Types::BatchGetUserAccessTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetUserAccessTasksResponse#user_access_results_list #user_access_results_list} => Array&lt;Types::UserAccessResultItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_user_access_tasks({
    #     app_bundle_identifier: "Identifier", # required
    #     task_id_list: ["UUID"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_access_results_list #=> Array
    #   resp.user_access_results_list[0].app #=> String
    #   resp.user_access_results_list[0].tenant_id #=> String
    #   resp.user_access_results_list[0].tenant_display_name #=> String
    #   resp.user_access_results_list[0].task_id #=> String
    #   resp.user_access_results_list[0].result_status #=> String, one of "IN_PROGRESS", "COMPLETED", "FAILED", "EXPIRED"
    #   resp.user_access_results_list[0].email #=> String
    #   resp.user_access_results_list[0].user_id #=> String
    #   resp.user_access_results_list[0].user_full_name #=> String
    #   resp.user_access_results_list[0].user_first_name #=> String
    #   resp.user_access_results_list[0].user_last_name #=> String
    #   resp.user_access_results_list[0].user_status #=> String
    #   resp.user_access_results_list[0].task_error.error_code #=> String
    #   resp.user_access_results_list[0].task_error.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/BatchGetUserAccessTasks AWS API Documentation
    #
    # @overload batch_get_user_access_tasks(params = {})
    # @param [Hash] params ({})
    def batch_get_user_access_tasks(params = {}, options = {})
      req = build_request(:batch_get_user_access_tasks, params)
      req.send_request(options)
    end

    # Establishes a connection between Amazon Web Services AppFabric and an
    # application, which allows AppFabric to call the APIs of the
    # application.
    #
    # @option params [required, String] :app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle that contains the app authorization to use for the
    #   request.
    #
    # @option params [required, String] :app_authorization_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app authorization to use for the request.
    #
    # @option params [Types::AuthRequest] :auth_request
    #   Contains OAuth2 authorization information.
    #
    #   This is required if the app authorization for the request is
    #   configured with an OAuth2 (`oauth2`) authorization type.
    #
    # @return [Types::ConnectAppAuthorizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConnectAppAuthorizationResponse#app_authorization_summary #app_authorization_summary} => Types::AppAuthorizationSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.connect_app_authorization({
    #     app_bundle_identifier: "Identifier", # required
    #     app_authorization_identifier: "Identifier", # required
    #     auth_request: {
    #       redirect_uri: "RedirectUri", # required
    #       code: "SensitiveString2048", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.app_authorization_summary.app_authorization_arn #=> String
    #   resp.app_authorization_summary.app_bundle_arn #=> String
    #   resp.app_authorization_summary.app #=> String
    #   resp.app_authorization_summary.tenant.tenant_identifier #=> String
    #   resp.app_authorization_summary.tenant.tenant_display_name #=> String
    #   resp.app_authorization_summary.status #=> String, one of "PendingConnect", "Connected", "ConnectionValidationFailed", "TokenAutoRotationFailed"
    #   resp.app_authorization_summary.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/ConnectAppAuthorization AWS API Documentation
    #
    # @overload connect_app_authorization(params = {})
    # @param [Hash] params ({})
    def connect_app_authorization(params = {}, options = {})
      req = build_request(:connect_app_authorization, params)
      req.send_request(options)
    end

    # Creates an app authorization within an app bundle, which allows
    # AppFabric to connect to an application.
    #
    # @option params [required, String] :app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #
    # @option params [required, String] :app
    #   The name of the application.
    #
    #   Valid values are:
    #
    #   * `SLACK`
    #
    #   * `ASANA`
    #
    #   * `JIRA`
    #
    #   * `M365`
    #
    #   * `M365AUDITLOGS`
    #
    #   * `ZOOM`
    #
    #   * `ZENDESK`
    #
    #   * `OKTA`
    #
    #   * `GOOGLE`
    #
    #   * `DROPBOX`
    #
    #   * `SMARTSHEET`
    #
    #   * `CISCO`
    #
    # @option params [required, Types::Credential] :credential
    #   Contains credentials for the application, such as an API key or OAuth2
    #   client ID and secret.
    #
    #   Specify credentials that match the authorization type for your
    #   request. For example, if the authorization type for your request is
    #   OAuth2 (`oauth2`), then you should provide only the OAuth2
    #   credentials.
    #
    # @option params [required, Types::Tenant] :tenant
    #   Contains information about an application tenant, such as the
    #   application display name and identifier.
    #
    # @option params [required, String] :auth_type
    #   The authorization type for the app authorization.
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry the
    #   request without accidentally performing the same operation a second
    #   time. Passing the same value to a later call to an operation requires
    #   that you also pass the same value for all other parameters. We
    #   recommend that you use a [UUID type of value][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @option params [Array<Types::Tag>] :tags
    #   A map of the key-value pairs of the tag or tags to assign to the
    #   resource.
    #
    # @return [Types::CreateAppAuthorizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAppAuthorizationResponse#app_authorization #app_authorization} => Types::AppAuthorization
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app_authorization({
    #     app_bundle_identifier: "Identifier", # required
    #     app: "String255", # required
    #     credential: { # required
    #       oauth2_credential: {
    #         client_id: "String2048", # required
    #         client_secret: "SensitiveString2048", # required
    #       },
    #       api_key_credential: {
    #         api_key: "SensitiveString2048", # required
    #       },
    #     },
    #     tenant: { # required
    #       tenant_identifier: "TenantIdentifier", # required
    #       tenant_display_name: "String2048", # required
    #     },
    #     auth_type: "oauth2", # required, accepts oauth2, apiKey
    #     client_token: "UUID",
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
    #   resp.app_authorization.app_authorization_arn #=> String
    #   resp.app_authorization.app_bundle_arn #=> String
    #   resp.app_authorization.app #=> String
    #   resp.app_authorization.tenant.tenant_identifier #=> String
    #   resp.app_authorization.tenant.tenant_display_name #=> String
    #   resp.app_authorization.auth_type #=> String, one of "oauth2", "apiKey"
    #   resp.app_authorization.status #=> String, one of "PendingConnect", "Connected", "ConnectionValidationFailed", "TokenAutoRotationFailed"
    #   resp.app_authorization.created_at #=> Time
    #   resp.app_authorization.updated_at #=> Time
    #   resp.app_authorization.persona #=> String, one of "admin", "endUser"
    #   resp.app_authorization.auth_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/CreateAppAuthorization AWS API Documentation
    #
    # @overload create_app_authorization(params = {})
    # @param [Hash] params ({})
    def create_app_authorization(params = {}, options = {})
      req = build_request(:create_app_authorization, params)
      req.send_request(options)
    end

    # Creates an app bundle to collect data from an application using
    # AppFabric.
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry the
    #   request without accidentally performing the same operation a second
    #   time. Passing the same value to a later call to an operation requires
    #   that you also pass the same value for all other parameters. We
    #   recommend that you use a [UUID type of value][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @option params [String] :customer_managed_key_identifier
    #   The Amazon Resource Name (ARN) of the Key Management Service (KMS) key
    #   to use to encrypt the application data. If this is not specified, an
    #   Amazon Web Services owned key is used for encryption.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A map of the key-value pairs of the tag or tags to assign to the
    #   resource.
    #
    # @return [Types::CreateAppBundleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAppBundleResponse#app_bundle #app_bundle} => Types::AppBundle
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app_bundle({
    #     client_token: "UUID",
    #     customer_managed_key_identifier: "Identifier",
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
    #   resp.app_bundle.arn #=> String
    #   resp.app_bundle.customer_managed_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/CreateAppBundle AWS API Documentation
    #
    # @overload create_app_bundle(params = {})
    # @param [Hash] params ({})
    def create_app_bundle(params = {}, options = {})
      req = build_request(:create_app_bundle, params)
      req.send_request(options)
    end

    # Creates a data ingestion for an application.
    #
    # @option params [required, String] :app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #
    # @option params [required, String] :app
    #   The name of the application.
    #
    #   Valid values are:
    #
    #   * `SLACK`
    #
    #   * `ASANA`
    #
    #   * `JIRA`
    #
    #   * `M365`
    #
    #   * `M365AUDITLOGS`
    #
    #   * `ZOOM`
    #
    #   * `ZENDESK`
    #
    #   * `OKTA`
    #
    #   * `GOOGLE`
    #
    #   * `DROPBOX`
    #
    #   * `SMARTSHEET`
    #
    #   * `CISCO`
    #
    # @option params [required, String] :tenant_id
    #   The ID of the application tenant.
    #
    # @option params [required, String] :ingestion_type
    #   The ingestion type.
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry the
    #   request without accidentally performing the same operation a second
    #   time. Passing the same value to a later call to an operation requires
    #   that you also pass the same value for all other parameters. We
    #   recommend that you use a [UUID type of value][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @option params [Array<Types::Tag>] :tags
    #   A map of the key-value pairs of the tag or tags to assign to the
    #   resource.
    #
    # @return [Types::CreateIngestionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIngestionResponse#ingestion #ingestion} => Types::Ingestion
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ingestion({
    #     app_bundle_identifier: "Identifier", # required
    #     app: "String255", # required
    #     tenant_id: "TenantIdentifier", # required
    #     ingestion_type: "auditLog", # required, accepts auditLog
    #     client_token: "UUID",
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
    #   resp.ingestion.arn #=> String
    #   resp.ingestion.app_bundle_arn #=> String
    #   resp.ingestion.app #=> String
    #   resp.ingestion.tenant_id #=> String
    #   resp.ingestion.created_at #=> Time
    #   resp.ingestion.updated_at #=> Time
    #   resp.ingestion.state #=> String, one of "enabled", "disabled"
    #   resp.ingestion.ingestion_type #=> String, one of "auditLog"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/CreateIngestion AWS API Documentation
    #
    # @overload create_ingestion(params = {})
    # @param [Hash] params ({})
    def create_ingestion(params = {}, options = {})
      req = build_request(:create_ingestion, params)
      req.send_request(options)
    end

    # Creates an ingestion destination, which specifies how an
    # application's ingested data is processed by Amazon Web Services
    # AppFabric and where it's delivered.
    #
    # @option params [required, String] :app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #
    # @option params [required, String] :ingestion_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the ingestion to use for the request.
    #
    # @option params [required, Types::ProcessingConfiguration] :processing_configuration
    #   Contains information about how ingested data is processed.
    #
    # @option params [required, Types::DestinationConfiguration] :destination_configuration
    #   Contains information about the destination of ingested data.
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry the
    #   request without accidentally performing the same operation a second
    #   time. Passing the same value to a later call to an operation requires
    #   that you also pass the same value for all other parameters. We
    #   recommend that you use a [UUID type of value][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @option params [Array<Types::Tag>] :tags
    #   A map of the key-value pairs of the tag or tags to assign to the
    #   resource.
    #
    # @return [Types::CreateIngestionDestinationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIngestionDestinationResponse#ingestion_destination #ingestion_destination} => Types::IngestionDestination
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ingestion_destination({
    #     app_bundle_identifier: "Identifier", # required
    #     ingestion_identifier: "Identifier", # required
    #     processing_configuration: { # required
    #       audit_log: {
    #         schema: "ocsf", # required, accepts ocsf, raw
    #         format: "json", # required, accepts json, parquet
    #       },
    #     },
    #     destination_configuration: { # required
    #       audit_log: {
    #         destination: { # required
    #           s3_bucket: {
    #             bucket_name: "String63", # required
    #             prefix: "String120",
    #           },
    #           firehose_stream: {
    #             stream_name: "String64", # required
    #           },
    #         },
    #       },
    #     },
    #     client_token: "UUID",
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
    #   resp.ingestion_destination.arn #=> String
    #   resp.ingestion_destination.ingestion_arn #=> String
    #   resp.ingestion_destination.processing_configuration.audit_log.schema #=> String, one of "ocsf", "raw"
    #   resp.ingestion_destination.processing_configuration.audit_log.format #=> String, one of "json", "parquet"
    #   resp.ingestion_destination.destination_configuration.audit_log.destination.s3_bucket.bucket_name #=> String
    #   resp.ingestion_destination.destination_configuration.audit_log.destination.s3_bucket.prefix #=> String
    #   resp.ingestion_destination.destination_configuration.audit_log.destination.firehose_stream.stream_name #=> String
    #   resp.ingestion_destination.status #=> String, one of "Active", "Failed"
    #   resp.ingestion_destination.status_reason #=> String
    #   resp.ingestion_destination.created_at #=> Time
    #   resp.ingestion_destination.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/CreateIngestionDestination AWS API Documentation
    #
    # @overload create_ingestion_destination(params = {})
    # @param [Hash] params ({})
    def create_ingestion_destination(params = {}, options = {})
      req = build_request(:create_ingestion_destination, params)
      req.send_request(options)
    end

    # Deletes an app authorization. You must delete the associated ingestion
    # before you can delete an app authorization.
    #
    # @option params [required, String] :app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #
    # @option params [required, String] :app_authorization_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app authorization to use for the request.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_authorization({
    #     app_bundle_identifier: "Identifier", # required
    #     app_authorization_identifier: "Identifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/DeleteAppAuthorization AWS API Documentation
    #
    # @overload delete_app_authorization(params = {})
    # @param [Hash] params ({})
    def delete_app_authorization(params = {}, options = {})
      req = build_request(:delete_app_authorization, params)
      req.send_request(options)
    end

    # Deletes an app bundle. You must delete all associated app
    # authorizations before you can delete an app bundle.
    #
    # @option params [required, String] :app_bundle_identifier
    #   The ID or Amazon Resource Name (ARN) of the app bundle that needs to
    #   be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_bundle({
    #     app_bundle_identifier: "Identifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/DeleteAppBundle AWS API Documentation
    #
    # @overload delete_app_bundle(params = {})
    # @param [Hash] params ({})
    def delete_app_bundle(params = {}, options = {})
      req = build_request(:delete_app_bundle, params)
      req.send_request(options)
    end

    # Deletes an ingestion. You must stop (disable) the ingestion and you
    # must delete all associated ingestion destinations before you can
    # delete an app ingestion.
    #
    # @option params [required, String] :app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #
    # @option params [required, String] :ingestion_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the ingestion to use for the request.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ingestion({
    #     app_bundle_identifier: "Identifier", # required
    #     ingestion_identifier: "Identifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/DeleteIngestion AWS API Documentation
    #
    # @overload delete_ingestion(params = {})
    # @param [Hash] params ({})
    def delete_ingestion(params = {}, options = {})
      req = build_request(:delete_ingestion, params)
      req.send_request(options)
    end

    # Deletes an ingestion destination.
    #
    # This deletes the association between an ingestion and it's
    # destination. It doesn't delete previously ingested data or the
    # storage destination, such as the Amazon S3 bucket where the data is
    # delivered. If the ingestion destination is deleted while the
    # associated ingestion is enabled, the ingestion will fail and is
    # eventually disabled.
    #
    # @option params [required, String] :app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #
    # @option params [required, String] :ingestion_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the ingestion to use for the request.
    #
    # @option params [required, String] :ingestion_destination_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the ingestion destination to use for the request.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ingestion_destination({
    #     app_bundle_identifier: "Identifier", # required
    #     ingestion_identifier: "Identifier", # required
    #     ingestion_destination_identifier: "Identifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/DeleteIngestionDestination AWS API Documentation
    #
    # @overload delete_ingestion_destination(params = {})
    # @param [Hash] params ({})
    def delete_ingestion_destination(params = {}, options = {})
      req = build_request(:delete_ingestion_destination, params)
      req.send_request(options)
    end

    # Returns information about an app authorization.
    #
    # @option params [required, String] :app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #
    # @option params [required, String] :app_authorization_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app authorization to use for the request.
    #
    # @return [Types::GetAppAuthorizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAppAuthorizationResponse#app_authorization #app_authorization} => Types::AppAuthorization
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_app_authorization({
    #     app_bundle_identifier: "Identifier", # required
    #     app_authorization_identifier: "Identifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_authorization.app_authorization_arn #=> String
    #   resp.app_authorization.app_bundle_arn #=> String
    #   resp.app_authorization.app #=> String
    #   resp.app_authorization.tenant.tenant_identifier #=> String
    #   resp.app_authorization.tenant.tenant_display_name #=> String
    #   resp.app_authorization.auth_type #=> String, one of "oauth2", "apiKey"
    #   resp.app_authorization.status #=> String, one of "PendingConnect", "Connected", "ConnectionValidationFailed", "TokenAutoRotationFailed"
    #   resp.app_authorization.created_at #=> Time
    #   resp.app_authorization.updated_at #=> Time
    #   resp.app_authorization.persona #=> String, one of "admin", "endUser"
    #   resp.app_authorization.auth_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/GetAppAuthorization AWS API Documentation
    #
    # @overload get_app_authorization(params = {})
    # @param [Hash] params ({})
    def get_app_authorization(params = {}, options = {})
      req = build_request(:get_app_authorization, params)
      req.send_request(options)
    end

    # Returns information about an app bundle.
    #
    # @option params [required, String] :app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #
    # @return [Types::GetAppBundleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAppBundleResponse#app_bundle #app_bundle} => Types::AppBundle
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_app_bundle({
    #     app_bundle_identifier: "Identifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_bundle.arn #=> String
    #   resp.app_bundle.customer_managed_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/GetAppBundle AWS API Documentation
    #
    # @overload get_app_bundle(params = {})
    # @param [Hash] params ({})
    def get_app_bundle(params = {}, options = {})
      req = build_request(:get_app_bundle, params)
      req.send_request(options)
    end

    # Returns information about an ingestion.
    #
    # @option params [required, String] :app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #
    # @option params [required, String] :ingestion_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the ingestion to use for the request.
    #
    # @return [Types::GetIngestionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIngestionResponse#ingestion #ingestion} => Types::Ingestion
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ingestion({
    #     app_bundle_identifier: "Identifier", # required
    #     ingestion_identifier: "Identifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ingestion.arn #=> String
    #   resp.ingestion.app_bundle_arn #=> String
    #   resp.ingestion.app #=> String
    #   resp.ingestion.tenant_id #=> String
    #   resp.ingestion.created_at #=> Time
    #   resp.ingestion.updated_at #=> Time
    #   resp.ingestion.state #=> String, one of "enabled", "disabled"
    #   resp.ingestion.ingestion_type #=> String, one of "auditLog"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/GetIngestion AWS API Documentation
    #
    # @overload get_ingestion(params = {})
    # @param [Hash] params ({})
    def get_ingestion(params = {}, options = {})
      req = build_request(:get_ingestion, params)
      req.send_request(options)
    end

    # Returns information about an ingestion destination.
    #
    # @option params [required, String] :app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #
    # @option params [required, String] :ingestion_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the ingestion to use for the request.
    #
    # @option params [required, String] :ingestion_destination_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the ingestion destination to use for the request.
    #
    # @return [Types::GetIngestionDestinationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIngestionDestinationResponse#ingestion_destination #ingestion_destination} => Types::IngestionDestination
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ingestion_destination({
    #     app_bundle_identifier: "Identifier", # required
    #     ingestion_identifier: "Identifier", # required
    #     ingestion_destination_identifier: "Identifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ingestion_destination.arn #=> String
    #   resp.ingestion_destination.ingestion_arn #=> String
    #   resp.ingestion_destination.processing_configuration.audit_log.schema #=> String, one of "ocsf", "raw"
    #   resp.ingestion_destination.processing_configuration.audit_log.format #=> String, one of "json", "parquet"
    #   resp.ingestion_destination.destination_configuration.audit_log.destination.s3_bucket.bucket_name #=> String
    #   resp.ingestion_destination.destination_configuration.audit_log.destination.s3_bucket.prefix #=> String
    #   resp.ingestion_destination.destination_configuration.audit_log.destination.firehose_stream.stream_name #=> String
    #   resp.ingestion_destination.status #=> String, one of "Active", "Failed"
    #   resp.ingestion_destination.status_reason #=> String
    #   resp.ingestion_destination.created_at #=> Time
    #   resp.ingestion_destination.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/GetIngestionDestination AWS API Documentation
    #
    # @overload get_ingestion_destination(params = {})
    # @param [Hash] params ({})
    def get_ingestion_destination(params = {}, options = {})
      req = build_request(:get_ingestion_destination, params)
      req.send_request(options)
    end

    # Returns a list of all app authorizations configured for an app bundle.
    #
    # @option params [required, String] :app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
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
    # @return [Types::ListAppAuthorizationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAppAuthorizationsResponse#app_authorization_summary_list #app_authorization_summary_list} => Array&lt;Types::AppAuthorizationSummary&gt;
    #   * {Types::ListAppAuthorizationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_authorizations({
    #     app_bundle_identifier: "Identifier", # required
    #     max_results: 1,
    #     next_token: "String2048",
    #   })
    #
    # @example Response structure
    #
    #   resp.app_authorization_summary_list #=> Array
    #   resp.app_authorization_summary_list[0].app_authorization_arn #=> String
    #   resp.app_authorization_summary_list[0].app_bundle_arn #=> String
    #   resp.app_authorization_summary_list[0].app #=> String
    #   resp.app_authorization_summary_list[0].tenant.tenant_identifier #=> String
    #   resp.app_authorization_summary_list[0].tenant.tenant_display_name #=> String
    #   resp.app_authorization_summary_list[0].status #=> String, one of "PendingConnect", "Connected", "ConnectionValidationFailed", "TokenAutoRotationFailed"
    #   resp.app_authorization_summary_list[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/ListAppAuthorizations AWS API Documentation
    #
    # @overload list_app_authorizations(params = {})
    # @param [Hash] params ({})
    def list_app_authorizations(params = {}, options = {})
      req = build_request(:list_app_authorizations, params)
      req.send_request(options)
    end

    # Returns a list of app bundles.
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
    # @return [Types::ListAppBundlesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAppBundlesResponse#app_bundle_summary_list #app_bundle_summary_list} => Array&lt;Types::AppBundleSummary&gt;
    #   * {Types::ListAppBundlesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_bundles({
    #     max_results: 1,
    #     next_token: "String2048",
    #   })
    #
    # @example Response structure
    #
    #   resp.app_bundle_summary_list #=> Array
    #   resp.app_bundle_summary_list[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/ListAppBundles AWS API Documentation
    #
    # @overload list_app_bundles(params = {})
    # @param [Hash] params ({})
    def list_app_bundles(params = {}, options = {})
      req = build_request(:list_app_bundles, params)
      req.send_request(options)
    end

    # Returns a list of all ingestion destinations configured for an
    # ingestion.
    #
    # @option params [required, String] :app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #
    # @option params [required, String] :ingestion_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the ingestion to use for the request.
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
    # @return [Types::ListIngestionDestinationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIngestionDestinationsResponse#ingestion_destinations #ingestion_destinations} => Array&lt;Types::IngestionDestinationSummary&gt;
    #   * {Types::ListIngestionDestinationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ingestion_destinations({
    #     app_bundle_identifier: "Identifier", # required
    #     ingestion_identifier: "Identifier", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.ingestion_destinations #=> Array
    #   resp.ingestion_destinations[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/ListIngestionDestinations AWS API Documentation
    #
    # @overload list_ingestion_destinations(params = {})
    # @param [Hash] params ({})
    def list_ingestion_destinations(params = {}, options = {})
      req = build_request(:list_ingestion_destinations, params)
      req.send_request(options)
    end

    # Returns a list of all ingestions configured for an app bundle.
    #
    # @option params [required, String] :app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
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
    # @return [Types::ListIngestionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIngestionsResponse#ingestions #ingestions} => Array&lt;Types::IngestionSummary&gt;
    #   * {Types::ListIngestionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ingestions({
    #     app_bundle_identifier: "Identifier", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.ingestions #=> Array
    #   resp.ingestions[0].arn #=> String
    #   resp.ingestions[0].app #=> String
    #   resp.ingestions[0].tenant_id #=> String
    #   resp.ingestions[0].state #=> String, one of "enabled", "disabled"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/ListIngestions AWS API Documentation
    #
    # @overload list_ingestions(params = {})
    # @param [Hash] params ({})
    def list_ingestions(params = {}, options = {})
      req = build_request(:list_ingestions, params)
      req.send_request(options)
    end

    # Returns a list of tags for a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which you want to
    #   retrieve tags.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Starts (enables) an ingestion, which collects data from an
    # application.
    #
    # @option params [required, String] :ingestion_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the ingestion to use for the request.
    #
    # @option params [required, String] :app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_ingestion({
    #     ingestion_identifier: "Identifier", # required
    #     app_bundle_identifier: "Identifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/StartIngestion AWS API Documentation
    #
    # @overload start_ingestion(params = {})
    # @param [Hash] params ({})
    def start_ingestion(params = {}, options = {})
      req = build_request(:start_ingestion, params)
      req.send_request(options)
    end

    # Starts the tasks to search user access status for a specific email
    # address.
    #
    # The tasks are stopped when the user access status data is found. The
    # tasks are terminated when the API calls to the application time out.
    #
    # @option params [required, String] :app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #
    # @option params [required, String] :email
    #   The email address of the target user.
    #
    # @return [Types::StartUserAccessTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartUserAccessTasksResponse#user_access_tasks_list #user_access_tasks_list} => Array&lt;Types::UserAccessTaskItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_user_access_tasks({
    #     app_bundle_identifier: "Identifier", # required
    #     email: "Email", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_access_tasks_list #=> Array
    #   resp.user_access_tasks_list[0].app #=> String
    #   resp.user_access_tasks_list[0].tenant_id #=> String
    #   resp.user_access_tasks_list[0].task_id #=> String
    #   resp.user_access_tasks_list[0].error.error_code #=> String
    #   resp.user_access_tasks_list[0].error.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/StartUserAccessTasks AWS API Documentation
    #
    # @overload start_user_access_tasks(params = {})
    # @param [Hash] params ({})
    def start_user_access_tasks(params = {}, options = {})
      req = build_request(:start_user_access_tasks, params)
      req.send_request(options)
    end

    # Stops (disables) an ingestion.
    #
    # @option params [required, String] :ingestion_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the ingestion to use for the request.
    #
    # @option params [required, String] :app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_ingestion({
    #     ingestion_identifier: "Identifier", # required
    #     app_bundle_identifier: "Identifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/StopIngestion AWS API Documentation
    #
    # @overload stop_ingestion(params = {})
    # @param [Hash] params ({})
    def stop_ingestion(params = {}, options = {})
      req = build_request(:stop_ingestion, params)
      req.send_request(options)
    end

    # Assigns one or more tags (key-value pairs) to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A map of the key-value pairs of the tag or tags to assign to the
    #   resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/TagResource AWS API Documentation
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
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an app authorization within an app bundle, which allows
    # AppFabric to connect to an application.
    #
    # If the app authorization was in a `connected` state, updating the app
    # authorization will set it back to a `PendingConnect` state.
    #
    # @option params [required, String] :app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #
    # @option params [required, String] :app_authorization_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app authorization to use for the request.
    #
    # @option params [Types::Credential] :credential
    #   Contains credentials for the application, such as an API key or OAuth2
    #   client ID and secret.
    #
    #   Specify credentials that match the authorization type of the app
    #   authorization to update. For example, if the authorization type of the
    #   app authorization is OAuth2 (`oauth2`), then you should provide only
    #   the OAuth2 credentials.
    #
    # @option params [Types::Tenant] :tenant
    #   Contains information about an application tenant, such as the
    #   application display name and identifier.
    #
    # @return [Types::UpdateAppAuthorizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAppAuthorizationResponse#app_authorization #app_authorization} => Types::AppAuthorization
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_app_authorization({
    #     app_bundle_identifier: "Identifier", # required
    #     app_authorization_identifier: "Identifier", # required
    #     credential: {
    #       oauth2_credential: {
    #         client_id: "String2048", # required
    #         client_secret: "SensitiveString2048", # required
    #       },
    #       api_key_credential: {
    #         api_key: "SensitiveString2048", # required
    #       },
    #     },
    #     tenant: {
    #       tenant_identifier: "TenantIdentifier", # required
    #       tenant_display_name: "String2048", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.app_authorization.app_authorization_arn #=> String
    #   resp.app_authorization.app_bundle_arn #=> String
    #   resp.app_authorization.app #=> String
    #   resp.app_authorization.tenant.tenant_identifier #=> String
    #   resp.app_authorization.tenant.tenant_display_name #=> String
    #   resp.app_authorization.auth_type #=> String, one of "oauth2", "apiKey"
    #   resp.app_authorization.status #=> String, one of "PendingConnect", "Connected", "ConnectionValidationFailed", "TokenAutoRotationFailed"
    #   resp.app_authorization.created_at #=> Time
    #   resp.app_authorization.updated_at #=> Time
    #   resp.app_authorization.persona #=> String, one of "admin", "endUser"
    #   resp.app_authorization.auth_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/UpdateAppAuthorization AWS API Documentation
    #
    # @overload update_app_authorization(params = {})
    # @param [Hash] params ({})
    def update_app_authorization(params = {}, options = {})
      req = build_request(:update_app_authorization, params)
      req.send_request(options)
    end

    # Updates an ingestion destination, which specifies how an
    # application's ingested data is processed by Amazon Web Services
    # AppFabric and where it's delivered.
    #
    # @option params [required, String] :app_bundle_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the app bundle to use for the request.
    #
    # @option params [required, String] :ingestion_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the ingestion to use for the request.
    #
    # @option params [required, String] :ingestion_destination_identifier
    #   The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID)
    #   of the ingestion destination to use for the request.
    #
    # @option params [required, Types::DestinationConfiguration] :destination_configuration
    #   Contains information about the destination of ingested data.
    #
    # @return [Types::UpdateIngestionDestinationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIngestionDestinationResponse#ingestion_destination #ingestion_destination} => Types::IngestionDestination
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ingestion_destination({
    #     app_bundle_identifier: "Identifier", # required
    #     ingestion_identifier: "Identifier", # required
    #     ingestion_destination_identifier: "Identifier", # required
    #     destination_configuration: { # required
    #       audit_log: {
    #         destination: { # required
    #           s3_bucket: {
    #             bucket_name: "String63", # required
    #             prefix: "String120",
    #           },
    #           firehose_stream: {
    #             stream_name: "String64", # required
    #           },
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.ingestion_destination.arn #=> String
    #   resp.ingestion_destination.ingestion_arn #=> String
    #   resp.ingestion_destination.processing_configuration.audit_log.schema #=> String, one of "ocsf", "raw"
    #   resp.ingestion_destination.processing_configuration.audit_log.format #=> String, one of "json", "parquet"
    #   resp.ingestion_destination.destination_configuration.audit_log.destination.s3_bucket.bucket_name #=> String
    #   resp.ingestion_destination.destination_configuration.audit_log.destination.s3_bucket.prefix #=> String
    #   resp.ingestion_destination.destination_configuration.audit_log.destination.firehose_stream.stream_name #=> String
    #   resp.ingestion_destination.status #=> String, one of "Active", "Failed"
    #   resp.ingestion_destination.status_reason #=> String
    #   resp.ingestion_destination.created_at #=> Time
    #   resp.ingestion_destination.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19/UpdateIngestionDestination AWS API Documentation
    #
    # @overload update_ingestion_destination(params = {})
    # @param [Hash] params ({})
    def update_ingestion_destination(params = {}, options = {})
      req = build_request(:update_ingestion_destination, params)
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
      context[:gem_name] = 'aws-sdk-appfabric'
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
