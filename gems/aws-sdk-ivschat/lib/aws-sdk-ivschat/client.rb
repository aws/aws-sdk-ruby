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

Aws::Plugins::GlobalConfiguration.add_identifier(:ivschat)

module Aws::Ivschat
  # An API client for Ivschat.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Ivschat::Client.new(
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

    @identifier = :ivschat

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
    add_plugin(Aws::Ivschat::Plugins::Endpoints)

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
    #   @option options [Aws::Ivschat::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::Ivschat::EndpointParameters`
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

    # Creates an encrypted token that is used by a chat participant to
    # establish an individual WebSocket chat connection to a room. When the
    # token is used to connect to chat, the connection is valid for the
    # session duration specified in the request. The token becomes invalid
    # at the token-expiration timestamp included in the response.
    #
    # Use the `capabilities` field to permit an end user to send messages or
    # moderate a room.
    #
    # The `attributes` field securely attaches structured data to the chat
    # session; the data is included within each message sent by the end user
    # and received by other participants in the room. Common use cases for
    # attributes include passing end-user profile data like an icon, display
    # name, colors, badges, and other display features.
    #
    # Encryption keys are owned by Amazon IVS Chat and never used directly
    # by your application.
    #
    # @option params [Hash<String,String>] :attributes
    #   Application-provided attributes to encode into the token and attach to
    #   a chat session. Map keys and values can contain UTF-8 encoded text.
    #   The maximum length of this field is 1 KB total.
    #
    # @option params [Array<String>] :capabilities
    #   Set of capabilities that the user is allowed to perform in the room.
    #   Default: None (the capability to view messages is implicitly included
    #   in all requests).
    #
    # @option params [required, String] :room_identifier
    #   Identifier of the room that the client is trying to access. Currently
    #   this must be an ARN.
    #
    # @option params [Integer] :session_duration_in_minutes
    #   Session duration (in minutes), after which the session expires.
    #   Default: 60 (1 hour).
    #
    # @option params [required, String] :user_id
    #   Application-provided ID that uniquely identifies the user associated
    #   with this token. This can be any UTF-8 encoded text.
    #
    # @return [Types::CreateChatTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChatTokenResponse#session_expiration_time #session_expiration_time} => Time
    #   * {Types::CreateChatTokenResponse#token #token} => String
    #   * {Types::CreateChatTokenResponse#token_expiration_time #token_expiration_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_chat_token({
    #     attributes: {
    #       "String" => "String",
    #     },
    #     capabilities: ["SEND_MESSAGE"], # accepts SEND_MESSAGE, DISCONNECT_USER, DELETE_MESSAGE
    #     room_identifier: "RoomIdentifier", # required
    #     session_duration_in_minutes: 1,
    #     user_id: "UserID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.session_expiration_time #=> Time
    #   resp.token #=> String
    #   resp.token_expiration_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/CreateChatToken AWS API Documentation
    #
    # @overload create_chat_token(params = {})
    # @param [Hash] params ({})
    def create_chat_token(params = {}, options = {})
      req = build_request(:create_chat_token, params)
      req.send_request(options)
    end

    # Creates a logging configuration that allows clients to store and
    # record sent messages.
    #
    # @option params [required, Types::DestinationConfiguration] :destination_configuration
    #   A complex type that contains a destination configuration for where
    #   chat content will be logged. There can be only one type of destination
    #   (`cloudWatchLogs`, `firehose`, or `s3`) in a
    #   `destinationConfiguration`.
    #
    # @option params [String] :name
    #   Logging-configuration name. The value does not need to be unique.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags to attach to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS Chat has no constraints on tags
    #   beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateLoggingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLoggingConfigurationResponse#arn #arn} => String
    #   * {Types::CreateLoggingConfigurationResponse#create_time #create_time} => Time
    #   * {Types::CreateLoggingConfigurationResponse#destination_configuration #destination_configuration} => Types::DestinationConfiguration
    #   * {Types::CreateLoggingConfigurationResponse#id #id} => String
    #   * {Types::CreateLoggingConfigurationResponse#name #name} => String
    #   * {Types::CreateLoggingConfigurationResponse#state #state} => String
    #   * {Types::CreateLoggingConfigurationResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateLoggingConfigurationResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_logging_configuration({
    #     destination_configuration: { # required
    #       cloud_watch_logs: {
    #         log_group_name: "LogGroupName", # required
    #       },
    #       firehose: {
    #         delivery_stream_name: "DeliveryStreamName", # required
    #       },
    #       s3: {
    #         bucket_name: "BucketName", # required
    #       },
    #     },
    #     name: "LoggingConfigurationName",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.create_time #=> Time
    #   resp.destination_configuration.cloud_watch_logs.log_group_name #=> String
    #   resp.destination_configuration.firehose.delivery_stream_name #=> String
    #   resp.destination_configuration.s3.bucket_name #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.state #=> String, one of "ACTIVE"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/CreateLoggingConfiguration AWS API Documentation
    #
    # @overload create_logging_configuration(params = {})
    # @param [Hash] params ({})
    def create_logging_configuration(params = {}, options = {})
      req = build_request(:create_logging_configuration, params)
      req.send_request(options)
    end

    # Creates a room that allows clients to connect and pass messages.
    #
    # @option params [Array<String>] :logging_configuration_identifiers
    #   Array of logging-configuration identifiers attached to the room.
    #
    # @option params [Integer] :maximum_message_length
    #   Maximum number of characters in a single message. Messages are
    #   expected to be UTF-8 encoded and this limit applies specifically to
    #   rune/code-point count, not number of bytes. Default: 500.
    #
    # @option params [Integer] :maximum_message_rate_per_second
    #   Maximum number of messages per second that can be sent to the room (by
    #   all clients). Default: 10.
    #
    # @option params [Types::MessageReviewHandler] :message_review_handler
    #   Configuration information for optional review of messages.
    #
    # @option params [String] :name
    #   Room name. The value does not need to be unique.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags to attach to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS Chat has no constraints beyond
    #   what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateRoomResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRoomResponse#arn #arn} => String
    #   * {Types::CreateRoomResponse#create_time #create_time} => Time
    #   * {Types::CreateRoomResponse#id #id} => String
    #   * {Types::CreateRoomResponse#logging_configuration_identifiers #logging_configuration_identifiers} => Array&lt;String&gt;
    #   * {Types::CreateRoomResponse#maximum_message_length #maximum_message_length} => Integer
    #   * {Types::CreateRoomResponse#maximum_message_rate_per_second #maximum_message_rate_per_second} => Integer
    #   * {Types::CreateRoomResponse#message_review_handler #message_review_handler} => Types::MessageReviewHandler
    #   * {Types::CreateRoomResponse#name #name} => String
    #   * {Types::CreateRoomResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateRoomResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_room({
    #     logging_configuration_identifiers: ["LoggingConfigurationIdentifier"],
    #     maximum_message_length: 1,
    #     maximum_message_rate_per_second: 1,
    #     message_review_handler: {
    #       fallback_result: "ALLOW", # accepts ALLOW, DENY
    #       uri: "LambdaArn",
    #     },
    #     name: "RoomName",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.create_time #=> Time
    #   resp.id #=> String
    #   resp.logging_configuration_identifiers #=> Array
    #   resp.logging_configuration_identifiers[0] #=> String
    #   resp.maximum_message_length #=> Integer
    #   resp.maximum_message_rate_per_second #=> Integer
    #   resp.message_review_handler.fallback_result #=> String, one of "ALLOW", "DENY"
    #   resp.message_review_handler.uri #=> String
    #   resp.name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/CreateRoom AWS API Documentation
    #
    # @overload create_room(params = {})
    # @param [Hash] params ({})
    def create_room(params = {}, options = {})
      req = build_request(:create_room, params)
      req.send_request(options)
    end

    # Deletes the specified logging configuration.
    #
    # @option params [required, String] :identifier
    #   Identifier of the logging configuration to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_logging_configuration({
    #     identifier: "LoggingConfigurationIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/DeleteLoggingConfiguration AWS API Documentation
    #
    # @overload delete_logging_configuration(params = {})
    # @param [Hash] params ({})
    def delete_logging_configuration(params = {}, options = {})
      req = build_request(:delete_logging_configuration, params)
      req.send_request(options)
    end

    # Sends an event to a specific room which directs clients to delete a
    # specific message; that is, unrender it from view and delete it from
    # the client’s chat history. This event’s `EventName` is
    # `aws:DELETE_MESSAGE`. This replicates the [ DeleteMessage][1]
    # WebSocket operation in the Amazon IVS Chat Messaging API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-deletemessage-publish.html
    #
    # @option params [required, String] :id
    #   ID of the message to be deleted. This is the `Id` field in the
    #   received message (see [ Message (Subscribe)][1] in the Chat Messaging
    #   API).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-message-subscribe.html
    #
    # @option params [String] :reason
    #   Reason for deleting the message.
    #
    # @option params [required, String] :room_identifier
    #   Identifier of the room where the message should be deleted. Currently
    #   this must be an ARN.
    #
    # @return [Types::DeleteMessageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteMessageResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_message({
    #     id: "MessageID", # required
    #     reason: "Reason",
    #     room_identifier: "RoomIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/DeleteMessage AWS API Documentation
    #
    # @overload delete_message(params = {})
    # @param [Hash] params ({})
    def delete_message(params = {}, options = {})
      req = build_request(:delete_message, params)
      req.send_request(options)
    end

    # Deletes the specified room.
    #
    # @option params [required, String] :identifier
    #   Identifier of the room to be deleted. Currently this must be an ARN.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_room({
    #     identifier: "RoomIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/DeleteRoom AWS API Documentation
    #
    # @overload delete_room(params = {})
    # @param [Hash] params ({})
    def delete_room(params = {}, options = {})
      req = build_request(:delete_room, params)
      req.send_request(options)
    end

    # Disconnects all connections using a specified user ID from a room.
    # This replicates the [ DisconnectUser][1] WebSocket operation in the
    # Amazon IVS Chat Messaging API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-disconnectuser-publish.html
    #
    # @option params [String] :reason
    #   Reason for disconnecting the user.
    #
    # @option params [required, String] :room_identifier
    #   Identifier of the room from which the user's clients should be
    #   disconnected. Currently this must be an ARN.
    #
    # @option params [required, String] :user_id
    #   ID of the user (connection) to disconnect from the room.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disconnect_user({
    #     reason: "Reason",
    #     room_identifier: "RoomIdentifier", # required
    #     user_id: "UserID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/DisconnectUser AWS API Documentation
    #
    # @overload disconnect_user(params = {})
    # @param [Hash] params ({})
    def disconnect_user(params = {}, options = {})
      req = build_request(:disconnect_user, params)
      req.send_request(options)
    end

    # Gets the specified logging configuration.
    #
    # @option params [required, String] :identifier
    #   Identifier of the logging configuration to be retrieved.
    #
    # @return [Types::GetLoggingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLoggingConfigurationResponse#arn #arn} => String
    #   * {Types::GetLoggingConfigurationResponse#create_time #create_time} => Time
    #   * {Types::GetLoggingConfigurationResponse#destination_configuration #destination_configuration} => Types::DestinationConfiguration
    #   * {Types::GetLoggingConfigurationResponse#id #id} => String
    #   * {Types::GetLoggingConfigurationResponse#name #name} => String
    #   * {Types::GetLoggingConfigurationResponse#state #state} => String
    #   * {Types::GetLoggingConfigurationResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetLoggingConfigurationResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_logging_configuration({
    #     identifier: "LoggingConfigurationIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.create_time #=> Time
    #   resp.destination_configuration.cloud_watch_logs.log_group_name #=> String
    #   resp.destination_configuration.firehose.delivery_stream_name #=> String
    #   resp.destination_configuration.s3.bucket_name #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.state #=> String, one of "CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "UPDATING", "UPDATE_FAILED", "ACTIVE"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/GetLoggingConfiguration AWS API Documentation
    #
    # @overload get_logging_configuration(params = {})
    # @param [Hash] params ({})
    def get_logging_configuration(params = {}, options = {})
      req = build_request(:get_logging_configuration, params)
      req.send_request(options)
    end

    # Gets the specified room.
    #
    # @option params [required, String] :identifier
    #   Identifier of the room for which the configuration is to be retrieved.
    #   Currently this must be an ARN.
    #
    # @return [Types::GetRoomResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRoomResponse#arn #arn} => String
    #   * {Types::GetRoomResponse#create_time #create_time} => Time
    #   * {Types::GetRoomResponse#id #id} => String
    #   * {Types::GetRoomResponse#logging_configuration_identifiers #logging_configuration_identifiers} => Array&lt;String&gt;
    #   * {Types::GetRoomResponse#maximum_message_length #maximum_message_length} => Integer
    #   * {Types::GetRoomResponse#maximum_message_rate_per_second #maximum_message_rate_per_second} => Integer
    #   * {Types::GetRoomResponse#message_review_handler #message_review_handler} => Types::MessageReviewHandler
    #   * {Types::GetRoomResponse#name #name} => String
    #   * {Types::GetRoomResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetRoomResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_room({
    #     identifier: "RoomIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.create_time #=> Time
    #   resp.id #=> String
    #   resp.logging_configuration_identifiers #=> Array
    #   resp.logging_configuration_identifiers[0] #=> String
    #   resp.maximum_message_length #=> Integer
    #   resp.maximum_message_rate_per_second #=> Integer
    #   resp.message_review_handler.fallback_result #=> String, one of "ALLOW", "DENY"
    #   resp.message_review_handler.uri #=> String
    #   resp.name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/GetRoom AWS API Documentation
    #
    # @overload get_room(params = {})
    # @param [Hash] params ({})
    def get_room(params = {}, options = {})
      req = build_request(:get_room, params)
      req.send_request(options)
    end

    # Gets summary information about all your logging configurations in the
    # AWS region where the API request is processed.
    #
    # @option params [Integer] :max_results
    #   Maximum number of logging configurations to return. Default: 50.
    #
    # @option params [String] :next_token
    #   The first logging configurations to retrieve. This is used for
    #   pagination; see the `nextToken` response field.
    #
    # @return [Types::ListLoggingConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLoggingConfigurationsResponse#logging_configurations #logging_configurations} => Array&lt;Types::LoggingConfigurationSummary&gt;
    #   * {Types::ListLoggingConfigurationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_logging_configurations({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.logging_configurations #=> Array
    #   resp.logging_configurations[0].arn #=> String
    #   resp.logging_configurations[0].create_time #=> Time
    #   resp.logging_configurations[0].destination_configuration.cloud_watch_logs.log_group_name #=> String
    #   resp.logging_configurations[0].destination_configuration.firehose.delivery_stream_name #=> String
    #   resp.logging_configurations[0].destination_configuration.s3.bucket_name #=> String
    #   resp.logging_configurations[0].id #=> String
    #   resp.logging_configurations[0].name #=> String
    #   resp.logging_configurations[0].state #=> String, one of "CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "UPDATING", "UPDATE_FAILED", "ACTIVE"
    #   resp.logging_configurations[0].tags #=> Hash
    #   resp.logging_configurations[0].tags["TagKey"] #=> String
    #   resp.logging_configurations[0].update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/ListLoggingConfigurations AWS API Documentation
    #
    # @overload list_logging_configurations(params = {})
    # @param [Hash] params ({})
    def list_logging_configurations(params = {}, options = {})
      req = build_request(:list_logging_configurations, params)
      req.send_request(options)
    end

    # Gets summary information about all your rooms in the AWS region where
    # the API request is processed. Results are sorted in descending order
    # of `updateTime`.
    #
    # @option params [String] :logging_configuration_identifier
    #   Logging-configuration identifier.
    #
    # @option params [Integer] :max_results
    #   Maximum number of rooms to return. Default: 50.
    #
    # @option params [String] :message_review_handler_uri
    #   Filters the list to match the specified message review handler URI.
    #
    # @option params [String] :name
    #   Filters the list to match the specified room name.
    #
    # @option params [String] :next_token
    #   The first room to retrieve. This is used for pagination; see the
    #   `nextToken` response field.
    #
    # @return [Types::ListRoomsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRoomsResponse#next_token #next_token} => String
    #   * {Types::ListRoomsResponse#rooms #rooms} => Array&lt;Types::RoomSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rooms({
    #     logging_configuration_identifier: "LoggingConfigurationIdentifier",
    #     max_results: 1,
    #     message_review_handler_uri: "LambdaArn",
    #     name: "RoomName",
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.rooms #=> Array
    #   resp.rooms[0].arn #=> String
    #   resp.rooms[0].create_time #=> Time
    #   resp.rooms[0].id #=> String
    #   resp.rooms[0].logging_configuration_identifiers #=> Array
    #   resp.rooms[0].logging_configuration_identifiers[0] #=> String
    #   resp.rooms[0].message_review_handler.fallback_result #=> String, one of "ALLOW", "DENY"
    #   resp.rooms[0].message_review_handler.uri #=> String
    #   resp.rooms[0].name #=> String
    #   resp.rooms[0].tags #=> Hash
    #   resp.rooms[0].tags["TagKey"] #=> String
    #   resp.rooms[0].update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/ListRooms AWS API Documentation
    #
    # @overload list_rooms(params = {})
    # @param [Hash] params ({})
    def list_rooms(params = {}, options = {})
      req = build_request(:list_rooms, params)
      req.send_request(options)
    end

    # Gets information about AWS tags for the specified ARN.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to be retrieved. The ARN must be URL-encoded.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Sends an event to a room. Use this within your application’s business
    # logic to send events to clients of a room; e.g., to notify clients to
    # change the way the chat UI is rendered.
    #
    # @option params [Hash<String,String>] :attributes
    #   Application-defined metadata to attach to the event sent to clients.
    #   The maximum length of the metadata is 1 KB total.
    #
    # @option params [required, String] :event_name
    #   Application-defined name of the event to send to clients.
    #
    # @option params [required, String] :room_identifier
    #   Identifier of the room to which the event will be sent. Currently this
    #   must be an ARN.
    #
    # @return [Types::SendEventResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendEventResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_event({
    #     attributes: {
    #       "String" => "String",
    #     },
    #     event_name: "EventName", # required
    #     room_identifier: "RoomIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/SendEvent AWS API Documentation
    #
    # @overload send_event(params = {})
    # @param [Hash] params ({})
    def send_event(params = {}, options = {})
      req = build_request(:send_event, params)
      req.send_request(options)
    end

    # Adds or updates tags for the AWS resource with the specified ARN.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to be tagged. The ARN must be URL-encoded.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Array of tags to be added or updated. Array of maps, each of the form
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS Chat has no constraints beyond
    #   what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from the resource with the specified ARN.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to be untagged. The ARN must be URL-encoded.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Array of tags to be removed. Array of maps, each of the form
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS Chat has no constraints beyond
    #   what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a specified logging configuration.
    #
    # @option params [Types::DestinationConfiguration] :destination_configuration
    #   A complex type that contains a destination configuration for where
    #   chat content will be logged. There can be only one type of destination
    #   (`cloudWatchLogs`, `firehose`, or `s3`) in a
    #   `destinationConfiguration`.
    #
    # @option params [required, String] :identifier
    #   Identifier of the logging configuration to be updated.
    #
    # @option params [String] :name
    #   Logging-configuration name. The value does not need to be unique.
    #
    # @return [Types::UpdateLoggingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateLoggingConfigurationResponse#arn #arn} => String
    #   * {Types::UpdateLoggingConfigurationResponse#create_time #create_time} => Time
    #   * {Types::UpdateLoggingConfigurationResponse#destination_configuration #destination_configuration} => Types::DestinationConfiguration
    #   * {Types::UpdateLoggingConfigurationResponse#id #id} => String
    #   * {Types::UpdateLoggingConfigurationResponse#name #name} => String
    #   * {Types::UpdateLoggingConfigurationResponse#state #state} => String
    #   * {Types::UpdateLoggingConfigurationResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::UpdateLoggingConfigurationResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_logging_configuration({
    #     destination_configuration: {
    #       cloud_watch_logs: {
    #         log_group_name: "LogGroupName", # required
    #       },
    #       firehose: {
    #         delivery_stream_name: "DeliveryStreamName", # required
    #       },
    #       s3: {
    #         bucket_name: "BucketName", # required
    #       },
    #     },
    #     identifier: "LoggingConfigurationIdentifier", # required
    #     name: "LoggingConfigurationName",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.create_time #=> Time
    #   resp.destination_configuration.cloud_watch_logs.log_group_name #=> String
    #   resp.destination_configuration.firehose.delivery_stream_name #=> String
    #   resp.destination_configuration.s3.bucket_name #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.state #=> String, one of "ACTIVE"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/UpdateLoggingConfiguration AWS API Documentation
    #
    # @overload update_logging_configuration(params = {})
    # @param [Hash] params ({})
    def update_logging_configuration(params = {}, options = {})
      req = build_request(:update_logging_configuration, params)
      req.send_request(options)
    end

    # Updates a room’s configuration.
    #
    # @option params [required, String] :identifier
    #   Identifier of the room to be updated. Currently this must be an ARN.
    #
    # @option params [Array<String>] :logging_configuration_identifiers
    #   Array of logging-configuration identifiers attached to the room.
    #
    # @option params [Integer] :maximum_message_length
    #   The maximum number of characters in a single message. Messages are
    #   expected to be UTF-8 encoded and this limit applies specifically to
    #   rune/code-point count, not number of bytes. Default: 500.
    #
    # @option params [Integer] :maximum_message_rate_per_second
    #   Maximum number of messages per second that can be sent to the room (by
    #   all clients). Default: 10.
    #
    # @option params [Types::MessageReviewHandler] :message_review_handler
    #   Configuration information for optional review of messages. Specify an
    #   empty `uri` string to disassociate a message review handler from the
    #   specified room.
    #
    # @option params [String] :name
    #   Room name. The value does not need to be unique.
    #
    # @return [Types::UpdateRoomResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRoomResponse#arn #arn} => String
    #   * {Types::UpdateRoomResponse#create_time #create_time} => Time
    #   * {Types::UpdateRoomResponse#id #id} => String
    #   * {Types::UpdateRoomResponse#logging_configuration_identifiers #logging_configuration_identifiers} => Array&lt;String&gt;
    #   * {Types::UpdateRoomResponse#maximum_message_length #maximum_message_length} => Integer
    #   * {Types::UpdateRoomResponse#maximum_message_rate_per_second #maximum_message_rate_per_second} => Integer
    #   * {Types::UpdateRoomResponse#message_review_handler #message_review_handler} => Types::MessageReviewHandler
    #   * {Types::UpdateRoomResponse#name #name} => String
    #   * {Types::UpdateRoomResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::UpdateRoomResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_room({
    #     identifier: "RoomIdentifier", # required
    #     logging_configuration_identifiers: ["LoggingConfigurationIdentifier"],
    #     maximum_message_length: 1,
    #     maximum_message_rate_per_second: 1,
    #     message_review_handler: {
    #       fallback_result: "ALLOW", # accepts ALLOW, DENY
    #       uri: "LambdaArn",
    #     },
    #     name: "RoomName",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.create_time #=> Time
    #   resp.id #=> String
    #   resp.logging_configuration_identifiers #=> Array
    #   resp.logging_configuration_identifiers[0] #=> String
    #   resp.maximum_message_length #=> Integer
    #   resp.maximum_message_rate_per_second #=> Integer
    #   resp.message_review_handler.fallback_result #=> String, one of "ALLOW", "DENY"
    #   resp.message_review_handler.uri #=> String
    #   resp.name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/UpdateRoom AWS API Documentation
    #
    # @overload update_room(params = {})
    # @param [Hash] params ({})
    def update_room(params = {}, options = {})
      req = build_request(:update_room, params)
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
      context[:gem_name] = 'aws-sdk-ivschat'
      context[:gem_version] = '1.14.0'
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
