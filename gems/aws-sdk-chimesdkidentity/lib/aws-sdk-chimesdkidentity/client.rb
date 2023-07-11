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

Aws::Plugins::GlobalConfiguration.add_identifier(:chimesdkidentity)

module Aws::ChimeSDKIdentity
  # An API client for ChimeSDKIdentity.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ChimeSDKIdentity::Client.new(
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

    @identifier = :chimesdkidentity

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
    add_plugin(Aws::ChimeSDKIdentity::Plugins::Endpoints)

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
    #   @option options [Aws::ChimeSDKIdentity::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::ChimeSDKIdentity::EndpointParameters`
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

    # Creates an Amazon Chime SDK messaging `AppInstance` under an AWS
    # account. Only SDK messaging customers use this API.
    # `CreateAppInstance` supports idempotency behavior as described in the
    # AWS API Standard.
    #
    # identity
    #
    # @option params [required, String] :name
    #   The name of the `AppInstance`.
    #
    # @option params [String] :metadata
    #   The metadata of the `AppInstance`. Limited to a 1KB string in UTF-8.
    #
    # @option params [required, String] :client_request_token
    #   The unique ID of the request. Use different tokens to create different
    #   `AppInstances`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags assigned to the `AppInstance`.
    #
    # @return [Types::CreateAppInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAppInstanceResponse#app_instance_arn #app_instance_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app_instance({
    #     name: "NonEmptyResourceName", # required
    #     metadata: "Metadata",
    #     client_request_token: "ClientRequestToken", # required
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
    #   resp.app_instance_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/CreateAppInstance AWS API Documentation
    #
    # @overload create_app_instance(params = {})
    # @param [Hash] params ({})
    def create_app_instance(params = {}, options = {})
      req = build_request(:create_app_instance, params)
      req.send_request(options)
    end

    # Promotes an `AppInstanceUser` or `AppInstanceBot` to an
    # `AppInstanceAdmin`. The promoted entity can perform the following
    # actions.
    #
    # * `ChannelModerator` actions across all channels in the `AppInstance`.
    #
    # * `DeleteChannelMessage` actions.
    #
    # Only an `AppInstanceUser` and `AppInstanceBot` can be promoted to an
    # `AppInstanceAdmin` role.
    #
    # @option params [required, String] :app_instance_admin_arn
    #   The ARN of the administrator of the current `AppInstance`.
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the `AppInstance`.
    #
    # @return [Types::CreateAppInstanceAdminResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAppInstanceAdminResponse#app_instance_admin #app_instance_admin} => Types::Identity
    #   * {Types::CreateAppInstanceAdminResponse#app_instance_arn #app_instance_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app_instance_admin({
    #     app_instance_admin_arn: "ChimeArn", # required
    #     app_instance_arn: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_admin.arn #=> String
    #   resp.app_instance_admin.name #=> String
    #   resp.app_instance_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/CreateAppInstanceAdmin AWS API Documentation
    #
    # @overload create_app_instance_admin(params = {})
    # @param [Hash] params ({})
    def create_app_instance_admin(params = {}, options = {})
      req = build_request(:create_app_instance_admin, params)
      req.send_request(options)
    end

    # Creates a bot under an Amazon Chime `AppInstance`. The request
    # consists of a unique `Configuration` and `Name` for that bot.
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the `AppInstance` request.
    #
    # @option params [String] :name
    #   The user's name.
    #
    # @option params [String] :metadata
    #   The request metadata. Limited to a 1KB string in UTF-8.
    #
    # @option params [required, String] :client_request_token
    #   The unique ID for the client making the request. Use different tokens
    #   for different `AppInstanceBots`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags assigned to the `AppInstanceBot`.
    #
    # @option params [required, Types::Configuration] :configuration
    #   Configuration information about the Amazon Lex V2 V2 bot.
    #
    # @return [Types::CreateAppInstanceBotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAppInstanceBotResponse#app_instance_bot_arn #app_instance_bot_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app_instance_bot({
    #     app_instance_arn: "ChimeArn", # required
    #     name: "ResourceName",
    #     metadata: "Metadata",
    #     client_request_token: "ClientRequestToken", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     configuration: { # required
    #       lex: { # required
    #         responds_to: "STANDARD_MESSAGES", # accepts STANDARD_MESSAGES
    #         invoked_by: {
    #           standard_messages: "AUTO", # required, accepts AUTO, ALL, MENTIONS, NONE
    #           targeted_messages: "ALL", # required, accepts ALL, NONE
    #         },
    #         lex_bot_alias_arn: "LexBotAliasArn", # required
    #         locale_id: "String", # required
    #         welcome_intent: "LexIntentName",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_bot_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/CreateAppInstanceBot AWS API Documentation
    #
    # @overload create_app_instance_bot(params = {})
    # @param [Hash] params ({})
    def create_app_instance_bot(params = {}, options = {})
      req = build_request(:create_app_instance_bot, params)
      req.send_request(options)
    end

    # Creates a user under an Amazon Chime `AppInstance`. The request
    # consists of a unique `appInstanceUserId` and `Name` for that user.
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the `AppInstance` request.
    #
    # @option params [required, String] :app_instance_user_id
    #   The user ID of the `AppInstance`.
    #
    # @option params [required, String] :name
    #   The user's name.
    #
    # @option params [String] :metadata
    #   The request's metadata. Limited to a 1KB string in UTF-8.
    #
    # @option params [required, String] :client_request_token
    #   The unique ID of the request. Use different tokens to request
    #   additional `AppInstances`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags assigned to the `AppInstanceUser`.
    #
    # @option params [Types::ExpirationSettings] :expiration_settings
    #   Settings that control the interval after which the `AppInstanceUser`
    #   is automatically deleted.
    #
    # @return [Types::CreateAppInstanceUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAppInstanceUserResponse#app_instance_user_arn #app_instance_user_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app_instance_user({
    #     app_instance_arn: "ChimeArn", # required
    #     app_instance_user_id: "UserId", # required
    #     name: "UserName", # required
    #     metadata: "Metadata",
    #     client_request_token: "ClientRequestToken", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     expiration_settings: {
    #       expiration_days: 1, # required
    #       expiration_criterion: "CREATED_TIMESTAMP", # required, accepts CREATED_TIMESTAMP
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_user_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/CreateAppInstanceUser AWS API Documentation
    #
    # @overload create_app_instance_user(params = {})
    # @param [Hash] params ({})
    def create_app_instance_user(params = {}, options = {})
      req = build_request(:create_app_instance_user, params)
      req.send_request(options)
    end

    # Deletes an `AppInstance` and all associated data asynchronously.
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the `AppInstance`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_instance({
    #     app_instance_arn: "ChimeArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DeleteAppInstance AWS API Documentation
    #
    # @overload delete_app_instance(params = {})
    # @param [Hash] params ({})
    def delete_app_instance(params = {}, options = {})
      req = build_request(:delete_app_instance, params)
      req.send_request(options)
    end

    # Demotes an `AppInstanceAdmin` to an `AppInstanceUser` or
    # `AppInstanceBot`. This action does not delete the user.
    #
    # @option params [required, String] :app_instance_admin_arn
    #   The ARN of the `AppInstance`'s administrator.
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the `AppInstance`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_instance_admin({
    #     app_instance_admin_arn: "ChimeArn", # required
    #     app_instance_arn: "ChimeArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DeleteAppInstanceAdmin AWS API Documentation
    #
    # @overload delete_app_instance_admin(params = {})
    # @param [Hash] params ({})
    def delete_app_instance_admin(params = {}, options = {})
      req = build_request(:delete_app_instance_admin, params)
      req.send_request(options)
    end

    # Deletes an `AppInstanceBot`.
    #
    # @option params [required, String] :app_instance_bot_arn
    #   The ARN of the `AppInstanceBot` being deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_instance_bot({
    #     app_instance_bot_arn: "ChimeArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DeleteAppInstanceBot AWS API Documentation
    #
    # @overload delete_app_instance_bot(params = {})
    # @param [Hash] params ({})
    def delete_app_instance_bot(params = {}, options = {})
      req = build_request(:delete_app_instance_bot, params)
      req.send_request(options)
    end

    # Deletes an `AppInstanceUser`.
    #
    # @option params [required, String] :app_instance_user_arn
    #   The ARN of the user request being deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_instance_user({
    #     app_instance_user_arn: "ChimeArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DeleteAppInstanceUser AWS API Documentation
    #
    # @overload delete_app_instance_user(params = {})
    # @param [Hash] params ({})
    def delete_app_instance_user(params = {}, options = {})
      req = build_request(:delete_app_instance_user, params)
      req.send_request(options)
    end

    # Deregisters an `AppInstanceUserEndpoint`.
    #
    # @option params [required, String] :app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #
    # @option params [required, String] :endpoint_id
    #   The unique identifier of the `AppInstanceUserEndpoint`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_app_instance_user_endpoint({
    #     app_instance_user_arn: "ChimeArn", # required
    #     endpoint_id: "String64", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DeregisterAppInstanceUserEndpoint AWS API Documentation
    #
    # @overload deregister_app_instance_user_endpoint(params = {})
    # @param [Hash] params ({})
    def deregister_app_instance_user_endpoint(params = {}, options = {})
      req = build_request(:deregister_app_instance_user_endpoint, params)
      req.send_request(options)
    end

    # Returns the full details of an `AppInstance`.
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the `AppInstance`.
    #
    # @return [Types::DescribeAppInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAppInstanceResponse#app_instance #app_instance} => Types::AppInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app_instance({
    #     app_instance_arn: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance.app_instance_arn #=> String
    #   resp.app_instance.name #=> String
    #   resp.app_instance.created_timestamp #=> Time
    #   resp.app_instance.last_updated_timestamp #=> Time
    #   resp.app_instance.metadata #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DescribeAppInstance AWS API Documentation
    #
    # @overload describe_app_instance(params = {})
    # @param [Hash] params ({})
    def describe_app_instance(params = {}, options = {})
      req = build_request(:describe_app_instance, params)
      req.send_request(options)
    end

    # Returns the full details of an `AppInstanceAdmin`.
    #
    # @option params [required, String] :app_instance_admin_arn
    #   The ARN of the `AppInstanceAdmin`.
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the `AppInstance`.
    #
    # @return [Types::DescribeAppInstanceAdminResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAppInstanceAdminResponse#app_instance_admin #app_instance_admin} => Types::AppInstanceAdmin
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app_instance_admin({
    #     app_instance_admin_arn: "ChimeArn", # required
    #     app_instance_arn: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_admin.admin.arn #=> String
    #   resp.app_instance_admin.admin.name #=> String
    #   resp.app_instance_admin.app_instance_arn #=> String
    #   resp.app_instance_admin.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DescribeAppInstanceAdmin AWS API Documentation
    #
    # @overload describe_app_instance_admin(params = {})
    # @param [Hash] params ({})
    def describe_app_instance_admin(params = {}, options = {})
      req = build_request(:describe_app_instance_admin, params)
      req.send_request(options)
    end

    # The `AppInstanceBot's` information.
    #
    # @option params [required, String] :app_instance_bot_arn
    #   The ARN of the `AppInstanceBot`.
    #
    # @return [Types::DescribeAppInstanceBotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAppInstanceBotResponse#app_instance_bot #app_instance_bot} => Types::AppInstanceBot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app_instance_bot({
    #     app_instance_bot_arn: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_bot.app_instance_bot_arn #=> String
    #   resp.app_instance_bot.name #=> String
    #   resp.app_instance_bot.configuration.lex.responds_to #=> String, one of "STANDARD_MESSAGES"
    #   resp.app_instance_bot.configuration.lex.invoked_by.standard_messages #=> String, one of "AUTO", "ALL", "MENTIONS", "NONE"
    #   resp.app_instance_bot.configuration.lex.invoked_by.targeted_messages #=> String, one of "ALL", "NONE"
    #   resp.app_instance_bot.configuration.lex.lex_bot_alias_arn #=> String
    #   resp.app_instance_bot.configuration.lex.locale_id #=> String
    #   resp.app_instance_bot.configuration.lex.welcome_intent #=> String
    #   resp.app_instance_bot.created_timestamp #=> Time
    #   resp.app_instance_bot.last_updated_timestamp #=> Time
    #   resp.app_instance_bot.metadata #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DescribeAppInstanceBot AWS API Documentation
    #
    # @overload describe_app_instance_bot(params = {})
    # @param [Hash] params ({})
    def describe_app_instance_bot(params = {}, options = {})
      req = build_request(:describe_app_instance_bot, params)
      req.send_request(options)
    end

    # Returns the full details of an `AppInstanceUser`.
    #
    # @option params [required, String] :app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #
    # @return [Types::DescribeAppInstanceUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAppInstanceUserResponse#app_instance_user #app_instance_user} => Types::AppInstanceUser
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app_instance_user({
    #     app_instance_user_arn: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_user.app_instance_user_arn #=> String
    #   resp.app_instance_user.name #=> String
    #   resp.app_instance_user.metadata #=> String
    #   resp.app_instance_user.created_timestamp #=> Time
    #   resp.app_instance_user.last_updated_timestamp #=> Time
    #   resp.app_instance_user.expiration_settings.expiration_days #=> Integer
    #   resp.app_instance_user.expiration_settings.expiration_criterion #=> String, one of "CREATED_TIMESTAMP"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DescribeAppInstanceUser AWS API Documentation
    #
    # @overload describe_app_instance_user(params = {})
    # @param [Hash] params ({})
    def describe_app_instance_user(params = {}, options = {})
      req = build_request(:describe_app_instance_user, params)
      req.send_request(options)
    end

    # Returns the full details of an `AppInstanceUserEndpoint`.
    #
    # @option params [required, String] :app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #
    # @option params [required, String] :endpoint_id
    #   The unique identifier of the `AppInstanceUserEndpoint`.
    #
    # @return [Types::DescribeAppInstanceUserEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAppInstanceUserEndpointResponse#app_instance_user_endpoint #app_instance_user_endpoint} => Types::AppInstanceUserEndpoint
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app_instance_user_endpoint({
    #     app_instance_user_arn: "String1600", # required
    #     endpoint_id: "String64", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_user_endpoint.app_instance_user_arn #=> String
    #   resp.app_instance_user_endpoint.endpoint_id #=> String
    #   resp.app_instance_user_endpoint.name #=> String
    #   resp.app_instance_user_endpoint.type #=> String, one of "APNS", "APNS_SANDBOX", "GCM"
    #   resp.app_instance_user_endpoint.resource_arn #=> String
    #   resp.app_instance_user_endpoint.endpoint_attributes.device_token #=> String
    #   resp.app_instance_user_endpoint.endpoint_attributes.voip_device_token #=> String
    #   resp.app_instance_user_endpoint.created_timestamp #=> Time
    #   resp.app_instance_user_endpoint.last_updated_timestamp #=> Time
    #   resp.app_instance_user_endpoint.allow_messages #=> String, one of "ALL", "NONE"
    #   resp.app_instance_user_endpoint.endpoint_state.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.app_instance_user_endpoint.endpoint_state.status_reason #=> String, one of "INVALID_DEVICE_TOKEN", "INVALID_PINPOINT_ARN"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DescribeAppInstanceUserEndpoint AWS API Documentation
    #
    # @overload describe_app_instance_user_endpoint(params = {})
    # @param [Hash] params ({})
    def describe_app_instance_user_endpoint(params = {}, options = {})
      req = build_request(:describe_app_instance_user_endpoint, params)
      req.send_request(options)
    end

    # Gets the retention settings for an `AppInstance`.
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the `AppInstance`.
    #
    # @return [Types::GetAppInstanceRetentionSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAppInstanceRetentionSettingsResponse#app_instance_retention_settings #app_instance_retention_settings} => Types::AppInstanceRetentionSettings
    #   * {Types::GetAppInstanceRetentionSettingsResponse#initiate_deletion_timestamp #initiate_deletion_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_app_instance_retention_settings({
    #     app_instance_arn: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_retention_settings.channel_retention_settings.retention_days #=> Integer
    #   resp.initiate_deletion_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/GetAppInstanceRetentionSettings AWS API Documentation
    #
    # @overload get_app_instance_retention_settings(params = {})
    # @param [Hash] params ({})
    def get_app_instance_retention_settings(params = {}, options = {})
      req = build_request(:get_app_instance_retention_settings, params)
      req.send_request(options)
    end

    # Returns a list of the administrators in the `AppInstance`.
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the `AppInstance`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of administrators that you want to return.
    #
    # @option params [String] :next_token
    #   The token returned from previous API requests until the number of
    #   administrators is reached.
    #
    # @return [Types::ListAppInstanceAdminsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAppInstanceAdminsResponse#app_instance_arn #app_instance_arn} => String
    #   * {Types::ListAppInstanceAdminsResponse#app_instance_admins #app_instance_admins} => Array&lt;Types::AppInstanceAdminSummary&gt;
    #   * {Types::ListAppInstanceAdminsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_instance_admins({
    #     app_instance_arn: "ChimeArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_arn #=> String
    #   resp.app_instance_admins #=> Array
    #   resp.app_instance_admins[0].admin.arn #=> String
    #   resp.app_instance_admins[0].admin.name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ListAppInstanceAdmins AWS API Documentation
    #
    # @overload list_app_instance_admins(params = {})
    # @param [Hash] params ({})
    def list_app_instance_admins(params = {}, options = {})
      req = build_request(:list_app_instance_admins, params)
      req.send_request(options)
    end

    # Lists all `AppInstanceBots` created under a single `AppInstance`.
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the `AppInstance`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of requests to return.
    #
    # @option params [String] :next_token
    #   The token passed by previous API calls until all requested bots are
    #   returned.
    #
    # @return [Types::ListAppInstanceBotsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAppInstanceBotsResponse#app_instance_arn #app_instance_arn} => String
    #   * {Types::ListAppInstanceBotsResponse#app_instance_bots #app_instance_bots} => Array&lt;Types::AppInstanceBotSummary&gt;
    #   * {Types::ListAppInstanceBotsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_instance_bots({
    #     app_instance_arn: "ChimeArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_arn #=> String
    #   resp.app_instance_bots #=> Array
    #   resp.app_instance_bots[0].app_instance_bot_arn #=> String
    #   resp.app_instance_bots[0].name #=> String
    #   resp.app_instance_bots[0].metadata #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ListAppInstanceBots AWS API Documentation
    #
    # @overload list_app_instance_bots(params = {})
    # @param [Hash] params ({})
    def list_app_instance_bots(params = {}, options = {})
      req = build_request(:list_app_instance_bots, params)
      req.send_request(options)
    end

    # Lists all the `AppInstanceUserEndpoints` created under a single
    # `AppInstanceUser`.
    #
    # @option params [required, String] :app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of endpoints that you want to return.
    #
    # @option params [String] :next_token
    #   The token passed by previous API calls until all requested endpoints
    #   are returned.
    #
    # @return [Types::ListAppInstanceUserEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAppInstanceUserEndpointsResponse#app_instance_user_endpoints #app_instance_user_endpoints} => Array&lt;Types::AppInstanceUserEndpointSummary&gt;
    #   * {Types::ListAppInstanceUserEndpointsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_instance_user_endpoints({
    #     app_instance_user_arn: "SensitiveChimeArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_user_endpoints #=> Array
    #   resp.app_instance_user_endpoints[0].app_instance_user_arn #=> String
    #   resp.app_instance_user_endpoints[0].endpoint_id #=> String
    #   resp.app_instance_user_endpoints[0].name #=> String
    #   resp.app_instance_user_endpoints[0].type #=> String, one of "APNS", "APNS_SANDBOX", "GCM"
    #   resp.app_instance_user_endpoints[0].allow_messages #=> String, one of "ALL", "NONE"
    #   resp.app_instance_user_endpoints[0].endpoint_state.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.app_instance_user_endpoints[0].endpoint_state.status_reason #=> String, one of "INVALID_DEVICE_TOKEN", "INVALID_PINPOINT_ARN"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ListAppInstanceUserEndpoints AWS API Documentation
    #
    # @overload list_app_instance_user_endpoints(params = {})
    # @param [Hash] params ({})
    def list_app_instance_user_endpoints(params = {}, options = {})
      req = build_request(:list_app_instance_user_endpoints, params)
      req.send_request(options)
    end

    # List all `AppInstanceUsers` created under a single `AppInstance`.
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the `AppInstance`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of requests that you want returned.
    #
    # @option params [String] :next_token
    #   The token passed by previous API calls until all requested users are
    #   returned.
    #
    # @return [Types::ListAppInstanceUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAppInstanceUsersResponse#app_instance_arn #app_instance_arn} => String
    #   * {Types::ListAppInstanceUsersResponse#app_instance_users #app_instance_users} => Array&lt;Types::AppInstanceUserSummary&gt;
    #   * {Types::ListAppInstanceUsersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_instance_users({
    #     app_instance_arn: "ChimeArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_arn #=> String
    #   resp.app_instance_users #=> Array
    #   resp.app_instance_users[0].app_instance_user_arn #=> String
    #   resp.app_instance_users[0].name #=> String
    #   resp.app_instance_users[0].metadata #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ListAppInstanceUsers AWS API Documentation
    #
    # @overload list_app_instance_users(params = {})
    # @param [Hash] params ({})
    def list_app_instance_users(params = {}, options = {})
      req = build_request(:list_app_instance_users, params)
      req.send_request(options)
    end

    # Lists all Amazon Chime `AppInstance`s created under a single AWS
    # account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of `AppInstance`s that you want to return.
    #
    # @option params [String] :next_token
    #   The token passed by previous API requests until you reach the maximum
    #   number of `AppInstances`.
    #
    # @return [Types::ListAppInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAppInstancesResponse#app_instances #app_instances} => Array&lt;Types::AppInstanceSummary&gt;
    #   * {Types::ListAppInstancesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_instances({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instances #=> Array
    #   resp.app_instances[0].app_instance_arn #=> String
    #   resp.app_instances[0].name #=> String
    #   resp.app_instances[0].metadata #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ListAppInstances AWS API Documentation
    #
    # @overload list_app_instances(params = {})
    # @param [Hash] params ({})
    def list_app_instances(params = {}, options = {})
      req = build_request(:list_app_instances, params)
      req.send_request(options)
    end

    # Lists the tags applied to an Amazon Chime SDK identity resource.
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
    #     resource_arn: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Sets the amount of time in days that a given `AppInstance` retains
    # data.
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the `AppInstance`.
    #
    # @option params [required, Types::AppInstanceRetentionSettings] :app_instance_retention_settings
    #   The time in days to retain data. Data type: number.
    #
    # @return [Types::PutAppInstanceRetentionSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutAppInstanceRetentionSettingsResponse#app_instance_retention_settings #app_instance_retention_settings} => Types::AppInstanceRetentionSettings
    #   * {Types::PutAppInstanceRetentionSettingsResponse#initiate_deletion_timestamp #initiate_deletion_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_app_instance_retention_settings({
    #     app_instance_arn: "ChimeArn", # required
    #     app_instance_retention_settings: { # required
    #       channel_retention_settings: {
    #         retention_days: 1,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_retention_settings.channel_retention_settings.retention_days #=> Integer
    #   resp.initiate_deletion_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/PutAppInstanceRetentionSettings AWS API Documentation
    #
    # @overload put_app_instance_retention_settings(params = {})
    # @param [Hash] params ({})
    def put_app_instance_retention_settings(params = {}, options = {})
      req = build_request(:put_app_instance_retention_settings, params)
      req.send_request(options)
    end

    # Sets the number of days before the `AppInstanceUser` is automatically
    # deleted.
    #
    # <note markdown="1"> A background process deletes expired `AppInstanceUsers` within 6 hours
    # of expiration. Actual deletion times may vary.
    #
    #  Expired `AppInstanceUsers` that have not yet been deleted appear as
    # active, and you can update their expiration settings. The system
    # honors the new settings.
    #
    #  </note>
    #
    # @option params [required, String] :app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #
    # @option params [Types::ExpirationSettings] :expiration_settings
    #   Settings that control the interval after which an `AppInstanceUser` is
    #   automatically deleted.
    #
    # @return [Types::PutAppInstanceUserExpirationSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutAppInstanceUserExpirationSettingsResponse#app_instance_user_arn #app_instance_user_arn} => String
    #   * {Types::PutAppInstanceUserExpirationSettingsResponse#expiration_settings #expiration_settings} => Types::ExpirationSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_app_instance_user_expiration_settings({
    #     app_instance_user_arn: "ChimeArn", # required
    #     expiration_settings: {
    #       expiration_days: 1, # required
    #       expiration_criterion: "CREATED_TIMESTAMP", # required, accepts CREATED_TIMESTAMP
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_user_arn #=> String
    #   resp.expiration_settings.expiration_days #=> Integer
    #   resp.expiration_settings.expiration_criterion #=> String, one of "CREATED_TIMESTAMP"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/PutAppInstanceUserExpirationSettings AWS API Documentation
    #
    # @overload put_app_instance_user_expiration_settings(params = {})
    # @param [Hash] params ({})
    def put_app_instance_user_expiration_settings(params = {}, options = {})
      req = build_request(:put_app_instance_user_expiration_settings, params)
      req.send_request(options)
    end

    # Registers an endpoint under an Amazon Chime `AppInstanceUser`. The
    # endpoint receives messages for a user. For push notifications, the
    # endpoint is a mobile device used to receive mobile push notifications
    # for a user.
    #
    # @option params [required, String] :app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #
    # @option params [String] :name
    #   The name of the `AppInstanceUserEndpoint`.
    #
    # @option params [required, String] :type
    #   The type of the `AppInstanceUserEndpoint`. Supported types:
    #
    #   * `APNS`: The mobile notification service for an Apple device.
    #
    #   * `APNS_SANDBOX`: The sandbox environment of the mobile notification
    #     service for an Apple device.
    #
    #   * `GCM`: The mobile notification service for an Android device.
    #
    #   Populate the `ResourceArn` value of each type as `PinpointAppArn`.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to which the endpoint belongs.
    #
    # @option params [required, Types::EndpointAttributes] :endpoint_attributes
    #   The attributes of an `Endpoint`.
    #
    # @option params [required, String] :client_request_token
    #   The unique ID assigned to the request. Use different tokens to
    #   register other endpoints.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :allow_messages
    #   Boolean that controls whether the AppInstanceUserEndpoint is opted in
    #   to receive messages. `ALL` indicates the endpoint receives all
    #   messages. `NONE` indicates the endpoint receives no messages.
    #
    # @return [Types::RegisterAppInstanceUserEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterAppInstanceUserEndpointResponse#app_instance_user_arn #app_instance_user_arn} => String
    #   * {Types::RegisterAppInstanceUserEndpointResponse#endpoint_id #endpoint_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_app_instance_user_endpoint({
    #     app_instance_user_arn: "SensitiveChimeArn", # required
    #     name: "SensitiveString1600",
    #     type: "APNS", # required, accepts APNS, APNS_SANDBOX, GCM
    #     resource_arn: "ChimeArn", # required
    #     endpoint_attributes: { # required
    #       device_token: "NonEmptySensitiveString1600", # required
    #       voip_device_token: "NonEmptySensitiveString1600",
    #     },
    #     client_request_token: "ClientRequestToken", # required
    #     allow_messages: "ALL", # accepts ALL, NONE
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_user_arn #=> String
    #   resp.endpoint_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/RegisterAppInstanceUserEndpoint AWS API Documentation
    #
    # @overload register_app_instance_user_endpoint(params = {})
    # @param [Hash] params ({})
    def register_app_instance_user_endpoint(params = {}, options = {})
      req = build_request(:register_app_instance_user_endpoint, params)
      req.send_request(options)
    end

    # Applies the specified tags to the specified Amazon Chime SDK identity
    # resource.
    #
    # @option params [required, String] :resource_arn
    #   The resource ARN.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tag key-value pairs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ChimeArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the specified tags from the specified Amazon Chime SDK
    # identity resource.
    #
    # @option params [required, String] :resource_arn
    #   The resource ARN.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ChimeArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates `AppInstance` metadata.
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the `AppInstance`.
    #
    # @option params [required, String] :name
    #   The name that you want to change.
    #
    # @option params [required, String] :metadata
    #   The metadata that you want to change.
    #
    # @return [Types::UpdateAppInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAppInstanceResponse#app_instance_arn #app_instance_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_app_instance({
    #     app_instance_arn: "ChimeArn", # required
    #     name: "NonEmptyResourceName", # required
    #     metadata: "Metadata", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/UpdateAppInstance AWS API Documentation
    #
    # @overload update_app_instance(params = {})
    # @param [Hash] params ({})
    def update_app_instance(params = {}, options = {})
      req = build_request(:update_app_instance, params)
      req.send_request(options)
    end

    # Updates the name and metadata of an `AppInstanceBot`.
    #
    # @option params [required, String] :app_instance_bot_arn
    #   The ARN of the `AppInstanceBot`.
    #
    # @option params [required, String] :name
    #   The name of the `AppInstanceBot`.
    #
    # @option params [required, String] :metadata
    #   The metadata of the `AppInstanceBot`.
    #
    # @option params [Types::Configuration] :configuration
    #   The configuration for the bot update.
    #
    # @return [Types::UpdateAppInstanceBotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAppInstanceBotResponse#app_instance_bot_arn #app_instance_bot_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_app_instance_bot({
    #     app_instance_bot_arn: "ChimeArn", # required
    #     name: "ResourceName", # required
    #     metadata: "Metadata", # required
    #     configuration: {
    #       lex: { # required
    #         responds_to: "STANDARD_MESSAGES", # accepts STANDARD_MESSAGES
    #         invoked_by: {
    #           standard_messages: "AUTO", # required, accepts AUTO, ALL, MENTIONS, NONE
    #           targeted_messages: "ALL", # required, accepts ALL, NONE
    #         },
    #         lex_bot_alias_arn: "LexBotAliasArn", # required
    #         locale_id: "String", # required
    #         welcome_intent: "LexIntentName",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_bot_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/UpdateAppInstanceBot AWS API Documentation
    #
    # @overload update_app_instance_bot(params = {})
    # @param [Hash] params ({})
    def update_app_instance_bot(params = {}, options = {})
      req = build_request(:update_app_instance_bot, params)
      req.send_request(options)
    end

    # Updates the details of an `AppInstanceUser`. You can update names and
    # metadata.
    #
    # @option params [required, String] :app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #
    # @option params [required, String] :name
    #   The name of the `AppInstanceUser`.
    #
    # @option params [required, String] :metadata
    #   The metadata of the `AppInstanceUser`.
    #
    # @return [Types::UpdateAppInstanceUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAppInstanceUserResponse#app_instance_user_arn #app_instance_user_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_app_instance_user({
    #     app_instance_user_arn: "ChimeArn", # required
    #     name: "UserName", # required
    #     metadata: "Metadata", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_user_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/UpdateAppInstanceUser AWS API Documentation
    #
    # @overload update_app_instance_user(params = {})
    # @param [Hash] params ({})
    def update_app_instance_user(params = {}, options = {})
      req = build_request(:update_app_instance_user, params)
      req.send_request(options)
    end

    # Updates the details of an `AppInstanceUserEndpoint`. You can update
    # the name and `AllowMessage` values.
    #
    # @option params [required, String] :app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #
    # @option params [required, String] :endpoint_id
    #   The unique identifier of the `AppInstanceUserEndpoint`.
    #
    # @option params [String] :name
    #   The name of the `AppInstanceUserEndpoint`.
    #
    # @option params [String] :allow_messages
    #   Boolean that controls whether the `AppInstanceUserEndpoint` is opted
    #   in to receive messages. `ALL` indicates the endpoint will receive all
    #   messages. `NONE` indicates the endpoint will receive no messages.
    #
    # @return [Types::UpdateAppInstanceUserEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAppInstanceUserEndpointResponse#app_instance_user_arn #app_instance_user_arn} => String
    #   * {Types::UpdateAppInstanceUserEndpointResponse#endpoint_id #endpoint_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_app_instance_user_endpoint({
    #     app_instance_user_arn: "ChimeArn", # required
    #     endpoint_id: "String64", # required
    #     name: "SensitiveString1600",
    #     allow_messages: "ALL", # accepts ALL, NONE
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_user_arn #=> String
    #   resp.endpoint_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/UpdateAppInstanceUserEndpoint AWS API Documentation
    #
    # @overload update_app_instance_user_endpoint(params = {})
    # @param [Hash] params ({})
    def update_app_instance_user_endpoint(params = {}, options = {})
      req = build_request(:update_app_instance_user_endpoint, params)
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
      context[:gem_name] = 'aws-sdk-chimesdkidentity'
      context[:gem_version] = '1.18.0'
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
