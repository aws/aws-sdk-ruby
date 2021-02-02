# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'
require 'aws-sdk-lexmodelsv2/plugins/content_type.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:lexmodelsv2)

module Aws::LexModelsV2
  # An API client for LexModelsV2.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::LexModelsV2::Client.new(
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

    @identifier = :lexmodelsv2

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
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::LexModelsV2::Plugins::ContentType)

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
    #       enable retries and extended timeouts.
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
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
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
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
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

    # Builds a bot, its intents, and its slot types into a specific locale.
    # A bot can be built into multiple locales. At runtime the locale is
    # used to choose a specific build of the bot.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot to build. The identifier is returned in the
    #   response from the operation.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot to build. This can only be the draft version of
    #   the bot.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale that the bot will be used
    #   in. The string must match one of the supported locales. All of the
    #   intents, slot types, and slots used in the bot must have the same
    #   locale. For more information, see
    #   [https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html
    #
    # @return [Types::BuildBotLocaleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BuildBotLocaleResponse#bot_id #bot_id} => String
    #   * {Types::BuildBotLocaleResponse#bot_version #bot_version} => String
    #   * {Types::BuildBotLocaleResponse#locale_id #locale_id} => String
    #   * {Types::BuildBotLocaleResponse#bot_locale_status #bot_locale_status} => String
    #   * {Types::BuildBotLocaleResponse#last_build_submitted_date_time #last_build_submitted_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.build_bot_locale({
    #     bot_id: "Id", # required
    #     bot_version: "DraftBotVersion", # required
    #     locale_id: "LocaleId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.bot_locale_status #=> String, one of "Creating", "Building", "Built", "ReadyExpressTesting", "Failed", "Deleting", "NotBuilt"
    #   resp.last_build_submitted_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BuildBotLocale AWS API Documentation
    #
    # @overload build_bot_locale(params = {})
    # @param [Hash] params ({})
    def build_bot_locale(params = {}, options = {})
      req = build_request(:build_bot_locale, params)
      req.send_request(options)
    end

    # Creates an Amazon Lex conversational bot.
    #
    # @option params [required, String] :bot_name
    #   The name of the bot. The bot name must be unique in the account that
    #   creates the bot.
    #
    # @option params [String] :description
    #   A description of the bot. It appears in lists to help you identify a
    #   particular bot.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that has permission to
    #   access the bot.
    #
    # @option params [required, Types::DataPrivacy] :data_privacy
    #   Provides information on additional privacy protections Amazon Lex
    #   should use with the bot's data.
    #
    # @option params [required, Integer] :idle_session_ttl_in_seconds
    #   The time, in seconds, that Amazon Lex should keep information about a
    #   user's conversation with the bot.
    #
    #   A user interaction remains active for the amount of time specified. If
    #   no conversation occurs during this time, the session expires and
    #   Amazon Lex deletes any data provided before the timeout.
    #
    #   You can specify between 60 (1 minute) and 86,400 (24 hours) seconds.
    #
    # @option params [Hash<String,String>] :bot_tags
    #   A list of tags to add to the bot. You can only add tags when you
    #   create a bot. You can't use the `UpdateBot` operation to update tags.
    #   To update tags, use the `TagResource` operation.
    #
    # @option params [Hash<String,String>] :test_bot_alias_tags
    #   A list of tags to add to the test alias for a bot. You can only add
    #   tags when you create a bot. You can't use the `UpdateAlias` operation
    #   to update tags. To update tags on the test alias, use the
    #   `TagResource` operation.
    #
    # @return [Types::CreateBotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBotResponse#bot_id #bot_id} => String
    #   * {Types::CreateBotResponse#bot_name #bot_name} => String
    #   * {Types::CreateBotResponse#description #description} => String
    #   * {Types::CreateBotResponse#role_arn #role_arn} => String
    #   * {Types::CreateBotResponse#data_privacy #data_privacy} => Types::DataPrivacy
    #   * {Types::CreateBotResponse#idle_session_ttl_in_seconds #idle_session_ttl_in_seconds} => Integer
    #   * {Types::CreateBotResponse#bot_status #bot_status} => String
    #   * {Types::CreateBotResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::CreateBotResponse#bot_tags #bot_tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateBotResponse#test_bot_alias_tags #test_bot_alias_tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_bot({
    #     bot_name: "Name", # required
    #     description: "Description",
    #     role_arn: "RoleArn", # required
    #     data_privacy: { # required
    #       child_directed: false, # required
    #     },
    #     idle_session_ttl_in_seconds: 1, # required
    #     bot_tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     test_bot_alias_tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_name #=> String
    #   resp.description #=> String
    #   resp.role_arn #=> String
    #   resp.data_privacy.child_directed #=> Boolean
    #   resp.idle_session_ttl_in_seconds #=> Integer
    #   resp.bot_status #=> String, one of "Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning"
    #   resp.creation_date_time #=> Time
    #   resp.bot_tags #=> Hash
    #   resp.bot_tags["TagKey"] #=> String
    #   resp.test_bot_alias_tags #=> Hash
    #   resp.test_bot_alias_tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateBot AWS API Documentation
    #
    # @overload create_bot(params = {})
    # @param [Hash] params ({})
    def create_bot(params = {}, options = {})
      req = build_request(:create_bot, params)
      req.send_request(options)
    end

    # Creates an alias for the specified version of a bot. Use an alias to
    # enable you to change the version of a bot without updating
    # applications that use the bot.
    #
    # For example, you can create an alias called "PROD" that your
    # applications use to call the Amazon Lex bot.
    #
    # @option params [required, String] :bot_alias_name
    #   The alias to create. The name must be unique for the bot.
    #
    # @option params [String] :description
    #   A description of the alias. Use this description to help identify the
    #   alias.
    #
    # @option params [String] :bot_version
    #   The version of the bot that this alias points to. You can use the
    #   operation to change the bot version associated with the alias.
    #
    # @option params [Hash<String,Types::BotAliasLocaleSettings>] :bot_alias_locale_settings
    #   Maps configuration information to a specific locale. You can use this
    #   parameter to specify a specific Lambda function to run different
    #   functions in different locales.
    #
    # @option params [Types::ConversationLogSettings] :conversation_log_settings
    #   Specifies whether Amazon Lex logs text and audio for a conversation
    #   with the bot. When you enable conversation logs, text logs store text
    #   input, transcripts of audio input, and associated metadata in Amazon
    #   CloudWatch Logs. Audio logs store audio input in Amazon S3.
    #
    # @option params [Types::SentimentAnalysisSettings] :sentiment_analysis_settings
    #   Determines whether Amazon Lex will use Amazon Comprehend to detect the
    #   sentiment of user utterances.
    #
    # @option params [required, String] :bot_id
    #   The unique identifier of the bot that the alias applies to.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of tags to add to the bot alias. You can only add tags when you
    #   create an alias, you can't use the `UpdateBotAlias` operation to
    #   update the tags on a bot alias. To update tags, use the `TagResource`
    #   operation.
    #
    # @return [Types::CreateBotAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBotAliasResponse#bot_alias_id #bot_alias_id} => String
    #   * {Types::CreateBotAliasResponse#bot_alias_name #bot_alias_name} => String
    #   * {Types::CreateBotAliasResponse#description #description} => String
    #   * {Types::CreateBotAliasResponse#bot_version #bot_version} => String
    #   * {Types::CreateBotAliasResponse#bot_alias_locale_settings #bot_alias_locale_settings} => Hash&lt;String,Types::BotAliasLocaleSettings&gt;
    #   * {Types::CreateBotAliasResponse#conversation_log_settings #conversation_log_settings} => Types::ConversationLogSettings
    #   * {Types::CreateBotAliasResponse#sentiment_analysis_settings #sentiment_analysis_settings} => Types::SentimentAnalysisSettings
    #   * {Types::CreateBotAliasResponse#bot_alias_status #bot_alias_status} => String
    #   * {Types::CreateBotAliasResponse#bot_id #bot_id} => String
    #   * {Types::CreateBotAliasResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::CreateBotAliasResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_bot_alias({
    #     bot_alias_name: "Name", # required
    #     description: "Description",
    #     bot_version: "NumericalBotVersion",
    #     bot_alias_locale_settings: {
    #       "LocaleId" => {
    #         enabled: false, # required
    #         code_hook_specification: {
    #           lambda_code_hook: { # required
    #             lambda_arn: "LambdaARN", # required
    #             code_hook_interface_version: "CodeHookInterfaceVersion", # required
    #           },
    #         },
    #       },
    #     },
    #     conversation_log_settings: {
    #       text_log_settings: [
    #         {
    #           enabled: false, # required
    #           destination: { # required
    #             cloud_watch: { # required
    #               cloud_watch_log_group_arn: "CloudWatchLogGroupArn", # required
    #               log_prefix: "LogPrefix", # required
    #             },
    #           },
    #         },
    #       ],
    #       audio_log_settings: [
    #         {
    #           enabled: false, # required
    #           destination: { # required
    #             s3_bucket: { # required
    #               kms_key_arn: "KmsKeyArn",
    #               s3_bucket_arn: "S3BucketArn", # required
    #               log_prefix: "LogPrefix", # required
    #             },
    #           },
    #         },
    #       ],
    #     },
    #     sentiment_analysis_settings: {
    #       detect_sentiment: false, # required
    #     },
    #     bot_id: "Id", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_alias_id #=> String
    #   resp.bot_alias_name #=> String
    #   resp.description #=> String
    #   resp.bot_version #=> String
    #   resp.bot_alias_locale_settings #=> Hash
    #   resp.bot_alias_locale_settings["LocaleId"].enabled #=> Boolean
    #   resp.bot_alias_locale_settings["LocaleId"].code_hook_specification.lambda_code_hook.lambda_arn #=> String
    #   resp.bot_alias_locale_settings["LocaleId"].code_hook_specification.lambda_code_hook.code_hook_interface_version #=> String
    #   resp.conversation_log_settings.text_log_settings #=> Array
    #   resp.conversation_log_settings.text_log_settings[0].enabled #=> Boolean
    #   resp.conversation_log_settings.text_log_settings[0].destination.cloud_watch.cloud_watch_log_group_arn #=> String
    #   resp.conversation_log_settings.text_log_settings[0].destination.cloud_watch.log_prefix #=> String
    #   resp.conversation_log_settings.audio_log_settings #=> Array
    #   resp.conversation_log_settings.audio_log_settings[0].enabled #=> Boolean
    #   resp.conversation_log_settings.audio_log_settings[0].destination.s3_bucket.kms_key_arn #=> String
    #   resp.conversation_log_settings.audio_log_settings[0].destination.s3_bucket.s3_bucket_arn #=> String
    #   resp.conversation_log_settings.audio_log_settings[0].destination.s3_bucket.log_prefix #=> String
    #   resp.sentiment_analysis_settings.detect_sentiment #=> Boolean
    #   resp.bot_alias_status #=> String, one of "Creating", "Available", "Deleting", "Failed"
    #   resp.bot_id #=> String
    #   resp.creation_date_time #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateBotAlias AWS API Documentation
    #
    # @overload create_bot_alias(params = {})
    # @param [Hash] params ({})
    def create_bot_alias(params = {}, options = {})
      req = build_request(:create_bot_alias, params)
      req.send_request(options)
    end

    # Creates a locale in the bot. The locale contains the intents and slot
    # types that the bot uses in conversations with users in the specified
    # language and locale. You must add a locale to a bot before you can add
    # intents and slot types to the bot.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot to create the locale for.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot to create the locale for. This can only be the
    #   draft version of the bot.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale that the bot will be used
    #   in. The string must match one of the supported locales. All of the
    #   intents, slot types, and slots used in the bot must have the same
    #   locale. For more information, see
    #   [https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html
    #
    # @option params [String] :description
    #   A description of the bot locale. Use this to help identify the bot
    #   locale in lists.
    #
    # @option params [required, Float] :nlu_intent_confidence_threshold
    #   Determines the threshold where Amazon Lex will insert the
    #   `AMAZON.FallbackIntent`, `AMAZON.KendraSearchIntent`, or both when
    #   returning alternative intents. `AMAZON.FallbackIntent` and
    #   `AMAZON.KendraSearchIntent` are only inserted if they are configured
    #   for the bot.
    #
    #   For example, suppose a bot is configured with the confidence threshold
    #   of 0.80 and the `AMAZON.FallbackIntent`. Amazon Lex returns three
    #   alternative intents with the following confidence scores: IntentA
    #   (0.70), IntentB (0.60), IntentC (0.50). The response from the PostText
    #   operation would be:
    #
    #   * AMAZON.FallbackIntent
    #
    #   * IntentA
    #
    #   * IntentB
    #
    #   * IntentC
    #
    # @option params [Types::VoiceSettings] :voice_settings
    #   The Amazon Polly voice ID that Amazon Lex uses for voice interaction
    #   with the user.
    #
    # @return [Types::CreateBotLocaleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBotLocaleResponse#bot_id #bot_id} => String
    #   * {Types::CreateBotLocaleResponse#bot_version #bot_version} => String
    #   * {Types::CreateBotLocaleResponse#locale_name #locale_name} => String
    #   * {Types::CreateBotLocaleResponse#locale_id #locale_id} => String
    #   * {Types::CreateBotLocaleResponse#description #description} => String
    #   * {Types::CreateBotLocaleResponse#nlu_intent_confidence_threshold #nlu_intent_confidence_threshold} => Float
    #   * {Types::CreateBotLocaleResponse#voice_settings #voice_settings} => Types::VoiceSettings
    #   * {Types::CreateBotLocaleResponse#bot_locale_status #bot_locale_status} => String
    #   * {Types::CreateBotLocaleResponse#creation_date_time #creation_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_bot_locale({
    #     bot_id: "Id", # required
    #     bot_version: "DraftBotVersion", # required
    #     locale_id: "LocaleId", # required
    #     description: "Description",
    #     nlu_intent_confidence_threshold: 1.0, # required
    #     voice_settings: {
    #       voice_id: "VoiceId", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_name #=> String
    #   resp.locale_id #=> String
    #   resp.description #=> String
    #   resp.nlu_intent_confidence_threshold #=> Float
    #   resp.voice_settings.voice_id #=> String
    #   resp.bot_locale_status #=> String, one of "Creating", "Building", "Built", "ReadyExpressTesting", "Failed", "Deleting", "NotBuilt"
    #   resp.creation_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateBotLocale AWS API Documentation
    #
    # @overload create_bot_locale(params = {})
    # @param [Hash] params ({})
    def create_bot_locale(params = {}, options = {})
      req = build_request(:create_bot_locale, params)
      req.send_request(options)
    end

    # Creates a new version of the bot based on the `DRAFT` version. If the
    # `DRAFT` version of this resource hasn't changed since you created the
    # last version, Amazon Lex doesn't create a new version, it returns the
    # last created version.
    #
    # When you create the first version of a bot, Amazon Lex sets the
    # version to 1. Subsequent versions increment by 1.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot to create the version for.
    #
    # @option params [String] :description
    #   A description of the version. Use the description to help identify the
    #   version in lists.
    #
    # @option params [required, Hash<String,Types::BotVersionLocaleDetails>] :bot_version_locale_specification
    #   Specifies the locales that Amazon Lex adds to this version. You can
    #   choose the `Draft` version or any other previously published version
    #   for each locale. When you specify a source version, the locale data is
    #   copied from the source version to the new version.
    #
    # @return [Types::CreateBotVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBotVersionResponse#bot_id #bot_id} => String
    #   * {Types::CreateBotVersionResponse#description #description} => String
    #   * {Types::CreateBotVersionResponse#bot_version #bot_version} => String
    #   * {Types::CreateBotVersionResponse#bot_version_locale_specification #bot_version_locale_specification} => Hash&lt;String,Types::BotVersionLocaleDetails&gt;
    #   * {Types::CreateBotVersionResponse#bot_status #bot_status} => String
    #   * {Types::CreateBotVersionResponse#creation_date_time #creation_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_bot_version({
    #     bot_id: "Id", # required
    #     description: "Description",
    #     bot_version_locale_specification: { # required
    #       "LocaleId" => {
    #         source_bot_version: "BotVersion", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.description #=> String
    #   resp.bot_version #=> String
    #   resp.bot_version_locale_specification #=> Hash
    #   resp.bot_version_locale_specification["LocaleId"].source_bot_version #=> String
    #   resp.bot_status #=> String, one of "Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning"
    #   resp.creation_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateBotVersion AWS API Documentation
    #
    # @overload create_bot_version(params = {})
    # @param [Hash] params ({})
    def create_bot_version(params = {}, options = {})
      req = build_request(:create_bot_version, params)
      req.send_request(options)
    end

    # Creates an intent.
    #
    # To define the interaction between the user and your bot, you define
    # one or more intents. For example, for a pizza ordering bot you would
    # create an `OrderPizza` intent.
    #
    # When you create an intent, you must provide a name. You can optionally
    # provide the following:
    #
    # * Sample utterances. For example, "I want to order a pizza" and
    #   "Can I order a pizza." You can't provide utterances for built-in
    #   intents.
    #
    # * Information to be gathered. You specify slots for the information
    #   that you bot requests from the user. You can specify standard slot
    #   types, such as date and time, or custom slot types for your
    #   application.
    #
    # * How the intent is fulfilled. You can provide a Lambda function or
    #   configure the intent to return the intent information to your client
    #   application. If you use a Lambda function, Amazon Lex invokes the
    #   function when all of the intent information is available.
    #
    # * A confirmation prompt to send to the user to confirm an intent. For
    #   example, "Shall I order your pizza?"
    #
    # * A conclusion statement to send to the user after the intent is
    #   fulfilled. For example, "I ordered your pizza."
    #
    # * A follow-up prompt that asks the user for additional activity. For
    #   example, "Do you want a drink with your pizza?"
    #
    # @option params [required, String] :intent_name
    #   The name of the intent. Intent names must be unique in the locale that
    #   contains the intent and cannot match the name of any built-in intent.
    #
    # @option params [String] :description
    #   A description of the intent. Use the description to help identify the
    #   intent in lists.
    #
    # @option params [String] :parent_intent_signature
    #   A unique identifier for the built-in intent to base this intent on.
    #
    # @option params [Array<Types::SampleUtterance>] :sample_utterances
    #   An array of strings that a user might say to signal the intent. For
    #   example, "I want a pizza", or "I want a \\\{PizzaSize\\} pizza".
    #
    #   In an utterance, slot names are enclosed in curly braces ("\\\{",
    #   "\\}") to indicate where they should be displayed in the utterance
    #   shown to the user..
    #
    # @option params [Types::DialogCodeHookSettings] :dialog_code_hook
    #   Specifies that Amazon Lex invokes the alias Lambda function for each
    #   user input. You can invoke this Lambda function to personalize user
    #   interaction.
    #
    #   For example, suppose that your bot determines that the user's name is
    #   John. You Lambda function might retrieve John's information from a
    #   backend database and prepopulate some of the values. For example, if
    #   you find that John is gluten intolerant, you might set the
    #   corresponding intent slot, `glutenIntolerant` to `true`. You might
    #   find John's phone number and set the corresponding session attribute.
    #
    # @option params [Types::FulfillmentCodeHookSettings] :fulfillment_code_hook
    #   Specifies that Amazon Lex invokes the alias Lambda function when the
    #   intent is ready for fulfillment. You can invoke this function to
    #   complete the bot's transaction with the user.
    #
    #   For example, in a pizza ordering bot, the Lambda function can look up
    #   the closest pizza restaurant to the customer's location and then
    #   place an order on the customer's behalf.
    #
    # @option params [Types::IntentConfirmationSetting] :intent_confirmation_setting
    #   Provides prompts that Amazon Lex sends to the user to confirm the
    #   completion of an intent. If the user answers "no," the settings
    #   contain a statement that is sent to the user to end the intent.
    #
    # @option params [Types::IntentClosingSetting] :intent_closing_setting
    #   Sets the response that Amazon Lex sends to the user when the intent is
    #   closed.
    #
    # @option params [Array<Types::InputContext>] :input_contexts
    #   A list of contexts that must be active for this intent to be
    #   considered by Amazon Lex.
    #
    #   When an intent has an input context list, Amazon Lex only considers
    #   using the intent in an interaction with the user when the specified
    #   contexts are included in the active context list for the session. If
    #   the contexts are not active, then Amazon Lex will not use the intent.
    #
    #   A context can be automatically activated using the `outputContexts`
    #   property or it can be set at runtime.
    #
    #   For example, if there are two intents with different input contexts
    #   that respond to the same utterances, only the intent with the active
    #   context will respond.
    #
    #   An intent may have up to 5 input contexts. If an intent has multiple
    #   input contexts, all of the contexts must be active to consider the
    #   intent.
    #
    # @option params [Array<Types::OutputContext>] :output_contexts
    #   A lists of contexts that the intent activates when it is fulfilled.
    #
    #   You can use an output context to indicate the intents that Amazon Lex
    #   should consider for the next turn of the conversation with a customer.
    #
    #   When you use the `outputContextsList` property, all of the contexts
    #   specified in the list are activated when the intent is fulfilled. You
    #   can set up to 10 output contexts. You can also set the number of
    #   conversation turns that the context should be active, or the length of
    #   time that the context should be active.
    #
    # @option params [Types::KendraConfiguration] :kendra_configuration
    #   Configuration information required to use the
    #   `AMAZON.KendraSearchIntent` intent to connect to an Amazon Kendra
    #   index. The `AMAZON.KendraSearchIntent` intent is called when Amazon
    #   Lex can't determine another intent to invoke.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot associated with this intent.
    #
    # @option params [required, String] :bot_version
    #   The identifier of the version of the bot associated with this intent.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale where this intent is used.
    #   All of the bots, slot types, and slots used by the intent must have
    #   the same locale.
    #
    # @return [Types::CreateIntentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIntentResponse#intent_id #intent_id} => String
    #   * {Types::CreateIntentResponse#intent_name #intent_name} => String
    #   * {Types::CreateIntentResponse#description #description} => String
    #   * {Types::CreateIntentResponse#parent_intent_signature #parent_intent_signature} => String
    #   * {Types::CreateIntentResponse#sample_utterances #sample_utterances} => Array&lt;Types::SampleUtterance&gt;
    #   * {Types::CreateIntentResponse#dialog_code_hook #dialog_code_hook} => Types::DialogCodeHookSettings
    #   * {Types::CreateIntentResponse#fulfillment_code_hook #fulfillment_code_hook} => Types::FulfillmentCodeHookSettings
    #   * {Types::CreateIntentResponse#intent_confirmation_setting #intent_confirmation_setting} => Types::IntentConfirmationSetting
    #   * {Types::CreateIntentResponse#intent_closing_setting #intent_closing_setting} => Types::IntentClosingSetting
    #   * {Types::CreateIntentResponse#input_contexts #input_contexts} => Array&lt;Types::InputContext&gt;
    #   * {Types::CreateIntentResponse#output_contexts #output_contexts} => Array&lt;Types::OutputContext&gt;
    #   * {Types::CreateIntentResponse#kendra_configuration #kendra_configuration} => Types::KendraConfiguration
    #   * {Types::CreateIntentResponse#bot_id #bot_id} => String
    #   * {Types::CreateIntentResponse#bot_version #bot_version} => String
    #   * {Types::CreateIntentResponse#locale_id #locale_id} => String
    #   * {Types::CreateIntentResponse#creation_date_time #creation_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_intent({
    #     intent_name: "Name", # required
    #     description: "Description",
    #     parent_intent_signature: "IntentSignature",
    #     sample_utterances: [
    #       {
    #         utterance: "Utterance", # required
    #       },
    #     ],
    #     dialog_code_hook: {
    #       enabled: false, # required
    #     },
    #     fulfillment_code_hook: {
    #       enabled: false, # required
    #     },
    #     intent_confirmation_setting: {
    #       prompt_specification: { # required
    #         message_groups: [ # required
    #           {
    #             message: { # required
    #               plain_text_message: {
    #                 value: "PlainTextMessageValue", # required
    #               },
    #               custom_payload: {
    #                 value: "CustomPayloadValue", # required
    #               },
    #               ssml_message: {
    #                 value: "SSMLMessageValue", # required
    #               },
    #               image_response_card: {
    #                 title: "AttachmentTitle", # required
    #                 subtitle: "AttachmentTitle",
    #                 image_url: "AttachmentUrl",
    #                 buttons: [
    #                   {
    #                     text: "ButtonText", # required
    #                     value: "ButtonValue", # required
    #                   },
    #                 ],
    #               },
    #             },
    #             variations: [
    #               {
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #         max_retries: 1, # required
    #         allow_interrupt: false,
    #       },
    #       declination_response: { # required
    #         message_groups: [ # required
    #           {
    #             message: { # required
    #               plain_text_message: {
    #                 value: "PlainTextMessageValue", # required
    #               },
    #               custom_payload: {
    #                 value: "CustomPayloadValue", # required
    #               },
    #               ssml_message: {
    #                 value: "SSMLMessageValue", # required
    #               },
    #               image_response_card: {
    #                 title: "AttachmentTitle", # required
    #                 subtitle: "AttachmentTitle",
    #                 image_url: "AttachmentUrl",
    #                 buttons: [
    #                   {
    #                     text: "ButtonText", # required
    #                     value: "ButtonValue", # required
    #                   },
    #                 ],
    #               },
    #             },
    #             variations: [
    #               {
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #         allow_interrupt: false,
    #       },
    #     },
    #     intent_closing_setting: {
    #       closing_response: { # required
    #         message_groups: [ # required
    #           {
    #             message: { # required
    #               plain_text_message: {
    #                 value: "PlainTextMessageValue", # required
    #               },
    #               custom_payload: {
    #                 value: "CustomPayloadValue", # required
    #               },
    #               ssml_message: {
    #                 value: "SSMLMessageValue", # required
    #               },
    #               image_response_card: {
    #                 title: "AttachmentTitle", # required
    #                 subtitle: "AttachmentTitle",
    #                 image_url: "AttachmentUrl",
    #                 buttons: [
    #                   {
    #                     text: "ButtonText", # required
    #                     value: "ButtonValue", # required
    #                   },
    #                 ],
    #               },
    #             },
    #             variations: [
    #               {
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #         allow_interrupt: false,
    #       },
    #     },
    #     input_contexts: [
    #       {
    #         name: "Name", # required
    #       },
    #     ],
    #     output_contexts: [
    #       {
    #         name: "Name", # required
    #         time_to_live_in_seconds: 1, # required
    #         turns_to_live: 1, # required
    #       },
    #     ],
    #     kendra_configuration: {
    #       kendra_index: "KendraIndexArn", # required
    #       query_filter_string_enabled: false,
    #       query_filter_string: "QueryFilterString",
    #     },
    #     bot_id: "Id", # required
    #     bot_version: "DraftBotVersion", # required
    #     locale_id: "LocaleId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.intent_id #=> String
    #   resp.intent_name #=> String
    #   resp.description #=> String
    #   resp.parent_intent_signature #=> String
    #   resp.sample_utterances #=> Array
    #   resp.sample_utterances[0].utterance #=> String
    #   resp.dialog_code_hook.enabled #=> Boolean
    #   resp.fulfillment_code_hook.enabled #=> Boolean
    #   resp.intent_confirmation_setting.prompt_specification.message_groups #=> Array
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].message.plain_text_message.value #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].message.custom_payload.value #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].message.ssml_message.value #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].message.image_response_card.title #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations #=> Array
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.intent_confirmation_setting.prompt_specification.max_retries #=> Integer
    #   resp.intent_confirmation_setting.prompt_specification.allow_interrupt #=> Boolean
    #   resp.intent_confirmation_setting.declination_response.message_groups #=> Array
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations #=> Array
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.intent_confirmation_setting.declination_response.allow_interrupt #=> Boolean
    #   resp.intent_closing_setting.closing_response.message_groups #=> Array
    #   resp.intent_closing_setting.closing_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.intent_closing_setting.closing_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations #=> Array
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.intent_closing_setting.closing_response.allow_interrupt #=> Boolean
    #   resp.input_contexts #=> Array
    #   resp.input_contexts[0].name #=> String
    #   resp.output_contexts #=> Array
    #   resp.output_contexts[0].name #=> String
    #   resp.output_contexts[0].time_to_live_in_seconds #=> Integer
    #   resp.output_contexts[0].turns_to_live #=> Integer
    #   resp.kendra_configuration.kendra_index #=> String
    #   resp.kendra_configuration.query_filter_string_enabled #=> Boolean
    #   resp.kendra_configuration.query_filter_string #=> String
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.creation_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateIntent AWS API Documentation
    #
    # @overload create_intent(params = {})
    # @param [Hash] params ({})
    def create_intent(params = {}, options = {})
      req = build_request(:create_intent, params)
      req.send_request(options)
    end

    # Creates a slot in an intent. A slot is a variable needed to fulfill an
    # intent. For example, an `OrderPizza` intent might need slots for size,
    # crust, and number of pizzas. For each slot, you define one or more
    # utterances that Amazon Lex uses to elicit a response from the user.
    #
    # @option params [required, String] :slot_name
    #   The name of the slot. Slot names must be unique within the bot that
    #   contains the slot.
    #
    # @option params [String] :description
    #   A description of the slot. Use this to help identify the slot in
    #   lists.
    #
    # @option params [required, String] :slot_type_id
    #   The unique identifier for the slot type associated with this slot. The
    #   slot type determines the values that can be entered into the slot.
    #
    # @option params [required, Types::SlotValueElicitationSetting] :value_elicitation_setting
    #   Specifies prompts that Amazon Lex sends to the user to elicit a
    #   response that provides the value for the slot.
    #
    # @option params [Types::ObfuscationSetting] :obfuscation_setting
    #   Determines how slot values are used in Amazon CloudWatch logs. If the
    #   value of the `obfuscationSetting` parameter is `DefaultObfuscation`,
    #   slot values are obfuscated in the log output. If the value is `None`,
    #   the actual value is present in the log output.
    #
    #   The default is to obfuscate values in the CloudWatch logs.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot associated with the slot.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot associated with the slot.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale that the slot will be used
    #   in. The string must match one of the supported locales. All of the
    #   bots, intents, slot types used by the slot must have the same locale.
    #   For more information, see
    #   [https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html
    #
    # @option params [required, String] :intent_id
    #   The identifier of the intent that contains the slot.
    #
    # @return [Types::CreateSlotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSlotResponse#slot_id #slot_id} => String
    #   * {Types::CreateSlotResponse#slot_name #slot_name} => String
    #   * {Types::CreateSlotResponse#description #description} => String
    #   * {Types::CreateSlotResponse#slot_type_id #slot_type_id} => String
    #   * {Types::CreateSlotResponse#value_elicitation_setting #value_elicitation_setting} => Types::SlotValueElicitationSetting
    #   * {Types::CreateSlotResponse#obfuscation_setting #obfuscation_setting} => Types::ObfuscationSetting
    #   * {Types::CreateSlotResponse#bot_id #bot_id} => String
    #   * {Types::CreateSlotResponse#bot_version #bot_version} => String
    #   * {Types::CreateSlotResponse#locale_id #locale_id} => String
    #   * {Types::CreateSlotResponse#intent_id #intent_id} => String
    #   * {Types::CreateSlotResponse#creation_date_time #creation_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_slot({
    #     slot_name: "Name", # required
    #     description: "Description",
    #     slot_type_id: "BuiltInOrCustomSlotTypeId", # required
    #     value_elicitation_setting: { # required
    #       default_value_specification: {
    #         default_value_list: [ # required
    #           {
    #             default_value: "SlotDefaultValueString", # required
    #           },
    #         ],
    #       },
    #       slot_constraint: "Required", # required, accepts Required, Optional
    #       prompt_specification: {
    #         message_groups: [ # required
    #           {
    #             message: { # required
    #               plain_text_message: {
    #                 value: "PlainTextMessageValue", # required
    #               },
    #               custom_payload: {
    #                 value: "CustomPayloadValue", # required
    #               },
    #               ssml_message: {
    #                 value: "SSMLMessageValue", # required
    #               },
    #               image_response_card: {
    #                 title: "AttachmentTitle", # required
    #                 subtitle: "AttachmentTitle",
    #                 image_url: "AttachmentUrl",
    #                 buttons: [
    #                   {
    #                     text: "ButtonText", # required
    #                     value: "ButtonValue", # required
    #                   },
    #                 ],
    #               },
    #             },
    #             variations: [
    #               {
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #         max_retries: 1, # required
    #         allow_interrupt: false,
    #       },
    #       sample_utterances: [
    #         {
    #           utterance: "Utterance", # required
    #         },
    #       ],
    #       wait_and_continue_specification: {
    #         waiting_response: { # required
    #           message_groups: [ # required
    #             {
    #               message: { # required
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               variations: [
    #                 {
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #           allow_interrupt: false,
    #         },
    #         continue_response: { # required
    #           message_groups: [ # required
    #             {
    #               message: { # required
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               variations: [
    #                 {
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #           allow_interrupt: false,
    #         },
    #         still_waiting_response: {
    #           message_groups: [ # required
    #             {
    #               message: { # required
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               variations: [
    #                 {
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #           frequency_in_seconds: 1, # required
    #           timeout_in_seconds: 1, # required
    #           allow_interrupt: false,
    #         },
    #       },
    #     },
    #     obfuscation_setting: {
    #       obfuscation_setting_type: "None", # required, accepts None, DefaultObfuscation
    #     },
    #     bot_id: "Id", # required
    #     bot_version: "DraftBotVersion", # required
    #     locale_id: "LocaleId", # required
    #     intent_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.slot_id #=> String
    #   resp.slot_name #=> String
    #   resp.description #=> String
    #   resp.slot_type_id #=> String
    #   resp.value_elicitation_setting.default_value_specification.default_value_list #=> Array
    #   resp.value_elicitation_setting.default_value_specification.default_value_list[0].default_value #=> String
    #   resp.value_elicitation_setting.slot_constraint #=> String, one of "Required", "Optional"
    #   resp.value_elicitation_setting.prompt_specification.message_groups #=> Array
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.prompt_specification.max_retries #=> Integer
    #   resp.value_elicitation_setting.prompt_specification.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.sample_utterances #=> Array
    #   resp.value_elicitation_setting.sample_utterances[0].utterance #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.frequency_in_seconds #=> Integer
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.timeout_in_seconds #=> Integer
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.allow_interrupt #=> Boolean
    #   resp.obfuscation_setting.obfuscation_setting_type #=> String, one of "None", "DefaultObfuscation"
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.intent_id #=> String
    #   resp.creation_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateSlot AWS API Documentation
    #
    # @overload create_slot(params = {})
    # @param [Hash] params ({})
    def create_slot(params = {}, options = {})
      req = build_request(:create_slot, params)
      req.send_request(options)
    end

    # Creates a custom slot type
    #
    # To create a custom slot type, specify a name for the slot type and a
    # set of enumeration values, the values that a slot of this type can
    # assume.
    #
    # @option params [required, String] :slot_type_name
    #   The name for the slot. A slot type name must be unique within the
    #   account.
    #
    # @option params [String] :description
    #   A description of the slot type. Use the description to help identify
    #   the slot type in lists.
    #
    # @option params [Array<Types::SlotTypeValue>] :slot_type_values
    #   A list of `SlotTypeValue` objects that defines the values that the
    #   slot type can take. Each value can have a list of synonyms, additional
    #   values that help train the machine learning model about the values
    #   that it resolves for a slot.
    #
    # @option params [required, Types::SlotValueSelectionSetting] :value_selection_setting
    #   Determines the strategy that Amazon Lex uses to select a value from
    #   the list of possible values. The field can be set to one of the
    #   following values:
    #
    #   * `OriginalValue` - Returns the value entered by the user, if the user
    #     value is similar to the slot value.
    #
    #   * `TopResolution` - If there is a resolution list for the slot, return
    #     the first value in the resolution list. If there is no resolution
    #     list, return null.
    #
    #   If you don't specify the `valueSelectionSetting` parameter, the
    #   default is `OriginalValue`.
    #
    # @option params [String] :parent_slot_type_signature
    #   The built-in slot type used as a parent of this slot type. When you
    #   define a parent slot type, the new slot type has the configuration of
    #   the parent slot type.
    #
    #   Only `AMAZON.AlphaNumeric` is supported.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot associated with this slot type.
    #
    # @option params [required, String] :bot_version
    #   The identifier of the bot version associated with this slot type.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale that the slot type will be
    #   used in. The string must match one of the supported locales. All of
    #   the bots, intents, and slots used by the slot type must have the same
    #   locale. For more information, see
    #   [https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html
    #
    # @return [Types::CreateSlotTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSlotTypeResponse#slot_type_id #slot_type_id} => String
    #   * {Types::CreateSlotTypeResponse#slot_type_name #slot_type_name} => String
    #   * {Types::CreateSlotTypeResponse#description #description} => String
    #   * {Types::CreateSlotTypeResponse#slot_type_values #slot_type_values} => Array&lt;Types::SlotTypeValue&gt;
    #   * {Types::CreateSlotTypeResponse#value_selection_setting #value_selection_setting} => Types::SlotValueSelectionSetting
    #   * {Types::CreateSlotTypeResponse#parent_slot_type_signature #parent_slot_type_signature} => String
    #   * {Types::CreateSlotTypeResponse#bot_id #bot_id} => String
    #   * {Types::CreateSlotTypeResponse#bot_version #bot_version} => String
    #   * {Types::CreateSlotTypeResponse#locale_id #locale_id} => String
    #   * {Types::CreateSlotTypeResponse#creation_date_time #creation_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_slot_type({
    #     slot_type_name: "Name", # required
    #     description: "Description",
    #     slot_type_values: [
    #       {
    #         sample_value: {
    #           value: "Value", # required
    #         },
    #         synonyms: [
    #           {
    #             value: "Value", # required
    #           },
    #         ],
    #       },
    #     ],
    #     value_selection_setting: { # required
    #       resolution_strategy: "OriginalValue", # required, accepts OriginalValue, TopResolution
    #       regex_filter: {
    #         pattern: "RegexPattern", # required
    #       },
    #     },
    #     parent_slot_type_signature: "SlotTypeSignature",
    #     bot_id: "Id", # required
    #     bot_version: "DraftBotVersion", # required
    #     locale_id: "LocaleId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.slot_type_id #=> String
    #   resp.slot_type_name #=> String
    #   resp.description #=> String
    #   resp.slot_type_values #=> Array
    #   resp.slot_type_values[0].sample_value.value #=> String
    #   resp.slot_type_values[0].synonyms #=> Array
    #   resp.slot_type_values[0].synonyms[0].value #=> String
    #   resp.value_selection_setting.resolution_strategy #=> String, one of "OriginalValue", "TopResolution"
    #   resp.value_selection_setting.regex_filter.pattern #=> String
    #   resp.parent_slot_type_signature #=> String
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.creation_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateSlotType AWS API Documentation
    #
    # @overload create_slot_type(params = {})
    # @param [Hash] params ({})
    def create_slot_type(params = {}, options = {})
      req = build_request(:create_slot_type, params)
      req.send_request(options)
    end

    # Deletes all versions of a bot, including the `Draft` version. To
    # delete a specific version, use the `DeleteBotVersion` operation.
    #
    # When you delete a bot, all of the resources contained in the bot are
    # also deleted. Deleting a bot removes all locales, intents, slot, and
    # slot types defined for the bot.
    #
    # If a bot has an alias, the `DeleteBot` operation returns a
    # `ResourceInUseException` exception. If you want to delete the bot and
    # the alias, set the `skipResourceInUseCheck` parameter to `true`.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot to delete.
    #
    # @option params [Boolean] :skip_resource_in_use_check
    #   When `true`, Amazon Lex doesn't check to see if another resource,
    #   such as an alias, is using the bot before it is deleted.
    #
    # @return [Types::DeleteBotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBotResponse#bot_id #bot_id} => String
    #   * {Types::DeleteBotResponse#bot_status #bot_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bot({
    #     bot_id: "Id", # required
    #     skip_resource_in_use_check: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_status #=> String, one of "Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteBot AWS API Documentation
    #
    # @overload delete_bot(params = {})
    # @param [Hash] params ({})
    def delete_bot(params = {}, options = {})
      req = build_request(:delete_bot, params)
      req.send_request(options)
    end

    # Deletes the specified bot alias.
    #
    # @option params [required, String] :bot_alias_id
    #   The unique identifier of the bot alias to delete.
    #
    # @option params [required, String] :bot_id
    #   The unique identifier of the bot associated with the alias to delete.
    #
    # @option params [Boolean] :skip_resource_in_use_check
    #   When this parameter is true, Amazon Lex doesn't check to see if any
    #   other resource is using the alias before it is deleted.
    #
    # @return [Types::DeleteBotAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBotAliasResponse#bot_alias_id #bot_alias_id} => String
    #   * {Types::DeleteBotAliasResponse#bot_id #bot_id} => String
    #   * {Types::DeleteBotAliasResponse#bot_alias_status #bot_alias_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bot_alias({
    #     bot_alias_id: "BotAliasId", # required
    #     bot_id: "Id", # required
    #     skip_resource_in_use_check: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_alias_id #=> String
    #   resp.bot_id #=> String
    #   resp.bot_alias_status #=> String, one of "Creating", "Available", "Deleting", "Failed"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteBotAlias AWS API Documentation
    #
    # @overload delete_bot_alias(params = {})
    # @param [Hash] params ({})
    def delete_bot_alias(params = {}, options = {})
      req = build_request(:delete_bot_alias, params)
      req.send_request(options)
    end

    # Removes a locale from a bot.
    #
    # When you delete a locale, all intents, slots, and slot types defined
    # for the locale are also deleted.
    #
    # @option params [required, String] :bot_id
    #   The unique identifier of the bot that contains the locale.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot that contains the locale.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale that will be deleted. The
    #   string must match one of the supported locales. For more information,
    #   see
    #   [https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html
    #
    # @return [Types::DeleteBotLocaleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBotLocaleResponse#bot_id #bot_id} => String
    #   * {Types::DeleteBotLocaleResponse#bot_version #bot_version} => String
    #   * {Types::DeleteBotLocaleResponse#locale_id #locale_id} => String
    #   * {Types::DeleteBotLocaleResponse#bot_locale_status #bot_locale_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bot_locale({
    #     bot_id: "Id", # required
    #     bot_version: "DraftBotVersion", # required
    #     locale_id: "LocaleId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.bot_locale_status #=> String, one of "Creating", "Building", "Built", "ReadyExpressTesting", "Failed", "Deleting", "NotBuilt"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteBotLocale AWS API Documentation
    #
    # @overload delete_bot_locale(params = {})
    # @param [Hash] params ({})
    def delete_bot_locale(params = {}, options = {})
      req = build_request(:delete_bot_locale, params)
      req.send_request(options)
    end

    # Deletes a specific version of a bot. To delete all version of a bot,
    # use the DeleteBot operation.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot that contains the version.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot to delete.
    #
    # @option params [Boolean] :skip_resource_in_use_check
    #   By default, the `DeleteBotVersion` operations throws a
    #   `ResourceInUseException` exception if you try to delete a bot version
    #   that has an alias pointing at it. Set the `skipResourceInUseCheck`
    #   parameter to `true` to skip this check and remove the version even if
    #   an alias points to it.
    #
    # @return [Types::DeleteBotVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBotVersionResponse#bot_id #bot_id} => String
    #   * {Types::DeleteBotVersionResponse#bot_version #bot_version} => String
    #   * {Types::DeleteBotVersionResponse#bot_status #bot_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bot_version({
    #     bot_id: "Id", # required
    #     bot_version: "NumericalBotVersion", # required
    #     skip_resource_in_use_check: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.bot_status #=> String, one of "Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteBotVersion AWS API Documentation
    #
    # @overload delete_bot_version(params = {})
    # @param [Hash] params ({})
    def delete_bot_version(params = {}, options = {})
      req = build_request(:delete_bot_version, params)
      req.send_request(options)
    end

    # Removes the specified intent.
    #
    # Deleting an intent also deletes the slots associated with the intent.
    #
    # @option params [required, String] :intent_id
    #   The unique identifier of the intent to delete.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot associated with the intent.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot associated with the intent.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale where the bot will be
    #   deleted. The string must match one of the supported locales. For more
    #   information, see
    #   [https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_intent({
    #     intent_id: "Id", # required
    #     bot_id: "Id", # required
    #     bot_version: "DraftBotVersion", # required
    #     locale_id: "LocaleId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteIntent AWS API Documentation
    #
    # @overload delete_intent(params = {})
    # @param [Hash] params ({})
    def delete_intent(params = {}, options = {})
      req = build_request(:delete_intent, params)
      req.send_request(options)
    end

    # Deletes the specified slot from an intent.
    #
    # @option params [required, String] :slot_id
    #   The identifier of the slot to delete.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot associated with the slot to delete.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot associated with the slot to delete.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale that the slot will be
    #   deleted from. The string must match one of the supported locales. For
    #   more information, see
    #   [https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html
    #
    # @option params [required, String] :intent_id
    #   The identifier of the intent associated with the slot.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_slot({
    #     slot_id: "Id", # required
    #     bot_id: "Id", # required
    #     bot_version: "DraftBotVersion", # required
    #     locale_id: "LocaleId", # required
    #     intent_id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteSlot AWS API Documentation
    #
    # @overload delete_slot(params = {})
    # @param [Hash] params ({})
    def delete_slot(params = {}, options = {})
      req = build_request(:delete_slot, params)
      req.send_request(options)
    end

    # Deletes a slot type from a bot locale.
    #
    # If a slot is using the slot type, Amazon Lex throws a
    # `ResourceInUseException` exception. To avoid the exception, set the
    # `skipResourceInUseCheck` parameter to `true`.
    #
    # @option params [required, String] :slot_type_id
    #   The identifier of the slot type to delete.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot associated with the slot type.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot associated with the slot type.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale that the slot type will be
    #   deleted from. The string must match one of the supported locales. For
    #   more information, see
    #   [https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html
    #
    # @option params [Boolean] :skip_resource_in_use_check
    #   By default, the `DeleteSlotType` operations throws a
    #   `ResourceInUseException` exception if you try to delete a slot type
    #   used by a slot. Set the `skipResourceInUseCheck` parameter to `true`
    #   to skip this check and remove the slot type even if a slot uses it.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_slot_type({
    #     slot_type_id: "Id", # required
    #     bot_id: "Id", # required
    #     bot_version: "DraftBotVersion", # required
    #     locale_id: "LocaleId", # required
    #     skip_resource_in_use_check: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteSlotType AWS API Documentation
    #
    # @overload delete_slot_type(params = {})
    # @param [Hash] params ({})
    def delete_slot_type(params = {}, options = {})
      req = build_request(:delete_slot_type, params)
      req.send_request(options)
    end

    # Provides metadata information about a bot.
    #
    # @option params [required, String] :bot_id
    #   The unique identifier of the bot to describe.
    #
    # @return [Types::DescribeBotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBotResponse#bot_id #bot_id} => String
    #   * {Types::DescribeBotResponse#bot_name #bot_name} => String
    #   * {Types::DescribeBotResponse#description #description} => String
    #   * {Types::DescribeBotResponse#role_arn #role_arn} => String
    #   * {Types::DescribeBotResponse#data_privacy #data_privacy} => Types::DataPrivacy
    #   * {Types::DescribeBotResponse#idle_session_ttl_in_seconds #idle_session_ttl_in_seconds} => Integer
    #   * {Types::DescribeBotResponse#bot_status #bot_status} => String
    #   * {Types::DescribeBotResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::DescribeBotResponse#last_updated_date_time #last_updated_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_bot({
    #     bot_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_name #=> String
    #   resp.description #=> String
    #   resp.role_arn #=> String
    #   resp.data_privacy.child_directed #=> Boolean
    #   resp.idle_session_ttl_in_seconds #=> Integer
    #   resp.bot_status #=> String, one of "Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning"
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeBot AWS API Documentation
    #
    # @overload describe_bot(params = {})
    # @param [Hash] params ({})
    def describe_bot(params = {}, options = {})
      req = build_request(:describe_bot, params)
      req.send_request(options)
    end

    # Get information about a specific bot alias.
    #
    # @option params [required, String] :bot_alias_id
    #   The identifier of the bot alias to describe.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot associated with the bot alias to describe.
    #
    # @return [Types::DescribeBotAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBotAliasResponse#bot_alias_id #bot_alias_id} => String
    #   * {Types::DescribeBotAliasResponse#bot_alias_name #bot_alias_name} => String
    #   * {Types::DescribeBotAliasResponse#description #description} => String
    #   * {Types::DescribeBotAliasResponse#bot_version #bot_version} => String
    #   * {Types::DescribeBotAliasResponse#bot_alias_locale_settings #bot_alias_locale_settings} => Hash&lt;String,Types::BotAliasLocaleSettings&gt;
    #   * {Types::DescribeBotAliasResponse#conversation_log_settings #conversation_log_settings} => Types::ConversationLogSettings
    #   * {Types::DescribeBotAliasResponse#sentiment_analysis_settings #sentiment_analysis_settings} => Types::SentimentAnalysisSettings
    #   * {Types::DescribeBotAliasResponse#bot_alias_history_events #bot_alias_history_events} => Array&lt;Types::BotAliasHistoryEvent&gt;
    #   * {Types::DescribeBotAliasResponse#bot_alias_status #bot_alias_status} => String
    #   * {Types::DescribeBotAliasResponse#bot_id #bot_id} => String
    #   * {Types::DescribeBotAliasResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::DescribeBotAliasResponse#last_updated_date_time #last_updated_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_bot_alias({
    #     bot_alias_id: "BotAliasId", # required
    #     bot_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_alias_id #=> String
    #   resp.bot_alias_name #=> String
    #   resp.description #=> String
    #   resp.bot_version #=> String
    #   resp.bot_alias_locale_settings #=> Hash
    #   resp.bot_alias_locale_settings["LocaleId"].enabled #=> Boolean
    #   resp.bot_alias_locale_settings["LocaleId"].code_hook_specification.lambda_code_hook.lambda_arn #=> String
    #   resp.bot_alias_locale_settings["LocaleId"].code_hook_specification.lambda_code_hook.code_hook_interface_version #=> String
    #   resp.conversation_log_settings.text_log_settings #=> Array
    #   resp.conversation_log_settings.text_log_settings[0].enabled #=> Boolean
    #   resp.conversation_log_settings.text_log_settings[0].destination.cloud_watch.cloud_watch_log_group_arn #=> String
    #   resp.conversation_log_settings.text_log_settings[0].destination.cloud_watch.log_prefix #=> String
    #   resp.conversation_log_settings.audio_log_settings #=> Array
    #   resp.conversation_log_settings.audio_log_settings[0].enabled #=> Boolean
    #   resp.conversation_log_settings.audio_log_settings[0].destination.s3_bucket.kms_key_arn #=> String
    #   resp.conversation_log_settings.audio_log_settings[0].destination.s3_bucket.s3_bucket_arn #=> String
    #   resp.conversation_log_settings.audio_log_settings[0].destination.s3_bucket.log_prefix #=> String
    #   resp.sentiment_analysis_settings.detect_sentiment #=> Boolean
    #   resp.bot_alias_history_events #=> Array
    #   resp.bot_alias_history_events[0].bot_version #=> String
    #   resp.bot_alias_history_events[0].start_date #=> Time
    #   resp.bot_alias_history_events[0].end_date #=> Time
    #   resp.bot_alias_status #=> String, one of "Creating", "Available", "Deleting", "Failed"
    #   resp.bot_id #=> String
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeBotAlias AWS API Documentation
    #
    # @overload describe_bot_alias(params = {})
    # @param [Hash] params ({})
    def describe_bot_alias(params = {}, options = {})
      req = build_request(:describe_bot_alias, params)
      req.send_request(options)
    end

    # Describes the settings that a bot has for a specific locale.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot associated with the locale.
    #
    # @option params [required, String] :bot_version
    #   The identifier of the version of the bot associated with the locale.
    #
    # @option params [required, String] :locale_id
    #   The unique identifier of the locale to describe. The string must match
    #   one of the supported locales. For more information, see
    #   [https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html
    #
    # @return [Types::DescribeBotLocaleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBotLocaleResponse#bot_id #bot_id} => String
    #   * {Types::DescribeBotLocaleResponse#bot_version #bot_version} => String
    #   * {Types::DescribeBotLocaleResponse#locale_id #locale_id} => String
    #   * {Types::DescribeBotLocaleResponse#locale_name #locale_name} => String
    #   * {Types::DescribeBotLocaleResponse#description #description} => String
    #   * {Types::DescribeBotLocaleResponse#nlu_intent_confidence_threshold #nlu_intent_confidence_threshold} => Float
    #   * {Types::DescribeBotLocaleResponse#voice_settings #voice_settings} => Types::VoiceSettings
    #   * {Types::DescribeBotLocaleResponse#intents_count #intents_count} => Integer
    #   * {Types::DescribeBotLocaleResponse#slot_types_count #slot_types_count} => Integer
    #   * {Types::DescribeBotLocaleResponse#bot_locale_status #bot_locale_status} => String
    #   * {Types::DescribeBotLocaleResponse#failure_reasons #failure_reasons} => Array&lt;String&gt;
    #   * {Types::DescribeBotLocaleResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::DescribeBotLocaleResponse#last_updated_date_time #last_updated_date_time} => Time
    #   * {Types::DescribeBotLocaleResponse#last_build_submitted_date_time #last_build_submitted_date_time} => Time
    #   * {Types::DescribeBotLocaleResponse#bot_locale_history_events #bot_locale_history_events} => Array&lt;Types::BotLocaleHistoryEvent&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_bot_locale({
    #     bot_id: "Id", # required
    #     bot_version: "BotVersion", # required
    #     locale_id: "LocaleId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.locale_name #=> String
    #   resp.description #=> String
    #   resp.nlu_intent_confidence_threshold #=> Float
    #   resp.voice_settings.voice_id #=> String
    #   resp.intents_count #=> Integer
    #   resp.slot_types_count #=> Integer
    #   resp.bot_locale_status #=> String, one of "Creating", "Building", "Built", "ReadyExpressTesting", "Failed", "Deleting", "NotBuilt"
    #   resp.failure_reasons #=> Array
    #   resp.failure_reasons[0] #=> String
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #   resp.last_build_submitted_date_time #=> Time
    #   resp.bot_locale_history_events #=> Array
    #   resp.bot_locale_history_events[0].event #=> String
    #   resp.bot_locale_history_events[0].event_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeBotLocale AWS API Documentation
    #
    # @overload describe_bot_locale(params = {})
    # @param [Hash] params ({})
    def describe_bot_locale(params = {}, options = {})
      req = build_request(:describe_bot_locale, params)
      req.send_request(options)
    end

    # Provides metadata about a version of a bot.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot containing the version to return metadata
    #   for.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot to return metadata for.
    #
    # @return [Types::DescribeBotVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBotVersionResponse#bot_id #bot_id} => String
    #   * {Types::DescribeBotVersionResponse#bot_name #bot_name} => String
    #   * {Types::DescribeBotVersionResponse#bot_version #bot_version} => String
    #   * {Types::DescribeBotVersionResponse#description #description} => String
    #   * {Types::DescribeBotVersionResponse#role_arn #role_arn} => String
    #   * {Types::DescribeBotVersionResponse#data_privacy #data_privacy} => Types::DataPrivacy
    #   * {Types::DescribeBotVersionResponse#idle_session_ttl_in_seconds #idle_session_ttl_in_seconds} => Integer
    #   * {Types::DescribeBotVersionResponse#bot_status #bot_status} => String
    #   * {Types::DescribeBotVersionResponse#failure_reasons #failure_reasons} => Array&lt;String&gt;
    #   * {Types::DescribeBotVersionResponse#creation_date_time #creation_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_bot_version({
    #     bot_id: "Id", # required
    #     bot_version: "NumericalBotVersion", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_name #=> String
    #   resp.bot_version #=> String
    #   resp.description #=> String
    #   resp.role_arn #=> String
    #   resp.data_privacy.child_directed #=> Boolean
    #   resp.idle_session_ttl_in_seconds #=> Integer
    #   resp.bot_status #=> String, one of "Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning"
    #   resp.failure_reasons #=> Array
    #   resp.failure_reasons[0] #=> String
    #   resp.creation_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeBotVersion AWS API Documentation
    #
    # @overload describe_bot_version(params = {})
    # @param [Hash] params ({})
    def describe_bot_version(params = {}, options = {})
      req = build_request(:describe_bot_version, params)
      req.send_request(options)
    end

    # Returns metadata about an intent.
    #
    # @option params [required, String] :intent_id
    #   The identifier of the intent to describe.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot associated with the intent.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot associated with the intent.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale of the intent to describe.
    #   The string must match one of the supported locales. For more
    #   information, see
    #   [https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html
    #
    # @return [Types::DescribeIntentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeIntentResponse#intent_id #intent_id} => String
    #   * {Types::DescribeIntentResponse#intent_name #intent_name} => String
    #   * {Types::DescribeIntentResponse#description #description} => String
    #   * {Types::DescribeIntentResponse#parent_intent_signature #parent_intent_signature} => String
    #   * {Types::DescribeIntentResponse#sample_utterances #sample_utterances} => Array&lt;Types::SampleUtterance&gt;
    #   * {Types::DescribeIntentResponse#dialog_code_hook #dialog_code_hook} => Types::DialogCodeHookSettings
    #   * {Types::DescribeIntentResponse#fulfillment_code_hook #fulfillment_code_hook} => Types::FulfillmentCodeHookSettings
    #   * {Types::DescribeIntentResponse#slot_priorities #slot_priorities} => Array&lt;Types::SlotPriority&gt;
    #   * {Types::DescribeIntentResponse#intent_confirmation_setting #intent_confirmation_setting} => Types::IntentConfirmationSetting
    #   * {Types::DescribeIntentResponse#intent_closing_setting #intent_closing_setting} => Types::IntentClosingSetting
    #   * {Types::DescribeIntentResponse#input_contexts #input_contexts} => Array&lt;Types::InputContext&gt;
    #   * {Types::DescribeIntentResponse#output_contexts #output_contexts} => Array&lt;Types::OutputContext&gt;
    #   * {Types::DescribeIntentResponse#kendra_configuration #kendra_configuration} => Types::KendraConfiguration
    #   * {Types::DescribeIntentResponse#bot_id #bot_id} => String
    #   * {Types::DescribeIntentResponse#bot_version #bot_version} => String
    #   * {Types::DescribeIntentResponse#locale_id #locale_id} => String
    #   * {Types::DescribeIntentResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::DescribeIntentResponse#last_updated_date_time #last_updated_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_intent({
    #     intent_id: "Id", # required
    #     bot_id: "Id", # required
    #     bot_version: "BotVersion", # required
    #     locale_id: "LocaleId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.intent_id #=> String
    #   resp.intent_name #=> String
    #   resp.description #=> String
    #   resp.parent_intent_signature #=> String
    #   resp.sample_utterances #=> Array
    #   resp.sample_utterances[0].utterance #=> String
    #   resp.dialog_code_hook.enabled #=> Boolean
    #   resp.fulfillment_code_hook.enabled #=> Boolean
    #   resp.slot_priorities #=> Array
    #   resp.slot_priorities[0].priority #=> Integer
    #   resp.slot_priorities[0].slot_id #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups #=> Array
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].message.plain_text_message.value #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].message.custom_payload.value #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].message.ssml_message.value #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].message.image_response_card.title #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations #=> Array
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.intent_confirmation_setting.prompt_specification.max_retries #=> Integer
    #   resp.intent_confirmation_setting.prompt_specification.allow_interrupt #=> Boolean
    #   resp.intent_confirmation_setting.declination_response.message_groups #=> Array
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations #=> Array
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.intent_confirmation_setting.declination_response.allow_interrupt #=> Boolean
    #   resp.intent_closing_setting.closing_response.message_groups #=> Array
    #   resp.intent_closing_setting.closing_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.intent_closing_setting.closing_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations #=> Array
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.intent_closing_setting.closing_response.allow_interrupt #=> Boolean
    #   resp.input_contexts #=> Array
    #   resp.input_contexts[0].name #=> String
    #   resp.output_contexts #=> Array
    #   resp.output_contexts[0].name #=> String
    #   resp.output_contexts[0].time_to_live_in_seconds #=> Integer
    #   resp.output_contexts[0].turns_to_live #=> Integer
    #   resp.kendra_configuration.kendra_index #=> String
    #   resp.kendra_configuration.query_filter_string_enabled #=> Boolean
    #   resp.kendra_configuration.query_filter_string #=> String
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeIntent AWS API Documentation
    #
    # @overload describe_intent(params = {})
    # @param [Hash] params ({})
    def describe_intent(params = {}, options = {})
      req = build_request(:describe_intent, params)
      req.send_request(options)
    end

    # Gets metadata information about a slot.
    #
    # @option params [required, String] :slot_id
    #   The unique identifier for the slot.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot associated with the slot.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot associated with the slot.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale of the slot to describe. The
    #   string must match one of the supported locales. For more information,
    #   see
    #   [https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html
    #
    # @option params [required, String] :intent_id
    #   The identifier of the intent that contains the slot.
    #
    # @return [Types::DescribeSlotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSlotResponse#slot_id #slot_id} => String
    #   * {Types::DescribeSlotResponse#slot_name #slot_name} => String
    #   * {Types::DescribeSlotResponse#description #description} => String
    #   * {Types::DescribeSlotResponse#slot_type_id #slot_type_id} => String
    #   * {Types::DescribeSlotResponse#value_elicitation_setting #value_elicitation_setting} => Types::SlotValueElicitationSetting
    #   * {Types::DescribeSlotResponse#obfuscation_setting #obfuscation_setting} => Types::ObfuscationSetting
    #   * {Types::DescribeSlotResponse#bot_id #bot_id} => String
    #   * {Types::DescribeSlotResponse#bot_version #bot_version} => String
    #   * {Types::DescribeSlotResponse#locale_id #locale_id} => String
    #   * {Types::DescribeSlotResponse#intent_id #intent_id} => String
    #   * {Types::DescribeSlotResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::DescribeSlotResponse#last_updated_date_time #last_updated_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_slot({
    #     slot_id: "Id", # required
    #     bot_id: "Id", # required
    #     bot_version: "BotVersion", # required
    #     locale_id: "LocaleId", # required
    #     intent_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.slot_id #=> String
    #   resp.slot_name #=> String
    #   resp.description #=> String
    #   resp.slot_type_id #=> String
    #   resp.value_elicitation_setting.default_value_specification.default_value_list #=> Array
    #   resp.value_elicitation_setting.default_value_specification.default_value_list[0].default_value #=> String
    #   resp.value_elicitation_setting.slot_constraint #=> String, one of "Required", "Optional"
    #   resp.value_elicitation_setting.prompt_specification.message_groups #=> Array
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.prompt_specification.max_retries #=> Integer
    #   resp.value_elicitation_setting.prompt_specification.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.sample_utterances #=> Array
    #   resp.value_elicitation_setting.sample_utterances[0].utterance #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.frequency_in_seconds #=> Integer
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.timeout_in_seconds #=> Integer
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.allow_interrupt #=> Boolean
    #   resp.obfuscation_setting.obfuscation_setting_type #=> String, one of "None", "DefaultObfuscation"
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.intent_id #=> String
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeSlot AWS API Documentation
    #
    # @overload describe_slot(params = {})
    # @param [Hash] params ({})
    def describe_slot(params = {}, options = {})
      req = build_request(:describe_slot, params)
      req.send_request(options)
    end

    # Gets metadata information about a slot type.
    #
    # @option params [required, String] :slot_type_id
    #   The identifier of the slot type.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot associated with the slot type.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot associated with the slot type.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale of the slot type to
    #   describe. The string must match one of the supported locales. For more
    #   information, see
    #   [https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html
    #
    # @return [Types::DescribeSlotTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSlotTypeResponse#slot_type_id #slot_type_id} => String
    #   * {Types::DescribeSlotTypeResponse#slot_type_name #slot_type_name} => String
    #   * {Types::DescribeSlotTypeResponse#description #description} => String
    #   * {Types::DescribeSlotTypeResponse#slot_type_values #slot_type_values} => Array&lt;Types::SlotTypeValue&gt;
    #   * {Types::DescribeSlotTypeResponse#value_selection_setting #value_selection_setting} => Types::SlotValueSelectionSetting
    #   * {Types::DescribeSlotTypeResponse#parent_slot_type_signature #parent_slot_type_signature} => String
    #   * {Types::DescribeSlotTypeResponse#bot_id #bot_id} => String
    #   * {Types::DescribeSlotTypeResponse#bot_version #bot_version} => String
    #   * {Types::DescribeSlotTypeResponse#locale_id #locale_id} => String
    #   * {Types::DescribeSlotTypeResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::DescribeSlotTypeResponse#last_updated_date_time #last_updated_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_slot_type({
    #     slot_type_id: "Id", # required
    #     bot_id: "Id", # required
    #     bot_version: "BotVersion", # required
    #     locale_id: "LocaleId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.slot_type_id #=> String
    #   resp.slot_type_name #=> String
    #   resp.description #=> String
    #   resp.slot_type_values #=> Array
    #   resp.slot_type_values[0].sample_value.value #=> String
    #   resp.slot_type_values[0].synonyms #=> Array
    #   resp.slot_type_values[0].synonyms[0].value #=> String
    #   resp.value_selection_setting.resolution_strategy #=> String, one of "OriginalValue", "TopResolution"
    #   resp.value_selection_setting.regex_filter.pattern #=> String
    #   resp.parent_slot_type_signature #=> String
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeSlotType AWS API Documentation
    #
    # @overload describe_slot_type(params = {})
    # @param [Hash] params ({})
    def describe_slot_type(params = {}, options = {})
      req = build_request(:describe_slot_type, params)
      req.send_request(options)
    end

    # Gets a list of aliases for the specified bot.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot to list aliases for.
    #
    # @option params [Integer] :max_results
    #   The maximum number of aliases to return in each page of results. If
    #   there are fewer results than the max page size, only the actual number
    #   of results are returned.
    #
    # @option params [String] :next_token
    #   If the response from the `ListBotAliases` operation contains more
    #   results than specified in the `maxResults` parameter, a token is
    #   returned in the response. Use that token in the `nextToken` parameter
    #   to return the next page of results.
    #
    # @return [Types::ListBotAliasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBotAliasesResponse#bot_alias_summaries #bot_alias_summaries} => Array&lt;Types::BotAliasSummary&gt;
    #   * {Types::ListBotAliasesResponse#next_token #next_token} => String
    #   * {Types::ListBotAliasesResponse#bot_id #bot_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bot_aliases({
    #     bot_id: "Id", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_alias_summaries #=> Array
    #   resp.bot_alias_summaries[0].bot_alias_id #=> String
    #   resp.bot_alias_summaries[0].bot_alias_name #=> String
    #   resp.bot_alias_summaries[0].description #=> String
    #   resp.bot_alias_summaries[0].bot_version #=> String
    #   resp.bot_alias_summaries[0].bot_alias_status #=> String, one of "Creating", "Available", "Deleting", "Failed"
    #   resp.bot_alias_summaries[0].creation_date_time #=> Time
    #   resp.bot_alias_summaries[0].last_updated_date_time #=> Time
    #   resp.next_token #=> String
    #   resp.bot_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListBotAliases AWS API Documentation
    #
    # @overload list_bot_aliases(params = {})
    # @param [Hash] params ({})
    def list_bot_aliases(params = {}, options = {})
      req = build_request(:list_bot_aliases, params)
      req.send_request(options)
    end

    # Gets a list of locales for the specified bot.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot to list locales for.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot to list locales for.
    #
    # @option params [Types::BotLocaleSortBy] :sort_by
    #   Specifies sorting parameters for the list of locales. You can sort by
    #   locale name in ascending or descending order.
    #
    # @option params [Array<Types::BotLocaleFilter>] :filters
    #   Provides the specification for a filter used to limit the response to
    #   only those locales that match the filter specification. You can only
    #   specify one filter and one value to filter on.
    #
    # @option params [Integer] :max_results
    #   The maximum number of aliases to return in each page of results. If
    #   there are fewer results than the max page size, only the actual number
    #   of results are returned.
    #
    # @option params [String] :next_token
    #   If the response from the `ListBotLocales` operation contains more
    #   results than specified in the `maxResults` parameter, a token is
    #   returned in the response. Use that token as the `nextToken` parameter
    #   to return the next page of results.
    #
    # @return [Types::ListBotLocalesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBotLocalesResponse#bot_id #bot_id} => String
    #   * {Types::ListBotLocalesResponse#bot_version #bot_version} => String
    #   * {Types::ListBotLocalesResponse#next_token #next_token} => String
    #   * {Types::ListBotLocalesResponse#bot_locale_summaries #bot_locale_summaries} => Array&lt;Types::BotLocaleSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bot_locales({
    #     bot_id: "Id", # required
    #     bot_version: "BotVersion", # required
    #     sort_by: {
    #       attribute: "BotLocaleName", # required, accepts BotLocaleName
    #       order: "Ascending", # required, accepts Ascending, Descending
    #     },
    #     filters: [
    #       {
    #         name: "BotLocaleName", # required, accepts BotLocaleName
    #         values: ["FilterValue"], # required
    #         operator: "CO", # required, accepts CO, EQ
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.next_token #=> String
    #   resp.bot_locale_summaries #=> Array
    #   resp.bot_locale_summaries[0].locale_id #=> String
    #   resp.bot_locale_summaries[0].locale_name #=> String
    #   resp.bot_locale_summaries[0].description #=> String
    #   resp.bot_locale_summaries[0].bot_locale_status #=> String, one of "Creating", "Building", "Built", "ReadyExpressTesting", "Failed", "Deleting", "NotBuilt"
    #   resp.bot_locale_summaries[0].last_updated_date_time #=> Time
    #   resp.bot_locale_summaries[0].last_build_submitted_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListBotLocales AWS API Documentation
    #
    # @overload list_bot_locales(params = {})
    # @param [Hash] params ({})
    def list_bot_locales(params = {}, options = {})
      req = build_request(:list_bot_locales, params)
      req.send_request(options)
    end

    # Gets information about all of the versions of a bot.
    #
    # The `ListBotVersions` operation returns a summary of each version of a
    # bot. For example, if a bot has three numbered versions, the
    # `ListBotVersions` operation returns for summaries, one for each
    # numbered version and one for the `DRAFT` version.
    #
    # The `ListBotVersions` operation always returns at least one version,
    # the `DRAFT` version.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot to list versions for.
    #
    # @option params [Types::BotVersionSortBy] :sort_by
    #   Specifies sorting parameters for the list of versions. You can specify
    #   that the list be sorted by version name in either ascending or
    #   descending order.
    #
    # @option params [Integer] :max_results
    #   The maximum number of versions to return in each page of results. If
    #   there are fewer results than the max page size, only the actual number
    #   of results are returned.
    #
    # @option params [String] :next_token
    #   If the response to the `ListBotVersion` operation contains more
    #   results than specified in the `maxResults` parameter, a token is
    #   returned in the response. Use that token in the `nextToken` parameter
    #   to return the next page of results.
    #
    # @return [Types::ListBotVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBotVersionsResponse#bot_id #bot_id} => String
    #   * {Types::ListBotVersionsResponse#bot_version_summaries #bot_version_summaries} => Array&lt;Types::BotVersionSummary&gt;
    #   * {Types::ListBotVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bot_versions({
    #     bot_id: "Id", # required
    #     sort_by: {
    #       attribute: "BotVersion", # required, accepts BotVersion
    #       order: "Ascending", # required, accepts Ascending, Descending
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_version_summaries #=> Array
    #   resp.bot_version_summaries[0].bot_name #=> String
    #   resp.bot_version_summaries[0].bot_version #=> String
    #   resp.bot_version_summaries[0].description #=> String
    #   resp.bot_version_summaries[0].bot_status #=> String, one of "Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning"
    #   resp.bot_version_summaries[0].creation_date_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListBotVersions AWS API Documentation
    #
    # @overload list_bot_versions(params = {})
    # @param [Hash] params ({})
    def list_bot_versions(params = {}, options = {})
      req = build_request(:list_bot_versions, params)
      req.send_request(options)
    end

    # Gets a list of available bots.
    #
    # @option params [Types::BotSortBy] :sort_by
    #   Specifies sorting parameters for the list of bots. You can specify
    #   that the list be sorted by bot name in ascending or descending order.
    #
    # @option params [Array<Types::BotFilter>] :filters
    #   Provides the specification of a filter used to limit the bots in the
    #   response to only those that match the filter specification. You can
    #   only specify one filter and one string to filter on.
    #
    # @option params [Integer] :max_results
    #   The maximum number of bots to return in each page of results. If there
    #   are fewer results than the maximum page size, only the actual number
    #   of results are returned.
    #
    # @option params [String] :next_token
    #   If the response from the `ListBots` operation contains more results
    #   than specified in the `maxResults` parameter, a token is returned in
    #   the response. Use that token in the `nextToken` parameter to return
    #   the next page of results.
    #
    # @return [Types::ListBotsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBotsResponse#bot_summaries #bot_summaries} => Array&lt;Types::BotSummary&gt;
    #   * {Types::ListBotsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bots({
    #     sort_by: {
    #       attribute: "BotName", # required, accepts BotName
    #       order: "Ascending", # required, accepts Ascending, Descending
    #     },
    #     filters: [
    #       {
    #         name: "BotName", # required, accepts BotName
    #         values: ["FilterValue"], # required
    #         operator: "CO", # required, accepts CO, EQ
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_summaries #=> Array
    #   resp.bot_summaries[0].bot_id #=> String
    #   resp.bot_summaries[0].bot_name #=> String
    #   resp.bot_summaries[0].description #=> String
    #   resp.bot_summaries[0].bot_status #=> String, one of "Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning"
    #   resp.bot_summaries[0].latest_bot_version #=> String
    #   resp.bot_summaries[0].last_updated_date_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListBots AWS API Documentation
    #
    # @overload list_bots(params = {})
    # @param [Hash] params ({})
    def list_bots(params = {}, options = {})
      req = build_request(:list_bots, params)
      req.send_request(options)
    end

    # Gets a list of built-in intents provided by Amazon Lex that you can
    # use in your bot.
    #
    # To use a built-in intent as a the base for your own intent, include
    # the built-in intent signature in the `parentIntentSignature` parameter
    # when you call the `CreateIntent` operation. For more information, see
    # CreateIntent.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale of the intents to list. The
    #   string must match one of the supported locales. For more information,
    #   see
    #   [https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html
    #
    # @option params [Types::BuiltInIntentSortBy] :sort_by
    #   Specifies sorting parameters for the list of built-in intents. You can
    #   specify that the list be sorted by the built-in intent signature in
    #   either ascending or descending order.
    #
    # @option params [Integer] :max_results
    #   The maximum number of built-in intents to return in each page of
    #   results. If there are fewer results than the max page size, only the
    #   actual number of results are returned.
    #
    # @option params [String] :next_token
    #   If the response from the `ListBuiltInIntents` operation contains more
    #   results than specified in the `maxResults` parameter, a token is
    #   returned in the response. Use that token in the `nextToken` parameter
    #   to return the next page of results.
    #
    # @return [Types::ListBuiltInIntentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBuiltInIntentsResponse#built_in_intent_summaries #built_in_intent_summaries} => Array&lt;Types::BuiltInIntentSummary&gt;
    #   * {Types::ListBuiltInIntentsResponse#next_token #next_token} => String
    #   * {Types::ListBuiltInIntentsResponse#locale_id #locale_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_built_in_intents({
    #     locale_id: "LocaleId", # required
    #     sort_by: {
    #       attribute: "IntentSignature", # required, accepts IntentSignature
    #       order: "Ascending", # required, accepts Ascending, Descending
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.built_in_intent_summaries #=> Array
    #   resp.built_in_intent_summaries[0].intent_signature #=> String
    #   resp.built_in_intent_summaries[0].description #=> String
    #   resp.next_token #=> String
    #   resp.locale_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListBuiltInIntents AWS API Documentation
    #
    # @overload list_built_in_intents(params = {})
    # @param [Hash] params ({})
    def list_built_in_intents(params = {}, options = {})
      req = build_request(:list_built_in_intents, params)
      req.send_request(options)
    end

    # Gets a list of built-in slot types that meet the specified criteria.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale of the slot types to list.
    #   The string must match one of the supported locales. For more
    #   information, see
    #   [https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html
    #
    # @option params [Types::BuiltInSlotTypeSortBy] :sort_by
    #   Determines the sort order for the response from the
    #   `ListBuiltInSlotTypes` operation. You can choose to sort by the slot
    #   type signature in either ascending or descending order.
    #
    # @option params [Integer] :max_results
    #   The maximum number of built-in slot types to return in each page of
    #   results. If there are fewer results than the max page size, only the
    #   actual number of results are returned.
    #
    # @option params [String] :next_token
    #   If the response from the `ListBuiltInSlotTypes` operation contains
    #   more results than specified in the `maxResults` parameter, a token is
    #   returned in the response. Use that token in the `nextToken` parameter
    #   to return the next page of results.
    #
    # @return [Types::ListBuiltInSlotTypesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBuiltInSlotTypesResponse#built_in_slot_type_summaries #built_in_slot_type_summaries} => Array&lt;Types::BuiltInSlotTypeSummary&gt;
    #   * {Types::ListBuiltInSlotTypesResponse#next_token #next_token} => String
    #   * {Types::ListBuiltInSlotTypesResponse#locale_id #locale_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_built_in_slot_types({
    #     locale_id: "LocaleId", # required
    #     sort_by: {
    #       attribute: "SlotTypeSignature", # required, accepts SlotTypeSignature
    #       order: "Ascending", # required, accepts Ascending, Descending
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.built_in_slot_type_summaries #=> Array
    #   resp.built_in_slot_type_summaries[0].slot_type_signature #=> String
    #   resp.built_in_slot_type_summaries[0].description #=> String
    #   resp.next_token #=> String
    #   resp.locale_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListBuiltInSlotTypes AWS API Documentation
    #
    # @overload list_built_in_slot_types(params = {})
    # @param [Hash] params ({})
    def list_built_in_slot_types(params = {}, options = {})
      req = build_request(:list_built_in_slot_types, params)
      req.send_request(options)
    end

    # Get a list of intents that meet the specified criteria.
    #
    # @option params [required, String] :bot_id
    #   The unique identifier of the bot that contains the intent.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot that contains the intent.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale of the intents to list. The
    #   string must match one of the supported locales. For more information,
    #   see
    #   [https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html
    #
    # @option params [Types::IntentSortBy] :sort_by
    #   Determines the sort order for the response from the `ListIntents`
    #   operation. You can choose to sort by the intent name or last updated
    #   date in either ascending or descending order.
    #
    # @option params [Array<Types::IntentFilter>] :filters
    #   Provides the specification of a filter used to limit the intents in
    #   the response to only those that match the filter specification. You
    #   can only specify one filter and only one string to filter on.
    #
    # @option params [Integer] :max_results
    #   The maximum number of intents to return in each page of results. If
    #   there are fewer results than the max page size, only the actual number
    #   of results are returned.
    #
    # @option params [String] :next_token
    #   If the response from the `ListIntents` operation contains more results
    #   than specified in the `maxResults` parameter, a token is returned in
    #   the response. Use that token in the `nextToken` parameter to return
    #   the next page of results.
    #
    # @return [Types::ListIntentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIntentsResponse#bot_id #bot_id} => String
    #   * {Types::ListIntentsResponse#bot_version #bot_version} => String
    #   * {Types::ListIntentsResponse#locale_id #locale_id} => String
    #   * {Types::ListIntentsResponse#intent_summaries #intent_summaries} => Array&lt;Types::IntentSummary&gt;
    #   * {Types::ListIntentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_intents({
    #     bot_id: "Id", # required
    #     bot_version: "BotVersion", # required
    #     locale_id: "LocaleId", # required
    #     sort_by: {
    #       attribute: "IntentName", # required, accepts IntentName, LastUpdatedDateTime
    #       order: "Ascending", # required, accepts Ascending, Descending
    #     },
    #     filters: [
    #       {
    #         name: "IntentName", # required, accepts IntentName
    #         values: ["FilterValue"], # required
    #         operator: "CO", # required, accepts CO, EQ
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.intent_summaries #=> Array
    #   resp.intent_summaries[0].intent_id #=> String
    #   resp.intent_summaries[0].intent_name #=> String
    #   resp.intent_summaries[0].description #=> String
    #   resp.intent_summaries[0].parent_intent_signature #=> String
    #   resp.intent_summaries[0].input_contexts #=> Array
    #   resp.intent_summaries[0].input_contexts[0].name #=> String
    #   resp.intent_summaries[0].output_contexts #=> Array
    #   resp.intent_summaries[0].output_contexts[0].name #=> String
    #   resp.intent_summaries[0].output_contexts[0].time_to_live_in_seconds #=> Integer
    #   resp.intent_summaries[0].output_contexts[0].turns_to_live #=> Integer
    #   resp.intent_summaries[0].last_updated_date_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListIntents AWS API Documentation
    #
    # @overload list_intents(params = {})
    # @param [Hash] params ({})
    def list_intents(params = {}, options = {})
      req = build_request(:list_intents, params)
      req.send_request(options)
    end

    # Gets a list of slot types that match the specified criteria.
    #
    # @option params [required, String] :bot_id
    #   The unique identifier of the bot that contains the slot types.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot that contains the slot type.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale of the slot types to list.
    #   The string must match one of the supported locales. For more
    #   information, see
    #   [https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html
    #
    # @option params [Types::SlotTypeSortBy] :sort_by
    #   Determines the sort order for the response from the `ListSlotTypes`
    #   operation. You can choose to sort by the slot type name or last
    #   updated date in either ascending or descending order.
    #
    # @option params [Array<Types::SlotTypeFilter>] :filters
    #   Provides the specification of a filter used to limit the slot types in
    #   the response to only those that match the filter specification. You
    #   can only specify one filter and only one string to filter on.
    #
    # @option params [Integer] :max_results
    #   The maximum number of slot types to return in each page of results. If
    #   there are fewer results than the max page size, only the actual number
    #   of results are returned.
    #
    # @option params [String] :next_token
    #   If the response from the `ListSlotTypes` operation contains more
    #   results than specified in the `maxResults` parameter, a token is
    #   returned in the response. Use that token in the `nextToken` parameter
    #   to return the next page of results.
    #
    # @return [Types::ListSlotTypesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSlotTypesResponse#bot_id #bot_id} => String
    #   * {Types::ListSlotTypesResponse#bot_version #bot_version} => String
    #   * {Types::ListSlotTypesResponse#locale_id #locale_id} => String
    #   * {Types::ListSlotTypesResponse#slot_type_summaries #slot_type_summaries} => Array&lt;Types::SlotTypeSummary&gt;
    #   * {Types::ListSlotTypesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_slot_types({
    #     bot_id: "Id", # required
    #     bot_version: "BotVersion", # required
    #     locale_id: "LocaleId", # required
    #     sort_by: {
    #       attribute: "SlotTypeName", # required, accepts SlotTypeName, LastUpdatedDateTime
    #       order: "Ascending", # required, accepts Ascending, Descending
    #     },
    #     filters: [
    #       {
    #         name: "SlotTypeName", # required, accepts SlotTypeName
    #         values: ["FilterValue"], # required
    #         operator: "CO", # required, accepts CO, EQ
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.slot_type_summaries #=> Array
    #   resp.slot_type_summaries[0].slot_type_id #=> String
    #   resp.slot_type_summaries[0].slot_type_name #=> String
    #   resp.slot_type_summaries[0].description #=> String
    #   resp.slot_type_summaries[0].parent_slot_type_signature #=> String
    #   resp.slot_type_summaries[0].last_updated_date_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListSlotTypes AWS API Documentation
    #
    # @overload list_slot_types(params = {})
    # @param [Hash] params ({})
    def list_slot_types(params = {}, options = {})
      req = build_request(:list_slot_types, params)
      req.send_request(options)
    end

    # Gets a list of slots that match the specified criteria.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot that contains the slot.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot that contains the slot.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale of the slots to list. The
    #   string must match one of the supported locales. For more information,
    #   see
    #   [https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html
    #
    # @option params [required, String] :intent_id
    #   The unique identifier of the intent that contains the slot.
    #
    # @option params [Types::SlotSortBy] :sort_by
    #   Determines the sort order for the response from the `ListSlots`
    #   operation. You can choose to sort by the slot name or last updated
    #   date in either ascending or descending order.
    #
    # @option params [Array<Types::SlotFilter>] :filters
    #   Provides the specification of a filter used to limit the slots in the
    #   response to only those that match the filter specification. You can
    #   only specify one filter and only one string to filter on.
    #
    # @option params [Integer] :max_results
    #   The maximum number of slots to return in each page of results. If
    #   there are fewer results than the max page size, only the actual number
    #   of results are returned.
    #
    # @option params [String] :next_token
    #   If the response from the `ListSlots` operation contains more results
    #   than specified in the `maxResults` parameter, a token is returned in
    #   the response. Use that token in the `nextToken` parameter to return
    #   the next page of results.
    #
    # @return [Types::ListSlotsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSlotsResponse#bot_id #bot_id} => String
    #   * {Types::ListSlotsResponse#bot_version #bot_version} => String
    #   * {Types::ListSlotsResponse#locale_id #locale_id} => String
    #   * {Types::ListSlotsResponse#intent_id #intent_id} => String
    #   * {Types::ListSlotsResponse#slot_summaries #slot_summaries} => Array&lt;Types::SlotSummary&gt;
    #   * {Types::ListSlotsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_slots({
    #     bot_id: "Id", # required
    #     bot_version: "BotVersion", # required
    #     locale_id: "LocaleId", # required
    #     intent_id: "Id", # required
    #     sort_by: {
    #       attribute: "SlotName", # required, accepts SlotName, LastUpdatedDateTime
    #       order: "Ascending", # required, accepts Ascending, Descending
    #     },
    #     filters: [
    #       {
    #         name: "SlotName", # required, accepts SlotName
    #         values: ["FilterValue"], # required
    #         operator: "CO", # required, accepts CO, EQ
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.intent_id #=> String
    #   resp.slot_summaries #=> Array
    #   resp.slot_summaries[0].slot_id #=> String
    #   resp.slot_summaries[0].slot_name #=> String
    #   resp.slot_summaries[0].description #=> String
    #   resp.slot_summaries[0].slot_constraint #=> String, one of "Required", "Optional"
    #   resp.slot_summaries[0].slot_type_id #=> String
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.message_groups #=> Array
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].message.plain_text_message.value #=> String
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].message.custom_payload.value #=> String
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].message.ssml_message.value #=> String
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].message.image_response_card.title #=> String
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].variations #=> Array
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.max_retries #=> Integer
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.allow_interrupt #=> Boolean
    #   resp.slot_summaries[0].last_updated_date_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListSlots AWS API Documentation
    #
    # @overload list_slots(params = {})
    # @param [Hash] params ({})
    def list_slots(params = {}, options = {})
      req = build_request(:list_slots, params)
      req.send_request(options)
    end

    # Gets a list of tags associated with a resource. Only bots, bot
    # aliases, and bot channels can have tags associated with them.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to get a list of tags
    #   for.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Adds the specified tags to the specified resource. If a tag key
    # already exists, the existing value is replaced with the new value.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the bot, bot alias, or bot channel
    #   to tag.
    #
    # @option params [required, Hash<String,String>] :tags
    #   A list of tag keys to add to the resource. If a tag key already
    #   exists, the existing value is replaced with the new value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from a bot, bot alias, or bot channel.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove the tags
    #   from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys to remove from the resource. If a tag key does not
    #   exist on the resource, it is ignored.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the configuration of an existing bot.
    #
    # @option params [required, String] :bot_id
    #   The unique identifier of the bot to update. This identifier is
    #   returned by the CreateBot operation.
    #
    # @option params [required, String] :bot_name
    #   The new name of the bot. The name must be unique in the account that
    #   creates the bot.
    #
    # @option params [String] :description
    #   A description of the bot.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that has permissions to
    #   access the bot.
    #
    # @option params [required, Types::DataPrivacy] :data_privacy
    #   Provides information on additional privacy protections Amazon Lex
    #   should use with the bot's data.
    #
    # @option params [required, Integer] :idle_session_ttl_in_seconds
    #   The time, in seconds, that Amazon Lex should keep information about a
    #   user's conversation with the bot.
    #
    #   A user interaction remains active for the amount of time specified. If
    #   no conversation occurs during this time, the session expires and
    #   Amazon Lex deletes any data provided before the timeout.
    #
    #   You can specify between 60 (1 minute) and 86,400 (24 hours) seconds.
    #
    # @return [Types::UpdateBotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBotResponse#bot_id #bot_id} => String
    #   * {Types::UpdateBotResponse#bot_name #bot_name} => String
    #   * {Types::UpdateBotResponse#description #description} => String
    #   * {Types::UpdateBotResponse#role_arn #role_arn} => String
    #   * {Types::UpdateBotResponse#data_privacy #data_privacy} => Types::DataPrivacy
    #   * {Types::UpdateBotResponse#idle_session_ttl_in_seconds #idle_session_ttl_in_seconds} => Integer
    #   * {Types::UpdateBotResponse#bot_status #bot_status} => String
    #   * {Types::UpdateBotResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::UpdateBotResponse#last_updated_date_time #last_updated_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_bot({
    #     bot_id: "Id", # required
    #     bot_name: "Name", # required
    #     description: "Description",
    #     role_arn: "RoleArn", # required
    #     data_privacy: { # required
    #       child_directed: false, # required
    #     },
    #     idle_session_ttl_in_seconds: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_name #=> String
    #   resp.description #=> String
    #   resp.role_arn #=> String
    #   resp.data_privacy.child_directed #=> Boolean
    #   resp.idle_session_ttl_in_seconds #=> Integer
    #   resp.bot_status #=> String, one of "Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning"
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateBot AWS API Documentation
    #
    # @overload update_bot(params = {})
    # @param [Hash] params ({})
    def update_bot(params = {}, options = {})
      req = build_request(:update_bot, params)
      req.send_request(options)
    end

    # Updates the configuration of an existing bot alias.
    #
    # @option params [required, String] :bot_alias_id
    #   The unique identifier of the bot alias.
    #
    # @option params [required, String] :bot_alias_name
    #   The new name to assign to the bot alias.
    #
    # @option params [String] :description
    #   The new description to assign to the bot alias.
    #
    # @option params [String] :bot_version
    #   The new bot version to assign to the bot alias.
    #
    # @option params [Hash<String,Types::BotAliasLocaleSettings>] :bot_alias_locale_settings
    #   The new Lambda functions to use in each locale for the bot alias.
    #
    # @option params [Types::ConversationLogSettings] :conversation_log_settings
    #   The new settings for storing conversation logs in Amazon CloudWatch
    #   Logs and Amazon S3 buckets.
    #
    # @option params [Types::SentimentAnalysisSettings] :sentiment_analysis_settings
    #   Determines whether Amazon Lex will use Amazon Comprehend to detect the
    #   sentiment of user utterances.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot with the updated alias.
    #
    # @return [Types::UpdateBotAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBotAliasResponse#bot_alias_id #bot_alias_id} => String
    #   * {Types::UpdateBotAliasResponse#bot_alias_name #bot_alias_name} => String
    #   * {Types::UpdateBotAliasResponse#description #description} => String
    #   * {Types::UpdateBotAliasResponse#bot_version #bot_version} => String
    #   * {Types::UpdateBotAliasResponse#bot_alias_locale_settings #bot_alias_locale_settings} => Hash&lt;String,Types::BotAliasLocaleSettings&gt;
    #   * {Types::UpdateBotAliasResponse#conversation_log_settings #conversation_log_settings} => Types::ConversationLogSettings
    #   * {Types::UpdateBotAliasResponse#sentiment_analysis_settings #sentiment_analysis_settings} => Types::SentimentAnalysisSettings
    #   * {Types::UpdateBotAliasResponse#bot_alias_status #bot_alias_status} => String
    #   * {Types::UpdateBotAliasResponse#bot_id #bot_id} => String
    #   * {Types::UpdateBotAliasResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::UpdateBotAliasResponse#last_updated_date_time #last_updated_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_bot_alias({
    #     bot_alias_id: "BotAliasId", # required
    #     bot_alias_name: "Name", # required
    #     description: "Description",
    #     bot_version: "BotVersion",
    #     bot_alias_locale_settings: {
    #       "LocaleId" => {
    #         enabled: false, # required
    #         code_hook_specification: {
    #           lambda_code_hook: { # required
    #             lambda_arn: "LambdaARN", # required
    #             code_hook_interface_version: "CodeHookInterfaceVersion", # required
    #           },
    #         },
    #       },
    #     },
    #     conversation_log_settings: {
    #       text_log_settings: [
    #         {
    #           enabled: false, # required
    #           destination: { # required
    #             cloud_watch: { # required
    #               cloud_watch_log_group_arn: "CloudWatchLogGroupArn", # required
    #               log_prefix: "LogPrefix", # required
    #             },
    #           },
    #         },
    #       ],
    #       audio_log_settings: [
    #         {
    #           enabled: false, # required
    #           destination: { # required
    #             s3_bucket: { # required
    #               kms_key_arn: "KmsKeyArn",
    #               s3_bucket_arn: "S3BucketArn", # required
    #               log_prefix: "LogPrefix", # required
    #             },
    #           },
    #         },
    #       ],
    #     },
    #     sentiment_analysis_settings: {
    #       detect_sentiment: false, # required
    #     },
    #     bot_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_alias_id #=> String
    #   resp.bot_alias_name #=> String
    #   resp.description #=> String
    #   resp.bot_version #=> String
    #   resp.bot_alias_locale_settings #=> Hash
    #   resp.bot_alias_locale_settings["LocaleId"].enabled #=> Boolean
    #   resp.bot_alias_locale_settings["LocaleId"].code_hook_specification.lambda_code_hook.lambda_arn #=> String
    #   resp.bot_alias_locale_settings["LocaleId"].code_hook_specification.lambda_code_hook.code_hook_interface_version #=> String
    #   resp.conversation_log_settings.text_log_settings #=> Array
    #   resp.conversation_log_settings.text_log_settings[0].enabled #=> Boolean
    #   resp.conversation_log_settings.text_log_settings[0].destination.cloud_watch.cloud_watch_log_group_arn #=> String
    #   resp.conversation_log_settings.text_log_settings[0].destination.cloud_watch.log_prefix #=> String
    #   resp.conversation_log_settings.audio_log_settings #=> Array
    #   resp.conversation_log_settings.audio_log_settings[0].enabled #=> Boolean
    #   resp.conversation_log_settings.audio_log_settings[0].destination.s3_bucket.kms_key_arn #=> String
    #   resp.conversation_log_settings.audio_log_settings[0].destination.s3_bucket.s3_bucket_arn #=> String
    #   resp.conversation_log_settings.audio_log_settings[0].destination.s3_bucket.log_prefix #=> String
    #   resp.sentiment_analysis_settings.detect_sentiment #=> Boolean
    #   resp.bot_alias_status #=> String, one of "Creating", "Available", "Deleting", "Failed"
    #   resp.bot_id #=> String
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateBotAlias AWS API Documentation
    #
    # @overload update_bot_alias(params = {})
    # @param [Hash] params ({})
    def update_bot_alias(params = {}, options = {})
      req = build_request(:update_bot_alias, params)
      req.send_request(options)
    end

    # Updates the settings that a bot has for a specific locale.
    #
    # @option params [required, String] :bot_id
    #   The unique identifier of the bot that contains the locale.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot that contains the locale to be updated. The
    #   version can only be the `DRAFT` version.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale to update. The string must
    #   match one of the supported locales. For more information, see
    #   [https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html
    #
    # @option params [String] :description
    #   The new description of the locale.
    #
    # @option params [required, Float] :nlu_intent_confidence_threshold
    #   The new confidence threshold where Amazon Lex inserts the
    #   `AMAZON.FallbackIntent` and `AMAZON.KendraSearchIntent` intents in the
    #   list of possible intents for an utterance.
    #
    # @option params [Types::VoiceSettings] :voice_settings
    #   The new Amazon Polly voice Amazon Lex should use for voice interaction
    #   with the user.
    #
    # @return [Types::UpdateBotLocaleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBotLocaleResponse#bot_id #bot_id} => String
    #   * {Types::UpdateBotLocaleResponse#bot_version #bot_version} => String
    #   * {Types::UpdateBotLocaleResponse#locale_id #locale_id} => String
    #   * {Types::UpdateBotLocaleResponse#locale_name #locale_name} => String
    #   * {Types::UpdateBotLocaleResponse#description #description} => String
    #   * {Types::UpdateBotLocaleResponse#nlu_intent_confidence_threshold #nlu_intent_confidence_threshold} => Float
    #   * {Types::UpdateBotLocaleResponse#voice_settings #voice_settings} => Types::VoiceSettings
    #   * {Types::UpdateBotLocaleResponse#bot_locale_status #bot_locale_status} => String
    #   * {Types::UpdateBotLocaleResponse#failure_reasons #failure_reasons} => Array&lt;String&gt;
    #   * {Types::UpdateBotLocaleResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::UpdateBotLocaleResponse#last_updated_date_time #last_updated_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_bot_locale({
    #     bot_id: "Id", # required
    #     bot_version: "DraftBotVersion", # required
    #     locale_id: "LocaleId", # required
    #     description: "Description",
    #     nlu_intent_confidence_threshold: 1.0, # required
    #     voice_settings: {
    #       voice_id: "VoiceId", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.locale_name #=> String
    #   resp.description #=> String
    #   resp.nlu_intent_confidence_threshold #=> Float
    #   resp.voice_settings.voice_id #=> String
    #   resp.bot_locale_status #=> String, one of "Creating", "Building", "Built", "ReadyExpressTesting", "Failed", "Deleting", "NotBuilt"
    #   resp.failure_reasons #=> Array
    #   resp.failure_reasons[0] #=> String
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateBotLocale AWS API Documentation
    #
    # @overload update_bot_locale(params = {})
    # @param [Hash] params ({})
    def update_bot_locale(params = {}, options = {})
      req = build_request(:update_bot_locale, params)
      req.send_request(options)
    end

    # Updates the settings for an intent.
    #
    # @option params [required, String] :intent_id
    #   The unique identifier of the intent to update.
    #
    # @option params [required, String] :intent_name
    #   The new name for the intent.
    #
    # @option params [String] :description
    #   The new description of the intent.
    #
    # @option params [String] :parent_intent_signature
    #   The signature of the new built-in intent to use as the parent of this
    #   intent.
    #
    # @option params [Array<Types::SampleUtterance>] :sample_utterances
    #   New utterances used to invoke the intent.
    #
    # @option params [Types::DialogCodeHookSettings] :dialog_code_hook
    #   The new Lambda function to use between each turn of the conversation
    #   with the bot.
    #
    # @option params [Types::FulfillmentCodeHookSettings] :fulfillment_code_hook
    #   The new Lambda function to call when all of the intents required slots
    #   are provided and the intent is ready for fulfillment.
    #
    # @option params [Array<Types::SlotPriority>] :slot_priorities
    #   A new list of slots and their priorities that are contained by the
    #   intent.
    #
    # @option params [Types::IntentConfirmationSetting] :intent_confirmation_setting
    #   New prompts that Amazon Lex sends to the user to confirm the
    #   completion of an intent.
    #
    # @option params [Types::IntentClosingSetting] :intent_closing_setting
    #   The new response that Amazon Lex sends the user when the intent is
    #   closed.
    #
    # @option params [Array<Types::InputContext>] :input_contexts
    #   A new list of contexts that must be active in order for Amazon Lex to
    #   consider the intent.
    #
    # @option params [Array<Types::OutputContext>] :output_contexts
    #   A new list of contexts that Amazon Lex activates when the intent is
    #   fulfilled.
    #
    # @option params [Types::KendraConfiguration] :kendra_configuration
    #   New configuration settings for connecting to an Amazon Kendra index.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot that contains the intent.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot that contains the intent. Must be `DRAFT`.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale where this intent is used.
    #   The string must match one of the supported locales. For more
    #   information, see
    #   [https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html
    #
    # @return [Types::UpdateIntentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIntentResponse#intent_id #intent_id} => String
    #   * {Types::UpdateIntentResponse#intent_name #intent_name} => String
    #   * {Types::UpdateIntentResponse#description #description} => String
    #   * {Types::UpdateIntentResponse#parent_intent_signature #parent_intent_signature} => String
    #   * {Types::UpdateIntentResponse#sample_utterances #sample_utterances} => Array&lt;Types::SampleUtterance&gt;
    #   * {Types::UpdateIntentResponse#dialog_code_hook #dialog_code_hook} => Types::DialogCodeHookSettings
    #   * {Types::UpdateIntentResponse#fulfillment_code_hook #fulfillment_code_hook} => Types::FulfillmentCodeHookSettings
    #   * {Types::UpdateIntentResponse#slot_priorities #slot_priorities} => Array&lt;Types::SlotPriority&gt;
    #   * {Types::UpdateIntentResponse#intent_confirmation_setting #intent_confirmation_setting} => Types::IntentConfirmationSetting
    #   * {Types::UpdateIntentResponse#intent_closing_setting #intent_closing_setting} => Types::IntentClosingSetting
    #   * {Types::UpdateIntentResponse#input_contexts #input_contexts} => Array&lt;Types::InputContext&gt;
    #   * {Types::UpdateIntentResponse#output_contexts #output_contexts} => Array&lt;Types::OutputContext&gt;
    #   * {Types::UpdateIntentResponse#kendra_configuration #kendra_configuration} => Types::KendraConfiguration
    #   * {Types::UpdateIntentResponse#bot_id #bot_id} => String
    #   * {Types::UpdateIntentResponse#bot_version #bot_version} => String
    #   * {Types::UpdateIntentResponse#locale_id #locale_id} => String
    #   * {Types::UpdateIntentResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::UpdateIntentResponse#last_updated_date_time #last_updated_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_intent({
    #     intent_id: "Id", # required
    #     intent_name: "Name", # required
    #     description: "Description",
    #     parent_intent_signature: "IntentSignature",
    #     sample_utterances: [
    #       {
    #         utterance: "Utterance", # required
    #       },
    #     ],
    #     dialog_code_hook: {
    #       enabled: false, # required
    #     },
    #     fulfillment_code_hook: {
    #       enabled: false, # required
    #     },
    #     slot_priorities: [
    #       {
    #         priority: 1, # required
    #         slot_id: "Id", # required
    #       },
    #     ],
    #     intent_confirmation_setting: {
    #       prompt_specification: { # required
    #         message_groups: [ # required
    #           {
    #             message: { # required
    #               plain_text_message: {
    #                 value: "PlainTextMessageValue", # required
    #               },
    #               custom_payload: {
    #                 value: "CustomPayloadValue", # required
    #               },
    #               ssml_message: {
    #                 value: "SSMLMessageValue", # required
    #               },
    #               image_response_card: {
    #                 title: "AttachmentTitle", # required
    #                 subtitle: "AttachmentTitle",
    #                 image_url: "AttachmentUrl",
    #                 buttons: [
    #                   {
    #                     text: "ButtonText", # required
    #                     value: "ButtonValue", # required
    #                   },
    #                 ],
    #               },
    #             },
    #             variations: [
    #               {
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #         max_retries: 1, # required
    #         allow_interrupt: false,
    #       },
    #       declination_response: { # required
    #         message_groups: [ # required
    #           {
    #             message: { # required
    #               plain_text_message: {
    #                 value: "PlainTextMessageValue", # required
    #               },
    #               custom_payload: {
    #                 value: "CustomPayloadValue", # required
    #               },
    #               ssml_message: {
    #                 value: "SSMLMessageValue", # required
    #               },
    #               image_response_card: {
    #                 title: "AttachmentTitle", # required
    #                 subtitle: "AttachmentTitle",
    #                 image_url: "AttachmentUrl",
    #                 buttons: [
    #                   {
    #                     text: "ButtonText", # required
    #                     value: "ButtonValue", # required
    #                   },
    #                 ],
    #               },
    #             },
    #             variations: [
    #               {
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #         allow_interrupt: false,
    #       },
    #     },
    #     intent_closing_setting: {
    #       closing_response: { # required
    #         message_groups: [ # required
    #           {
    #             message: { # required
    #               plain_text_message: {
    #                 value: "PlainTextMessageValue", # required
    #               },
    #               custom_payload: {
    #                 value: "CustomPayloadValue", # required
    #               },
    #               ssml_message: {
    #                 value: "SSMLMessageValue", # required
    #               },
    #               image_response_card: {
    #                 title: "AttachmentTitle", # required
    #                 subtitle: "AttachmentTitle",
    #                 image_url: "AttachmentUrl",
    #                 buttons: [
    #                   {
    #                     text: "ButtonText", # required
    #                     value: "ButtonValue", # required
    #                   },
    #                 ],
    #               },
    #             },
    #             variations: [
    #               {
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #         allow_interrupt: false,
    #       },
    #     },
    #     input_contexts: [
    #       {
    #         name: "Name", # required
    #       },
    #     ],
    #     output_contexts: [
    #       {
    #         name: "Name", # required
    #         time_to_live_in_seconds: 1, # required
    #         turns_to_live: 1, # required
    #       },
    #     ],
    #     kendra_configuration: {
    #       kendra_index: "KendraIndexArn", # required
    #       query_filter_string_enabled: false,
    #       query_filter_string: "QueryFilterString",
    #     },
    #     bot_id: "Id", # required
    #     bot_version: "DraftBotVersion", # required
    #     locale_id: "LocaleId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.intent_id #=> String
    #   resp.intent_name #=> String
    #   resp.description #=> String
    #   resp.parent_intent_signature #=> String
    #   resp.sample_utterances #=> Array
    #   resp.sample_utterances[0].utterance #=> String
    #   resp.dialog_code_hook.enabled #=> Boolean
    #   resp.fulfillment_code_hook.enabled #=> Boolean
    #   resp.slot_priorities #=> Array
    #   resp.slot_priorities[0].priority #=> Integer
    #   resp.slot_priorities[0].slot_id #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups #=> Array
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].message.plain_text_message.value #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].message.custom_payload.value #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].message.ssml_message.value #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].message.image_response_card.title #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations #=> Array
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.intent_confirmation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.intent_confirmation_setting.prompt_specification.max_retries #=> Integer
    #   resp.intent_confirmation_setting.prompt_specification.allow_interrupt #=> Boolean
    #   resp.intent_confirmation_setting.declination_response.message_groups #=> Array
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations #=> Array
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.intent_confirmation_setting.declination_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.intent_confirmation_setting.declination_response.allow_interrupt #=> Boolean
    #   resp.intent_closing_setting.closing_response.message_groups #=> Array
    #   resp.intent_closing_setting.closing_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.intent_closing_setting.closing_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations #=> Array
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.intent_closing_setting.closing_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.intent_closing_setting.closing_response.allow_interrupt #=> Boolean
    #   resp.input_contexts #=> Array
    #   resp.input_contexts[0].name #=> String
    #   resp.output_contexts #=> Array
    #   resp.output_contexts[0].name #=> String
    #   resp.output_contexts[0].time_to_live_in_seconds #=> Integer
    #   resp.output_contexts[0].turns_to_live #=> Integer
    #   resp.kendra_configuration.kendra_index #=> String
    #   resp.kendra_configuration.query_filter_string_enabled #=> Boolean
    #   resp.kendra_configuration.query_filter_string #=> String
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateIntent AWS API Documentation
    #
    # @overload update_intent(params = {})
    # @param [Hash] params ({})
    def update_intent(params = {}, options = {})
      req = build_request(:update_intent, params)
      req.send_request(options)
    end

    # Updates the settings for a slot.
    #
    # @option params [required, String] :slot_id
    #   The unique identifier for the slot to update.
    #
    # @option params [required, String] :slot_name
    #   The new name for the slot.
    #
    # @option params [String] :description
    #   The new description for the slot.
    #
    # @option params [required, String] :slot_type_id
    #   The unique identifier of the new slot type to associate with this
    #   slot.
    #
    # @option params [required, Types::SlotValueElicitationSetting] :value_elicitation_setting
    #   A new set of prompts that Amazon Lex sends to the user to elicit a
    #   response the provides a value for the slot.
    #
    # @option params [Types::ObfuscationSetting] :obfuscation_setting
    #   New settings that determine how slot values are formatted in Amazon
    #   CloudWatch logs.
    #
    # @option params [required, String] :bot_id
    #   The unique identifier of the bot that contains the slot.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot that contains the slot. Must always be `DRAFT`.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale that contains the slot. The
    #   string must match one of the supported locales. For more information,
    #   see
    #   [https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html
    #
    # @option params [required, String] :intent_id
    #   The identifier of the intent that contains the slot.
    #
    # @return [Types::UpdateSlotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSlotResponse#slot_id #slot_id} => String
    #   * {Types::UpdateSlotResponse#slot_name #slot_name} => String
    #   * {Types::UpdateSlotResponse#description #description} => String
    #   * {Types::UpdateSlotResponse#slot_type_id #slot_type_id} => String
    #   * {Types::UpdateSlotResponse#value_elicitation_setting #value_elicitation_setting} => Types::SlotValueElicitationSetting
    #   * {Types::UpdateSlotResponse#obfuscation_setting #obfuscation_setting} => Types::ObfuscationSetting
    #   * {Types::UpdateSlotResponse#bot_id #bot_id} => String
    #   * {Types::UpdateSlotResponse#bot_version #bot_version} => String
    #   * {Types::UpdateSlotResponse#locale_id #locale_id} => String
    #   * {Types::UpdateSlotResponse#intent_id #intent_id} => String
    #   * {Types::UpdateSlotResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::UpdateSlotResponse#last_updated_date_time #last_updated_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_slot({
    #     slot_id: "Id", # required
    #     slot_name: "Name", # required
    #     description: "Description",
    #     slot_type_id: "BuiltInOrCustomSlotTypeId", # required
    #     value_elicitation_setting: { # required
    #       default_value_specification: {
    #         default_value_list: [ # required
    #           {
    #             default_value: "SlotDefaultValueString", # required
    #           },
    #         ],
    #       },
    #       slot_constraint: "Required", # required, accepts Required, Optional
    #       prompt_specification: {
    #         message_groups: [ # required
    #           {
    #             message: { # required
    #               plain_text_message: {
    #                 value: "PlainTextMessageValue", # required
    #               },
    #               custom_payload: {
    #                 value: "CustomPayloadValue", # required
    #               },
    #               ssml_message: {
    #                 value: "SSMLMessageValue", # required
    #               },
    #               image_response_card: {
    #                 title: "AttachmentTitle", # required
    #                 subtitle: "AttachmentTitle",
    #                 image_url: "AttachmentUrl",
    #                 buttons: [
    #                   {
    #                     text: "ButtonText", # required
    #                     value: "ButtonValue", # required
    #                   },
    #                 ],
    #               },
    #             },
    #             variations: [
    #               {
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #         max_retries: 1, # required
    #         allow_interrupt: false,
    #       },
    #       sample_utterances: [
    #         {
    #           utterance: "Utterance", # required
    #         },
    #       ],
    #       wait_and_continue_specification: {
    #         waiting_response: { # required
    #           message_groups: [ # required
    #             {
    #               message: { # required
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               variations: [
    #                 {
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #           allow_interrupt: false,
    #         },
    #         continue_response: { # required
    #           message_groups: [ # required
    #             {
    #               message: { # required
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               variations: [
    #                 {
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #           allow_interrupt: false,
    #         },
    #         still_waiting_response: {
    #           message_groups: [ # required
    #             {
    #               message: { # required
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               variations: [
    #                 {
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #           frequency_in_seconds: 1, # required
    #           timeout_in_seconds: 1, # required
    #           allow_interrupt: false,
    #         },
    #       },
    #     },
    #     obfuscation_setting: {
    #       obfuscation_setting_type: "None", # required, accepts None, DefaultObfuscation
    #     },
    #     bot_id: "Id", # required
    #     bot_version: "DraftBotVersion", # required
    #     locale_id: "LocaleId", # required
    #     intent_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.slot_id #=> String
    #   resp.slot_name #=> String
    #   resp.description #=> String
    #   resp.slot_type_id #=> String
    #   resp.value_elicitation_setting.default_value_specification.default_value_list #=> Array
    #   resp.value_elicitation_setting.default_value_specification.default_value_list[0].default_value #=> String
    #   resp.value_elicitation_setting.slot_constraint #=> String, one of "Required", "Optional"
    #   resp.value_elicitation_setting.prompt_specification.message_groups #=> Array
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.prompt_specification.max_retries #=> Integer
    #   resp.value_elicitation_setting.prompt_specification.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.sample_utterances #=> Array
    #   resp.value_elicitation_setting.sample_utterances[0].utterance #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.waiting_response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.continue_response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.frequency_in_seconds #=> Integer
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.timeout_in_seconds #=> Integer
    #   resp.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.allow_interrupt #=> Boolean
    #   resp.obfuscation_setting.obfuscation_setting_type #=> String, one of "None", "DefaultObfuscation"
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.intent_id #=> String
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateSlot AWS API Documentation
    #
    # @overload update_slot(params = {})
    # @param [Hash] params ({})
    def update_slot(params = {}, options = {})
      req = build_request(:update_slot, params)
      req.send_request(options)
    end

    # Updates the configuration of an existing slot type.
    #
    # @option params [required, String] :slot_type_id
    #   The unique identifier of the slot type to update.
    #
    # @option params [required, String] :slot_type_name
    #   The new name of the slot type.
    #
    # @option params [String] :description
    #   The new description of the slot type.
    #
    # @option params [Array<Types::SlotTypeValue>] :slot_type_values
    #   A new list of values and their optional synonyms that define the
    #   values that the slot type can take.
    #
    # @option params [required, Types::SlotValueSelectionSetting] :value_selection_setting
    #   The strategy that Amazon Lex should use when deciding on a value from
    #   the list of slot type values.
    #
    # @option params [String] :parent_slot_type_signature
    #   The new built-in slot type that should be used as the parent of this
    #   slot type.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot that contains the slot type.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot that contains the slot type. Must be `DRAFT`.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale that contains the slot type.
    #   The string must match one of the supported locales. For more
    #   information, see
    #   [https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/supported-locales.html
    #
    # @return [Types::UpdateSlotTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSlotTypeResponse#slot_type_id #slot_type_id} => String
    #   * {Types::UpdateSlotTypeResponse#slot_type_name #slot_type_name} => String
    #   * {Types::UpdateSlotTypeResponse#description #description} => String
    #   * {Types::UpdateSlotTypeResponse#slot_type_values #slot_type_values} => Array&lt;Types::SlotTypeValue&gt;
    #   * {Types::UpdateSlotTypeResponse#value_selection_setting #value_selection_setting} => Types::SlotValueSelectionSetting
    #   * {Types::UpdateSlotTypeResponse#parent_slot_type_signature #parent_slot_type_signature} => String
    #   * {Types::UpdateSlotTypeResponse#bot_id #bot_id} => String
    #   * {Types::UpdateSlotTypeResponse#bot_version #bot_version} => String
    #   * {Types::UpdateSlotTypeResponse#locale_id #locale_id} => String
    #   * {Types::UpdateSlotTypeResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::UpdateSlotTypeResponse#last_updated_date_time #last_updated_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_slot_type({
    #     slot_type_id: "Id", # required
    #     slot_type_name: "Name", # required
    #     description: "Description",
    #     slot_type_values: [
    #       {
    #         sample_value: {
    #           value: "Value", # required
    #         },
    #         synonyms: [
    #           {
    #             value: "Value", # required
    #           },
    #         ],
    #       },
    #     ],
    #     value_selection_setting: { # required
    #       resolution_strategy: "OriginalValue", # required, accepts OriginalValue, TopResolution
    #       regex_filter: {
    #         pattern: "RegexPattern", # required
    #       },
    #     },
    #     parent_slot_type_signature: "SlotTypeSignature",
    #     bot_id: "Id", # required
    #     bot_version: "DraftBotVersion", # required
    #     locale_id: "LocaleId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.slot_type_id #=> String
    #   resp.slot_type_name #=> String
    #   resp.description #=> String
    #   resp.slot_type_values #=> Array
    #   resp.slot_type_values[0].sample_value.value #=> String
    #   resp.slot_type_values[0].synonyms #=> Array
    #   resp.slot_type_values[0].synonyms[0].value #=> String
    #   resp.value_selection_setting.resolution_strategy #=> String, one of "OriginalValue", "TopResolution"
    #   resp.value_selection_setting.regex_filter.pattern #=> String
    #   resp.parent_slot_type_signature #=> String
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateSlotType AWS API Documentation
    #
    # @overload update_slot_type(params = {})
    # @param [Hash] params ({})
    def update_slot_type(params = {}, options = {})
      req = build_request(:update_slot_type, params)
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
      context[:gem_name] = 'aws-sdk-lexmodelsv2'
      context[:gem_version] = '1.0.1'
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
