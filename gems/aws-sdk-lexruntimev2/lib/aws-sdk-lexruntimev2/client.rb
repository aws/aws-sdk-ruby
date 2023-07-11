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
require 'aws-sdk-core/plugins/event_stream_configuration.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:lexruntimev2)

module Aws::LexRuntimeV2
  # An API client for LexRuntimeV2.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::LexRuntimeV2::Client.new(
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

    @identifier = :lexruntimev2

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
    add_plugin(Aws::Plugins::EventStreamConfiguration)
    add_plugin(Aws::LexRuntimeV2::Plugins::Endpoints)

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
    #   @option options [Proc] :event_stream_handler
    #     When an EventStream or Proc object is provided, it will be used as callback for each chunk of event stream response received along the way.
    #
    #   @option options [Boolean] :ignore_configured_endpoint_urls
    #     Setting to true disables use of endpoint URLs provided via environment
    #     variables and the shared configuration file.
    #
    #   @option options [Proc] :input_event_stream_handler
    #     When an EventStream or Proc object is provided, it can be used for sending events for the event stream.
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
    #   @option options [Proc] :output_event_stream_handler
    #     When an EventStream or Proc object is provided, it will be used as callback for each chunk of event stream response received along the way.
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
    #   @option options [Aws::LexRuntimeV2::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::LexRuntimeV2::EndpointParameters`
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

    # Removes session information for a specified bot, alias, and user ID.
    #
    # You can use this operation to restart a conversation with a bot. When
    # you remove a session, the entire history of the session is removed so
    # that you can start again.
    #
    # You don't need to delete a session. Sessions have a time limit and
    # will expire. Set the session time limit when you create the bot. The
    # default is 5 minutes, but you can specify anything between 1 minute
    # and 24 hours.
    #
    # If you specify a bot or alias ID that doesn't exist, you receive a
    # `BadRequestException.`
    #
    # If the locale doesn't exist in the bot, or if the locale hasn't been
    # enables for the alias, you receive a `BadRequestException`.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot that contains the session data.
    #
    # @option params [required, String] :bot_alias_id
    #   The alias identifier in use for the bot that contains the session
    #   data.
    #
    # @option params [required, String] :locale_id
    #   The locale where the session is in use.
    #
    # @option params [required, String] :session_id
    #   The identifier of the session to delete.
    #
    # @return [Types::DeleteSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSessionResponse#bot_id #bot_id} => String
    #   * {Types::DeleteSessionResponse#bot_alias_id #bot_alias_id} => String
    #   * {Types::DeleteSessionResponse#locale_id #locale_id} => String
    #   * {Types::DeleteSessionResponse#session_id #session_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_session({
    #     bot_id: "BotIdentifier", # required
    #     bot_alias_id: "BotAliasIdentifier", # required
    #     locale_id: "LocaleId", # required
    #     session_id: "SessionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_alias_id #=> String
    #   resp.locale_id #=> String
    #   resp.session_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/DeleteSession AWS API Documentation
    #
    # @overload delete_session(params = {})
    # @param [Hash] params ({})
    def delete_session(params = {}, options = {})
      req = build_request(:delete_session, params)
      req.send_request(options)
    end

    # Returns session information for a specified bot, alias, and user.
    #
    # For example, you can use this operation to retrieve session
    # information for a user that has left a long-running session in use.
    #
    # If the bot, alias, or session identifier doesn't exist, Amazon Lex V2
    # returns a `BadRequestException`. If the locale doesn't exist or is
    # not enabled for the alias, you receive a `BadRequestException`.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot that contains the session data.
    #
    # @option params [required, String] :bot_alias_id
    #   The alias identifier in use for the bot that contains the session
    #   data.
    #
    # @option params [required, String] :locale_id
    #   The locale where the session is in use.
    #
    # @option params [required, String] :session_id
    #   The identifier of the session to return.
    #
    # @return [Types::GetSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSessionResponse#session_id #session_id} => String
    #   * {Types::GetSessionResponse#messages #messages} => Array&lt;Types::Message&gt;
    #   * {Types::GetSessionResponse#interpretations #interpretations} => Array&lt;Types::Interpretation&gt;
    #   * {Types::GetSessionResponse#session_state #session_state} => Types::SessionState
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_session({
    #     bot_id: "BotIdentifier", # required
    #     bot_alias_id: "BotAliasIdentifier", # required
    #     locale_id: "LocaleId", # required
    #     session_id: "SessionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.session_id #=> String
    #   resp.messages #=> Array
    #   resp.messages[0].content #=> String
    #   resp.messages[0].content_type #=> String, one of "CustomPayload", "ImageResponseCard", "PlainText", "SSML"
    #   resp.messages[0].image_response_card.title #=> String
    #   resp.messages[0].image_response_card.subtitle #=> String
    #   resp.messages[0].image_response_card.image_url #=> String
    #   resp.messages[0].image_response_card.buttons #=> Array
    #   resp.messages[0].image_response_card.buttons[0].text #=> String
    #   resp.messages[0].image_response_card.buttons[0].value #=> String
    #   resp.interpretations #=> Array
    #   resp.interpretations[0].nlu_confidence.score #=> Float
    #   resp.interpretations[0].sentiment_response.sentiment #=> String, one of "MIXED", "NEGATIVE", "NEUTRAL", "POSITIVE"
    #   resp.interpretations[0].sentiment_response.sentiment_score.positive #=> Float
    #   resp.interpretations[0].sentiment_response.sentiment_score.negative #=> Float
    #   resp.interpretations[0].sentiment_response.sentiment_score.neutral #=> Float
    #   resp.interpretations[0].sentiment_response.sentiment_score.mixed #=> Float
    #   resp.interpretations[0].intent.name #=> String
    #   resp.interpretations[0].intent.slots #=> Hash
    #   resp.interpretations[0].intent.slots["NonEmptyString"].value.original_value #=> String
    #   resp.interpretations[0].intent.slots["NonEmptyString"].value.interpreted_value #=> String
    #   resp.interpretations[0].intent.slots["NonEmptyString"].value.resolved_values #=> Array
    #   resp.interpretations[0].intent.slots["NonEmptyString"].value.resolved_values[0] #=> String
    #   resp.interpretations[0].intent.slots["NonEmptyString"].shape #=> String, one of "Scalar", "List", "Composite"
    #   resp.interpretations[0].intent.slots["NonEmptyString"].values #=> Array
    #   resp.interpretations[0].intent.slots["NonEmptyString"].values[0] #=> Types::Slot
    #   resp.interpretations[0].intent.slots["NonEmptyString"].sub_slots #=> Types::Slots
    #   resp.interpretations[0].intent.state #=> String, one of "Failed", "Fulfilled", "InProgress", "ReadyForFulfillment", "Waiting", "FulfillmentInProgress"
    #   resp.interpretations[0].intent.confirmation_state #=> String, one of "Confirmed", "Denied", "None"
    #   resp.session_state.dialog_action.type #=> String, one of "Close", "ConfirmIntent", "Delegate", "ElicitIntent", "ElicitSlot", "None"
    #   resp.session_state.dialog_action.slot_to_elicit #=> String
    #   resp.session_state.dialog_action.slot_elicitation_style #=> String, one of "Default", "SpellByLetter", "SpellByWord"
    #   resp.session_state.dialog_action.sub_slot_to_elicit.name #=> String
    #   resp.session_state.dialog_action.sub_slot_to_elicit.sub_slot_to_elicit #=> Types::ElicitSubSlot
    #   resp.session_state.intent.name #=> String
    #   resp.session_state.intent.slots #=> Hash
    #   resp.session_state.intent.slots["NonEmptyString"].value.original_value #=> String
    #   resp.session_state.intent.slots["NonEmptyString"].value.interpreted_value #=> String
    #   resp.session_state.intent.slots["NonEmptyString"].value.resolved_values #=> Array
    #   resp.session_state.intent.slots["NonEmptyString"].value.resolved_values[0] #=> String
    #   resp.session_state.intent.slots["NonEmptyString"].shape #=> String, one of "Scalar", "List", "Composite"
    #   resp.session_state.intent.slots["NonEmptyString"].values #=> Array
    #   resp.session_state.intent.slots["NonEmptyString"].values[0] #=> Types::Slot
    #   resp.session_state.intent.slots["NonEmptyString"].sub_slots #=> Types::Slots
    #   resp.session_state.intent.state #=> String, one of "Failed", "Fulfilled", "InProgress", "ReadyForFulfillment", "Waiting", "FulfillmentInProgress"
    #   resp.session_state.intent.confirmation_state #=> String, one of "Confirmed", "Denied", "None"
    #   resp.session_state.active_contexts #=> Array
    #   resp.session_state.active_contexts[0].name #=> String
    #   resp.session_state.active_contexts[0].time_to_live.time_to_live_in_seconds #=> Integer
    #   resp.session_state.active_contexts[0].time_to_live.turns_to_live #=> Integer
    #   resp.session_state.active_contexts[0].context_attributes #=> Hash
    #   resp.session_state.active_contexts[0].context_attributes["ParameterName"] #=> String
    #   resp.session_state.session_attributes #=> Hash
    #   resp.session_state.session_attributes["NonEmptyString"] #=> String
    #   resp.session_state.originating_request_id #=> String
    #   resp.session_state.runtime_hints.slot_hints #=> Hash
    #   resp.session_state.runtime_hints.slot_hints["Name"] #=> Hash
    #   resp.session_state.runtime_hints.slot_hints["Name"]["Name"].runtime_hint_values #=> Array
    #   resp.session_state.runtime_hints.slot_hints["Name"]["Name"].runtime_hint_values[0].phrase #=> String
    #   resp.session_state.runtime_hints.slot_hints["Name"]["Name"].sub_slot_hints #=> Types::SlotHintsSlotMap
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/GetSession AWS API Documentation
    #
    # @overload get_session(params = {})
    # @param [Hash] params ({})
    def get_session(params = {}, options = {})
      req = build_request(:get_session, params)
      req.send_request(options)
    end

    # Creates a new session or modifies an existing session with an Amazon
    # Lex V2 bot. Use this operation to enable your application to set the
    # state of the bot.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot that receives the session data.
    #
    # @option params [required, String] :bot_alias_id
    #   The alias identifier of the bot that receives the session data.
    #
    # @option params [required, String] :locale_id
    #   The locale where the session is in use.
    #
    # @option params [required, String] :session_id
    #   The identifier of the session that receives the session data.
    #
    # @option params [Array<Types::Message>] :messages
    #   A list of messages to send to the user. Messages are sent in the order
    #   that they are defined in the list.
    #
    # @option params [required, Types::SessionState] :session_state
    #   Sets the state of the session with the user. You can use this to set
    #   the current intent, attributes, context, and dialog action. Use the
    #   dialog action to determine the next step that Amazon Lex V2 should use
    #   in the conversation with the user.
    #
    # @option params [Hash<String,String>] :request_attributes
    #   Request-specific information passed between Amazon Lex V2 and the
    #   client application.
    #
    #   The namespace `x-amz-lex:` is reserved for special attributes. Don't
    #   create any request attributes with the prefix `x-amz-lex:`.
    #
    # @option params [String] :response_content_type
    #   The message that Amazon Lex V2 returns in the response can be either
    #   text or speech depending on the value of this parameter.
    #
    #   * If the value is `text/plain; charset=utf-8`, Amazon Lex V2 returns
    #     text in the response.
    #
    #   ^
    #
    # @return [Types::PutSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutSessionResponse#content_type #content_type} => String
    #   * {Types::PutSessionResponse#messages #messages} => String
    #   * {Types::PutSessionResponse#session_state #session_state} => String
    #   * {Types::PutSessionResponse#request_attributes #request_attributes} => String
    #   * {Types::PutSessionResponse#session_id #session_id} => String
    #   * {Types::PutSessionResponse#audio_stream #audio_stream} => IO
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_session({
    #     bot_id: "BotIdentifier", # required
    #     bot_alias_id: "BotAliasIdentifier", # required
    #     locale_id: "LocaleId", # required
    #     session_id: "SessionId", # required
    #     messages: [
    #       {
    #         content: "Text",
    #         content_type: "CustomPayload", # required, accepts CustomPayload, ImageResponseCard, PlainText, SSML
    #         image_response_card: {
    #           title: "AttachmentTitle", # required
    #           subtitle: "AttachmentTitle",
    #           image_url: "AttachmentUrl",
    #           buttons: [
    #             {
    #               text: "ButtonText", # required
    #               value: "ButtonValue", # required
    #             },
    #           ],
    #         },
    #       },
    #     ],
    #     session_state: { # required
    #       dialog_action: {
    #         type: "Close", # required, accepts Close, ConfirmIntent, Delegate, ElicitIntent, ElicitSlot, None
    #         slot_to_elicit: "NonEmptyString",
    #         slot_elicitation_style: "Default", # accepts Default, SpellByLetter, SpellByWord
    #         sub_slot_to_elicit: {
    #           name: "NonEmptyString", # required
    #           sub_slot_to_elicit: {
    #             # recursive ElicitSubSlot
    #           },
    #         },
    #       },
    #       intent: {
    #         name: "NonEmptyString", # required
    #         slots: {
    #           "NonEmptyString" => {
    #             value: {
    #               original_value: "NonEmptyString",
    #               interpreted_value: "NonEmptyString", # required
    #               resolved_values: ["NonEmptyString"],
    #             },
    #             shape: "Scalar", # accepts Scalar, List, Composite
    #             values: [
    #               {
    #                 # recursive Slot
    #               },
    #             ],
    #             sub_slots: {
    #               # recursive Slots
    #             },
    #           },
    #         },
    #         state: "Failed", # accepts Failed, Fulfilled, InProgress, ReadyForFulfillment, Waiting, FulfillmentInProgress
    #         confirmation_state: "Confirmed", # accepts Confirmed, Denied, None
    #       },
    #       active_contexts: [
    #         {
    #           name: "ActiveContextName", # required
    #           time_to_live: { # required
    #             time_to_live_in_seconds: 1, # required
    #             turns_to_live: 1, # required
    #           },
    #           context_attributes: { # required
    #             "ParameterName" => "Text",
    #           },
    #         },
    #       ],
    #       session_attributes: {
    #         "NonEmptyString" => "String",
    #       },
    #       originating_request_id: "NonEmptyString",
    #       runtime_hints: {
    #         slot_hints: {
    #           "Name" => {
    #             "Name" => {
    #               runtime_hint_values: [
    #                 {
    #                   phrase: "RuntimeHintPhrase", # required
    #                 },
    #               ],
    #               sub_slot_hints: {
    #                 # recursive SlotHintsSlotMap
    #               },
    #             },
    #           },
    #         },
    #       },
    #     },
    #     request_attributes: {
    #       "NonEmptyString" => "String",
    #     },
    #     response_content_type: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.content_type #=> String
    #   resp.messages #=> String
    #   resp.session_state #=> String
    #   resp.request_attributes #=> String
    #   resp.session_id #=> String
    #   resp.audio_stream #=> IO
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/PutSession AWS API Documentation
    #
    # @overload put_session(params = {})
    # @param [Hash] params ({})
    def put_session(params = {}, options = {}, &block)
      req = build_request(:put_session, params)
      req.send_request(options, &block)
    end

    # Sends user input to Amazon Lex V2. Client applications use this API to
    # send requests to Amazon Lex V2 at runtime. Amazon Lex V2 then
    # interprets the user input using the machine learning model that it
    # build for the bot.
    #
    # In response, Amazon Lex V2 returns the next message to convey to the
    # user and an optional response card to display.
    #
    # If the optional post-fulfillment response is specified, the messages
    # are returned as follows. For more information, see
    # [PostFulfillmentStatusSpecification][1].
    #
    # * **Success message** - Returned if the Lambda function completes
    #   successfully and the intent state is fulfilled or ready fulfillment
    #   if the message is present.
    #
    # * **Failed message** - The failed message is returned if the Lambda
    #   function throws an exception or if the Lambda function returns a
    #   failed intent state without a message.
    #
    # * **Timeout message** - If you don't configure a timeout message and
    #   a timeout, and the Lambda function doesn't return within 30
    #   seconds, the timeout message is returned. If you configure a
    #   timeout, the timeout message is returned when the period times out.
    #
    # For more information, see [Completion message][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lexv2/latest/dg/API_PostFulfillmentStatusSpecification.html
    # [2]: https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-complete.html
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot that processes the request.
    #
    # @option params [required, String] :bot_alias_id
    #   The alias identifier in use for the bot that processes the request.
    #
    # @option params [required, String] :locale_id
    #   The locale where the session is in use.
    #
    # @option params [required, String] :session_id
    #   The identifier of the user session that is having the conversation.
    #
    # @option params [required, String] :text
    #   The text that the user entered. Amazon Lex V2 interprets this text.
    #
    # @option params [Types::SessionState] :session_state
    #   The current state of the dialog between the user and the bot.
    #
    # @option params [Hash<String,String>] :request_attributes
    #   Request-specific information passed between the client application and
    #   Amazon Lex V2
    #
    #   The namespace `x-amz-lex:` is reserved for special attributes. Don't
    #   create any request attributes with the prefix `x-amz-lex:`.
    #
    # @return [Types::RecognizeTextResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RecognizeTextResponse#messages #messages} => Array&lt;Types::Message&gt;
    #   * {Types::RecognizeTextResponse#session_state #session_state} => Types::SessionState
    #   * {Types::RecognizeTextResponse#interpretations #interpretations} => Array&lt;Types::Interpretation&gt;
    #   * {Types::RecognizeTextResponse#request_attributes #request_attributes} => Hash&lt;String,String&gt;
    #   * {Types::RecognizeTextResponse#session_id #session_id} => String
    #   * {Types::RecognizeTextResponse#recognized_bot_member #recognized_bot_member} => Types::RecognizedBotMember
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.recognize_text({
    #     bot_id: "BotIdentifier", # required
    #     bot_alias_id: "BotAliasIdentifier", # required
    #     locale_id: "LocaleId", # required
    #     session_id: "SessionId", # required
    #     text: "Text", # required
    #     session_state: {
    #       dialog_action: {
    #         type: "Close", # required, accepts Close, ConfirmIntent, Delegate, ElicitIntent, ElicitSlot, None
    #         slot_to_elicit: "NonEmptyString",
    #         slot_elicitation_style: "Default", # accepts Default, SpellByLetter, SpellByWord
    #         sub_slot_to_elicit: {
    #           name: "NonEmptyString", # required
    #           sub_slot_to_elicit: {
    #             # recursive ElicitSubSlot
    #           },
    #         },
    #       },
    #       intent: {
    #         name: "NonEmptyString", # required
    #         slots: {
    #           "NonEmptyString" => {
    #             value: {
    #               original_value: "NonEmptyString",
    #               interpreted_value: "NonEmptyString", # required
    #               resolved_values: ["NonEmptyString"],
    #             },
    #             shape: "Scalar", # accepts Scalar, List, Composite
    #             values: [
    #               {
    #                 # recursive Slot
    #               },
    #             ],
    #             sub_slots: {
    #               # recursive Slots
    #             },
    #           },
    #         },
    #         state: "Failed", # accepts Failed, Fulfilled, InProgress, ReadyForFulfillment, Waiting, FulfillmentInProgress
    #         confirmation_state: "Confirmed", # accepts Confirmed, Denied, None
    #       },
    #       active_contexts: [
    #         {
    #           name: "ActiveContextName", # required
    #           time_to_live: { # required
    #             time_to_live_in_seconds: 1, # required
    #             turns_to_live: 1, # required
    #           },
    #           context_attributes: { # required
    #             "ParameterName" => "Text",
    #           },
    #         },
    #       ],
    #       session_attributes: {
    #         "NonEmptyString" => "String",
    #       },
    #       originating_request_id: "NonEmptyString",
    #       runtime_hints: {
    #         slot_hints: {
    #           "Name" => {
    #             "Name" => {
    #               runtime_hint_values: [
    #                 {
    #                   phrase: "RuntimeHintPhrase", # required
    #                 },
    #               ],
    #               sub_slot_hints: {
    #                 # recursive SlotHintsSlotMap
    #               },
    #             },
    #           },
    #         },
    #       },
    #     },
    #     request_attributes: {
    #       "NonEmptyString" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.messages #=> Array
    #   resp.messages[0].content #=> String
    #   resp.messages[0].content_type #=> String, one of "CustomPayload", "ImageResponseCard", "PlainText", "SSML"
    #   resp.messages[0].image_response_card.title #=> String
    #   resp.messages[0].image_response_card.subtitle #=> String
    #   resp.messages[0].image_response_card.image_url #=> String
    #   resp.messages[0].image_response_card.buttons #=> Array
    #   resp.messages[0].image_response_card.buttons[0].text #=> String
    #   resp.messages[0].image_response_card.buttons[0].value #=> String
    #   resp.session_state.dialog_action.type #=> String, one of "Close", "ConfirmIntent", "Delegate", "ElicitIntent", "ElicitSlot", "None"
    #   resp.session_state.dialog_action.slot_to_elicit #=> String
    #   resp.session_state.dialog_action.slot_elicitation_style #=> String, one of "Default", "SpellByLetter", "SpellByWord"
    #   resp.session_state.dialog_action.sub_slot_to_elicit.name #=> String
    #   resp.session_state.dialog_action.sub_slot_to_elicit.sub_slot_to_elicit #=> Types::ElicitSubSlot
    #   resp.session_state.intent.name #=> String
    #   resp.session_state.intent.slots #=> Hash
    #   resp.session_state.intent.slots["NonEmptyString"].value.original_value #=> String
    #   resp.session_state.intent.slots["NonEmptyString"].value.interpreted_value #=> String
    #   resp.session_state.intent.slots["NonEmptyString"].value.resolved_values #=> Array
    #   resp.session_state.intent.slots["NonEmptyString"].value.resolved_values[0] #=> String
    #   resp.session_state.intent.slots["NonEmptyString"].shape #=> String, one of "Scalar", "List", "Composite"
    #   resp.session_state.intent.slots["NonEmptyString"].values #=> Array
    #   resp.session_state.intent.slots["NonEmptyString"].values[0] #=> Types::Slot
    #   resp.session_state.intent.slots["NonEmptyString"].sub_slots #=> Types::Slots
    #   resp.session_state.intent.state #=> String, one of "Failed", "Fulfilled", "InProgress", "ReadyForFulfillment", "Waiting", "FulfillmentInProgress"
    #   resp.session_state.intent.confirmation_state #=> String, one of "Confirmed", "Denied", "None"
    #   resp.session_state.active_contexts #=> Array
    #   resp.session_state.active_contexts[0].name #=> String
    #   resp.session_state.active_contexts[0].time_to_live.time_to_live_in_seconds #=> Integer
    #   resp.session_state.active_contexts[0].time_to_live.turns_to_live #=> Integer
    #   resp.session_state.active_contexts[0].context_attributes #=> Hash
    #   resp.session_state.active_contexts[0].context_attributes["ParameterName"] #=> String
    #   resp.session_state.session_attributes #=> Hash
    #   resp.session_state.session_attributes["NonEmptyString"] #=> String
    #   resp.session_state.originating_request_id #=> String
    #   resp.session_state.runtime_hints.slot_hints #=> Hash
    #   resp.session_state.runtime_hints.slot_hints["Name"] #=> Hash
    #   resp.session_state.runtime_hints.slot_hints["Name"]["Name"].runtime_hint_values #=> Array
    #   resp.session_state.runtime_hints.slot_hints["Name"]["Name"].runtime_hint_values[0].phrase #=> String
    #   resp.session_state.runtime_hints.slot_hints["Name"]["Name"].sub_slot_hints #=> Types::SlotHintsSlotMap
    #   resp.interpretations #=> Array
    #   resp.interpretations[0].nlu_confidence.score #=> Float
    #   resp.interpretations[0].sentiment_response.sentiment #=> String, one of "MIXED", "NEGATIVE", "NEUTRAL", "POSITIVE"
    #   resp.interpretations[0].sentiment_response.sentiment_score.positive #=> Float
    #   resp.interpretations[0].sentiment_response.sentiment_score.negative #=> Float
    #   resp.interpretations[0].sentiment_response.sentiment_score.neutral #=> Float
    #   resp.interpretations[0].sentiment_response.sentiment_score.mixed #=> Float
    #   resp.interpretations[0].intent.name #=> String
    #   resp.interpretations[0].intent.slots #=> Hash
    #   resp.interpretations[0].intent.slots["NonEmptyString"].value.original_value #=> String
    #   resp.interpretations[0].intent.slots["NonEmptyString"].value.interpreted_value #=> String
    #   resp.interpretations[0].intent.slots["NonEmptyString"].value.resolved_values #=> Array
    #   resp.interpretations[0].intent.slots["NonEmptyString"].value.resolved_values[0] #=> String
    #   resp.interpretations[0].intent.slots["NonEmptyString"].shape #=> String, one of "Scalar", "List", "Composite"
    #   resp.interpretations[0].intent.slots["NonEmptyString"].values #=> Array
    #   resp.interpretations[0].intent.slots["NonEmptyString"].values[0] #=> Types::Slot
    #   resp.interpretations[0].intent.slots["NonEmptyString"].sub_slots #=> Types::Slots
    #   resp.interpretations[0].intent.state #=> String, one of "Failed", "Fulfilled", "InProgress", "ReadyForFulfillment", "Waiting", "FulfillmentInProgress"
    #   resp.interpretations[0].intent.confirmation_state #=> String, one of "Confirmed", "Denied", "None"
    #   resp.request_attributes #=> Hash
    #   resp.request_attributes["NonEmptyString"] #=> String
    #   resp.session_id #=> String
    #   resp.recognized_bot_member.bot_id #=> String
    #   resp.recognized_bot_member.bot_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/RecognizeText AWS API Documentation
    #
    # @overload recognize_text(params = {})
    # @param [Hash] params ({})
    def recognize_text(params = {}, options = {})
      req = build_request(:recognize_text, params)
      req.send_request(options)
    end

    # Sends user input to Amazon Lex V2. You can send text or speech.
    # Clients use this API to send text and audio requests to Amazon Lex V2
    # at runtime. Amazon Lex V2 interprets the user input using the machine
    # learning model built for the bot.
    #
    # The following request fields must be compressed with gzip and then
    # base64 encoded before you send them to Amazon Lex V2.
    #
    # * requestAttributes
    #
    # * sessionState
    #
    # The following response fields are compressed using gzip and then
    # base64 encoded by Amazon Lex V2. Before you can use these fields, you
    # must decode and decompress them.
    #
    # * inputTranscript
    #
    # * interpretations
    #
    # * messages
    #
    # * requestAttributes
    #
    # * sessionState
    #
    # The example contains a Java application that compresses and encodes a
    # Java object to send to Amazon Lex V2, and a second that decodes and
    # decompresses a response from Amazon Lex V2.
    #
    # If the optional post-fulfillment response is specified, the messages
    # are returned as follows. For more information, see
    # [PostFulfillmentStatusSpecification][1].
    #
    # * **Success message** - Returned if the Lambda function completes
    #   successfully and the intent state is fulfilled or ready fulfillment
    #   if the message is present.
    #
    # * **Failed message** - The failed message is returned if the Lambda
    #   function throws an exception or if the Lambda function returns a
    #   failed intent state without a message.
    #
    # * **Timeout message** - If you don't configure a timeout message and
    #   a timeout, and the Lambda function doesn't return within 30
    #   seconds, the timeout message is returned. If you configure a
    #   timeout, the timeout message is returned when the period times out.
    #
    # For more information, see [Completion message][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lexv2/latest/dg/API_PostFulfillmentStatusSpecification.html
    # [2]: https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-complete.html
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot that should receive the request.
    #
    # @option params [required, String] :bot_alias_id
    #   The alias identifier in use for the bot that should receive the
    #   request.
    #
    # @option params [required, String] :locale_id
    #   The locale where the session is in use.
    #
    # @option params [required, String] :session_id
    #   The identifier of the session in use.
    #
    # @option params [String] :session_state
    #   Sets the state of the session with the user. You can use this to set
    #   the current intent, attributes, context, and dialog action. Use the
    #   dialog action to determine the next step that Amazon Lex V2 should use
    #   in the conversation with the user.
    #
    #   The `sessionState` field must be compressed using gzip and then base64
    #   encoded before sending to Amazon Lex V2.
    #
    # @option params [String] :request_attributes
    #   Request-specific information passed between the client application and
    #   Amazon Lex V2
    #
    #   The namespace `x-amz-lex:` is reserved for special attributes. Don't
    #   create any request attributes for prefix `x-amz-lex:`.
    #
    #   The `requestAttributes` field must be compressed using gzip and then
    #   base64 encoded before sending to Amazon Lex V2.
    #
    # @option params [required, String] :request_content_type
    #   Indicates the format for audio input or that the content is text. The
    #   header must start with one of the following prefixes:
    #
    #   * PCM format, audio data must be in little-endian byte order.
    #
    #     * audio/l16; rate=16000; channels=1
    #
    #     * audio/x-l16; sample-rate=16000; channel-count=1
    #
    #     * audio/lpcm; sample-rate=8000; sample-size-bits=16;
    #       channel-count=1; is-big-endian=false
    #
    #   * Opus format
    #
    #     * audio/x-cbr-opus-with-preamble;preamble-size=0;bit-rate=256000;frame-size-milliseconds=4
    #
    #     ^
    #
    #   * Text format
    #
    #     * text/plain; charset=utf-8
    #
    #     ^
    #
    # @option params [String] :response_content_type
    #   The message that Amazon Lex V2 returns in the response can be either
    #   text or speech based on the `responseContentType` value.
    #
    #   * If the value is `text/plain;charset=utf-8`, Amazon Lex V2 returns
    #     text in the response.
    #
    #   * If the value begins with `audio/`, Amazon Lex V2 returns speech in
    #     the response. Amazon Lex V2 uses Amazon Polly to generate the speech
    #     using the configuration that you specified in the
    #     `responseContentType` parameter. For example, if you specify
    #     `audio/mpeg` as the value, Amazon Lex V2 returns speech in the MPEG
    #     format.
    #
    #   * If the value is `audio/pcm`, the speech returned is `audio/pcm` at
    #     16 KHz in 16-bit, little-endian format.
    #
    #   * The following are the accepted values:
    #
    #     * audio/mpeg
    #
    #     * audio/ogg
    #
    #     * audio/pcm (16 KHz)
    #
    #     * audio/* (defaults to mpeg)
    #
    #     * text/plain; charset=utf-8
    #
    # @option params [String, IO] :input_stream
    #   User input in PCM or Opus audio format or text format as described in
    #   the `requestContentType` parameter.
    #
    # @return [Types::RecognizeUtteranceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RecognizeUtteranceResponse#input_mode #input_mode} => String
    #   * {Types::RecognizeUtteranceResponse#content_type #content_type} => String
    #   * {Types::RecognizeUtteranceResponse#messages #messages} => String
    #   * {Types::RecognizeUtteranceResponse#interpretations #interpretations} => String
    #   * {Types::RecognizeUtteranceResponse#session_state #session_state} => String
    #   * {Types::RecognizeUtteranceResponse#request_attributes #request_attributes} => String
    #   * {Types::RecognizeUtteranceResponse#session_id #session_id} => String
    #   * {Types::RecognizeUtteranceResponse#input_transcript #input_transcript} => String
    #   * {Types::RecognizeUtteranceResponse#audio_stream #audio_stream} => IO
    #   * {Types::RecognizeUtteranceResponse#recognized_bot_member #recognized_bot_member} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.recognize_utterance({
    #     bot_id: "BotIdentifier", # required
    #     bot_alias_id: "BotAliasIdentifier", # required
    #     locale_id: "LocaleId", # required
    #     session_id: "SessionId", # required
    #     session_state: "SensitiveNonEmptyString",
    #     request_attributes: "SensitiveNonEmptyString",
    #     request_content_type: "NonEmptyString", # required
    #     response_content_type: "NonEmptyString",
    #     input_stream: "data",
    #   })
    #
    # @example Response structure
    #
    #   resp.input_mode #=> String
    #   resp.content_type #=> String
    #   resp.messages #=> String
    #   resp.interpretations #=> String
    #   resp.session_state #=> String
    #   resp.request_attributes #=> String
    #   resp.session_id #=> String
    #   resp.input_transcript #=> String
    #   resp.audio_stream #=> IO
    #   resp.recognized_bot_member #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/RecognizeUtterance AWS API Documentation
    #
    # @overload recognize_utterance(params = {})
    # @param [Hash] params ({})
    def recognize_utterance(params = {}, options = {}, &block)
      req = build_request(:recognize_utterance, params)
      req.send_request(options, &block)
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
      context[:gem_name] = 'aws-sdk-lexruntimev2'
      context[:gem_version] = '1.24.0'
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
