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

Aws::Plugins::GlobalConfiguration.add_identifier(:workspacesweb)

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
    add_plugin(Aws::WorkSpacesWeb::Plugins::Endpoints)

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
    #   @option options [Aws::WorkSpacesWeb::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::WorkSpacesWeb::EndpointParameters`
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

    # Associates a browser settings resource with a web portal.
    #
    # @option params [required, String] :browser_settings_arn
    #   The ARN of the browser settings.
    #
    # @option params [required, String] :portal_arn
    #   The ARN of the web portal.
    #
    # @return [Types::AssociateBrowserSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateBrowserSettingsResponse#browser_settings_arn #browser_settings_arn} => String
    #   * {Types::AssociateBrowserSettingsResponse#portal_arn #portal_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_browser_settings({
    #     browser_settings_arn: "ARN", # required
    #     portal_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.browser_settings_arn #=> String
    #   resp.portal_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/AssociateBrowserSettings AWS API Documentation
    #
    # @overload associate_browser_settings(params = {})
    # @param [Hash] params ({})
    def associate_browser_settings(params = {}, options = {})
      req = build_request(:associate_browser_settings, params)
      req.send_request(options)
    end

    # Associates an IP access settings resource with a web portal.
    #
    # @option params [required, String] :ip_access_settings_arn
    #   The ARN of the IP access settings.
    #
    # @option params [required, String] :portal_arn
    #   The ARN of the web portal.
    #
    # @return [Types::AssociateIpAccessSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateIpAccessSettingsResponse#ip_access_settings_arn #ip_access_settings_arn} => String
    #   * {Types::AssociateIpAccessSettingsResponse#portal_arn #portal_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_ip_access_settings({
    #     ip_access_settings_arn: "ARN", # required
    #     portal_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ip_access_settings_arn #=> String
    #   resp.portal_arn #=> String
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
    # @option params [required, String] :network_settings_arn
    #   The ARN of the network settings.
    #
    # @option params [required, String] :portal_arn
    #   The ARN of the web portal.
    #
    # @return [Types::AssociateNetworkSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateNetworkSettingsResponse#network_settings_arn #network_settings_arn} => String
    #   * {Types::AssociateNetworkSettingsResponse#portal_arn #portal_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_network_settings({
    #     network_settings_arn: "ARN", # required
    #     portal_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.network_settings_arn #=> String
    #   resp.portal_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/AssociateNetworkSettings AWS API Documentation
    #
    # @overload associate_network_settings(params = {})
    # @param [Hash] params ({})
    def associate_network_settings(params = {}, options = {})
      req = build_request(:associate_network_settings, params)
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
    # @option params [Hash<String,String>] :additional_encryption_context
    #   Additional encryption context of the browser settings.
    #
    # @option params [required, String] :browser_policy
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
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :customer_managed_key
    #   The custom managed key of the browser settings.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to add to the browser settings resource. A tag is a key-value
    #   pair.
    #
    # @return [Types::CreateBrowserSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBrowserSettingsResponse#browser_settings_arn #browser_settings_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_browser_settings({
    #     additional_encryption_context: {
    #       "StringType" => "StringType",
    #     },
    #     browser_policy: "BrowserPolicy", # required
    #     client_token: "ClientToken",
    #     customer_managed_key: "keyArn",
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

    # Creates an identity provider resource that is then associated with a
    # web portal.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token returns the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
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
    #
    #   * For Facebook:
    #
    #     * `client_id`
    #
    #     * `client_secret`
    #
    #     * `authorize_scopes`
    #
    #     * `api_version`
    #
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
    #
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
    #
    #   * For SAML providers:
    #
    #     * `MetadataFile` OR `MetadataURL`
    #
    #     * `IDPSignout` (boolean) *optional*
    #
    # @option params [required, String] :identity_provider_name
    #   The identity provider name.
    #
    # @option params [required, String] :identity_provider_type
    #   The identity provider type.
    #
    # @option params [required, String] :portal_arn
    #   The ARN of the web portal.
    #
    # @return [Types::CreateIdentityProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIdentityProviderResponse#identity_provider_arn #identity_provider_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_identity_provider({
    #     client_token: "ClientToken",
    #     identity_provider_details: { # required
    #       "StringType" => "StringType",
    #     },
    #     identity_provider_name: "IdentityProviderName", # required
    #     identity_provider_type: "SAML", # required, accepts SAML, Facebook, Google, LoginWithAmazon, SignInWithApple, OIDC
    #     portal_arn: "ARN", # required
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
    # @option params [Hash<String,String>] :additional_encryption_context
    #   Additional encryption context of the IP access settings.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token returns the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :customer_managed_key
    #   The custom managed key of the IP access settings.
    #
    # @option params [String] :description
    #   The description of the IP access settings.
    #
    # @option params [String] :display_name
    #   The display name of the IP access settings.
    #
    # @option params [required, Array<Types::IpRule>] :ip_rules
    #   The IP rules of the IP access settings.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to add to the browser settings resource. A tag is a key-value
    #   pair.
    #
    # @return [Types::CreateIpAccessSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIpAccessSettingsResponse#ip_access_settings_arn #ip_access_settings_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ip_access_settings({
    #     additional_encryption_context: {
    #       "StringType" => "StringType",
    #     },
    #     client_token: "ClientToken",
    #     customer_managed_key: "keyArn",
    #     description: "Description",
    #     display_name: "DisplayName",
    #     ip_rules: [ # required
    #       {
    #         description: "Description",
    #         ip_range: "IpRange", # required
    #       },
    #     ],
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
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token returns the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Array<String>] :security_group_ids
    #   One or more security groups used to control access from streaming
    #   instances to your VPC.
    #
    # @option params [required, Array<String>] :subnet_ids
    #   The subnets in which network interfaces are created to connect
    #   streaming instances to your VPC. At least two of these subnets must be
    #   in different availability zones.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to add to the network settings resource. A tag is a key-value
    #   pair.
    #
    # @option params [required, String] :vpc_id
    #   The VPC that streaming instances will connect to.
    #
    # @return [Types::CreateNetworkSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNetworkSettingsResponse#network_settings_arn #network_settings_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_network_settings({
    #     client_token: "ClientToken",
    #     security_group_ids: ["SecurityGroupId"], # required
    #     subnet_ids: ["SubnetId"], # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     vpc_id: "VpcId", # required
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
    # @option params [Hash<String,String>] :additional_encryption_context
    #   The additional encryption context of the portal.
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
    #   `IAM_Identity_Center` web portals are authenticated through AWS IAM
    #   Identity Center (successor to AWS Single Sign-On). They provide
    #   additional features, such as IdP-initiated authentication. Identity
    #   sources (including external identity provider integration), plus user
    #   and group access to your web portal, can be configured in the IAM
    #   Identity Center.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token returns the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :customer_managed_key
    #   The customer managed key of the web portal.
    #
    # @option params [String] :display_name
    #   The name of the web portal. This is not visible to users who log into
    #   the web portal.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to add to the web portal. A tag is a key-value pair.
    #
    # @return [Types::CreatePortalResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePortalResponse#portal_arn #portal_arn} => String
    #   * {Types::CreatePortalResponse#portal_endpoint #portal_endpoint} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_portal({
    #     additional_encryption_context: {
    #       "StringType" => "StringType",
    #     },
    #     authentication_type: "Standard", # accepts Standard, IAM_Identity_Center
    #     client_token: "ClientToken",
    #     customer_managed_key: "keyArn",
    #     display_name: "DisplayName",
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
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token returns the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to add to the trust store. A tag is a key-value pair.
    #
    # @return [Types::CreateTrustStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTrustStoreResponse#trust_store_arn #trust_store_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_trust_store({
    #     certificate_list: ["data"], # required
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
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token returns the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :kinesis_stream_arn
    #   The ARN of the Kinesis stream.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to add to the user settings resource. A tag is a key-value
    #   pair.
    #
    # @return [Types::CreateUserAccessLoggingSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserAccessLoggingSettingsResponse#user_access_logging_settings_arn #user_access_logging_settings_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_access_logging_settings({
    #     client_token: "ClientToken",
    #     kinesis_stream_arn: "KinesisStreamArn", # required
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
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token returns the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :copy_allowed
    #   Specifies whether the user can copy text from the streaming session to
    #   the local device.
    #
    # @option params [Integer] :disconnect_timeout_in_minutes
    #   The amount of time that a streaming session remains active after users
    #   disconnect.
    #
    # @option params [required, String] :download_allowed
    #   Specifies whether the user can download files from the streaming
    #   session to the local device.
    #
    # @option params [Integer] :idle_disconnect_timeout_in_minutes
    #   The amount of time that users can be idle (inactive) before they are
    #   disconnected from their streaming session and the disconnect timeout
    #   interval begins.
    #
    # @option params [required, String] :paste_allowed
    #   Specifies whether the user can paste text from the local device to the
    #   streaming session.
    #
    # @option params [required, String] :print_allowed
    #   Specifies whether the user can print to the local device.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to add to the user settings resource. A tag is a key-value
    #   pair.
    #
    # @option params [required, String] :upload_allowed
    #   Specifies whether the user can upload files from the local device to
    #   the streaming session.
    #
    # @return [Types::CreateUserSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserSettingsResponse#user_settings_arn #user_settings_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_settings({
    #     client_token: "ClientToken",
    #     copy_allowed: "Disabled", # required, accepts Disabled, Enabled
    #     disconnect_timeout_in_minutes: 1,
    #     download_allowed: "Disabled", # required, accepts Disabled, Enabled
    #     idle_disconnect_timeout_in_minutes: 1,
    #     paste_allowed: "Disabled", # required, accepts Disabled, Enabled
    #     print_allowed: "Disabled", # required, accepts Disabled, Enabled
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     upload_allowed: "Disabled", # required, accepts Disabled, Enabled
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
    #     identity_provider_arn: "ARN", # required
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
    #   resp.browser_settings.associated_portal_arns #=> Array
    #   resp.browser_settings.associated_portal_arns[0] #=> String
    #   resp.browser_settings.browser_policy #=> String
    #   resp.browser_settings.browser_settings_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/GetBrowserSettings AWS API Documentation
    #
    # @overload get_browser_settings(params = {})
    # @param [Hash] params ({})
    def get_browser_settings(params = {}, options = {})
      req = build_request(:get_browser_settings, params)
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
    #     identity_provider_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_provider.identity_provider_arn #=> String
    #   resp.identity_provider.identity_provider_details #=> Hash
    #   resp.identity_provider.identity_provider_details["StringType"] #=> String
    #   resp.identity_provider.identity_provider_name #=> String
    #   resp.identity_provider.identity_provider_type #=> String, one of "SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"
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
    #   resp.ip_access_settings.associated_portal_arns #=> Array
    #   resp.ip_access_settings.associated_portal_arns[0] #=> String
    #   resp.ip_access_settings.creation_date #=> Time
    #   resp.ip_access_settings.description #=> String
    #   resp.ip_access_settings.display_name #=> String
    #   resp.ip_access_settings.ip_access_settings_arn #=> String
    #   resp.ip_access_settings.ip_rules #=> Array
    #   resp.ip_access_settings.ip_rules[0].description #=> String
    #   resp.ip_access_settings.ip_rules[0].ip_range #=> String
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
    #   resp.network_settings.associated_portal_arns #=> Array
    #   resp.network_settings.associated_portal_arns[0] #=> String
    #   resp.network_settings.network_settings_arn #=> String
    #   resp.network_settings.security_group_ids #=> Array
    #   resp.network_settings.security_group_ids[0] #=> String
    #   resp.network_settings.subnet_ids #=> Array
    #   resp.network_settings.subnet_ids[0] #=> String
    #   resp.network_settings.vpc_id #=> String
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
    #   resp.portal.authentication_type #=> String, one of "Standard", "IAM_Identity_Center"
    #   resp.portal.browser_settings_arn #=> String
    #   resp.portal.browser_type #=> String, one of "Chrome"
    #   resp.portal.creation_date #=> Time
    #   resp.portal.display_name #=> String
    #   resp.portal.ip_access_settings_arn #=> String
    #   resp.portal.network_settings_arn #=> String
    #   resp.portal.portal_arn #=> String
    #   resp.portal.portal_endpoint #=> String
    #   resp.portal.portal_status #=> String, one of "Incomplete", "Pending", "Active"
    #   resp.portal.renderer_type #=> String, one of "AppStream"
    #   resp.portal.status_reason #=> String
    #   resp.portal.trust_store_arn #=> String
    #   resp.portal.user_access_logging_settings_arn #=> String
    #   resp.portal.user_settings_arn #=> String
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
    # @option params [required, String] :thumbprint
    #   The thumbprint of the trust store certificate.
    #
    # @option params [required, String] :trust_store_arn
    #   The ARN of the trust store certificate.
    #
    # @return [Types::GetTrustStoreCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTrustStoreCertificateResponse#certificate #certificate} => Types::Certificate
    #   * {Types::GetTrustStoreCertificateResponse#trust_store_arn #trust_store_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_trust_store_certificate({
    #     thumbprint: "CertificateThumbprint", # required
    #     trust_store_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate.body #=> String
    #   resp.certificate.issuer #=> String
    #   resp.certificate.not_valid_after #=> Time
    #   resp.certificate.not_valid_before #=> Time
    #   resp.certificate.subject #=> String
    #   resp.certificate.thumbprint #=> String
    #   resp.trust_store_arn #=> String
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
    #   resp.user_access_logging_settings.associated_portal_arns #=> Array
    #   resp.user_access_logging_settings.associated_portal_arns[0] #=> String
    #   resp.user_access_logging_settings.kinesis_stream_arn #=> String
    #   resp.user_access_logging_settings.user_access_logging_settings_arn #=> String
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
    #   resp.user_settings.associated_portal_arns #=> Array
    #   resp.user_settings.associated_portal_arns[0] #=> String
    #   resp.user_settings.copy_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings.disconnect_timeout_in_minutes #=> Integer
    #   resp.user_settings.download_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings.idle_disconnect_timeout_in_minutes #=> Integer
    #   resp.user_settings.paste_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings.print_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings.upload_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings.user_settings_arn #=> String
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
    # @option params [Integer] :max_results
    #   The maximum number of results to be included in the next page.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
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
    #     max_results: 1,
    #     next_token: "PaginationToken",
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

    # Retrieves a list of identity providers for a specific web portal.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be included in the next page.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #
    # @option params [required, String] :portal_arn
    #   The ARN of the web portal.
    #
    # @return [Types::ListIdentityProvidersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIdentityProvidersResponse#identity_providers #identity_providers} => Array&lt;Types::IdentityProviderSummary&gt;
    #   * {Types::ListIdentityProvidersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_identity_providers({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     portal_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_providers #=> Array
    #   resp.identity_providers[0].identity_provider_arn #=> String
    #   resp.identity_providers[0].identity_provider_name #=> String
    #   resp.identity_providers[0].identity_provider_type #=> String, one of "SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"
    #   resp.next_token #=> String
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
    # @option params [Integer] :max_results
    #   The maximum number of results to be included in the next page.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
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
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.ip_access_settings #=> Array
    #   resp.ip_access_settings[0].creation_date #=> Time
    #   resp.ip_access_settings[0].description #=> String
    #   resp.ip_access_settings[0].display_name #=> String
    #   resp.ip_access_settings[0].ip_access_settings_arn #=> String
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
    # @option params [Integer] :max_results
    #   The maximum number of results to be included in the next page.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
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
    #     max_results: 1,
    #     next_token: "PaginationToken",
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
    # @option params [Integer] :max_results
    #   The maximum number of results to be included in the next page.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #
    # @return [Types::ListPortalsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPortalsResponse#next_token #next_token} => String
    #   * {Types::ListPortalsResponse#portals #portals} => Array&lt;Types::PortalSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_portals({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.portals #=> Array
    #   resp.portals[0].authentication_type #=> String, one of "Standard", "IAM_Identity_Center"
    #   resp.portals[0].browser_settings_arn #=> String
    #   resp.portals[0].browser_type #=> String, one of "Chrome"
    #   resp.portals[0].creation_date #=> Time
    #   resp.portals[0].display_name #=> String
    #   resp.portals[0].ip_access_settings_arn #=> String
    #   resp.portals[0].network_settings_arn #=> String
    #   resp.portals[0].portal_arn #=> String
    #   resp.portals[0].portal_endpoint #=> String
    #   resp.portals[0].portal_status #=> String, one of "Incomplete", "Pending", "Active"
    #   resp.portals[0].renderer_type #=> String, one of "AppStream"
    #   resp.portals[0].trust_store_arn #=> String
    #   resp.portals[0].user_access_logging_settings_arn #=> String
    #   resp.portals[0].user_settings_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/ListPortals AWS API Documentation
    #
    # @overload list_portals(params = {})
    # @param [Hash] params ({})
    def list_portals(params = {}, options = {})
      req = build_request(:list_portals, params)
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
    # @option params [Integer] :max_results
    #   The maximum number of results to be included in the next page.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #
    # @option params [required, String] :trust_store_arn
    #   The ARN of the trust store
    #
    # @return [Types::ListTrustStoreCertificatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrustStoreCertificatesResponse#certificate_list #certificate_list} => Array&lt;Types::CertificateSummary&gt;
    #   * {Types::ListTrustStoreCertificatesResponse#next_token #next_token} => String
    #   * {Types::ListTrustStoreCertificatesResponse#trust_store_arn #trust_store_arn} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_trust_store_certificates({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     trust_store_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_list #=> Array
    #   resp.certificate_list[0].issuer #=> String
    #   resp.certificate_list[0].not_valid_after #=> Time
    #   resp.certificate_list[0].not_valid_before #=> Time
    #   resp.certificate_list[0].subject #=> String
    #   resp.certificate_list[0].thumbprint #=> String
    #   resp.next_token #=> String
    #   resp.trust_store_arn #=> String
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
    # @option params [Integer] :max_results
    #   The maximum number of results to be included in the next page.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #
    # @return [Types::ListTrustStoresResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrustStoresResponse#next_token #next_token} => String
    #   * {Types::ListTrustStoresResponse#trust_stores #trust_stores} => Array&lt;Types::TrustStoreSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_trust_stores({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.trust_stores #=> Array
    #   resp.trust_stores[0].trust_store_arn #=> String
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
    # @option params [Integer] :max_results
    #   The maximum number of results to be included in the next page.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #
    # @return [Types::ListUserAccessLoggingSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUserAccessLoggingSettingsResponse#next_token #next_token} => String
    #   * {Types::ListUserAccessLoggingSettingsResponse#user_access_logging_settings #user_access_logging_settings} => Array&lt;Types::UserAccessLoggingSettingsSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_access_logging_settings({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.user_access_logging_settings #=> Array
    #   resp.user_access_logging_settings[0].kinesis_stream_arn #=> String
    #   resp.user_access_logging_settings[0].user_access_logging_settings_arn #=> String
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
    # @option params [Integer] :max_results
    #   The maximum number of results to be included in the next page.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation.
    #
    # @return [Types::ListUserSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUserSettingsResponse#next_token #next_token} => String
    #   * {Types::ListUserSettingsResponse#user_settings #user_settings} => Array&lt;Types::UserSettingsSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_settings({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.user_settings #=> Array
    #   resp.user_settings[0].copy_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings[0].disconnect_timeout_in_minutes #=> Integer
    #   resp.user_settings[0].download_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings[0].idle_disconnect_timeout_in_minutes #=> Integer
    #   resp.user_settings[0].paste_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings[0].print_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings[0].upload_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings[0].user_settings_arn #=> String
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
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token returns the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags of the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     client_token: "ClientToken",
    #     resource_arn: "ARN", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
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
    # @option params [String] :browser_policy
    #   A JSON string containing Chrome Enterprise policies that will be
    #   applied to all streaming sessions.
    #
    # @option params [required, String] :browser_settings_arn
    #   The ARN of the browser settings.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token return the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateBrowserSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBrowserSettingsResponse#browser_settings #browser_settings} => Types::BrowserSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_browser_settings({
    #     browser_policy: "BrowserPolicy",
    #     browser_settings_arn: "ARN", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.browser_settings.associated_portal_arns #=> Array
    #   resp.browser_settings.associated_portal_arns[0] #=> String
    #   resp.browser_settings.browser_policy #=> String
    #   resp.browser_settings.browser_settings_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UpdateBrowserSettings AWS API Documentation
    #
    # @overload update_browser_settings(params = {})
    # @param [Hash] params ({})
    def update_browser_settings(params = {}, options = {})
      req = build_request(:update_browser_settings, params)
      req.send_request(options)
    end

    # Updates the identity provider.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token return the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :identity_provider_arn
    #   The ARN of the identity provider.
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
    #
    #   * For Facebook:
    #
    #     * `client_id`
    #
    #     * `client_secret`
    #
    #     * `authorize_scopes`
    #
    #     * `api_version`
    #
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
    #
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
    #
    #   * For SAML providers:
    #
    #     * `MetadataFile` OR `MetadataURL`
    #
    #     * `IDPSignout` (boolean) *optional*
    #
    # @option params [String] :identity_provider_name
    #   The name of the identity provider.
    #
    # @option params [String] :identity_provider_type
    #   The type of the identity provider.
    #
    # @return [Types::UpdateIdentityProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIdentityProviderResponse#identity_provider #identity_provider} => Types::IdentityProvider
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_identity_provider({
    #     client_token: "ClientToken",
    #     identity_provider_arn: "ARN", # required
    #     identity_provider_details: {
    #       "StringType" => "StringType",
    #     },
    #     identity_provider_name: "IdentityProviderName",
    #     identity_provider_type: "SAML", # accepts SAML, Facebook, Google, LoginWithAmazon, SignInWithApple, OIDC
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_provider.identity_provider_arn #=> String
    #   resp.identity_provider.identity_provider_details #=> Hash
    #   resp.identity_provider.identity_provider_details["StringType"] #=> String
    #   resp.identity_provider.identity_provider_name #=> String
    #   resp.identity_provider.identity_provider_type #=> String, one of "SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"
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
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token return the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   The description of the IP access settings.
    #
    # @option params [String] :display_name
    #   The display name of the IP access settings.
    #
    # @option params [required, String] :ip_access_settings_arn
    #   The ARN of the IP access settings.
    #
    # @option params [Array<Types::IpRule>] :ip_rules
    #   The updated IP rules of the IP access settings.
    #
    # @return [Types::UpdateIpAccessSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIpAccessSettingsResponse#ip_access_settings #ip_access_settings} => Types::IpAccessSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ip_access_settings({
    #     client_token: "ClientToken",
    #     description: "Description",
    #     display_name: "DisplayName",
    #     ip_access_settings_arn: "ARN", # required
    #     ip_rules: [
    #       {
    #         description: "Description",
    #         ip_range: "IpRange", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.ip_access_settings.associated_portal_arns #=> Array
    #   resp.ip_access_settings.associated_portal_arns[0] #=> String
    #   resp.ip_access_settings.creation_date #=> Time
    #   resp.ip_access_settings.description #=> String
    #   resp.ip_access_settings.display_name #=> String
    #   resp.ip_access_settings.ip_access_settings_arn #=> String
    #   resp.ip_access_settings.ip_rules #=> Array
    #   resp.ip_access_settings.ip_rules[0].description #=> String
    #   resp.ip_access_settings.ip_rules[0].ip_range #=> String
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
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token return the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :network_settings_arn
    #   The ARN of the network settings.
    #
    # @option params [Array<String>] :security_group_ids
    #   One or more security groups used to control access from streaming
    #   instances to your VPC.
    #
    # @option params [Array<String>] :subnet_ids
    #   The subnets in which network interfaces are created to connect
    #   streaming instances to your VPC. At least two of these subnets must be
    #   in different availability zones.
    #
    # @option params [String] :vpc_id
    #   The VPC that streaming instances will connect to.
    #
    # @return [Types::UpdateNetworkSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateNetworkSettingsResponse#network_settings #network_settings} => Types::NetworkSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_network_settings({
    #     client_token: "ClientToken",
    #     network_settings_arn: "ARN", # required
    #     security_group_ids: ["SecurityGroupId"],
    #     subnet_ids: ["SubnetId"],
    #     vpc_id: "VpcId",
    #   })
    #
    # @example Response structure
    #
    #   resp.network_settings.associated_portal_arns #=> Array
    #   resp.network_settings.associated_portal_arns[0] #=> String
    #   resp.network_settings.network_settings_arn #=> String
    #   resp.network_settings.security_group_ids #=> Array
    #   resp.network_settings.security_group_ids[0] #=> String
    #   resp.network_settings.subnet_ids #=> Array
    #   resp.network_settings.subnet_ids[0] #=> String
    #   resp.network_settings.vpc_id #=> String
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
    #   `IAM_Identity_Center` web portals are authenticated through AWS IAM
    #   Identity Center (successor to AWS Single Sign-On). They provide
    #   additional features, such as IdP-initiated authentication. Identity
    #   sources (including external identity provider integration), plus user
    #   and group access to your web portal, can be configured in the IAM
    #   Identity Center.
    #
    # @option params [String] :display_name
    #   The name of the web portal. This is not visible to users who log into
    #   the web portal.
    #
    # @option params [required, String] :portal_arn
    #   The ARN of the web portal.
    #
    # @return [Types::UpdatePortalResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePortalResponse#portal #portal} => Types::Portal
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_portal({
    #     authentication_type: "Standard", # accepts Standard, IAM_Identity_Center
    #     display_name: "DisplayName",
    #     portal_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.portal.authentication_type #=> String, one of "Standard", "IAM_Identity_Center"
    #   resp.portal.browser_settings_arn #=> String
    #   resp.portal.browser_type #=> String, one of "Chrome"
    #   resp.portal.creation_date #=> Time
    #   resp.portal.display_name #=> String
    #   resp.portal.ip_access_settings_arn #=> String
    #   resp.portal.network_settings_arn #=> String
    #   resp.portal.portal_arn #=> String
    #   resp.portal.portal_endpoint #=> String
    #   resp.portal.portal_status #=> String, one of "Incomplete", "Pending", "Active"
    #   resp.portal.renderer_type #=> String, one of "AppStream"
    #   resp.portal.status_reason #=> String
    #   resp.portal.trust_store_arn #=> String
    #   resp.portal.user_access_logging_settings_arn #=> String
    #   resp.portal.user_settings_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-web-2020-07-08/UpdatePortal AWS API Documentation
    #
    # @overload update_portal(params = {})
    # @param [Hash] params ({})
    def update_portal(params = {}, options = {})
      req = build_request(:update_portal, params)
      req.send_request(options)
    end

    # Updates the trust store.
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
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :trust_store_arn
    #   The ARN of the trust store.
    #
    # @return [Types::UpdateTrustStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTrustStoreResponse#trust_store_arn #trust_store_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_trust_store({
    #     certificates_to_add: ["data"],
    #     certificates_to_delete: ["CertificateThumbprint"],
    #     client_token: "ClientToken",
    #     trust_store_arn: "ARN", # required
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
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token return the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :kinesis_stream_arn
    #   The ARN of the Kinesis stream.
    #
    # @option params [required, String] :user_access_logging_settings_arn
    #   The ARN of the user access logging settings.
    #
    # @return [Types::UpdateUserAccessLoggingSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserAccessLoggingSettingsResponse#user_access_logging_settings #user_access_logging_settings} => Types::UserAccessLoggingSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_access_logging_settings({
    #     client_token: "ClientToken",
    #     kinesis_stream_arn: "KinesisStreamArn",
    #     user_access_logging_settings_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_access_logging_settings.associated_portal_arns #=> Array
    #   resp.user_access_logging_settings.associated_portal_arns[0] #=> String
    #   resp.user_access_logging_settings.kinesis_stream_arn #=> String
    #   resp.user_access_logging_settings.user_access_logging_settings_arn #=> String
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
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token return the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :copy_allowed
    #   Specifies whether the user can copy text from the streaming session to
    #   the local device.
    #
    # @option params [Integer] :disconnect_timeout_in_minutes
    #   The amount of time that a streaming session remains active after users
    #   disconnect.
    #
    # @option params [String] :download_allowed
    #   Specifies whether the user can download files from the streaming
    #   session to the local device.
    #
    # @option params [Integer] :idle_disconnect_timeout_in_minutes
    #   The amount of time that users can be idle (inactive) before they are
    #   disconnected from their streaming session and the disconnect timeout
    #   interval begins.
    #
    # @option params [String] :paste_allowed
    #   Specifies whether the user can paste text from the local device to the
    #   streaming session.
    #
    # @option params [String] :print_allowed
    #   Specifies whether the user can print to the local device.
    #
    # @option params [String] :upload_allowed
    #   Specifies whether the user can upload files from the local device to
    #   the streaming session.
    #
    # @option params [required, String] :user_settings_arn
    #   The ARN of the user settings.
    #
    # @return [Types::UpdateUserSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserSettingsResponse#user_settings #user_settings} => Types::UserSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_settings({
    #     client_token: "ClientToken",
    #     copy_allowed: "Disabled", # accepts Disabled, Enabled
    #     disconnect_timeout_in_minutes: 1,
    #     download_allowed: "Disabled", # accepts Disabled, Enabled
    #     idle_disconnect_timeout_in_minutes: 1,
    #     paste_allowed: "Disabled", # accepts Disabled, Enabled
    #     print_allowed: "Disabled", # accepts Disabled, Enabled
    #     upload_allowed: "Disabled", # accepts Disabled, Enabled
    #     user_settings_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_settings.associated_portal_arns #=> Array
    #   resp.user_settings.associated_portal_arns[0] #=> String
    #   resp.user_settings.copy_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings.disconnect_timeout_in_minutes #=> Integer
    #   resp.user_settings.download_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings.idle_disconnect_timeout_in_minutes #=> Integer
    #   resp.user_settings.paste_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings.print_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings.upload_allowed #=> String, one of "Disabled", "Enabled"
    #   resp.user_settings.user_settings_arn #=> String
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
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-workspacesweb'
      context[:gem_version] = '1.13.0'
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
