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
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::LexModelsV2::Plugins::Endpoints)

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
    #   @option options [Aws::LexModelsV2::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::LexModelsV2::EndpointParameters`
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

    # Create a batch of custom vocabulary items for a given bot locale's
    # custom vocabulary.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot associated with this custom vocabulary.
    #
    # @option params [required, String] :bot_version
    #   The identifier of the version of the bot associated with this custom
    #   vocabulary.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale where this custom vocabulary
    #   is used. The string must match one of the supported locales. For more
    #   information, see [ Supported Languages ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #
    # @option params [required, Array<Types::NewCustomVocabularyItem>] :custom_vocabulary_item_list
    #   A list of new custom vocabulary items. Each entry must contain a
    #   phrase and can optionally contain a displayAs and/or a weight.
    #
    # @return [Types::BatchCreateCustomVocabularyItemResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchCreateCustomVocabularyItemResponse#bot_id #bot_id} => String
    #   * {Types::BatchCreateCustomVocabularyItemResponse#bot_version #bot_version} => String
    #   * {Types::BatchCreateCustomVocabularyItemResponse#locale_id #locale_id} => String
    #   * {Types::BatchCreateCustomVocabularyItemResponse#errors #errors} => Array&lt;Types::FailedCustomVocabularyItem&gt;
    #   * {Types::BatchCreateCustomVocabularyItemResponse#resources #resources} => Array&lt;Types::CustomVocabularyItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_custom_vocabulary_item({
    #     bot_id: "Id", # required
    #     bot_version: "BotVersion", # required
    #     locale_id: "LocaleId", # required
    #     custom_vocabulary_item_list: [ # required
    #       {
    #         phrase: "Phrase", # required
    #         weight: 1,
    #         display_as: "Phrase",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].item_id #=> String
    #   resp.errors[0].error_message #=> String
    #   resp.errors[0].error_code #=> String, one of "DUPLICATE_INPUT", "RESOURCE_DOES_NOT_EXIST", "RESOURCE_ALREADY_EXISTS", "INTERNAL_SERVER_FAILURE"
    #   resp.resources #=> Array
    #   resp.resources[0].item_id #=> String
    #   resp.resources[0].phrase #=> String
    #   resp.resources[0].weight #=> Integer
    #   resp.resources[0].display_as #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BatchCreateCustomVocabularyItem AWS API Documentation
    #
    # @overload batch_create_custom_vocabulary_item(params = {})
    # @param [Hash] params ({})
    def batch_create_custom_vocabulary_item(params = {}, options = {})
      req = build_request(:batch_create_custom_vocabulary_item, params)
      req.send_request(options)
    end

    # Delete a batch of custom vocabulary items for a given bot locale's
    # custom vocabulary.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot associated with this custom vocabulary.
    #
    # @option params [required, String] :bot_version
    #   The identifier of the version of the bot associated with this custom
    #   vocabulary.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale where this custom vocabulary
    #   is used. The string must match one of the supported locales. For more
    #   information, see [ Supported Languages ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #
    # @option params [required, Array<Types::CustomVocabularyEntryId>] :custom_vocabulary_item_list
    #   A list of custom vocabulary items requested to be deleted. Each entry
    #   must contain the unique custom vocabulary entry identifier.
    #
    # @return [Types::BatchDeleteCustomVocabularyItemResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteCustomVocabularyItemResponse#bot_id #bot_id} => String
    #   * {Types::BatchDeleteCustomVocabularyItemResponse#bot_version #bot_version} => String
    #   * {Types::BatchDeleteCustomVocabularyItemResponse#locale_id #locale_id} => String
    #   * {Types::BatchDeleteCustomVocabularyItemResponse#errors #errors} => Array&lt;Types::FailedCustomVocabularyItem&gt;
    #   * {Types::BatchDeleteCustomVocabularyItemResponse#resources #resources} => Array&lt;Types::CustomVocabularyItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_custom_vocabulary_item({
    #     bot_id: "Id", # required
    #     bot_version: "BotVersion", # required
    #     locale_id: "LocaleId", # required
    #     custom_vocabulary_item_list: [ # required
    #       {
    #         item_id: "ItemId", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].item_id #=> String
    #   resp.errors[0].error_message #=> String
    #   resp.errors[0].error_code #=> String, one of "DUPLICATE_INPUT", "RESOURCE_DOES_NOT_EXIST", "RESOURCE_ALREADY_EXISTS", "INTERNAL_SERVER_FAILURE"
    #   resp.resources #=> Array
    #   resp.resources[0].item_id #=> String
    #   resp.resources[0].phrase #=> String
    #   resp.resources[0].weight #=> Integer
    #   resp.resources[0].display_as #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BatchDeleteCustomVocabularyItem AWS API Documentation
    #
    # @overload batch_delete_custom_vocabulary_item(params = {})
    # @param [Hash] params ({})
    def batch_delete_custom_vocabulary_item(params = {}, options = {})
      req = build_request(:batch_delete_custom_vocabulary_item, params)
      req.send_request(options)
    end

    # Update a batch of custom vocabulary items for a given bot locale's
    # custom vocabulary.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot associated with this custom vocabulary
    #
    # @option params [required, String] :bot_version
    #   The identifier of the version of the bot associated with this custom
    #   vocabulary.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale where this custom vocabulary
    #   is used. The string must match one of the supported locales. For more
    #   information, see [ Supported Languages ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #
    # @option params [required, Array<Types::CustomVocabularyItem>] :custom_vocabulary_item_list
    #   A list of custom vocabulary items with updated fields. Each entry must
    #   contain a phrase and can optionally contain a displayAs and/or a
    #   weight.
    #
    # @return [Types::BatchUpdateCustomVocabularyItemResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdateCustomVocabularyItemResponse#bot_id #bot_id} => String
    #   * {Types::BatchUpdateCustomVocabularyItemResponse#bot_version #bot_version} => String
    #   * {Types::BatchUpdateCustomVocabularyItemResponse#locale_id #locale_id} => String
    #   * {Types::BatchUpdateCustomVocabularyItemResponse#errors #errors} => Array&lt;Types::FailedCustomVocabularyItem&gt;
    #   * {Types::BatchUpdateCustomVocabularyItemResponse#resources #resources} => Array&lt;Types::CustomVocabularyItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_custom_vocabulary_item({
    #     bot_id: "Id", # required
    #     bot_version: "BotVersion", # required
    #     locale_id: "LocaleId", # required
    #     custom_vocabulary_item_list: [ # required
    #       {
    #         item_id: "ItemId", # required
    #         phrase: "Phrase", # required
    #         weight: 1,
    #         display_as: "Phrase",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].item_id #=> String
    #   resp.errors[0].error_message #=> String
    #   resp.errors[0].error_code #=> String, one of "DUPLICATE_INPUT", "RESOURCE_DOES_NOT_EXIST", "RESOURCE_ALREADY_EXISTS", "INTERNAL_SERVER_FAILURE"
    #   resp.resources #=> Array
    #   resp.resources[0].item_id #=> String
    #   resp.resources[0].phrase #=> String
    #   resp.resources[0].weight #=> Integer
    #   resp.resources[0].display_as #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BatchUpdateCustomVocabularyItem AWS API Documentation
    #
    # @overload batch_update_custom_vocabulary_item(params = {})
    # @param [Hash] params ({})
    def batch_update_custom_vocabulary_item(params = {}, options = {})
      req = build_request(:batch_update_custom_vocabulary_item, params)
      req.send_request(options)
    end

    # Builds a bot, its intents, and its slot types into a specific locale.
    # A bot can be built into multiple locales. At runtime the locale is
    # used to choose a specific build of the bot.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot to build. The identifier is returned in the
    #   response from the [CreateBot][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/APIReference/API_CreateBot.html
    #
    # @option params [required, String] :bot_version
    #   The version of the bot to build. This can only be the draft version of
    #   the bot.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale that the bot will be used
    #   in. The string must match one of the supported locales. All of the
    #   intents, slot types, and slots used in the bot must have the same
    #   locale. For more information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
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
    #   resp.bot_locale_status #=> String, one of "Creating", "Building", "Built", "ReadyExpressTesting", "Failed", "Deleting", "NotBuilt", "Importing", "Processing"
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
    # @option params [String] :bot_type
    #   The type of a bot to create.
    #
    # @option params [Array<Types::BotMember>] :bot_members
    #   The list of bot members in a network to be created.
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
    #   * {Types::CreateBotResponse#bot_type #bot_type} => String
    #   * {Types::CreateBotResponse#bot_members #bot_members} => Array&lt;Types::BotMember&gt;
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
    #     bot_type: "Bot", # accepts Bot, BotNetwork
    #     bot_members: [
    #       {
    #         bot_member_id: "Id", # required
    #         bot_member_name: "Name", # required
    #         bot_member_alias_id: "BotAliasId", # required
    #         bot_member_alias_name: "BotAliasName", # required
    #         bot_member_version: "BotVersion", # required
    #       },
    #     ],
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
    #   resp.bot_status #=> String, one of "Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning", "Importing", "Updating"
    #   resp.creation_date_time #=> Time
    #   resp.bot_tags #=> Hash
    #   resp.bot_tags["TagKey"] #=> String
    #   resp.test_bot_alias_tags #=> Hash
    #   resp.test_bot_alias_tags["TagKey"] #=> String
    #   resp.bot_type #=> String, one of "Bot", "BotNetwork"
    #   resp.bot_members #=> Array
    #   resp.bot_members[0].bot_member_id #=> String
    #   resp.bot_members[0].bot_member_name #=> String
    #   resp.bot_members[0].bot_member_alias_id #=> String
    #   resp.bot_members[0].bot_member_alias_name #=> String
    #   resp.bot_members[0].bot_member_version #=> String
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
    #   [UpdateBotAlias][1] operation to change the bot version associated
    #   with the alias.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/APIReference/API_UpdateBotAlias.html
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
    #   locale. For more information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
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
    #   (0.70), IntentB (0.60), IntentC (0.50). The response from the
    #   `RecognizeText` operation would be:
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
    #       engine: "standard", # accepts standard, neural
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
    #   resp.voice_settings.engine #=> String, one of "standard", "neural"
    #   resp.bot_locale_status #=> String, one of "Creating", "Building", "Built", "ReadyExpressTesting", "Failed", "Deleting", "NotBuilt", "Importing", "Processing"
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
    #   resp.bot_status #=> String, one of "Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning", "Importing", "Updating"
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

    # Creates a zip archive containing the contents of a bot or a bot
    # locale. The archive contains a directory structure that contains JSON
    # files that define the bot.
    #
    # You can create an archive that contains the complete definition of a
    # bot, or you can specify that the archive contain only the definition
    # of a single bot locale.
    #
    # For more information about exporting bots, and about the structure of
    # the export archive, see [ Importing and exporting bots ][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lexv2/latest/dg/importing-exporting.html
    #
    # @option params [required, Types::ExportResourceSpecification] :resource_specification
    #   Specifies the type of resource to export, either a bot or a bot
    #   locale. You can only specify one type of resource to export.
    #
    # @option params [required, String] :file_format
    #   The file format of the bot or bot locale definition files.
    #
    # @option params [String] :file_password
    #   An password to use to encrypt the exported archive. Using a password
    #   is optional, but you should encrypt the archive to protect the data in
    #   transit between Amazon Lex and your local computer.
    #
    # @return [Types::CreateExportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateExportResponse#export_id #export_id} => String
    #   * {Types::CreateExportResponse#resource_specification #resource_specification} => Types::ExportResourceSpecification
    #   * {Types::CreateExportResponse#file_format #file_format} => String
    #   * {Types::CreateExportResponse#export_status #export_status} => String
    #   * {Types::CreateExportResponse#creation_date_time #creation_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_export({
    #     resource_specification: { # required
    #       bot_export_specification: {
    #         bot_id: "Id", # required
    #         bot_version: "BotVersion", # required
    #       },
    #       bot_locale_export_specification: {
    #         bot_id: "Id", # required
    #         bot_version: "BotVersion", # required
    #         locale_id: "LocaleId", # required
    #       },
    #       custom_vocabulary_export_specification: {
    #         bot_id: "Id", # required
    #         bot_version: "BotVersion", # required
    #         locale_id: "LocaleId", # required
    #       },
    #       test_set_export_specification: {
    #         test_set_id: "Id", # required
    #       },
    #     },
    #     file_format: "LexJson", # required, accepts LexJson, TSV, CSV
    #     file_password: "ImportExportFilePassword",
    #   })
    #
    # @example Response structure
    #
    #   resp.export_id #=> String
    #   resp.resource_specification.bot_export_specification.bot_id #=> String
    #   resp.resource_specification.bot_export_specification.bot_version #=> String
    #   resp.resource_specification.bot_locale_export_specification.bot_id #=> String
    #   resp.resource_specification.bot_locale_export_specification.bot_version #=> String
    #   resp.resource_specification.bot_locale_export_specification.locale_id #=> String
    #   resp.resource_specification.custom_vocabulary_export_specification.bot_id #=> String
    #   resp.resource_specification.custom_vocabulary_export_specification.bot_version #=> String
    #   resp.resource_specification.custom_vocabulary_export_specification.locale_id #=> String
    #   resp.resource_specification.test_set_export_specification.test_set_id #=> String
    #   resp.file_format #=> String, one of "LexJson", "TSV", "CSV"
    #   resp.export_status #=> String, one of "InProgress", "Completed", "Failed", "Deleting"
    #   resp.creation_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateExport AWS API Documentation
    #
    # @overload create_export(params = {})
    # @param [Hash] params ({})
    def create_export(params = {}, options = {})
      req = build_request(:create_export, params)
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
    #   The version of the bot associated with this intent.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale where this intent is used.
    #   All of the bots, slot types, and slots used by the intent must have
    #   the same locale. For more information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #
    # @option params [Types::InitialResponseSetting] :initial_response_setting
    #   Configuration settings for the response that is sent to the user at
    #   the beginning of a conversation, before eliciting slot values.
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
    #   * {Types::CreateIntentResponse#initial_response_setting #initial_response_setting} => Types::InitialResponseSetting
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateIntent AWS API Documentation
    #
    # @overload create_intent(params = {})
    # @param [Hash] params ({})
    def create_intent(params = {}, options = {})
      req = build_request(:create_intent, params)
      req.send_request(options)
    end

    # Creates a new resource policy with the specified policy statements.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the bot or bot alias that the
    #   resource policy is attached to.
    #
    # @option params [required, String] :policy
    #   A resource policy to add to the resource. The policy is a JSON
    #   structure that contains one or more statements that define the policy.
    #   The policy must follow the IAM syntax. For more information about the
    #   contents of a JSON policy document, see [ IAM JSON policy reference
    #   ][1].
    #
    #   If the policy isn't valid, Amazon Lex returns a validation exception.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html
    #
    # @return [Types::CreateResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateResourcePolicyResponse#resource_arn #resource_arn} => String
    #   * {Types::CreateResourcePolicyResponse#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resource_policy({
    #     resource_arn: "AmazonResourceName", # required
    #     policy: "Policy", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateResourcePolicy AWS API Documentation
    #
    # @overload create_resource_policy(params = {})
    # @param [Hash] params ({})
    def create_resource_policy(params = {}, options = {})
      req = build_request(:create_resource_policy, params)
      req.send_request(options)
    end

    # Adds a new resource policy statement to a bot or bot alias. If a
    # resource policy exists, the statement is added to the current resource
    # policy. If a policy doesn't exist, a new policy is created.
    #
    # You can't create a resource policy statement that allows
    # cross-account access.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the bot or bot alias that the
    #   resource policy is attached to.
    #
    # @option params [required, String] :statement_id
    #   The name of the statement. The ID is the same as the `Sid` IAM
    #   property. The statement name must be unique within the policy. For
    #   more information, see [IAM JSON policy elements: Sid][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_sid.html
    #
    # @option params [required, String] :effect
    #   Determines whether the statement allows or denies access to the
    #   resource.
    #
    # @option params [required, Array<Types::Principal>] :principal
    #   An IAM principal, such as an IAM user, IAM role, or Amazon Web
    #   Services services that is allowed or denied access to a resource. For
    #   more information, see [Amazon Web Services JSON policy elements:
    #   Principal][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html
    #
    # @option params [required, Array<String>] :action
    #   The Amazon Lex action that this policy either allows or denies. The
    #   action must apply to the resource type of the specified ARN. For more
    #   information, see [ Actions, resources, and condition keys for Amazon
    #   Lex V2][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonlexv2.html
    #
    # @option params [Hash<String,Hash>] :condition
    #   Specifies a condition when the policy is in effect. If the principal
    #   of the policy is a service principal, you must provide two condition
    #   blocks, one with a SourceAccount global condition key and one with a
    #   SourceArn global condition key.
    #
    #   For more information, see [IAM JSON policy elements: Condition ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_condition.html
    #
    # @option params [String] :expected_revision_id
    #   The identifier of the revision of the policy to edit. If this revision
    #   ID doesn't match the current revision ID, Amazon Lex throws an
    #   exception.
    #
    #   If you don't specify a revision, Amazon Lex overwrites the contents
    #   of the policy with the new values.
    #
    # @return [Types::CreateResourcePolicyStatementResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateResourcePolicyStatementResponse#resource_arn #resource_arn} => String
    #   * {Types::CreateResourcePolicyStatementResponse#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resource_policy_statement({
    #     resource_arn: "AmazonResourceName", # required
    #     statement_id: "Name", # required
    #     effect: "Allow", # required, accepts Allow, Deny
    #     principal: [ # required
    #       {
    #         service: "ServicePrincipal",
    #         arn: "PrincipalArn",
    #       },
    #     ],
    #     action: ["Operation"], # required
    #     condition: {
    #       "ConditionOperator" => {
    #         "ConditionKey" => "ConditionValue",
    #       },
    #     },
    #     expected_revision_id: "RevisionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateResourcePolicyStatement AWS API Documentation
    #
    # @overload create_resource_policy_statement(params = {})
    # @param [Hash] params ({})
    def create_resource_policy_statement(params = {}, options = {})
      req = build_request(:create_resource_policy_statement, params)
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
    # @option params [String] :slot_type_id
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
    #   For more information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #
    # @option params [required, String] :intent_id
    #   The identifier of the intent that contains the slot.
    #
    # @option params [Types::MultipleValuesSetting] :multiple_values_setting
    #   Indicates whether the slot returns multiple values in one response.
    #   Multi-value slots are only available in the `en-US` locale. If you set
    #   this value to `true` in any other locale, Amazon Lex throws a
    #   `ValidationException`.
    #
    #   If the `multipleValuesSetting` is not set, the default value is
    #   `false`.
    #
    # @option params [Types::SubSlotSetting] :sub_slot_setting
    #   Specifications for the constituent sub slots and the expression for
    #   the composite slot.
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
    #   * {Types::CreateSlotResponse#multiple_values_setting #multiple_values_setting} => Types::MultipleValuesSetting
    #   * {Types::CreateSlotResponse#sub_slot_setting #sub_slot_setting} => Types::SubSlotSetting
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
    #   resp.value_elicitation_setting.prompt_specification.message_selection_strategy #=> String, one of "Random", "Ordered"
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification #=> Hash
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].allowed_input_types.allow_audio_input #=> Boolean
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].allowed_input_types.allow_dtmf_input #=> Boolean
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.start_timeout_ms #=> Integer
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.audio_specification.max_length_ms #=> Integer
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.audio_specification.end_timeout_ms #=> Integer
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.dtmf_specification.max_length #=> Integer
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.dtmf_specification.end_timeout_ms #=> Integer
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.dtmf_specification.deletion_character #=> String
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.dtmf_specification.end_character #=> String
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].text_input_specification.start_timeout_ms #=> Integer
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
    #   resp.value_elicitation_setting.wait_and_continue_specification.active #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.active #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].condition.expression_string #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.active #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].condition.expression_string #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.enable_code_hook_invocation #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.active #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.invocation_label #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.active #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].condition.expression_string #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.active #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].condition.expression_string #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.active #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].condition.expression_string #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.elicitation_code_hook.enable_code_hook_invocation #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.elicitation_code_hook.invocation_label #=> String
    #   resp.obfuscation_setting.obfuscation_setting_type #=> String, one of "None", "DefaultObfuscation"
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.intent_id #=> String
    #   resp.creation_date_time #=> Time
    #   resp.multiple_values_setting.allow_multiple_values #=> Boolean
    #   resp.sub_slot_setting.expression #=> String
    #   resp.sub_slot_setting.slot_specifications #=> Hash
    #   resp.sub_slot_setting.slot_specifications["Name"].slot_type_id #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.default_value_specification.default_value_list #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.default_value_specification.default_value_list[0].default_value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].message.plain_text_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].message.custom_payload.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].message.ssml_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.title #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.max_retries #=> Integer
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.allow_interrupt #=> Boolean
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_selection_strategy #=> String, one of "Random", "Ordered"
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification #=> Hash
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].allow_interrupt #=> Boolean
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].allowed_input_types.allow_audio_input #=> Boolean
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].allowed_input_types.allow_dtmf_input #=> Boolean
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.start_timeout_ms #=> Integer
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.audio_specification.max_length_ms #=> Integer
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.audio_specification.end_timeout_ms #=> Integer
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.dtmf_specification.max_length #=> Integer
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.dtmf_specification.end_timeout_ms #=> Integer
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.dtmf_specification.deletion_character #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.dtmf_specification.end_character #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].text_input_specification.start_timeout_ms #=> Integer
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.sample_utterances #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.sample_utterances[0].utterance #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.allow_interrupt #=> Boolean
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.allow_interrupt #=> Boolean
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.frequency_in_seconds #=> Integer
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.timeout_in_seconds #=> Integer
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.allow_interrupt #=> Boolean
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.active #=> Boolean
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
    #   intent.
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
    # @option params [Types::SlotValueSelectionSetting] :value_selection_setting
    #   Determines the strategy that Amazon Lex uses to select a value from
    #   the list of possible values. The field can be set to one of the
    #   following values:
    #
    #   * `ORIGINAL_VALUE` - Returns the value entered by the user, if the
    #     user value is similar to the slot value.
    #
    #   * `TOP_RESOLUTION` - If there is a resolution list for the slot,
    #     return the first value in the resolution list. If there is no
    #     resolution list, return null.
    #
    #   If you don't specify the `valueSelectionSetting` parameter, the
    #   default is `ORIGINAL_VALUE`.
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
    #   locale. For more information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #
    # @option params [Types::ExternalSourceSetting] :external_source_setting
    #   Sets the type of external information used to create the slot type.
    #
    # @option params [Types::CompositeSlotTypeSetting] :composite_slot_type_setting
    #   Specifications for a composite slot type.
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
    #   * {Types::CreateSlotTypeResponse#external_source_setting #external_source_setting} => Types::ExternalSourceSetting
    #   * {Types::CreateSlotTypeResponse#composite_slot_type_setting #composite_slot_type_setting} => Types::CompositeSlotTypeSetting
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
    #     value_selection_setting: {
    #       resolution_strategy: "OriginalValue", # required, accepts OriginalValue, TopResolution, Concatenation
    #       regex_filter: {
    #         pattern: "RegexPattern", # required
    #       },
    #       advanced_recognition_setting: {
    #         audio_recognition_strategy: "UseSlotValuesAsCustomVocabulary", # accepts UseSlotValuesAsCustomVocabulary
    #       },
    #     },
    #     parent_slot_type_signature: "SlotTypeSignature",
    #     bot_id: "Id", # required
    #     bot_version: "DraftBotVersion", # required
    #     locale_id: "LocaleId", # required
    #     external_source_setting: {
    #       grammar_slot_type_setting: {
    #         source: {
    #           s3_bucket_name: "S3BucketName", # required
    #           s3_object_key: "S3ObjectPath", # required
    #           kms_key_arn: "KmsKeyArn",
    #         },
    #       },
    #     },
    #     composite_slot_type_setting: {
    #       sub_slots: [
    #         {
    #           name: "Name", # required
    #           slot_type_id: "BuiltInOrCustomSlotTypeId", # required
    #         },
    #       ],
    #     },
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
    #   resp.value_selection_setting.resolution_strategy #=> String, one of "OriginalValue", "TopResolution", "Concatenation"
    #   resp.value_selection_setting.regex_filter.pattern #=> String
    #   resp.value_selection_setting.advanced_recognition_setting.audio_recognition_strategy #=> String, one of "UseSlotValuesAsCustomVocabulary"
    #   resp.parent_slot_type_signature #=> String
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.creation_date_time #=> Time
    #   resp.external_source_setting.grammar_slot_type_setting.source.s3_bucket_name #=> String
    #   resp.external_source_setting.grammar_slot_type_setting.source.s3_object_key #=> String
    #   resp.external_source_setting.grammar_slot_type_setting.source.kms_key_arn #=> String
    #   resp.composite_slot_type_setting.sub_slots #=> Array
    #   resp.composite_slot_type_setting.sub_slots[0].name #=> String
    #   resp.composite_slot_type_setting.sub_slots[0].slot_type_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateSlotType AWS API Documentation
    #
    # @overload create_slot_type(params = {})
    # @param [Hash] params ({})
    def create_slot_type(params = {}, options = {})
      req = build_request(:create_slot_type, params)
      req.send_request(options)
    end

    # Create a report that describes the differences between the bot and the
    # test set.
    #
    # @option params [required, String] :test_set_id
    #   The test set Id for the test set discrepancy report.
    #
    # @option params [required, Types::TestSetDiscrepancyReportResourceTarget] :target
    #   The target bot for the test set discrepancy report.
    #
    # @return [Types::CreateTestSetDiscrepancyReportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTestSetDiscrepancyReportResponse#test_set_discrepancy_report_id #test_set_discrepancy_report_id} => String
    #   * {Types::CreateTestSetDiscrepancyReportResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::CreateTestSetDiscrepancyReportResponse#test_set_id #test_set_id} => String
    #   * {Types::CreateTestSetDiscrepancyReportResponse#target #target} => Types::TestSetDiscrepancyReportResourceTarget
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_test_set_discrepancy_report({
    #     test_set_id: "Id", # required
    #     target: { # required
    #       bot_alias_target: {
    #         bot_id: "Id", # required
    #         bot_alias_id: "BotAliasId", # required
    #         locale_id: "LocaleId", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.test_set_discrepancy_report_id #=> String
    #   resp.creation_date_time #=> Time
    #   resp.test_set_id #=> String
    #   resp.target.bot_alias_target.bot_id #=> String
    #   resp.target.bot_alias_target.bot_alias_id #=> String
    #   resp.target.bot_alias_target.locale_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateTestSetDiscrepancyReport AWS API Documentation
    #
    # @overload create_test_set_discrepancy_report(params = {})
    # @param [Hash] params ({})
    def create_test_set_discrepancy_report(params = {}, options = {})
      req = build_request(:create_test_set_discrepancy_report, params)
      req.send_request(options)
    end

    # Gets a pre-signed S3 write URL that you use to upload the zip archive
    # when importing a bot or a bot locale.
    #
    # @return [Types::CreateUploadUrlResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUploadUrlResponse#import_id #import_id} => String
    #   * {Types::CreateUploadUrlResponse#upload_url #upload_url} => String
    #
    # @example Response structure
    #
    #   resp.import_id #=> String
    #   resp.upload_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateUploadUrl AWS API Documentation
    #
    # @overload create_upload_url(params = {})
    # @param [Hash] params ({})
    def create_upload_url(params = {}, options = {})
      req = build_request(:create_upload_url, params)
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
    #   By default, Amazon Lex checks if any other resource, such as an alias
    #   or bot network, is using the bot version before it is deleted and
    #   throws a `ResourceInUseException` exception if the bot is being used
    #   by another resource. Set this parameter to `true` to skip this check
    #   and remove the bot even if it is being used by another resource.
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
    #   resp.bot_status #=> String, one of "Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning", "Importing", "Updating"
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
    #   By default, Amazon Lex checks if any other resource, such as a bot
    #   network, is using the bot alias before it is deleted and throws a
    #   `ResourceInUseException` exception if the alias is being used by
    #   another resource. Set this parameter to `true` to skip this check and
    #   remove the alias even if it is being used by another resource.
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
    #   see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
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
    #   resp.bot_locale_status #=> String, one of "Creating", "Building", "Built", "ReadyExpressTesting", "Failed", "Deleting", "NotBuilt", "Importing", "Processing"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteBotLocale AWS API Documentation
    #
    # @overload delete_bot_locale(params = {})
    # @param [Hash] params ({})
    def delete_bot_locale(params = {}, options = {})
      req = build_request(:delete_bot_locale, params)
      req.send_request(options)
    end

    # Deletes a specific version of a bot. To delete all versions of a bot,
    # use the [DeleteBot][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lexv2/latest/APIReference/API_DeleteBot.html
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot that contains the version.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot to delete.
    #
    # @option params [Boolean] :skip_resource_in_use_check
    #   By default, Amazon Lex checks if any other resource, such as an alias
    #   or bot network, is using the bot version before it is deleted and
    #   throws a `ResourceInUseException` exception if the version is being
    #   used by another resource. Set this parameter to `true` to skip this
    #   check and remove the version even if it is being used by another
    #   resource.
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
    #   resp.bot_status #=> String, one of "Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning", "Importing", "Updating"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteBotVersion AWS API Documentation
    #
    # @overload delete_bot_version(params = {})
    # @param [Hash] params ({})
    def delete_bot_version(params = {}, options = {})
      req = build_request(:delete_bot_version, params)
      req.send_request(options)
    end

    # Removes a custom vocabulary from the specified locale in the specified
    # bot.
    #
    # @option params [required, String] :bot_id
    #   The unique identifier of the bot to remove the custom vocabulary from.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot to remove the custom vocabulary from.
    #
    # @option params [required, String] :locale_id
    #   The locale identifier for the locale that contains the custom
    #   vocabulary to remove.
    #
    # @return [Types::DeleteCustomVocabularyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteCustomVocabularyResponse#bot_id #bot_id} => String
    #   * {Types::DeleteCustomVocabularyResponse#bot_version #bot_version} => String
    #   * {Types::DeleteCustomVocabularyResponse#locale_id #locale_id} => String
    #   * {Types::DeleteCustomVocabularyResponse#custom_vocabulary_status #custom_vocabulary_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_vocabulary({
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
    #   resp.custom_vocabulary_status #=> String, one of "Ready", "Deleting", "Exporting", "Importing", "Creating"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteCustomVocabulary AWS API Documentation
    #
    # @overload delete_custom_vocabulary(params = {})
    # @param [Hash] params ({})
    def delete_custom_vocabulary(params = {}, options = {})
      req = build_request(:delete_custom_vocabulary, params)
      req.send_request(options)
    end

    # Removes a previous export and the associated files stored in an S3
    # bucket.
    #
    # @option params [required, String] :export_id
    #   The unique identifier of the export to delete.
    #
    # @return [Types::DeleteExportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteExportResponse#export_id #export_id} => String
    #   * {Types::DeleteExportResponse#export_status #export_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_export({
    #     export_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.export_id #=> String
    #   resp.export_status #=> String, one of "InProgress", "Completed", "Failed", "Deleting"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteExport AWS API Documentation
    #
    # @overload delete_export(params = {})
    # @param [Hash] params ({})
    def delete_export(params = {}, options = {})
      req = build_request(:delete_export, params)
      req.send_request(options)
    end

    # Removes a previous import and the associated file stored in an S3
    # bucket.
    #
    # @option params [required, String] :import_id
    #   The unique identifier of the import to delete.
    #
    # @return [Types::DeleteImportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteImportResponse#import_id #import_id} => String
    #   * {Types::DeleteImportResponse#import_status #import_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_import({
    #     import_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.import_id #=> String
    #   resp.import_status #=> String, one of "InProgress", "Completed", "Failed", "Deleting"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteImport AWS API Documentation
    #
    # @overload delete_import(params = {})
    # @param [Hash] params ({})
    def delete_import(params = {}, options = {})
      req = build_request(:delete_import, params)
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
    #   information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
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

    # Removes an existing policy from a bot or bot alias. If the resource
    # doesn't have a policy attached, Amazon Lex returns an exception.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the bot or bot alias that has the
    #   resource policy attached.
    #
    # @option params [String] :expected_revision_id
    #   The identifier of the revision to edit. If this ID doesn't match the
    #   current revision number, Amazon Lex returns an exception
    #
    #   If you don't specify a revision ID, Amazon Lex will delete the
    #   current policy.
    #
    # @return [Types::DeleteResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteResourcePolicyResponse#resource_arn #resource_arn} => String
    #   * {Types::DeleteResourcePolicyResponse#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy({
    #     resource_arn: "AmazonResourceName", # required
    #     expected_revision_id: "RevisionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteResourcePolicy AWS API Documentation
    #
    # @overload delete_resource_policy(params = {})
    # @param [Hash] params ({})
    def delete_resource_policy(params = {}, options = {})
      req = build_request(:delete_resource_policy, params)
      req.send_request(options)
    end

    # Deletes a policy statement from a resource policy. If you delete the
    # last statement from a policy, the policy is deleted. If you specify a
    # statement ID that doesn't exist in the policy, or if the bot or bot
    # alias doesn't have a policy attached, Amazon Lex returns an
    # exception.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the bot or bot alias that the
    #   resource policy is attached to.
    #
    # @option params [required, String] :statement_id
    #   The name of the statement (SID) to delete from the policy.
    #
    # @option params [String] :expected_revision_id
    #   The identifier of the revision of the policy to delete the statement
    #   from. If this revision ID doesn't match the current revision ID,
    #   Amazon Lex throws an exception.
    #
    #   If you don't specify a revision, Amazon Lex removes the current
    #   contents of the statement.
    #
    # @return [Types::DeleteResourcePolicyStatementResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteResourcePolicyStatementResponse#resource_arn #resource_arn} => String
    #   * {Types::DeleteResourcePolicyStatementResponse#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy_statement({
    #     resource_arn: "AmazonResourceName", # required
    #     statement_id: "Name", # required
    #     expected_revision_id: "RevisionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteResourcePolicyStatement AWS API Documentation
    #
    # @overload delete_resource_policy_statement(params = {})
    # @param [Hash] params ({})
    def delete_resource_policy_statement(params = {}, options = {})
      req = build_request(:delete_resource_policy_statement, params)
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
    #   more information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
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
    #   more information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
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

    # The action to delete the selected test set.
    #
    # @option params [required, String] :test_set_id
    #   The test set Id of the test set to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_test_set({
    #     test_set_id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteTestSet AWS API Documentation
    #
    # @overload delete_test_set(params = {})
    # @param [Hash] params ({})
    def delete_test_set(params = {}, options = {})
      req = build_request(:delete_test_set, params)
      req.send_request(options)
    end

    # Deletes stored utterances.
    #
    # Amazon Lex stores the utterances that users send to your bot.
    # Utterances are stored for 15 days for use with the
    # [ListAggregatedUtterances][1] operation, and then stored indefinitely
    # for use in improving the ability of your bot to respond to user
    # input..
    #
    # Use the `DeleteUtterances` operation to manually delete utterances for
    # a specific session. When you use the `DeleteUtterances` operation,
    # utterances stored for improving your bot's ability to respond to user
    # input are deleted immediately. Utterances stored for use with the
    # `ListAggregatedUtterances` operation are deleted after 15 days.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lexv2/latest/APIReference/API_ListAggregatedUtterances.html
    #
    # @option params [required, String] :bot_id
    #   The unique identifier of the bot that contains the utterances.
    #
    # @option params [String] :locale_id
    #   The identifier of the language and locale where the utterances were
    #   collected. The string must match one of the supported locales. For
    #   more information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #
    # @option params [String] :session_id
    #   The unique identifier of the session with the user. The ID is returned
    #   in the response from the [RecognizeText][1] and
    #   [RecognizeUtterance][2] operations.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/APIReference/API_runtime_RecognizeText.html
    #   [2]: https://docs.aws.amazon.com/lexv2/latest/APIReference/API_runtime_RecognizeUtterance.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_utterances({
    #     bot_id: "Id", # required
    #     locale_id: "LocaleId",
    #     session_id: "SessionId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteUtterances AWS API Documentation
    #
    # @overload delete_utterances(params = {})
    # @param [Hash] params ({})
    def delete_utterances(params = {}, options = {})
      req = build_request(:delete_utterances, params)
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
    #   * {Types::DescribeBotResponse#bot_type #bot_type} => String
    #   * {Types::DescribeBotResponse#bot_members #bot_members} => Array&lt;Types::BotMember&gt;
    #   * {Types::DescribeBotResponse#failure_reasons #failure_reasons} => Array&lt;String&gt;
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
    #   resp.bot_status #=> String, one of "Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning", "Importing", "Updating"
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #   resp.bot_type #=> String, one of "Bot", "BotNetwork"
    #   resp.bot_members #=> Array
    #   resp.bot_members[0].bot_member_id #=> String
    #   resp.bot_members[0].bot_member_name #=> String
    #   resp.bot_members[0].bot_member_alias_id #=> String
    #   resp.bot_members[0].bot_member_alias_name #=> String
    #   resp.bot_members[0].bot_member_version #=> String
    #   resp.failure_reasons #=> Array
    #   resp.failure_reasons[0] #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * bot_available
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
    #   * {Types::DescribeBotAliasResponse#parent_bot_networks #parent_bot_networks} => Array&lt;Types::ParentBotNetwork&gt;
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
    #   resp.parent_bot_networks #=> Array
    #   resp.parent_bot_networks[0].bot_id #=> String
    #   resp.parent_bot_networks[0].bot_version #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * bot_alias_available
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
    #   The version of the bot associated with the locale.
    #
    # @option params [required, String] :locale_id
    #   The unique identifier of the locale to describe. The string must match
    #   one of the supported locales. For more information, see [Supported
    #   languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
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
    #   * {Types::DescribeBotLocaleResponse#recommended_actions #recommended_actions} => Array&lt;String&gt;
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
    #   resp.voice_settings.engine #=> String, one of "standard", "neural"
    #   resp.intents_count #=> Integer
    #   resp.slot_types_count #=> Integer
    #   resp.bot_locale_status #=> String, one of "Creating", "Building", "Built", "ReadyExpressTesting", "Failed", "Deleting", "NotBuilt", "Importing", "Processing"
    #   resp.failure_reasons #=> Array
    #   resp.failure_reasons[0] #=> String
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #   resp.last_build_submitted_date_time #=> Time
    #   resp.bot_locale_history_events #=> Array
    #   resp.bot_locale_history_events[0].event #=> String
    #   resp.bot_locale_history_events[0].event_date #=> Time
    #   resp.recommended_actions #=> Array
    #   resp.recommended_actions[0] #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * bot_locale_built
    #   * bot_locale_created
    #   * bot_locale_express_testing_available
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeBotLocale AWS API Documentation
    #
    # @overload describe_bot_locale(params = {})
    # @param [Hash] params ({})
    def describe_bot_locale(params = {}, options = {})
      req = build_request(:describe_bot_locale, params)
      req.send_request(options)
    end

    # Provides metadata information about a bot recommendation. This
    # information will enable you to get a description on the request
    # inputs, to download associated transcripts after processing is
    # complete, and to download intents and slot-types generated by the bot
    # recommendation.
    #
    # @option params [required, String] :bot_id
    #   The unique identifier of the bot associated with the bot
    #   recommendation.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot associated with the bot recommendation.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale of the bot recommendation to
    #   describe. The string must match one of the supported locales. For more
    #   information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #
    # @option params [required, String] :bot_recommendation_id
    #   The identifier of the bot recommendation to describe.
    #
    # @return [Types::DescribeBotRecommendationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBotRecommendationResponse#bot_id #bot_id} => String
    #   * {Types::DescribeBotRecommendationResponse#bot_version #bot_version} => String
    #   * {Types::DescribeBotRecommendationResponse#locale_id #locale_id} => String
    #   * {Types::DescribeBotRecommendationResponse#bot_recommendation_status #bot_recommendation_status} => String
    #   * {Types::DescribeBotRecommendationResponse#bot_recommendation_id #bot_recommendation_id} => String
    #   * {Types::DescribeBotRecommendationResponse#failure_reasons #failure_reasons} => Array&lt;String&gt;
    #   * {Types::DescribeBotRecommendationResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::DescribeBotRecommendationResponse#last_updated_date_time #last_updated_date_time} => Time
    #   * {Types::DescribeBotRecommendationResponse#transcript_source_setting #transcript_source_setting} => Types::TranscriptSourceSetting
    #   * {Types::DescribeBotRecommendationResponse#encryption_setting #encryption_setting} => Types::EncryptionSetting
    #   * {Types::DescribeBotRecommendationResponse#bot_recommendation_results #bot_recommendation_results} => Types::BotRecommendationResults
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_bot_recommendation({
    #     bot_id: "Id", # required
    #     bot_version: "DraftBotVersion", # required
    #     locale_id: "LocaleId", # required
    #     bot_recommendation_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.bot_recommendation_status #=> String, one of "Processing", "Deleting", "Deleted", "Downloading", "Updating", "Available", "Failed", "Stopping", "Stopped"
    #   resp.bot_recommendation_id #=> String
    #   resp.failure_reasons #=> Array
    #   resp.failure_reasons[0] #=> String
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #   resp.transcript_source_setting.s3_bucket_transcript_source.s3_bucket_name #=> String
    #   resp.transcript_source_setting.s3_bucket_transcript_source.path_format.object_prefixes #=> Array
    #   resp.transcript_source_setting.s3_bucket_transcript_source.path_format.object_prefixes[0] #=> String
    #   resp.transcript_source_setting.s3_bucket_transcript_source.transcript_format #=> String, one of "Lex"
    #   resp.transcript_source_setting.s3_bucket_transcript_source.transcript_filter.lex_transcript_filter.date_range_filter.start_date_time #=> Time
    #   resp.transcript_source_setting.s3_bucket_transcript_source.transcript_filter.lex_transcript_filter.date_range_filter.end_date_time #=> Time
    #   resp.transcript_source_setting.s3_bucket_transcript_source.kms_key_arn #=> String
    #   resp.encryption_setting.kms_key_arn #=> String
    #   resp.encryption_setting.bot_locale_export_password #=> String
    #   resp.encryption_setting.associated_transcripts_password #=> String
    #   resp.bot_recommendation_results.bot_locale_export_url #=> String
    #   resp.bot_recommendation_results.associated_transcripts_url #=> String
    #   resp.bot_recommendation_results.statistics.intents.discovered_intent_count #=> Integer
    #   resp.bot_recommendation_results.statistics.slot_types.discovered_slot_type_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeBotRecommendation AWS API Documentation
    #
    # @overload describe_bot_recommendation(params = {})
    # @param [Hash] params ({})
    def describe_bot_recommendation(params = {}, options = {})
      req = build_request(:describe_bot_recommendation, params)
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
    #   * {Types::DescribeBotVersionResponse#parent_bot_networks #parent_bot_networks} => Array&lt;Types::ParentBotNetwork&gt;
    #   * {Types::DescribeBotVersionResponse#bot_type #bot_type} => String
    #   * {Types::DescribeBotVersionResponse#bot_members #bot_members} => Array&lt;Types::BotMember&gt;
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
    #   resp.bot_status #=> String, one of "Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning", "Importing", "Updating"
    #   resp.failure_reasons #=> Array
    #   resp.failure_reasons[0] #=> String
    #   resp.creation_date_time #=> Time
    #   resp.parent_bot_networks #=> Array
    #   resp.parent_bot_networks[0].bot_id #=> String
    #   resp.parent_bot_networks[0].bot_version #=> String
    #   resp.bot_type #=> String, one of "Bot", "BotNetwork"
    #   resp.bot_members #=> Array
    #   resp.bot_members[0].bot_member_id #=> String
    #   resp.bot_members[0].bot_member_name #=> String
    #   resp.bot_members[0].bot_member_alias_id #=> String
    #   resp.bot_members[0].bot_member_alias_name #=> String
    #   resp.bot_members[0].bot_member_version #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * bot_version_available
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeBotVersion AWS API Documentation
    #
    # @overload describe_bot_version(params = {})
    # @param [Hash] params ({})
    def describe_bot_version(params = {}, options = {})
      req = build_request(:describe_bot_version, params)
      req.send_request(options)
    end

    # Provides metadata information about a custom vocabulary.
    #
    # @option params [required, String] :bot_id
    #   The unique identifier of the bot that contains the custom vocabulary.
    #
    # @option params [required, String] :bot_version
    #   The bot version of the bot to return metadata for.
    #
    # @option params [required, String] :locale_id
    #   The locale to return the custom vocabulary information for. The locale
    #   must be `en_GB`.
    #
    # @return [Types::DescribeCustomVocabularyMetadataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCustomVocabularyMetadataResponse#bot_id #bot_id} => String
    #   * {Types::DescribeCustomVocabularyMetadataResponse#bot_version #bot_version} => String
    #   * {Types::DescribeCustomVocabularyMetadataResponse#locale_id #locale_id} => String
    #   * {Types::DescribeCustomVocabularyMetadataResponse#custom_vocabulary_status #custom_vocabulary_status} => String
    #   * {Types::DescribeCustomVocabularyMetadataResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::DescribeCustomVocabularyMetadataResponse#last_updated_date_time #last_updated_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_custom_vocabulary_metadata({
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
    #   resp.custom_vocabulary_status #=> String, one of "Ready", "Deleting", "Exporting", "Importing", "Creating"
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeCustomVocabularyMetadata AWS API Documentation
    #
    # @overload describe_custom_vocabulary_metadata(params = {})
    # @param [Hash] params ({})
    def describe_custom_vocabulary_metadata(params = {}, options = {})
      req = build_request(:describe_custom_vocabulary_metadata, params)
      req.send_request(options)
    end

    # Gets information about a specific export.
    #
    # @option params [required, String] :export_id
    #   The unique identifier of the export to describe.
    #
    # @return [Types::DescribeExportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeExportResponse#export_id #export_id} => String
    #   * {Types::DescribeExportResponse#resource_specification #resource_specification} => Types::ExportResourceSpecification
    #   * {Types::DescribeExportResponse#file_format #file_format} => String
    #   * {Types::DescribeExportResponse#export_status #export_status} => String
    #   * {Types::DescribeExportResponse#failure_reasons #failure_reasons} => Array&lt;String&gt;
    #   * {Types::DescribeExportResponse#download_url #download_url} => String
    #   * {Types::DescribeExportResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::DescribeExportResponse#last_updated_date_time #last_updated_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_export({
    #     export_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.export_id #=> String
    #   resp.resource_specification.bot_export_specification.bot_id #=> String
    #   resp.resource_specification.bot_export_specification.bot_version #=> String
    #   resp.resource_specification.bot_locale_export_specification.bot_id #=> String
    #   resp.resource_specification.bot_locale_export_specification.bot_version #=> String
    #   resp.resource_specification.bot_locale_export_specification.locale_id #=> String
    #   resp.resource_specification.custom_vocabulary_export_specification.bot_id #=> String
    #   resp.resource_specification.custom_vocabulary_export_specification.bot_version #=> String
    #   resp.resource_specification.custom_vocabulary_export_specification.locale_id #=> String
    #   resp.resource_specification.test_set_export_specification.test_set_id #=> String
    #   resp.file_format #=> String, one of "LexJson", "TSV", "CSV"
    #   resp.export_status #=> String, one of "InProgress", "Completed", "Failed", "Deleting"
    #   resp.failure_reasons #=> Array
    #   resp.failure_reasons[0] #=> String
    #   resp.download_url #=> String
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * bot_export_completed
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeExport AWS API Documentation
    #
    # @overload describe_export(params = {})
    # @param [Hash] params ({})
    def describe_export(params = {}, options = {})
      req = build_request(:describe_export, params)
      req.send_request(options)
    end

    # Gets information about a specific import.
    #
    # @option params [required, String] :import_id
    #   The unique identifier of the import to describe.
    #
    # @return [Types::DescribeImportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeImportResponse#import_id #import_id} => String
    #   * {Types::DescribeImportResponse#resource_specification #resource_specification} => Types::ImportResourceSpecification
    #   * {Types::DescribeImportResponse#imported_resource_id #imported_resource_id} => String
    #   * {Types::DescribeImportResponse#imported_resource_name #imported_resource_name} => String
    #   * {Types::DescribeImportResponse#merge_strategy #merge_strategy} => String
    #   * {Types::DescribeImportResponse#import_status #import_status} => String
    #   * {Types::DescribeImportResponse#failure_reasons #failure_reasons} => Array&lt;String&gt;
    #   * {Types::DescribeImportResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::DescribeImportResponse#last_updated_date_time #last_updated_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_import({
    #     import_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.import_id #=> String
    #   resp.resource_specification.bot_import_specification.bot_name #=> String
    #   resp.resource_specification.bot_import_specification.role_arn #=> String
    #   resp.resource_specification.bot_import_specification.data_privacy.child_directed #=> Boolean
    #   resp.resource_specification.bot_import_specification.idle_session_ttl_in_seconds #=> Integer
    #   resp.resource_specification.bot_import_specification.bot_tags #=> Hash
    #   resp.resource_specification.bot_import_specification.bot_tags["TagKey"] #=> String
    #   resp.resource_specification.bot_import_specification.test_bot_alias_tags #=> Hash
    #   resp.resource_specification.bot_import_specification.test_bot_alias_tags["TagKey"] #=> String
    #   resp.resource_specification.bot_locale_import_specification.bot_id #=> String
    #   resp.resource_specification.bot_locale_import_specification.bot_version #=> String
    #   resp.resource_specification.bot_locale_import_specification.locale_id #=> String
    #   resp.resource_specification.bot_locale_import_specification.nlu_intent_confidence_threshold #=> Float
    #   resp.resource_specification.bot_locale_import_specification.voice_settings.voice_id #=> String
    #   resp.resource_specification.bot_locale_import_specification.voice_settings.engine #=> String, one of "standard", "neural"
    #   resp.resource_specification.custom_vocabulary_import_specification.bot_id #=> String
    #   resp.resource_specification.custom_vocabulary_import_specification.bot_version #=> String
    #   resp.resource_specification.custom_vocabulary_import_specification.locale_id #=> String
    #   resp.resource_specification.test_set_import_resource_specification.test_set_name #=> String
    #   resp.resource_specification.test_set_import_resource_specification.description #=> String
    #   resp.resource_specification.test_set_import_resource_specification.role_arn #=> String
    #   resp.resource_specification.test_set_import_resource_specification.storage_location.s3_bucket_name #=> String
    #   resp.resource_specification.test_set_import_resource_specification.storage_location.s3_path #=> String
    #   resp.resource_specification.test_set_import_resource_specification.storage_location.kms_key_arn #=> String
    #   resp.resource_specification.test_set_import_resource_specification.import_input_location.s3_bucket_name #=> String
    #   resp.resource_specification.test_set_import_resource_specification.import_input_location.s3_path #=> String
    #   resp.resource_specification.test_set_import_resource_specification.modality #=> String, one of "Text", "Audio"
    #   resp.resource_specification.test_set_import_resource_specification.test_set_tags #=> Hash
    #   resp.resource_specification.test_set_import_resource_specification.test_set_tags["TagKey"] #=> String
    #   resp.imported_resource_id #=> String
    #   resp.imported_resource_name #=> String
    #   resp.merge_strategy #=> String, one of "Overwrite", "FailOnConflict", "Append"
    #   resp.import_status #=> String, one of "InProgress", "Completed", "Failed", "Deleting"
    #   resp.failure_reasons #=> Array
    #   resp.failure_reasons[0] #=> String
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * bot_import_completed
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeImport AWS API Documentation
    #
    # @overload describe_import(params = {})
    # @param [Hash] params ({})
    def describe_import(params = {}, options = {})
      req = build_request(:describe_import, params)
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
    #   information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
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
    #   * {Types::DescribeIntentResponse#initial_response_setting #initial_response_setting} => Types::InitialResponseSetting
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeIntent AWS API Documentation
    #
    # @overload describe_intent(params = {})
    # @param [Hash] params ({})
    def describe_intent(params = {}, options = {})
      req = build_request(:describe_intent, params)
      req.send_request(options)
    end

    # Gets the resource policy and policy revision for a bot or bot alias.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the bot or bot alias that the
    #   resource policy is attached to.
    #
    # @return [Types::DescribeResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeResourcePolicyResponse#resource_arn #resource_arn} => String
    #   * {Types::DescribeResourcePolicyResponse#policy #policy} => String
    #   * {Types::DescribeResourcePolicyResponse#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_resource_policy({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.policy #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeResourcePolicy AWS API Documentation
    #
    # @overload describe_resource_policy(params = {})
    # @param [Hash] params ({})
    def describe_resource_policy(params = {}, options = {})
      req = build_request(:describe_resource_policy, params)
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
    #   see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
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
    #   * {Types::DescribeSlotResponse#multiple_values_setting #multiple_values_setting} => Types::MultipleValuesSetting
    #   * {Types::DescribeSlotResponse#sub_slot_setting #sub_slot_setting} => Types::SubSlotSetting
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
    #   resp.value_elicitation_setting.prompt_specification.message_selection_strategy #=> String, one of "Random", "Ordered"
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification #=> Hash
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].allowed_input_types.allow_audio_input #=> Boolean
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].allowed_input_types.allow_dtmf_input #=> Boolean
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.start_timeout_ms #=> Integer
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.audio_specification.max_length_ms #=> Integer
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.audio_specification.end_timeout_ms #=> Integer
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.dtmf_specification.max_length #=> Integer
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.dtmf_specification.end_timeout_ms #=> Integer
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.dtmf_specification.deletion_character #=> String
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.dtmf_specification.end_character #=> String
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].text_input_specification.start_timeout_ms #=> Integer
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
    #   resp.value_elicitation_setting.wait_and_continue_specification.active #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.active #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].condition.expression_string #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.active #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].condition.expression_string #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.enable_code_hook_invocation #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.active #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.invocation_label #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.active #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].condition.expression_string #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.active #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].condition.expression_string #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.active #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].condition.expression_string #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.elicitation_code_hook.enable_code_hook_invocation #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.elicitation_code_hook.invocation_label #=> String
    #   resp.obfuscation_setting.obfuscation_setting_type #=> String, one of "None", "DefaultObfuscation"
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.intent_id #=> String
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #   resp.multiple_values_setting.allow_multiple_values #=> Boolean
    #   resp.sub_slot_setting.expression #=> String
    #   resp.sub_slot_setting.slot_specifications #=> Hash
    #   resp.sub_slot_setting.slot_specifications["Name"].slot_type_id #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.default_value_specification.default_value_list #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.default_value_specification.default_value_list[0].default_value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].message.plain_text_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].message.custom_payload.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].message.ssml_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.title #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.max_retries #=> Integer
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.allow_interrupt #=> Boolean
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_selection_strategy #=> String, one of "Random", "Ordered"
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification #=> Hash
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].allow_interrupt #=> Boolean
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].allowed_input_types.allow_audio_input #=> Boolean
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].allowed_input_types.allow_dtmf_input #=> Boolean
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.start_timeout_ms #=> Integer
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.audio_specification.max_length_ms #=> Integer
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.audio_specification.end_timeout_ms #=> Integer
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.dtmf_specification.max_length #=> Integer
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.dtmf_specification.end_timeout_ms #=> Integer
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.dtmf_specification.deletion_character #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.dtmf_specification.end_character #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].text_input_specification.start_timeout_ms #=> Integer
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.sample_utterances #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.sample_utterances[0].utterance #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.allow_interrupt #=> Boolean
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.allow_interrupt #=> Boolean
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.frequency_in_seconds #=> Integer
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.timeout_in_seconds #=> Integer
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.allow_interrupt #=> Boolean
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.active #=> Boolean
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
    #   information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
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
    #   * {Types::DescribeSlotTypeResponse#external_source_setting #external_source_setting} => Types::ExternalSourceSetting
    #   * {Types::DescribeSlotTypeResponse#composite_slot_type_setting #composite_slot_type_setting} => Types::CompositeSlotTypeSetting
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
    #   resp.value_selection_setting.resolution_strategy #=> String, one of "OriginalValue", "TopResolution", "Concatenation"
    #   resp.value_selection_setting.regex_filter.pattern #=> String
    #   resp.value_selection_setting.advanced_recognition_setting.audio_recognition_strategy #=> String, one of "UseSlotValuesAsCustomVocabulary"
    #   resp.parent_slot_type_signature #=> String
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #   resp.external_source_setting.grammar_slot_type_setting.source.s3_bucket_name #=> String
    #   resp.external_source_setting.grammar_slot_type_setting.source.s3_object_key #=> String
    #   resp.external_source_setting.grammar_slot_type_setting.source.kms_key_arn #=> String
    #   resp.composite_slot_type_setting.sub_slots #=> Array
    #   resp.composite_slot_type_setting.sub_slots[0].name #=> String
    #   resp.composite_slot_type_setting.sub_slots[0].slot_type_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeSlotType AWS API Documentation
    #
    # @overload describe_slot_type(params = {})
    # @param [Hash] params ({})
    def describe_slot_type(params = {}, options = {})
      req = build_request(:describe_slot_type, params)
      req.send_request(options)
    end

    # Gets metadata information about the test execution.
    #
    # @option params [required, String] :test_execution_id
    #   The execution Id of the test set execution.
    #
    # @return [Types::DescribeTestExecutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTestExecutionResponse#test_execution_id #test_execution_id} => String
    #   * {Types::DescribeTestExecutionResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::DescribeTestExecutionResponse#last_updated_date_time #last_updated_date_time} => Time
    #   * {Types::DescribeTestExecutionResponse#test_execution_status #test_execution_status} => String
    #   * {Types::DescribeTestExecutionResponse#test_set_id #test_set_id} => String
    #   * {Types::DescribeTestExecutionResponse#test_set_name #test_set_name} => String
    #   * {Types::DescribeTestExecutionResponse#target #target} => Types::TestExecutionTarget
    #   * {Types::DescribeTestExecutionResponse#api_mode #api_mode} => String
    #   * {Types::DescribeTestExecutionResponse#test_execution_modality #test_execution_modality} => String
    #   * {Types::DescribeTestExecutionResponse#failure_reasons #failure_reasons} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_test_execution({
    #     test_execution_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.test_execution_id #=> String
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #   resp.test_execution_status #=> String, one of "Pending", "Waiting", "InProgress", "Completed", "Failed", "Stopping", "Stopped"
    #   resp.test_set_id #=> String
    #   resp.test_set_name #=> String
    #   resp.target.bot_alias_target.bot_id #=> String
    #   resp.target.bot_alias_target.bot_alias_id #=> String
    #   resp.target.bot_alias_target.locale_id #=> String
    #   resp.api_mode #=> String, one of "Streaming", "NonStreaming"
    #   resp.test_execution_modality #=> String, one of "Text", "Audio"
    #   resp.failure_reasons #=> Array
    #   resp.failure_reasons[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeTestExecution AWS API Documentation
    #
    # @overload describe_test_execution(params = {})
    # @param [Hash] params ({})
    def describe_test_execution(params = {}, options = {})
      req = build_request(:describe_test_execution, params)
      req.send_request(options)
    end

    # Gets metadata information about the test set.
    #
    # @option params [required, String] :test_set_id
    #   The test set Id for the test set request.
    #
    # @return [Types::DescribeTestSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTestSetResponse#test_set_id #test_set_id} => String
    #   * {Types::DescribeTestSetResponse#test_set_name #test_set_name} => String
    #   * {Types::DescribeTestSetResponse#description #description} => String
    #   * {Types::DescribeTestSetResponse#modality #modality} => String
    #   * {Types::DescribeTestSetResponse#status #status} => String
    #   * {Types::DescribeTestSetResponse#role_arn #role_arn} => String
    #   * {Types::DescribeTestSetResponse#num_turns #num_turns} => Integer
    #   * {Types::DescribeTestSetResponse#storage_location #storage_location} => Types::TestSetStorageLocation
    #   * {Types::DescribeTestSetResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::DescribeTestSetResponse#last_updated_date_time #last_updated_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_test_set({
    #     test_set_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.test_set_id #=> String
    #   resp.test_set_name #=> String
    #   resp.description #=> String
    #   resp.modality #=> String, one of "Text", "Audio"
    #   resp.status #=> String, one of "Importing", "PendingAnnotation", "Deleting", "ValidationError", "Ready"
    #   resp.role_arn #=> String
    #   resp.num_turns #=> Integer
    #   resp.storage_location.s3_bucket_name #=> String
    #   resp.storage_location.s3_path #=> String
    #   resp.storage_location.kms_key_arn #=> String
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeTestSet AWS API Documentation
    #
    # @overload describe_test_set(params = {})
    # @param [Hash] params ({})
    def describe_test_set(params = {}, options = {})
      req = build_request(:describe_test_set, params)
      req.send_request(options)
    end

    # Gets metadata information about the test set discrepancy report.
    #
    # @option params [required, String] :test_set_discrepancy_report_id
    #   The unique identifier of the test set discrepancy report.
    #
    # @return [Types::DescribeTestSetDiscrepancyReportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTestSetDiscrepancyReportResponse#test_set_discrepancy_report_id #test_set_discrepancy_report_id} => String
    #   * {Types::DescribeTestSetDiscrepancyReportResponse#test_set_id #test_set_id} => String
    #   * {Types::DescribeTestSetDiscrepancyReportResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::DescribeTestSetDiscrepancyReportResponse#target #target} => Types::TestSetDiscrepancyReportResourceTarget
    #   * {Types::DescribeTestSetDiscrepancyReportResponse#test_set_discrepancy_report_status #test_set_discrepancy_report_status} => String
    #   * {Types::DescribeTestSetDiscrepancyReportResponse#last_updated_data_time #last_updated_data_time} => Time
    #   * {Types::DescribeTestSetDiscrepancyReportResponse#test_set_discrepancy_top_errors #test_set_discrepancy_top_errors} => Types::TestSetDiscrepancyErrors
    #   * {Types::DescribeTestSetDiscrepancyReportResponse#test_set_discrepancy_raw_output_url #test_set_discrepancy_raw_output_url} => String
    #   * {Types::DescribeTestSetDiscrepancyReportResponse#failure_reasons #failure_reasons} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_test_set_discrepancy_report({
    #     test_set_discrepancy_report_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.test_set_discrepancy_report_id #=> String
    #   resp.test_set_id #=> String
    #   resp.creation_date_time #=> Time
    #   resp.target.bot_alias_target.bot_id #=> String
    #   resp.target.bot_alias_target.bot_alias_id #=> String
    #   resp.target.bot_alias_target.locale_id #=> String
    #   resp.test_set_discrepancy_report_status #=> String, one of "InProgress", "Completed", "Failed"
    #   resp.last_updated_data_time #=> Time
    #   resp.test_set_discrepancy_top_errors.intent_discrepancies #=> Array
    #   resp.test_set_discrepancy_top_errors.intent_discrepancies[0].intent_name #=> String
    #   resp.test_set_discrepancy_top_errors.intent_discrepancies[0].error_message #=> String
    #   resp.test_set_discrepancy_top_errors.slot_discrepancies #=> Array
    #   resp.test_set_discrepancy_top_errors.slot_discrepancies[0].intent_name #=> String
    #   resp.test_set_discrepancy_top_errors.slot_discrepancies[0].slot_name #=> String
    #   resp.test_set_discrepancy_top_errors.slot_discrepancies[0].error_message #=> String
    #   resp.test_set_discrepancy_raw_output_url #=> String
    #   resp.failure_reasons #=> Array
    #   resp.failure_reasons[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeTestSetDiscrepancyReport AWS API Documentation
    #
    # @overload describe_test_set_discrepancy_report(params = {})
    # @param [Hash] params ({})
    def describe_test_set_discrepancy_report(params = {}, options = {})
      req = build_request(:describe_test_set_discrepancy_report, params)
      req.send_request(options)
    end

    # Gets metadata information about the test set generation.
    #
    # @option params [required, String] :test_set_generation_id
    #   The unique identifier of the test set generation.
    #
    # @return [Types::DescribeTestSetGenerationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTestSetGenerationResponse#test_set_generation_id #test_set_generation_id} => String
    #   * {Types::DescribeTestSetGenerationResponse#test_set_generation_status #test_set_generation_status} => String
    #   * {Types::DescribeTestSetGenerationResponse#failure_reasons #failure_reasons} => Array&lt;String&gt;
    #   * {Types::DescribeTestSetGenerationResponse#test_set_id #test_set_id} => String
    #   * {Types::DescribeTestSetGenerationResponse#test_set_name #test_set_name} => String
    #   * {Types::DescribeTestSetGenerationResponse#description #description} => String
    #   * {Types::DescribeTestSetGenerationResponse#storage_location #storage_location} => Types::TestSetStorageLocation
    #   * {Types::DescribeTestSetGenerationResponse#generation_data_source #generation_data_source} => Types::TestSetGenerationDataSource
    #   * {Types::DescribeTestSetGenerationResponse#role_arn #role_arn} => String
    #   * {Types::DescribeTestSetGenerationResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::DescribeTestSetGenerationResponse#last_updated_date_time #last_updated_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_test_set_generation({
    #     test_set_generation_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.test_set_generation_id #=> String
    #   resp.test_set_generation_status #=> String, one of "Generating", "Ready", "Failed", "Pending"
    #   resp.failure_reasons #=> Array
    #   resp.failure_reasons[0] #=> String
    #   resp.test_set_id #=> String
    #   resp.test_set_name #=> String
    #   resp.description #=> String
    #   resp.storage_location.s3_bucket_name #=> String
    #   resp.storage_location.s3_path #=> String
    #   resp.storage_location.kms_key_arn #=> String
    #   resp.generation_data_source.conversation_logs_data_source.bot_id #=> String
    #   resp.generation_data_source.conversation_logs_data_source.bot_alias_id #=> String
    #   resp.generation_data_source.conversation_logs_data_source.locale_id #=> String
    #   resp.generation_data_source.conversation_logs_data_source.filter.start_time #=> Time
    #   resp.generation_data_source.conversation_logs_data_source.filter.end_time #=> Time
    #   resp.generation_data_source.conversation_logs_data_source.filter.input_mode #=> String, one of "Speech", "Text"
    #   resp.role_arn #=> String
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeTestSetGeneration AWS API Documentation
    #
    # @overload describe_test_set_generation(params = {})
    # @param [Hash] params ({})
    def describe_test_set_generation(params = {}, options = {})
      req = build_request(:describe_test_set_generation, params)
      req.send_request(options)
    end

    # The pre-signed Amazon S3 URL to download the test execution result
    # artifacts.
    #
    # @option params [required, String] :test_execution_id
    #   The unique identifier of the completed test execution.
    #
    # @return [Types::GetTestExecutionArtifactsUrlResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTestExecutionArtifactsUrlResponse#test_execution_id #test_execution_id} => String
    #   * {Types::GetTestExecutionArtifactsUrlResponse#download_artifacts_url #download_artifacts_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_test_execution_artifacts_url({
    #     test_execution_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.test_execution_id #=> String
    #   resp.download_artifacts_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/GetTestExecutionArtifactsUrl AWS API Documentation
    #
    # @overload get_test_execution_artifacts_url(params = {})
    # @param [Hash] params ({})
    def get_test_execution_artifacts_url(params = {}, options = {})
      req = build_request(:get_test_execution_artifacts_url, params)
      req.send_request(options)
    end

    # Provides a list of utterances that users have sent to the bot.
    #
    # Utterances are aggregated by the text of the utterance. For example,
    # all instances where customers used the phrase "I want to order
    # pizza" are aggregated into the same line in the response.
    #
    # You can see both detected utterances and missed utterances. A detected
    # utterance is where the bot properly recognized the utterance and
    # activated the associated intent. A missed utterance was not recognized
    # by the bot and didn't activate an intent.
    #
    # Utterances can be aggregated for a bot alias or for a bot version, but
    # not both at the same time.
    #
    # Utterances statistics are not generated under the following
    # conditions:
    #
    # * The `childDirected` field was set to true when the bot was created.
    #
    # * You are using slot obfuscation with one or more slots.
    #
    # * You opted out of participating in improving Amazon Lex.
    #
    # @option params [required, String] :bot_id
    #   The unique identifier of the bot associated with this request.
    #
    # @option params [String] :bot_alias_id
    #   The identifier of the bot alias associated with this request. If you
    #   specify the bot alias, you can't specify the bot version.
    #
    # @option params [String] :bot_version
    #   The identifier of the bot version associated with this request. If you
    #   specify the bot version, you can't specify the bot alias.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale where the utterances were
    #   collected. For more information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #
    # @option params [required, Types::UtteranceAggregationDuration] :aggregation_duration
    #   The time window for aggregating the utterance information. You can
    #   specify a time between one hour and two weeks.
    #
    # @option params [Types::AggregatedUtterancesSortBy] :sort_by
    #   Specifies sorting parameters for the list of utterances. You can sort
    #   by the hit count, the missed count, or the number of distinct sessions
    #   the utterance appeared in.
    #
    # @option params [Array<Types::AggregatedUtterancesFilter>] :filters
    #   Provides the specification of a filter used to limit the utterances in
    #   the response to only those that match the filter specification. You
    #   can only specify one filter and one string to filter on.
    #
    # @option params [Integer] :max_results
    #   The maximum number of utterances to return in each page of results. If
    #   there are fewer results than the maximum page size, only the actual
    #   number of results are returned. If you don't specify the `maxResults`
    #   parameter, 1,000 results are returned.
    #
    # @option params [String] :next_token
    #   If the response from the `ListAggregatedUtterances` operation contains
    #   more results that specified in the `maxResults` parameter, a token is
    #   returned in the response. Use that token in the `nextToken` parameter
    #   to return the next page of results.
    #
    # @return [Types::ListAggregatedUtterancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAggregatedUtterancesResponse#bot_id #bot_id} => String
    #   * {Types::ListAggregatedUtterancesResponse#bot_alias_id #bot_alias_id} => String
    #   * {Types::ListAggregatedUtterancesResponse#bot_version #bot_version} => String
    #   * {Types::ListAggregatedUtterancesResponse#locale_id #locale_id} => String
    #   * {Types::ListAggregatedUtterancesResponse#aggregation_duration #aggregation_duration} => Types::UtteranceAggregationDuration
    #   * {Types::ListAggregatedUtterancesResponse#aggregation_window_start_time #aggregation_window_start_time} => Time
    #   * {Types::ListAggregatedUtterancesResponse#aggregation_window_end_time #aggregation_window_end_time} => Time
    #   * {Types::ListAggregatedUtterancesResponse#aggregation_last_refreshed_date_time #aggregation_last_refreshed_date_time} => Time
    #   * {Types::ListAggregatedUtterancesResponse#aggregated_utterances_summaries #aggregated_utterances_summaries} => Array&lt;Types::AggregatedUtterancesSummary&gt;
    #   * {Types::ListAggregatedUtterancesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_aggregated_utterances({
    #     bot_id: "Id", # required
    #     bot_alias_id: "BotAliasId",
    #     bot_version: "BotVersion",
    #     locale_id: "LocaleId", # required
    #     aggregation_duration: { # required
    #       relative_aggregation_duration: { # required
    #         time_dimension: "Hours", # required, accepts Hours, Days, Weeks
    #         time_value: 1, # required
    #       },
    #     },
    #     sort_by: {
    #       attribute: "HitCount", # required, accepts HitCount, MissedCount
    #       order: "Ascending", # required, accepts Ascending, Descending
    #     },
    #     filters: [
    #       {
    #         name: "Utterance", # required, accepts Utterance
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
    #   resp.bot_alias_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.aggregation_duration.relative_aggregation_duration.time_dimension #=> String, one of "Hours", "Days", "Weeks"
    #   resp.aggregation_duration.relative_aggregation_duration.time_value #=> Integer
    #   resp.aggregation_window_start_time #=> Time
    #   resp.aggregation_window_end_time #=> Time
    #   resp.aggregation_last_refreshed_date_time #=> Time
    #   resp.aggregated_utterances_summaries #=> Array
    #   resp.aggregated_utterances_summaries[0].utterance #=> String
    #   resp.aggregated_utterances_summaries[0].hit_count #=> Integer
    #   resp.aggregated_utterances_summaries[0].missed_count #=> Integer
    #   resp.aggregated_utterances_summaries[0].utterance_first_recorded_in_aggregation_duration #=> Time
    #   resp.aggregated_utterances_summaries[0].utterance_last_recorded_in_aggregation_duration #=> Time
    #   resp.aggregated_utterances_summaries[0].contains_data_from_deleted_resources #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListAggregatedUtterances AWS API Documentation
    #
    # @overload list_aggregated_utterances(params = {})
    # @param [Hash] params ({})
    def list_aggregated_utterances(params = {}, options = {})
      req = build_request(:list_aggregated_utterances, params)
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
    #   resp.bot_locale_summaries[0].bot_locale_status #=> String, one of "Creating", "Building", "Built", "ReadyExpressTesting", "Failed", "Deleting", "NotBuilt", "Importing", "Processing"
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

    # Get a list of bot recommendations that meet the specified criteria.
    #
    # @option params [required, String] :bot_id
    #   The unique identifier of the bot that contains the bot recommendation
    #   list.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot that contains the bot recommendation list.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale of the bot recommendation
    #   list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of bot recommendations to return in each page of
    #   results. If there are fewer results than the max page size, only the
    #   actual number of results are returned.
    #
    # @option params [String] :next_token
    #   If the response from the ListBotRecommendation operation contains more
    #   results than specified in the maxResults parameter, a token is
    #   returned in the response. Use that token in the nextToken parameter to
    #   return the next page of results.
    #
    # @return [Types::ListBotRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBotRecommendationsResponse#bot_id #bot_id} => String
    #   * {Types::ListBotRecommendationsResponse#bot_version #bot_version} => String
    #   * {Types::ListBotRecommendationsResponse#locale_id #locale_id} => String
    #   * {Types::ListBotRecommendationsResponse#bot_recommendation_summaries #bot_recommendation_summaries} => Array&lt;Types::BotRecommendationSummary&gt;
    #   * {Types::ListBotRecommendationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bot_recommendations({
    #     bot_id: "Id", # required
    #     bot_version: "DraftBotVersion", # required
    #     locale_id: "LocaleId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.bot_recommendation_summaries #=> Array
    #   resp.bot_recommendation_summaries[0].bot_recommendation_status #=> String, one of "Processing", "Deleting", "Deleted", "Downloading", "Updating", "Available", "Failed", "Stopping", "Stopped"
    #   resp.bot_recommendation_summaries[0].bot_recommendation_id #=> String
    #   resp.bot_recommendation_summaries[0].creation_date_time #=> Time
    #   resp.bot_recommendation_summaries[0].last_updated_date_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListBotRecommendations AWS API Documentation
    #
    # @overload list_bot_recommendations(params = {})
    # @param [Hash] params ({})
    def list_bot_recommendations(params = {}, options = {})
      req = build_request(:list_bot_recommendations, params)
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
    #   resp.bot_version_summaries[0].bot_status #=> String, one of "Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning", "Importing", "Updating"
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
    #   the response.
    #
    #   Use the returned token in the `nextToken` parameter of a `ListBots`
    #   request to return the next page of results. For a complete set of
    #   results, call the `ListBots` operation until the `nextToken` returned
    #   in the response is null.
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
    #         name: "BotName", # required, accepts BotName, BotType
    #         values: ["FilterValue"], # required
    #         operator: "CO", # required, accepts CO, EQ, NE
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
    #   resp.bot_summaries[0].bot_status #=> String, one of "Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning", "Importing", "Updating"
    #   resp.bot_summaries[0].latest_bot_version #=> String
    #   resp.bot_summaries[0].last_updated_date_time #=> Time
    #   resp.bot_summaries[0].bot_type #=> String, one of "Bot", "BotNetwork"
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
    # [CreateIntent][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lexv2/latest/APIReference/API_CreateIntent.html
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale of the intents to list. The
    #   string must match one of the supported locales. For more information,
    #   see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
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
    #   information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
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

    # Paginated list of custom vocabulary items for a given bot locale's
    # custom vocabulary.
    #
    # @option params [required, String] :bot_id
    #   The identifier of the version of the bot associated with this custom
    #   vocabulary.
    #
    # @option params [required, String] :bot_version
    #   The bot version of the bot to the list custom vocabulary request.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale where this custom vocabulary
    #   is used. The string must match one of the supported locales. For more
    #   information, see Supported languages
    #   (https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).
    #
    # @option params [Integer] :max_results
    #   The maximum number of items returned by the list operation.
    #
    # @option params [String] :next_token
    #   The nextToken identifier to the list custom vocabulary request.
    #
    # @return [Types::ListCustomVocabularyItemsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCustomVocabularyItemsResponse#bot_id #bot_id} => String
    #   * {Types::ListCustomVocabularyItemsResponse#bot_version #bot_version} => String
    #   * {Types::ListCustomVocabularyItemsResponse#locale_id #locale_id} => String
    #   * {Types::ListCustomVocabularyItemsResponse#custom_vocabulary_items #custom_vocabulary_items} => Array&lt;Types::CustomVocabularyItem&gt;
    #   * {Types::ListCustomVocabularyItemsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_custom_vocabulary_items({
    #     bot_id: "Id", # required
    #     bot_version: "BotVersion", # required
    #     locale_id: "LocaleId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.custom_vocabulary_items #=> Array
    #   resp.custom_vocabulary_items[0].item_id #=> String
    #   resp.custom_vocabulary_items[0].phrase #=> String
    #   resp.custom_vocabulary_items[0].weight #=> Integer
    #   resp.custom_vocabulary_items[0].display_as #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListCustomVocabularyItems AWS API Documentation
    #
    # @overload list_custom_vocabulary_items(params = {})
    # @param [Hash] params ({})
    def list_custom_vocabulary_items(params = {}, options = {})
      req = build_request(:list_custom_vocabulary_items, params)
      req.send_request(options)
    end

    # Lists the exports for a bot, bot locale, or custom vocabulary. Exports
    # are kept in the list for 7 days.
    #
    # @option params [String] :bot_id
    #   The unique identifier that Amazon Lex assigned to the bot.
    #
    # @option params [String] :bot_version
    #   The version of the bot to list exports for.
    #
    # @option params [Types::ExportSortBy] :sort_by
    #   Determines the field that the list of exports is sorted by. You can
    #   sort by the `LastUpdatedDateTime` field in ascending or descending
    #   order.
    #
    # @option params [Array<Types::ExportFilter>] :filters
    #   Provides the specification of a filter used to limit the exports in
    #   the response to only those that match the filter specification. You
    #   can only specify one filter and one string to filter on.
    #
    # @option params [Integer] :max_results
    #   The maximum number of exports to return in each page of results. If
    #   there are fewer results than the max page size, only the actual number
    #   of results are returned.
    #
    # @option params [String] :next_token
    #   If the response from the `ListExports` operation contains more results
    #   that specified in the `maxResults` parameter, a token is returned in
    #   the response.
    #
    #   Use the returned token in the `nextToken` parameter of a `ListExports`
    #   request to return the next page of results. For a complete set of
    #   results, call the `ListExports` operation until the `nextToken`
    #   returned in the response is null.
    #
    # @option params [String] :locale_id
    #   Specifies the resources that should be exported. If you don't specify
    #   a resource type in the `filters` parameter, both bot locales and
    #   custom vocabularies are exported.
    #
    # @return [Types::ListExportsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListExportsResponse#bot_id #bot_id} => String
    #   * {Types::ListExportsResponse#bot_version #bot_version} => String
    #   * {Types::ListExportsResponse#export_summaries #export_summaries} => Array&lt;Types::ExportSummary&gt;
    #   * {Types::ListExportsResponse#next_token #next_token} => String
    #   * {Types::ListExportsResponse#locale_id #locale_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_exports({
    #     bot_id: "Id",
    #     bot_version: "BotVersion",
    #     sort_by: {
    #       attribute: "LastUpdatedDateTime", # required, accepts LastUpdatedDateTime
    #       order: "Ascending", # required, accepts Ascending, Descending
    #     },
    #     filters: [
    #       {
    #         name: "ExportResourceType", # required, accepts ExportResourceType
    #         values: ["FilterValue"], # required
    #         operator: "CO", # required, accepts CO, EQ
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #     locale_id: "LocaleId",
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.export_summaries #=> Array
    #   resp.export_summaries[0].export_id #=> String
    #   resp.export_summaries[0].resource_specification.bot_export_specification.bot_id #=> String
    #   resp.export_summaries[0].resource_specification.bot_export_specification.bot_version #=> String
    #   resp.export_summaries[0].resource_specification.bot_locale_export_specification.bot_id #=> String
    #   resp.export_summaries[0].resource_specification.bot_locale_export_specification.bot_version #=> String
    #   resp.export_summaries[0].resource_specification.bot_locale_export_specification.locale_id #=> String
    #   resp.export_summaries[0].resource_specification.custom_vocabulary_export_specification.bot_id #=> String
    #   resp.export_summaries[0].resource_specification.custom_vocabulary_export_specification.bot_version #=> String
    #   resp.export_summaries[0].resource_specification.custom_vocabulary_export_specification.locale_id #=> String
    #   resp.export_summaries[0].resource_specification.test_set_export_specification.test_set_id #=> String
    #   resp.export_summaries[0].file_format #=> String, one of "LexJson", "TSV", "CSV"
    #   resp.export_summaries[0].export_status #=> String, one of "InProgress", "Completed", "Failed", "Deleting"
    #   resp.export_summaries[0].creation_date_time #=> Time
    #   resp.export_summaries[0].last_updated_date_time #=> Time
    #   resp.next_token #=> String
    #   resp.locale_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListExports AWS API Documentation
    #
    # @overload list_exports(params = {})
    # @param [Hash] params ({})
    def list_exports(params = {}, options = {})
      req = build_request(:list_exports, params)
      req.send_request(options)
    end

    # Lists the imports for a bot, bot locale, or custom vocabulary. Imports
    # are kept in the list for 7 days.
    #
    # @option params [String] :bot_id
    #   The unique identifier that Amazon Lex assigned to the bot.
    #
    # @option params [String] :bot_version
    #   The version of the bot to list imports for.
    #
    # @option params [Types::ImportSortBy] :sort_by
    #   Determines the field that the list of imports is sorted by. You can
    #   sort by the `LastUpdatedDateTime` field in ascending or descending
    #   order.
    #
    # @option params [Array<Types::ImportFilter>] :filters
    #   Provides the specification of a filter used to limit the bots in the
    #   response to only those that match the filter specification. You can
    #   only specify one filter and one string to filter on.
    #
    # @option params [Integer] :max_results
    #   The maximum number of imports to return in each page of results. If
    #   there are fewer results than the max page size, only the actual number
    #   of results are returned.
    #
    # @option params [String] :next_token
    #   If the response from the `ListImports` operation contains more results
    #   than specified in the `maxResults` parameter, a token is returned in
    #   the response.
    #
    #   Use the returned token in the `nextToken` parameter of a `ListImports`
    #   request to return the next page of results. For a complete set of
    #   results, call the `ListImports` operation until the `nextToken`
    #   returned in the response is null.
    #
    # @option params [String] :locale_id
    #   Specifies the locale that should be present in the list. If you don't
    #   specify a resource type in the `filters` parameter, the list contains
    #   both bot locales and custom vocabularies.
    #
    # @return [Types::ListImportsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImportsResponse#bot_id #bot_id} => String
    #   * {Types::ListImportsResponse#bot_version #bot_version} => String
    #   * {Types::ListImportsResponse#import_summaries #import_summaries} => Array&lt;Types::ImportSummary&gt;
    #   * {Types::ListImportsResponse#next_token #next_token} => String
    #   * {Types::ListImportsResponse#locale_id #locale_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_imports({
    #     bot_id: "Id",
    #     bot_version: "DraftBotVersion",
    #     sort_by: {
    #       attribute: "LastUpdatedDateTime", # required, accepts LastUpdatedDateTime
    #       order: "Ascending", # required, accepts Ascending, Descending
    #     },
    #     filters: [
    #       {
    #         name: "ImportResourceType", # required, accepts ImportResourceType
    #         values: ["FilterValue"], # required
    #         operator: "CO", # required, accepts CO, EQ
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #     locale_id: "LocaleId",
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.import_summaries #=> Array
    #   resp.import_summaries[0].import_id #=> String
    #   resp.import_summaries[0].imported_resource_id #=> String
    #   resp.import_summaries[0].imported_resource_name #=> String
    #   resp.import_summaries[0].import_status #=> String, one of "InProgress", "Completed", "Failed", "Deleting"
    #   resp.import_summaries[0].merge_strategy #=> String, one of "Overwrite", "FailOnConflict", "Append"
    #   resp.import_summaries[0].creation_date_time #=> Time
    #   resp.import_summaries[0].last_updated_date_time #=> Time
    #   resp.import_summaries[0].imported_resource_type #=> String, one of "Bot", "BotLocale", "CustomVocabulary", "TestSet"
    #   resp.next_token #=> String
    #   resp.locale_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListImports AWS API Documentation
    #
    # @overload list_imports(params = {})
    # @param [Hash] params ({})
    def list_imports(params = {}, options = {})
      req = build_request(:list_imports, params)
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
    #   see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
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
    #   the response.
    #
    #   Use the returned token in the `nextToken` parameter of a `ListIntents`
    #   request to return the next page of results. For a complete set of
    #   results, call the `ListIntents` operation until the `nextToken`
    #   returned in the response is null.
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

    # Gets a list of recommended intents provided by the bot recommendation
    # that you can use in your bot. Intents in the response are ordered by
    # relevance.
    #
    # @option params [required, String] :bot_id
    #   The unique identifier of the bot associated with the recommended
    #   intents.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot that contains the recommended intents.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale of the recommended intents.
    #
    # @option params [required, String] :bot_recommendation_id
    #   The identifier of the bot recommendation that contains the recommended
    #   intents.
    #
    # @option params [String] :next_token
    #   If the response from the ListRecommendedIntents operation contains
    #   more results than specified in the maxResults parameter, a token is
    #   returned in the response. Use that token in the nextToken parameter to
    #   return the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of bot recommendations to return in each page of
    #   results. If there are fewer results than the max page size, only the
    #   actual number of results are returned.
    #
    # @return [Types::ListRecommendedIntentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecommendedIntentsResponse#bot_id #bot_id} => String
    #   * {Types::ListRecommendedIntentsResponse#bot_version #bot_version} => String
    #   * {Types::ListRecommendedIntentsResponse#locale_id #locale_id} => String
    #   * {Types::ListRecommendedIntentsResponse#bot_recommendation_id #bot_recommendation_id} => String
    #   * {Types::ListRecommendedIntentsResponse#summary_list #summary_list} => Array&lt;Types::RecommendedIntentSummary&gt;
    #   * {Types::ListRecommendedIntentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recommended_intents({
    #     bot_id: "Id", # required
    #     bot_version: "DraftBotVersion", # required
    #     locale_id: "LocaleId", # required
    #     bot_recommendation_id: "Id", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.bot_recommendation_id #=> String
    #   resp.summary_list #=> Array
    #   resp.summary_list[0].intent_id #=> String
    #   resp.summary_list[0].intent_name #=> String
    #   resp.summary_list[0].sample_utterances_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListRecommendedIntents AWS API Documentation
    #
    # @overload list_recommended_intents(params = {})
    # @param [Hash] params ({})
    def list_recommended_intents(params = {}, options = {})
      req = build_request(:list_recommended_intents, params)
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
    #   information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
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
    #         name: "SlotTypeName", # required, accepts SlotTypeName, ExternalSourceType
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
    #   resp.slot_type_summaries[0].slot_type_category #=> String, one of "Custom", "Extended", "ExternalGrammar", "Composite"
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
    #   see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
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
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.message_selection_strategy #=> String, one of "Random", "Ordered"
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.prompt_attempts_specification #=> Hash
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.prompt_attempts_specification["PromptAttempt"].allow_interrupt #=> Boolean
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.prompt_attempts_specification["PromptAttempt"].allowed_input_types.allow_audio_input #=> Boolean
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.prompt_attempts_specification["PromptAttempt"].allowed_input_types.allow_dtmf_input #=> Boolean
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.start_timeout_ms #=> Integer
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.audio_specification.max_length_ms #=> Integer
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.audio_specification.end_timeout_ms #=> Integer
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.dtmf_specification.max_length #=> Integer
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.dtmf_specification.end_timeout_ms #=> Integer
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.dtmf_specification.deletion_character #=> String
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.dtmf_specification.end_character #=> String
    #   resp.slot_summaries[0].value_elicitation_prompt_specification.prompt_attempts_specification["PromptAttempt"].text_input_specification.start_timeout_ms #=> Integer
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

    # Gets a list of test execution result items.
    #
    # @option params [required, String] :test_execution_id
    #   The unique identifier of the test execution to list the result items.
    #
    # @option params [required, Types::TestExecutionResultFilterBy] :result_filter_by
    #   The filter for the list of results from the test set execution.
    #
    # @option params [Integer] :max_results
    #   The maximum number of test execution result items to return in each
    #   page. If there are fewer results than the max page size, only the
    #   actual number of results are returned.
    #
    # @option params [String] :next_token
    #   If the response from the `ListTestExecutionResultItems` operation
    #   contains more results than specified in the `maxResults` parameter, a
    #   token is returned in the response. Use that token in the `nextToken`
    #   parameter to return the next page of results.
    #
    # @return [Types::ListTestExecutionResultItemsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTestExecutionResultItemsResponse#test_execution_results #test_execution_results} => Types::TestExecutionResultItems
    #   * {Types::ListTestExecutionResultItemsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_test_execution_result_items({
    #     test_execution_id: "Id", # required
    #     result_filter_by: { # required
    #       result_type_filter: "OverallTestResults", # required, accepts OverallTestResults, ConversationLevelTestResults, IntentClassificationTestResults, SlotResolutionTestResults, UtteranceLevelResults
    #       conversation_level_test_results_filter_by: {
    #         end_to_end_result: "Matched", # accepts Matched, Mismatched, ExecutionError
    #       },
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.test_execution_results.overall_test_results.items #=> Array
    #   resp.test_execution_results.overall_test_results.items[0].multi_turn_conversation #=> Boolean
    #   resp.test_execution_results.overall_test_results.items[0].total_result_count #=> Integer
    #   resp.test_execution_results.overall_test_results.items[0].speech_transcription_result_counts #=> Hash
    #   resp.test_execution_results.overall_test_results.items[0].speech_transcription_result_counts["TestResultMatchStatus"] #=> Integer
    #   resp.test_execution_results.overall_test_results.items[0].end_to_end_result_counts #=> Hash
    #   resp.test_execution_results.overall_test_results.items[0].end_to_end_result_counts["TestResultMatchStatus"] #=> Integer
    #   resp.test_execution_results.conversation_level_test_results.items #=> Array
    #   resp.test_execution_results.conversation_level_test_results.items[0].conversation_id #=> String
    #   resp.test_execution_results.conversation_level_test_results.items[0].end_to_end_result #=> String, one of "Matched", "Mismatched", "ExecutionError"
    #   resp.test_execution_results.conversation_level_test_results.items[0].speech_transcription_result #=> String, one of "Matched", "Mismatched", "ExecutionError"
    #   resp.test_execution_results.conversation_level_test_results.items[0].intent_classification_results #=> Array
    #   resp.test_execution_results.conversation_level_test_results.items[0].intent_classification_results[0].intent_name #=> String
    #   resp.test_execution_results.conversation_level_test_results.items[0].intent_classification_results[0].match_result #=> String, one of "Matched", "Mismatched", "ExecutionError"
    #   resp.test_execution_results.conversation_level_test_results.items[0].slot_resolution_results #=> Array
    #   resp.test_execution_results.conversation_level_test_results.items[0].slot_resolution_results[0].intent_name #=> String
    #   resp.test_execution_results.conversation_level_test_results.items[0].slot_resolution_results[0].slot_name #=> String
    #   resp.test_execution_results.conversation_level_test_results.items[0].slot_resolution_results[0].match_result #=> String, one of "Matched", "Mismatched", "ExecutionError"
    #   resp.test_execution_results.intent_classification_test_results.items #=> Array
    #   resp.test_execution_results.intent_classification_test_results.items[0].intent_name #=> String
    #   resp.test_execution_results.intent_classification_test_results.items[0].multi_turn_conversation #=> Boolean
    #   resp.test_execution_results.intent_classification_test_results.items[0].result_counts.total_result_count #=> Integer
    #   resp.test_execution_results.intent_classification_test_results.items[0].result_counts.speech_transcription_result_counts #=> Hash
    #   resp.test_execution_results.intent_classification_test_results.items[0].result_counts.speech_transcription_result_counts["TestResultMatchStatus"] #=> Integer
    #   resp.test_execution_results.intent_classification_test_results.items[0].result_counts.intent_match_result_counts #=> Hash
    #   resp.test_execution_results.intent_classification_test_results.items[0].result_counts.intent_match_result_counts["TestResultMatchStatus"] #=> Integer
    #   resp.test_execution_results.intent_level_slot_resolution_test_results.items #=> Array
    #   resp.test_execution_results.intent_level_slot_resolution_test_results.items[0].intent_name #=> String
    #   resp.test_execution_results.intent_level_slot_resolution_test_results.items[0].multi_turn_conversation #=> Boolean
    #   resp.test_execution_results.intent_level_slot_resolution_test_results.items[0].slot_resolution_results #=> Array
    #   resp.test_execution_results.intent_level_slot_resolution_test_results.items[0].slot_resolution_results[0].slot_name #=> String
    #   resp.test_execution_results.intent_level_slot_resolution_test_results.items[0].slot_resolution_results[0].result_counts.total_result_count #=> Integer
    #   resp.test_execution_results.intent_level_slot_resolution_test_results.items[0].slot_resolution_results[0].result_counts.speech_transcription_result_counts #=> Hash
    #   resp.test_execution_results.intent_level_slot_resolution_test_results.items[0].slot_resolution_results[0].result_counts.speech_transcription_result_counts["TestResultMatchStatus"] #=> Integer
    #   resp.test_execution_results.intent_level_slot_resolution_test_results.items[0].slot_resolution_results[0].result_counts.slot_match_result_counts #=> Hash
    #   resp.test_execution_results.intent_level_slot_resolution_test_results.items[0].slot_resolution_results[0].result_counts.slot_match_result_counts["TestResultMatchStatus"] #=> Integer
    #   resp.test_execution_results.utterance_level_test_results.items #=> Array
    #   resp.test_execution_results.utterance_level_test_results.items[0].record_number #=> Integer
    #   resp.test_execution_results.utterance_level_test_results.items[0].conversation_id #=> String
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.agent.expected_agent_prompt #=> String
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.agent.actual_agent_prompt #=> String
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.agent.error_details.error_code #=> String
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.agent.error_details.error_message #=> String
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.agent.actual_elicited_slot #=> String
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.agent.actual_intent #=> String
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.input.utterance_input.text_input #=> String
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.input.utterance_input.audio_input.audio_file_s3_location #=> String
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.input.request_attributes #=> Hash
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.input.request_attributes["NonEmptyString"] #=> String
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.input.session_state.session_attributes #=> Hash
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.input.session_state.session_attributes["NonEmptyString"] #=> String
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.input.session_state.active_contexts #=> Array
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.input.session_state.active_contexts[0].name #=> String
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.input.session_state.runtime_hints.slot_hints #=> Hash
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.input.session_state.runtime_hints.slot_hints["Name"] #=> Hash
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.input.session_state.runtime_hints.slot_hints["Name"]["Name"].runtime_hint_values #=> Array
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.input.session_state.runtime_hints.slot_hints["Name"]["Name"].runtime_hint_values[0].phrase #=> String
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.input.session_state.runtime_hints.slot_hints["Name"]["Name"].sub_slot_hints #=> Types::SlotHintsSlotMap
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.expected_output.intent.name #=> String
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.expected_output.intent.slots #=> Hash
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.expected_output.intent.slots["Name"].value #=> String
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.expected_output.intent.slots["Name"].values #=> Array
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.expected_output.intent.slots["Name"].values[0] #=> Types::UserTurnSlotOutput
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.expected_output.intent.slots["Name"].sub_slots #=> Types::UserTurnSlotOutputMap
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.expected_output.active_contexts #=> Array
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.expected_output.active_contexts[0].name #=> String
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.expected_output.transcript #=> String
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.actual_output.intent.name #=> String
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.actual_output.intent.slots #=> Hash
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.actual_output.intent.slots["Name"].value #=> String
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.actual_output.intent.slots["Name"].values #=> Array
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.actual_output.intent.slots["Name"].values[0] #=> Types::UserTurnSlotOutput
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.actual_output.intent.slots["Name"].sub_slots #=> Types::UserTurnSlotOutputMap
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.actual_output.active_contexts #=> Array
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.actual_output.active_contexts[0].name #=> String
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.actual_output.transcript #=> String
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.error_details.error_code #=> String
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.error_details.error_message #=> String
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.end_to_end_result #=> String, one of "Matched", "Mismatched", "ExecutionError"
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.intent_match_result #=> String, one of "Matched", "Mismatched", "ExecutionError"
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.slot_match_result #=> String, one of "Matched", "Mismatched", "ExecutionError"
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.speech_transcription_result #=> String, one of "Matched", "Mismatched", "ExecutionError"
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.conversation_level_result.end_to_end_result #=> String, one of "Matched", "Mismatched", "ExecutionError"
    #   resp.test_execution_results.utterance_level_test_results.items[0].turn_result.user.conversation_level_result.speech_transcription_result #=> String, one of "Matched", "Mismatched", "ExecutionError"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListTestExecutionResultItems AWS API Documentation
    #
    # @overload list_test_execution_result_items(params = {})
    # @param [Hash] params ({})
    def list_test_execution_result_items(params = {}, options = {})
      req = build_request(:list_test_execution_result_items, params)
      req.send_request(options)
    end

    # The list of test set executions.
    #
    # @option params [Types::TestExecutionSortBy] :sort_by
    #   The sort order of the test set executions.
    #
    # @option params [Integer] :max_results
    #   The maximum number of test executions to return in each page. If there
    #   are fewer results than the max page size, only the actual number of
    #   results are returned.
    #
    # @option params [String] :next_token
    #   If the response from the ListTestExecutions operation contains more
    #   results than specified in the maxResults parameter, a token is
    #   returned in the response. Use that token in the nextToken parameter to
    #   return the next page of results.
    #
    # @return [Types::ListTestExecutionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTestExecutionsResponse#test_executions #test_executions} => Array&lt;Types::TestExecutionSummary&gt;
    #   * {Types::ListTestExecutionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_test_executions({
    #     sort_by: {
    #       attribute: "TestSetName", # required, accepts TestSetName, CreationDateTime
    #       order: "Ascending", # required, accepts Ascending, Descending
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.test_executions #=> Array
    #   resp.test_executions[0].test_execution_id #=> String
    #   resp.test_executions[0].creation_date_time #=> Time
    #   resp.test_executions[0].last_updated_date_time #=> Time
    #   resp.test_executions[0].test_execution_status #=> String, one of "Pending", "Waiting", "InProgress", "Completed", "Failed", "Stopping", "Stopped"
    #   resp.test_executions[0].test_set_id #=> String
    #   resp.test_executions[0].test_set_name #=> String
    #   resp.test_executions[0].target.bot_alias_target.bot_id #=> String
    #   resp.test_executions[0].target.bot_alias_target.bot_alias_id #=> String
    #   resp.test_executions[0].target.bot_alias_target.locale_id #=> String
    #   resp.test_executions[0].api_mode #=> String, one of "Streaming", "NonStreaming"
    #   resp.test_executions[0].test_execution_modality #=> String, one of "Text", "Audio"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListTestExecutions AWS API Documentation
    #
    # @overload list_test_executions(params = {})
    # @param [Hash] params ({})
    def list_test_executions(params = {}, options = {})
      req = build_request(:list_test_executions, params)
      req.send_request(options)
    end

    # The list of test set records.
    #
    # @option params [required, String] :test_set_id
    #   The identifier of the test set to list its test set records.
    #
    # @option params [Integer] :max_results
    #   The maximum number of test set records to return in each page. If
    #   there are fewer records than the max page size, only the actual number
    #   of records are returned.
    #
    # @option params [String] :next_token
    #   If the response from the ListTestSetRecords operation contains more
    #   results than specified in the maxResults parameter, a token is
    #   returned in the response. Use that token in the nextToken parameter to
    #   return the next page of results.
    #
    # @return [Types::ListTestSetRecordsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTestSetRecordsResponse#test_set_records #test_set_records} => Array&lt;Types::TestSetTurnRecord&gt;
    #   * {Types::ListTestSetRecordsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_test_set_records({
    #     test_set_id: "Id", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.test_set_records #=> Array
    #   resp.test_set_records[0].record_number #=> Integer
    #   resp.test_set_records[0].conversation_id #=> String
    #   resp.test_set_records[0].turn_number #=> Integer
    #   resp.test_set_records[0].turn_specification.agent_turn.agent_prompt #=> String
    #   resp.test_set_records[0].turn_specification.user_turn.input.utterance_input.text_input #=> String
    #   resp.test_set_records[0].turn_specification.user_turn.input.utterance_input.audio_input.audio_file_s3_location #=> String
    #   resp.test_set_records[0].turn_specification.user_turn.input.request_attributes #=> Hash
    #   resp.test_set_records[0].turn_specification.user_turn.input.request_attributes["NonEmptyString"] #=> String
    #   resp.test_set_records[0].turn_specification.user_turn.input.session_state.session_attributes #=> Hash
    #   resp.test_set_records[0].turn_specification.user_turn.input.session_state.session_attributes["NonEmptyString"] #=> String
    #   resp.test_set_records[0].turn_specification.user_turn.input.session_state.active_contexts #=> Array
    #   resp.test_set_records[0].turn_specification.user_turn.input.session_state.active_contexts[0].name #=> String
    #   resp.test_set_records[0].turn_specification.user_turn.input.session_state.runtime_hints.slot_hints #=> Hash
    #   resp.test_set_records[0].turn_specification.user_turn.input.session_state.runtime_hints.slot_hints["Name"] #=> Hash
    #   resp.test_set_records[0].turn_specification.user_turn.input.session_state.runtime_hints.slot_hints["Name"]["Name"].runtime_hint_values #=> Array
    #   resp.test_set_records[0].turn_specification.user_turn.input.session_state.runtime_hints.slot_hints["Name"]["Name"].runtime_hint_values[0].phrase #=> String
    #   resp.test_set_records[0].turn_specification.user_turn.input.session_state.runtime_hints.slot_hints["Name"]["Name"].sub_slot_hints #=> Types::SlotHintsSlotMap
    #   resp.test_set_records[0].turn_specification.user_turn.expected.intent.name #=> String
    #   resp.test_set_records[0].turn_specification.user_turn.expected.intent.slots #=> Hash
    #   resp.test_set_records[0].turn_specification.user_turn.expected.intent.slots["Name"].value #=> String
    #   resp.test_set_records[0].turn_specification.user_turn.expected.intent.slots["Name"].values #=> Array
    #   resp.test_set_records[0].turn_specification.user_turn.expected.intent.slots["Name"].values[0] #=> Types::UserTurnSlotOutput
    #   resp.test_set_records[0].turn_specification.user_turn.expected.intent.slots["Name"].sub_slots #=> Types::UserTurnSlotOutputMap
    #   resp.test_set_records[0].turn_specification.user_turn.expected.active_contexts #=> Array
    #   resp.test_set_records[0].turn_specification.user_turn.expected.active_contexts[0].name #=> String
    #   resp.test_set_records[0].turn_specification.user_turn.expected.transcript #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListTestSetRecords AWS API Documentation
    #
    # @overload list_test_set_records(params = {})
    # @param [Hash] params ({})
    def list_test_set_records(params = {}, options = {})
      req = build_request(:list_test_set_records, params)
      req.send_request(options)
    end

    # The list of the test sets
    #
    # @option params [Types::TestSetSortBy] :sort_by
    #   The sort order for the list of test sets.
    #
    # @option params [Integer] :max_results
    #   The maximum number of test sets to return in each page. If there are
    #   fewer results than the max page size, only the actual number of
    #   results are returned.
    #
    # @option params [String] :next_token
    #   If the response from the ListTestSets operation contains more results
    #   than specified in the maxResults parameter, a token is returned in the
    #   response. Use that token in the nextToken parameter to return the next
    #   page of results.
    #
    # @return [Types::ListTestSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTestSetsResponse#test_sets #test_sets} => Array&lt;Types::TestSetSummary&gt;
    #   * {Types::ListTestSetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_test_sets({
    #     sort_by: {
    #       attribute: "TestSetName", # required, accepts TestSetName, LastUpdatedDateTime
    #       order: "Ascending", # required, accepts Ascending, Descending
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.test_sets #=> Array
    #   resp.test_sets[0].test_set_id #=> String
    #   resp.test_sets[0].test_set_name #=> String
    #   resp.test_sets[0].description #=> String
    #   resp.test_sets[0].modality #=> String, one of "Text", "Audio"
    #   resp.test_sets[0].status #=> String, one of "Importing", "PendingAnnotation", "Deleting", "ValidationError", "Ready"
    #   resp.test_sets[0].role_arn #=> String
    #   resp.test_sets[0].num_turns #=> Integer
    #   resp.test_sets[0].storage_location.s3_bucket_name #=> String
    #   resp.test_sets[0].storage_location.s3_path #=> String
    #   resp.test_sets[0].storage_location.kms_key_arn #=> String
    #   resp.test_sets[0].creation_date_time #=> Time
    #   resp.test_sets[0].last_updated_date_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListTestSets AWS API Documentation
    #
    # @overload list_test_sets(params = {})
    # @param [Hash] params ({})
    def list_test_sets(params = {}, options = {})
      req = build_request(:list_test_sets, params)
      req.send_request(options)
    end

    # Search for associated transcripts that meet the specified criteria.
    #
    # @option params [required, String] :bot_id
    #   The unique identifier of the bot associated with the transcripts that
    #   you are searching.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot containing the transcripts that you are
    #   searching.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale of the transcripts to
    #   search. The string must match one of the supported locales. For more
    #   information, see [Supported languages][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #
    # @option params [required, String] :bot_recommendation_id
    #   The unique identifier of the bot recommendation associated with the
    #   transcripts to search.
    #
    # @option params [String] :search_order
    #   How SearchResults are ordered. Valid values are Ascending or
    #   Descending. The default is Descending.
    #
    # @option params [required, Array<Types::AssociatedTranscriptFilter>] :filters
    #   A list of filter objects.
    #
    # @option params [Integer] :max_results
    #   The maximum number of bot recommendations to return in each page of
    #   results. If there are fewer results than the max page size, only the
    #   actual number of results are returned.
    #
    # @option params [Integer] :next_index
    #   If the response from the SearchAssociatedTranscriptsRequest operation
    #   contains more results than specified in the maxResults parameter, an
    #   index is returned in the response. Use that index in the nextIndex
    #   parameter to return the next page of results.
    #
    # @return [Types::SearchAssociatedTranscriptsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchAssociatedTranscriptsResponse#bot_id #bot_id} => String
    #   * {Types::SearchAssociatedTranscriptsResponse#bot_version #bot_version} => String
    #   * {Types::SearchAssociatedTranscriptsResponse#locale_id #locale_id} => String
    #   * {Types::SearchAssociatedTranscriptsResponse#bot_recommendation_id #bot_recommendation_id} => String
    #   * {Types::SearchAssociatedTranscriptsResponse#next_index #next_index} => Integer
    #   * {Types::SearchAssociatedTranscriptsResponse#associated_transcripts #associated_transcripts} => Array&lt;Types::AssociatedTranscript&gt;
    #   * {Types::SearchAssociatedTranscriptsResponse#total_results #total_results} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_associated_transcripts({
    #     bot_id: "Id", # required
    #     bot_version: "BotVersion", # required
    #     locale_id: "LocaleId", # required
    #     bot_recommendation_id: "Id", # required
    #     search_order: "Ascending", # accepts Ascending, Descending
    #     filters: [ # required
    #       {
    #         name: "IntentId", # required, accepts IntentId, SlotTypeId
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_index: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.bot_recommendation_id #=> String
    #   resp.next_index #=> Integer
    #   resp.associated_transcripts #=> Array
    #   resp.associated_transcripts[0].transcript #=> String
    #   resp.total_results #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/SearchAssociatedTranscripts AWS API Documentation
    #
    # @overload search_associated_transcripts(params = {})
    # @param [Hash] params ({})
    def search_associated_transcripts(params = {}, options = {})
      req = build_request(:search_associated_transcripts, params)
      req.send_request(options)
    end

    # Use this to provide your transcript data, and to start the bot
    # recommendation process.
    #
    # @option params [required, String] :bot_id
    #   The unique identifier of the bot containing the bot recommendation.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot containing the bot recommendation.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale of the bot recommendation to
    #   start. The string must match one of the supported locales. For more
    #   information, see [Supported languages][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #
    # @option params [required, Types::TranscriptSourceSetting] :transcript_source_setting
    #   The object representing the Amazon S3 bucket containing the
    #   transcript, as well as the associated metadata.
    #
    # @option params [Types::EncryptionSetting] :encryption_setting
    #   The object representing the passwords that will be used to encrypt the
    #   data related to the bot recommendation results, as well as the KMS key
    #   ARN used to encrypt the associated metadata.
    #
    # @return [Types::StartBotRecommendationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartBotRecommendationResponse#bot_id #bot_id} => String
    #   * {Types::StartBotRecommendationResponse#bot_version #bot_version} => String
    #   * {Types::StartBotRecommendationResponse#locale_id #locale_id} => String
    #   * {Types::StartBotRecommendationResponse#bot_recommendation_status #bot_recommendation_status} => String
    #   * {Types::StartBotRecommendationResponse#bot_recommendation_id #bot_recommendation_id} => String
    #   * {Types::StartBotRecommendationResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::StartBotRecommendationResponse#transcript_source_setting #transcript_source_setting} => Types::TranscriptSourceSetting
    #   * {Types::StartBotRecommendationResponse#encryption_setting #encryption_setting} => Types::EncryptionSetting
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_bot_recommendation({
    #     bot_id: "Id", # required
    #     bot_version: "DraftBotVersion", # required
    #     locale_id: "LocaleId", # required
    #     transcript_source_setting: { # required
    #       s3_bucket_transcript_source: {
    #         s3_bucket_name: "S3BucketName", # required
    #         path_format: {
    #           object_prefixes: ["ObjectPrefix"],
    #         },
    #         transcript_format: "Lex", # required, accepts Lex
    #         transcript_filter: {
    #           lex_transcript_filter: {
    #             date_range_filter: {
    #               start_date_time: Time.now, # required
    #               end_date_time: Time.now, # required
    #             },
    #           },
    #         },
    #         kms_key_arn: "KmsKeyArn",
    #       },
    #     },
    #     encryption_setting: {
    #       kms_key_arn: "KmsKeyArn",
    #       bot_locale_export_password: "FilePassword",
    #       associated_transcripts_password: "FilePassword",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.bot_recommendation_status #=> String, one of "Processing", "Deleting", "Deleted", "Downloading", "Updating", "Available", "Failed", "Stopping", "Stopped"
    #   resp.bot_recommendation_id #=> String
    #   resp.creation_date_time #=> Time
    #   resp.transcript_source_setting.s3_bucket_transcript_source.s3_bucket_name #=> String
    #   resp.transcript_source_setting.s3_bucket_transcript_source.path_format.object_prefixes #=> Array
    #   resp.transcript_source_setting.s3_bucket_transcript_source.path_format.object_prefixes[0] #=> String
    #   resp.transcript_source_setting.s3_bucket_transcript_source.transcript_format #=> String, one of "Lex"
    #   resp.transcript_source_setting.s3_bucket_transcript_source.transcript_filter.lex_transcript_filter.date_range_filter.start_date_time #=> Time
    #   resp.transcript_source_setting.s3_bucket_transcript_source.transcript_filter.lex_transcript_filter.date_range_filter.end_date_time #=> Time
    #   resp.transcript_source_setting.s3_bucket_transcript_source.kms_key_arn #=> String
    #   resp.encryption_setting.kms_key_arn #=> String
    #   resp.encryption_setting.bot_locale_export_password #=> String
    #   resp.encryption_setting.associated_transcripts_password #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/StartBotRecommendation AWS API Documentation
    #
    # @overload start_bot_recommendation(params = {})
    # @param [Hash] params ({})
    def start_bot_recommendation(params = {}, options = {})
      req = build_request(:start_bot_recommendation, params)
      req.send_request(options)
    end

    # Starts importing a bot, bot locale, or custom vocabulary from a zip
    # archive that you uploaded to an S3 bucket.
    #
    # @option params [required, String] :import_id
    #   The unique identifier for the import. It is included in the response
    #   from the [CreateUploadUrl][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/APIReference/API_CreateUploadUrl.html
    #
    # @option params [required, Types::ImportResourceSpecification] :resource_specification
    #   Parameters for creating the bot, bot locale or custom vocabulary.
    #
    # @option params [required, String] :merge_strategy
    #   The strategy to use when there is a name conflict between the imported
    #   resource and an existing resource. When the merge strategy is
    #   `FailOnConflict` existing resources are not overwritten and the import
    #   fails.
    #
    # @option params [String] :file_password
    #   The password used to encrypt the zip archive that contains the
    #   resource definition. You should always encrypt the zip archive to
    #   protect it during transit between your site and Amazon Lex.
    #
    # @return [Types::StartImportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartImportResponse#import_id #import_id} => String
    #   * {Types::StartImportResponse#resource_specification #resource_specification} => Types::ImportResourceSpecification
    #   * {Types::StartImportResponse#merge_strategy #merge_strategy} => String
    #   * {Types::StartImportResponse#import_status #import_status} => String
    #   * {Types::StartImportResponse#creation_date_time #creation_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_import({
    #     import_id: "Id", # required
    #     resource_specification: { # required
    #       bot_import_specification: {
    #         bot_name: "Name", # required
    #         role_arn: "RoleArn", # required
    #         data_privacy: { # required
    #           child_directed: false, # required
    #         },
    #         idle_session_ttl_in_seconds: 1,
    #         bot_tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         test_bot_alias_tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       },
    #       bot_locale_import_specification: {
    #         bot_id: "Id", # required
    #         bot_version: "DraftBotVersion", # required
    #         locale_id: "LocaleId", # required
    #         nlu_intent_confidence_threshold: 1.0,
    #         voice_settings: {
    #           voice_id: "VoiceId", # required
    #           engine: "standard", # accepts standard, neural
    #         },
    #       },
    #       custom_vocabulary_import_specification: {
    #         bot_id: "Id", # required
    #         bot_version: "DraftBotVersion", # required
    #         locale_id: "LocaleId", # required
    #       },
    #       test_set_import_resource_specification: {
    #         test_set_name: "Name", # required
    #         description: "Description",
    #         role_arn: "RoleArn", # required
    #         storage_location: { # required
    #           s3_bucket_name: "S3BucketName", # required
    #           s3_path: "S3ObjectPath", # required
    #           kms_key_arn: "KmsKeyArn",
    #         },
    #         import_input_location: { # required
    #           s3_bucket_name: "S3BucketName", # required
    #           s3_path: "S3ObjectPath", # required
    #         },
    #         modality: "Text", # required, accepts Text, Audio
    #         test_set_tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       },
    #     },
    #     merge_strategy: "Overwrite", # required, accepts Overwrite, FailOnConflict, Append
    #     file_password: "ImportExportFilePassword",
    #   })
    #
    # @example Response structure
    #
    #   resp.import_id #=> String
    #   resp.resource_specification.bot_import_specification.bot_name #=> String
    #   resp.resource_specification.bot_import_specification.role_arn #=> String
    #   resp.resource_specification.bot_import_specification.data_privacy.child_directed #=> Boolean
    #   resp.resource_specification.bot_import_specification.idle_session_ttl_in_seconds #=> Integer
    #   resp.resource_specification.bot_import_specification.bot_tags #=> Hash
    #   resp.resource_specification.bot_import_specification.bot_tags["TagKey"] #=> String
    #   resp.resource_specification.bot_import_specification.test_bot_alias_tags #=> Hash
    #   resp.resource_specification.bot_import_specification.test_bot_alias_tags["TagKey"] #=> String
    #   resp.resource_specification.bot_locale_import_specification.bot_id #=> String
    #   resp.resource_specification.bot_locale_import_specification.bot_version #=> String
    #   resp.resource_specification.bot_locale_import_specification.locale_id #=> String
    #   resp.resource_specification.bot_locale_import_specification.nlu_intent_confidence_threshold #=> Float
    #   resp.resource_specification.bot_locale_import_specification.voice_settings.voice_id #=> String
    #   resp.resource_specification.bot_locale_import_specification.voice_settings.engine #=> String, one of "standard", "neural"
    #   resp.resource_specification.custom_vocabulary_import_specification.bot_id #=> String
    #   resp.resource_specification.custom_vocabulary_import_specification.bot_version #=> String
    #   resp.resource_specification.custom_vocabulary_import_specification.locale_id #=> String
    #   resp.resource_specification.test_set_import_resource_specification.test_set_name #=> String
    #   resp.resource_specification.test_set_import_resource_specification.description #=> String
    #   resp.resource_specification.test_set_import_resource_specification.role_arn #=> String
    #   resp.resource_specification.test_set_import_resource_specification.storage_location.s3_bucket_name #=> String
    #   resp.resource_specification.test_set_import_resource_specification.storage_location.s3_path #=> String
    #   resp.resource_specification.test_set_import_resource_specification.storage_location.kms_key_arn #=> String
    #   resp.resource_specification.test_set_import_resource_specification.import_input_location.s3_bucket_name #=> String
    #   resp.resource_specification.test_set_import_resource_specification.import_input_location.s3_path #=> String
    #   resp.resource_specification.test_set_import_resource_specification.modality #=> String, one of "Text", "Audio"
    #   resp.resource_specification.test_set_import_resource_specification.test_set_tags #=> Hash
    #   resp.resource_specification.test_set_import_resource_specification.test_set_tags["TagKey"] #=> String
    #   resp.merge_strategy #=> String, one of "Overwrite", "FailOnConflict", "Append"
    #   resp.import_status #=> String, one of "InProgress", "Completed", "Failed", "Deleting"
    #   resp.creation_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/StartImport AWS API Documentation
    #
    # @overload start_import(params = {})
    # @param [Hash] params ({})
    def start_import(params = {}, options = {})
      req = build_request(:start_import, params)
      req.send_request(options)
    end

    # The action to start test set execution.
    #
    # @option params [required, String] :test_set_id
    #   The test set Id for the test set execution.
    #
    # @option params [required, Types::TestExecutionTarget] :target
    #   The target bot for the test set execution.
    #
    # @option params [required, String] :api_mode
    #   Indicates whether we use streaming or non-streaming APIs for the test
    #   set execution. For streaming, StartConversation Runtime API is used.
    #   Whereas, for non-streaming, RecognizeUtterance and RecognizeText
    #   Amazon Lex Runtime API are used.
    #
    # @option params [String] :test_execution_modality
    #   Indicates whether audio or text is used.
    #
    # @return [Types::StartTestExecutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartTestExecutionResponse#test_execution_id #test_execution_id} => String
    #   * {Types::StartTestExecutionResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::StartTestExecutionResponse#test_set_id #test_set_id} => String
    #   * {Types::StartTestExecutionResponse#target #target} => Types::TestExecutionTarget
    #   * {Types::StartTestExecutionResponse#api_mode #api_mode} => String
    #   * {Types::StartTestExecutionResponse#test_execution_modality #test_execution_modality} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_test_execution({
    #     test_set_id: "Id", # required
    #     target: { # required
    #       bot_alias_target: {
    #         bot_id: "Id", # required
    #         bot_alias_id: "BotAliasId", # required
    #         locale_id: "LocaleId", # required
    #       },
    #     },
    #     api_mode: "Streaming", # required, accepts Streaming, NonStreaming
    #     test_execution_modality: "Text", # accepts Text, Audio
    #   })
    #
    # @example Response structure
    #
    #   resp.test_execution_id #=> String
    #   resp.creation_date_time #=> Time
    #   resp.test_set_id #=> String
    #   resp.target.bot_alias_target.bot_id #=> String
    #   resp.target.bot_alias_target.bot_alias_id #=> String
    #   resp.target.bot_alias_target.locale_id #=> String
    #   resp.api_mode #=> String, one of "Streaming", "NonStreaming"
    #   resp.test_execution_modality #=> String, one of "Text", "Audio"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/StartTestExecution AWS API Documentation
    #
    # @overload start_test_execution(params = {})
    # @param [Hash] params ({})
    def start_test_execution(params = {}, options = {})
      req = build_request(:start_test_execution, params)
      req.send_request(options)
    end

    # The action to start the generation of test set.
    #
    # @option params [required, String] :test_set_name
    #   The test set name for the test set generation request.
    #
    # @option params [String] :description
    #   The test set description for the test set generation request.
    #
    # @option params [required, Types::TestSetStorageLocation] :storage_location
    #   The Amazon S3 storage location for the test set generation.
    #
    # @option params [required, Types::TestSetGenerationDataSource] :generation_data_source
    #   The data source for the test set generation.
    #
    # @option params [required, String] :role_arn
    #   The roleARN used for any operation in the test set to access resources
    #   in the Amazon Web Services account.
    #
    # @option params [Hash<String,String>] :test_set_tags
    #   A list of tags to add to the test set. You can only add tags when you
    #   import/generate a new test set. You can't use the `UpdateTestSet`
    #   operation to update tags. To update tags, use the `TagResource`
    #   operation.
    #
    # @return [Types::StartTestSetGenerationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartTestSetGenerationResponse#test_set_generation_id #test_set_generation_id} => String
    #   * {Types::StartTestSetGenerationResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::StartTestSetGenerationResponse#test_set_generation_status #test_set_generation_status} => String
    #   * {Types::StartTestSetGenerationResponse#test_set_name #test_set_name} => String
    #   * {Types::StartTestSetGenerationResponse#description #description} => String
    #   * {Types::StartTestSetGenerationResponse#storage_location #storage_location} => Types::TestSetStorageLocation
    #   * {Types::StartTestSetGenerationResponse#generation_data_source #generation_data_source} => Types::TestSetGenerationDataSource
    #   * {Types::StartTestSetGenerationResponse#role_arn #role_arn} => String
    #   * {Types::StartTestSetGenerationResponse#test_set_tags #test_set_tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_test_set_generation({
    #     test_set_name: "Name", # required
    #     description: "Description",
    #     storage_location: { # required
    #       s3_bucket_name: "S3BucketName", # required
    #       s3_path: "S3ObjectPath", # required
    #       kms_key_arn: "KmsKeyArn",
    #     },
    #     generation_data_source: { # required
    #       conversation_logs_data_source: {
    #         bot_id: "Id", # required
    #         bot_alias_id: "BotAliasId", # required
    #         locale_id: "LocaleId", # required
    #         filter: { # required
    #           start_time: Time.now, # required
    #           end_time: Time.now, # required
    #           input_mode: "Speech", # required, accepts Speech, Text
    #         },
    #       },
    #     },
    #     role_arn: "RoleArn", # required
    #     test_set_tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.test_set_generation_id #=> String
    #   resp.creation_date_time #=> Time
    #   resp.test_set_generation_status #=> String, one of "Generating", "Ready", "Failed", "Pending"
    #   resp.test_set_name #=> String
    #   resp.description #=> String
    #   resp.storage_location.s3_bucket_name #=> String
    #   resp.storage_location.s3_path #=> String
    #   resp.storage_location.kms_key_arn #=> String
    #   resp.generation_data_source.conversation_logs_data_source.bot_id #=> String
    #   resp.generation_data_source.conversation_logs_data_source.bot_alias_id #=> String
    #   resp.generation_data_source.conversation_logs_data_source.locale_id #=> String
    #   resp.generation_data_source.conversation_logs_data_source.filter.start_time #=> Time
    #   resp.generation_data_source.conversation_logs_data_source.filter.end_time #=> Time
    #   resp.generation_data_source.conversation_logs_data_source.filter.input_mode #=> String, one of "Speech", "Text"
    #   resp.role_arn #=> String
    #   resp.test_set_tags #=> Hash
    #   resp.test_set_tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/StartTestSetGeneration AWS API Documentation
    #
    # @overload start_test_set_generation(params = {})
    # @param [Hash] params ({})
    def start_test_set_generation(params = {}, options = {})
      req = build_request(:start_test_set_generation, params)
      req.send_request(options)
    end

    # Stop an already running Bot Recommendation request.
    #
    # @option params [required, String] :bot_id
    #   The unique identifier of the bot containing the bot recommendation to
    #   be stopped.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot containing the bot recommendation.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale of the bot recommendation to
    #   stop. The string must match one of the supported locales. For more
    #   information, see [Supported languages][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #
    # @option params [required, String] :bot_recommendation_id
    #   The unique identifier of the bot recommendation to be stopped.
    #
    # @return [Types::StopBotRecommendationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopBotRecommendationResponse#bot_id #bot_id} => String
    #   * {Types::StopBotRecommendationResponse#bot_version #bot_version} => String
    #   * {Types::StopBotRecommendationResponse#locale_id #locale_id} => String
    #   * {Types::StopBotRecommendationResponse#bot_recommendation_status #bot_recommendation_status} => String
    #   * {Types::StopBotRecommendationResponse#bot_recommendation_id #bot_recommendation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_bot_recommendation({
    #     bot_id: "Id", # required
    #     bot_version: "DraftBotVersion", # required
    #     locale_id: "LocaleId", # required
    #     bot_recommendation_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.bot_recommendation_status #=> String, one of "Processing", "Deleting", "Deleted", "Downloading", "Updating", "Available", "Failed", "Stopping", "Stopped"
    #   resp.bot_recommendation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/StopBotRecommendation AWS API Documentation
    #
    # @overload stop_bot_recommendation(params = {})
    # @param [Hash] params ({})
    def stop_bot_recommendation(params = {}, options = {})
      req = build_request(:stop_bot_recommendation, params)
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
    #   returned by the [CreateBot][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/APIReference/API_CreateBot.html
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
    # @option params [String] :bot_type
    #   The type of the bot to be updated.
    #
    # @option params [Array<Types::BotMember>] :bot_members
    #   The list of bot members in the network associated with the update
    #   action.
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
    #   * {Types::UpdateBotResponse#bot_type #bot_type} => String
    #   * {Types::UpdateBotResponse#bot_members #bot_members} => Array&lt;Types::BotMember&gt;
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
    #     bot_type: "Bot", # accepts Bot, BotNetwork
    #     bot_members: [
    #       {
    #         bot_member_id: "Id", # required
    #         bot_member_name: "Name", # required
    #         bot_member_alias_id: "BotAliasId", # required
    #         bot_member_alias_name: "BotAliasName", # required
    #         bot_member_version: "BotVersion", # required
    #       },
    #     ],
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
    #   resp.bot_status #=> String, one of "Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning", "Importing", "Updating"
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #   resp.bot_type #=> String, one of "Bot", "BotNetwork"
    #   resp.bot_members #=> Array
    #   resp.bot_members[0].bot_member_id #=> String
    #   resp.bot_members[0].bot_member_name #=> String
    #   resp.bot_members[0].bot_member_alias_id #=> String
    #   resp.bot_members[0].bot_member_alias_name #=> String
    #   resp.bot_members[0].bot_member_version #=> String
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
    #   [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
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
    #   * {Types::UpdateBotLocaleResponse#recommended_actions #recommended_actions} => Array&lt;String&gt;
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
    #       engine: "standard", # accepts standard, neural
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
    #   resp.voice_settings.engine #=> String, one of "standard", "neural"
    #   resp.bot_locale_status #=> String, one of "Creating", "Building", "Built", "ReadyExpressTesting", "Failed", "Deleting", "NotBuilt", "Importing", "Processing"
    #   resp.failure_reasons #=> Array
    #   resp.failure_reasons[0] #=> String
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #   resp.recommended_actions #=> Array
    #   resp.recommended_actions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateBotLocale AWS API Documentation
    #
    # @overload update_bot_locale(params = {})
    # @param [Hash] params ({})
    def update_bot_locale(params = {}, options = {})
      req = build_request(:update_bot_locale, params)
      req.send_request(options)
    end

    # Updates an existing bot recommendation request.
    #
    # @option params [required, String] :bot_id
    #   The unique identifier of the bot containing the bot recommendation to
    #   be updated.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot containing the bot recommendation to be
    #   updated.
    #
    # @option params [required, String] :locale_id
    #   The identifier of the language and locale of the bot recommendation to
    #   update. The string must match one of the supported locales. For more
    #   information, see [Supported languages][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #
    # @option params [required, String] :bot_recommendation_id
    #   The unique identifier of the bot recommendation to be updated.
    #
    # @option params [required, Types::EncryptionSetting] :encryption_setting
    #   The object representing the passwords that will be used to encrypt the
    #   data related to the bot recommendation results, as well as the KMS key
    #   ARN used to encrypt the associated metadata.
    #
    # @return [Types::UpdateBotRecommendationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBotRecommendationResponse#bot_id #bot_id} => String
    #   * {Types::UpdateBotRecommendationResponse#bot_version #bot_version} => String
    #   * {Types::UpdateBotRecommendationResponse#locale_id #locale_id} => String
    #   * {Types::UpdateBotRecommendationResponse#bot_recommendation_status #bot_recommendation_status} => String
    #   * {Types::UpdateBotRecommendationResponse#bot_recommendation_id #bot_recommendation_id} => String
    #   * {Types::UpdateBotRecommendationResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::UpdateBotRecommendationResponse#last_updated_date_time #last_updated_date_time} => Time
    #   * {Types::UpdateBotRecommendationResponse#transcript_source_setting #transcript_source_setting} => Types::TranscriptSourceSetting
    #   * {Types::UpdateBotRecommendationResponse#encryption_setting #encryption_setting} => Types::EncryptionSetting
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_bot_recommendation({
    #     bot_id: "Id", # required
    #     bot_version: "DraftBotVersion", # required
    #     locale_id: "LocaleId", # required
    #     bot_recommendation_id: "Id", # required
    #     encryption_setting: { # required
    #       kms_key_arn: "KmsKeyArn",
    #       bot_locale_export_password: "FilePassword",
    #       associated_transcripts_password: "FilePassword",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.bot_recommendation_status #=> String, one of "Processing", "Deleting", "Deleted", "Downloading", "Updating", "Available", "Failed", "Stopping", "Stopped"
    #   resp.bot_recommendation_id #=> String
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #   resp.transcript_source_setting.s3_bucket_transcript_source.s3_bucket_name #=> String
    #   resp.transcript_source_setting.s3_bucket_transcript_source.path_format.object_prefixes #=> Array
    #   resp.transcript_source_setting.s3_bucket_transcript_source.path_format.object_prefixes[0] #=> String
    #   resp.transcript_source_setting.s3_bucket_transcript_source.transcript_format #=> String, one of "Lex"
    #   resp.transcript_source_setting.s3_bucket_transcript_source.transcript_filter.lex_transcript_filter.date_range_filter.start_date_time #=> Time
    #   resp.transcript_source_setting.s3_bucket_transcript_source.transcript_filter.lex_transcript_filter.date_range_filter.end_date_time #=> Time
    #   resp.transcript_source_setting.s3_bucket_transcript_source.kms_key_arn #=> String
    #   resp.encryption_setting.kms_key_arn #=> String
    #   resp.encryption_setting.bot_locale_export_password #=> String
    #   resp.encryption_setting.associated_transcripts_password #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateBotRecommendation AWS API Documentation
    #
    # @overload update_bot_recommendation(params = {})
    # @param [Hash] params ({})
    def update_bot_recommendation(params = {}, options = {})
      req = build_request(:update_bot_recommendation, params)
      req.send_request(options)
    end

    # Updates the password used to protect an export zip archive.
    #
    # The password is not required. If you don't supply a password, Amazon
    # Lex generates a zip file that is not protected by a password. This is
    # the archive that is available at the pre-signed S3 URL provided by the
    # [DescribeExport][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lexv2/latest/APIReference/API_DescribeExport.html
    #
    # @option params [required, String] :export_id
    #   The unique identifier Amazon Lex assigned to the export.
    #
    # @option params [String] :file_password
    #   The new password to use to encrypt the export zip archive.
    #
    # @return [Types::UpdateExportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateExportResponse#export_id #export_id} => String
    #   * {Types::UpdateExportResponse#resource_specification #resource_specification} => Types::ExportResourceSpecification
    #   * {Types::UpdateExportResponse#file_format #file_format} => String
    #   * {Types::UpdateExportResponse#export_status #export_status} => String
    #   * {Types::UpdateExportResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::UpdateExportResponse#last_updated_date_time #last_updated_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_export({
    #     export_id: "Id", # required
    #     file_password: "ImportExportFilePassword",
    #   })
    #
    # @example Response structure
    #
    #   resp.export_id #=> String
    #   resp.resource_specification.bot_export_specification.bot_id #=> String
    #   resp.resource_specification.bot_export_specification.bot_version #=> String
    #   resp.resource_specification.bot_locale_export_specification.bot_id #=> String
    #   resp.resource_specification.bot_locale_export_specification.bot_version #=> String
    #   resp.resource_specification.bot_locale_export_specification.locale_id #=> String
    #   resp.resource_specification.custom_vocabulary_export_specification.bot_id #=> String
    #   resp.resource_specification.custom_vocabulary_export_specification.bot_version #=> String
    #   resp.resource_specification.custom_vocabulary_export_specification.locale_id #=> String
    #   resp.resource_specification.test_set_export_specification.test_set_id #=> String
    #   resp.file_format #=> String, one of "LexJson", "TSV", "CSV"
    #   resp.export_status #=> String, one of "InProgress", "Completed", "Failed", "Deleting"
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateExport AWS API Documentation
    #
    # @overload update_export(params = {})
    # @param [Hash] params ({})
    def update_export(params = {}, options = {})
      req = build_request(:update_export, params)
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
    #   information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #
    # @option params [Types::InitialResponseSetting] :initial_response_setting
    #   Configuration settings for a response sent to the user before Amazon
    #   Lex starts eliciting slots.
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
    #   * {Types::UpdateIntentResponse#initial_response_setting #initial_response_setting} => Types::InitialResponseSetting
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateIntent AWS API Documentation
    #
    # @overload update_intent(params = {})
    # @param [Hash] params ({})
    def update_intent(params = {}, options = {})
      req = build_request(:update_intent, params)
      req.send_request(options)
    end

    # Replaces the existing resource policy for a bot or bot alias with a
    # new one. If the policy doesn't exist, Amazon Lex returns an
    # exception.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the bot or bot alias that the
    #   resource policy is attached to.
    #
    # @option params [required, String] :policy
    #   A resource policy to add to the resource. The policy is a JSON
    #   structure that contains one or more statements that define the policy.
    #   The policy must follow the IAM syntax. For more information about the
    #   contents of a JSON policy document, see [ IAM JSON policy reference
    #   ][1].
    #
    #   If the policy isn't valid, Amazon Lex returns a validation exception.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html
    #
    # @option params [String] :expected_revision_id
    #   The identifier of the revision of the policy to update. If this
    #   revision ID doesn't match the current revision ID, Amazon Lex throws
    #   an exception.
    #
    #   If you don't specify a revision, Amazon Lex overwrites the contents
    #   of the policy with the new values.
    #
    # @return [Types::UpdateResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateResourcePolicyResponse#resource_arn #resource_arn} => String
    #   * {Types::UpdateResourcePolicyResponse#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resource_policy({
    #     resource_arn: "AmazonResourceName", # required
    #     policy: "Policy", # required
    #     expected_revision_id: "RevisionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateResourcePolicy AWS API Documentation
    #
    # @overload update_resource_policy(params = {})
    # @param [Hash] params ({})
    def update_resource_policy(params = {}, options = {})
      req = build_request(:update_resource_policy, params)
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
    # @option params [String] :slot_type_id
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
    #   see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #
    # @option params [required, String] :intent_id
    #   The identifier of the intent that contains the slot.
    #
    # @option params [Types::MultipleValuesSetting] :multiple_values_setting
    #   Determines whether the slot accepts multiple values in one response.
    #   Multiple value slots are only available in the en-US locale. If you
    #   set this value to `true` in any other locale, Amazon Lex throws a
    #   `ValidationException`.
    #
    #   If the `multipleValuesSetting` is not set, the default value is
    #   `false`.
    #
    # @option params [Types::SubSlotSetting] :sub_slot_setting
    #   Specifications for the constituent sub slots and the expression for
    #   the composite slot.
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
    #   * {Types::UpdateSlotResponse#multiple_values_setting #multiple_values_setting} => Types::MultipleValuesSetting
    #   * {Types::UpdateSlotResponse#sub_slot_setting #sub_slot_setting} => Types::SubSlotSetting
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
    #   resp.value_elicitation_setting.prompt_specification.message_selection_strategy #=> String, one of "Random", "Ordered"
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification #=> Hash
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].allowed_input_types.allow_audio_input #=> Boolean
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].allowed_input_types.allow_dtmf_input #=> Boolean
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.start_timeout_ms #=> Integer
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.audio_specification.max_length_ms #=> Integer
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.audio_specification.end_timeout_ms #=> Integer
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.dtmf_specification.max_length #=> Integer
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.dtmf_specification.end_timeout_ms #=> Integer
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.dtmf_specification.deletion_character #=> String
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.dtmf_specification.end_character #=> String
    #   resp.value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].text_input_specification.start_timeout_ms #=> Integer
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
    #   resp.value_elicitation_setting.wait_and_continue_specification.active #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.capture_next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.active #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].condition.expression_string #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.conditional_branches[0].response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.capture_conditional.default_branch.response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.failure_next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.active #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].condition.expression_string #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.conditional_branches[0].response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.failure_conditional.default_branch.response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.enable_code_hook_invocation #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.active #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.invocation_label #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.active #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].condition.expression_string #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branches[0].response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.active #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].condition.expression_string #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branches[0].response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.active #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].condition.expression_string #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branches[0].response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.dialog_action.type #=> String, one of "ElicitIntent", "StartIntent", "ElicitSlot", "EvaluateConditional", "InvokeDialogCodeHook", "ConfirmIntent", "FulfillIntent", "CloseIntent", "EndConversation"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.dialog_action.slot_to_elicit #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.dialog_action.suppress_next_message #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.intent.name #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.intent.slots #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.intent.slots["Name"].shape #=> String, one of "Scalar", "List"
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.intent.slots["Name"].value.interpreted_value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.intent.slots["Name"].values #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.intent.slots["Name"].values[0] #=> Types::SlotValueOverride
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.session_attributes #=> Hash
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.session_attributes["NonEmptyString"] #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].message.custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].message.ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].message.image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.value_elicitation_setting.slot_capture_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.allow_interrupt #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.elicitation_code_hook.enable_code_hook_invocation #=> Boolean
    #   resp.value_elicitation_setting.slot_capture_setting.elicitation_code_hook.invocation_label #=> String
    #   resp.obfuscation_setting.obfuscation_setting_type #=> String, one of "None", "DefaultObfuscation"
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.intent_id #=> String
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #   resp.multiple_values_setting.allow_multiple_values #=> Boolean
    #   resp.sub_slot_setting.expression #=> String
    #   resp.sub_slot_setting.slot_specifications #=> Hash
    #   resp.sub_slot_setting.slot_specifications["Name"].slot_type_id #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.default_value_specification.default_value_list #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.default_value_specification.default_value_list[0].default_value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].message.plain_text_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].message.custom_payload.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].message.ssml_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.title #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.max_retries #=> Integer
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.allow_interrupt #=> Boolean
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.message_selection_strategy #=> String, one of "Random", "Ordered"
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification #=> Hash
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].allow_interrupt #=> Boolean
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].allowed_input_types.allow_audio_input #=> Boolean
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].allowed_input_types.allow_dtmf_input #=> Boolean
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.start_timeout_ms #=> Integer
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.audio_specification.max_length_ms #=> Integer
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.audio_specification.end_timeout_ms #=> Integer
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.dtmf_specification.max_length #=> Integer
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.dtmf_specification.end_timeout_ms #=> Integer
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.dtmf_specification.deletion_character #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].audio_and_dtmf_input_specification.dtmf_specification.end_character #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.prompt_specification.prompt_attempts_specification["PromptAttempt"].text_input_specification.start_timeout_ms #=> Integer
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.sample_utterances #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.sample_utterances[0].utterance #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.waiting_response.allow_interrupt #=> Boolean
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.continue_response.allow_interrupt #=> Boolean
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.buttons #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].plain_text_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].custom_payload.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].ssml_message.value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.title #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.subtitle #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.image_url #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.buttons #=> Array
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.buttons[0].text #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups[0].variations[0].image_response_card.buttons[0].value #=> String
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.frequency_in_seconds #=> Integer
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.timeout_in_seconds #=> Integer
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.still_waiting_response.allow_interrupt #=> Boolean
    #   resp.sub_slot_setting.slot_specifications["Name"].value_elicitation_setting.wait_and_continue_specification.active #=> Boolean
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
    # @option params [Types::SlotValueSelectionSetting] :value_selection_setting
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
    #   information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #
    # @option params [Types::ExternalSourceSetting] :external_source_setting
    #   Provides information about the external source of the slot type's
    #   definition.
    #
    # @option params [Types::CompositeSlotTypeSetting] :composite_slot_type_setting
    #   Specifications for a composite slot type.
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
    #   * {Types::UpdateSlotTypeResponse#external_source_setting #external_source_setting} => Types::ExternalSourceSetting
    #   * {Types::UpdateSlotTypeResponse#composite_slot_type_setting #composite_slot_type_setting} => Types::CompositeSlotTypeSetting
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
    #     value_selection_setting: {
    #       resolution_strategy: "OriginalValue", # required, accepts OriginalValue, TopResolution, Concatenation
    #       regex_filter: {
    #         pattern: "RegexPattern", # required
    #       },
    #       advanced_recognition_setting: {
    #         audio_recognition_strategy: "UseSlotValuesAsCustomVocabulary", # accepts UseSlotValuesAsCustomVocabulary
    #       },
    #     },
    #     parent_slot_type_signature: "SlotTypeSignature",
    #     bot_id: "Id", # required
    #     bot_version: "DraftBotVersion", # required
    #     locale_id: "LocaleId", # required
    #     external_source_setting: {
    #       grammar_slot_type_setting: {
    #         source: {
    #           s3_bucket_name: "S3BucketName", # required
    #           s3_object_key: "S3ObjectPath", # required
    #           kms_key_arn: "KmsKeyArn",
    #         },
    #       },
    #     },
    #     composite_slot_type_setting: {
    #       sub_slots: [
    #         {
    #           name: "Name", # required
    #           slot_type_id: "BuiltInOrCustomSlotTypeId", # required
    #         },
    #       ],
    #     },
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
    #   resp.value_selection_setting.resolution_strategy #=> String, one of "OriginalValue", "TopResolution", "Concatenation"
    #   resp.value_selection_setting.regex_filter.pattern #=> String
    #   resp.value_selection_setting.advanced_recognition_setting.audio_recognition_strategy #=> String, one of "UseSlotValuesAsCustomVocabulary"
    #   resp.parent_slot_type_signature #=> String
    #   resp.bot_id #=> String
    #   resp.bot_version #=> String
    #   resp.locale_id #=> String
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #   resp.external_source_setting.grammar_slot_type_setting.source.s3_bucket_name #=> String
    #   resp.external_source_setting.grammar_slot_type_setting.source.s3_object_key #=> String
    #   resp.external_source_setting.grammar_slot_type_setting.source.kms_key_arn #=> String
    #   resp.composite_slot_type_setting.sub_slots #=> Array
    #   resp.composite_slot_type_setting.sub_slots[0].name #=> String
    #   resp.composite_slot_type_setting.sub_slots[0].slot_type_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateSlotType AWS API Documentation
    #
    # @overload update_slot_type(params = {})
    # @param [Hash] params ({})
    def update_slot_type(params = {}, options = {})
      req = build_request(:update_slot_type, params)
      req.send_request(options)
    end

    # The action to update the test set.
    #
    # @option params [required, String] :test_set_id
    #   The test set Id for which update test operation to be performed.
    #
    # @option params [required, String] :test_set_name
    #   The new test set name.
    #
    # @option params [String] :description
    #   The new test set description.
    #
    # @return [Types::UpdateTestSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTestSetResponse#test_set_id #test_set_id} => String
    #   * {Types::UpdateTestSetResponse#test_set_name #test_set_name} => String
    #   * {Types::UpdateTestSetResponse#description #description} => String
    #   * {Types::UpdateTestSetResponse#modality #modality} => String
    #   * {Types::UpdateTestSetResponse#status #status} => String
    #   * {Types::UpdateTestSetResponse#role_arn #role_arn} => String
    #   * {Types::UpdateTestSetResponse#num_turns #num_turns} => Integer
    #   * {Types::UpdateTestSetResponse#storage_location #storage_location} => Types::TestSetStorageLocation
    #   * {Types::UpdateTestSetResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::UpdateTestSetResponse#last_updated_date_time #last_updated_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_test_set({
    #     test_set_id: "Id", # required
    #     test_set_name: "Name", # required
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.test_set_id #=> String
    #   resp.test_set_name #=> String
    #   resp.description #=> String
    #   resp.modality #=> String, one of "Text", "Audio"
    #   resp.status #=> String, one of "Importing", "PendingAnnotation", "Deleting", "ValidationError", "Ready"
    #   resp.role_arn #=> String
    #   resp.num_turns #=> Integer
    #   resp.storage_location.s3_bucket_name #=> String
    #   resp.storage_location.s3_path #=> String
    #   resp.storage_location.kms_key_arn #=> String
    #   resp.creation_date_time #=> Time
    #   resp.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateTestSet AWS API Documentation
    #
    # @overload update_test_set(params = {})
    # @param [Hash] params ({})
    def update_test_set(params = {}, options = {})
      req = build_request(:update_test_set, params)
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
      context[:gem_version] = '1.38.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name                          | params                        | :delay   | :max_attempts |
    # | ------------------------------------ | ----------------------------- | -------- | ------------- |
    # | bot_alias_available                  | {Client#describe_bot_alias}   | 10       | 35            |
    # | bot_available                        | {Client#describe_bot}         | 10       | 35            |
    # | bot_export_completed                 | {Client#describe_export}      | 10       | 35            |
    # | bot_import_completed                 | {Client#describe_import}      | 10       | 35            |
    # | bot_locale_built                     | {Client#describe_bot_locale}  | 10       | 35            |
    # | bot_locale_created                   | {Client#describe_bot_locale}  | 10       | 35            |
    # | bot_locale_express_testing_available | {Client#describe_bot_locale}  | 10       | 35            |
    # | bot_version_available                | {Client#describe_bot_version} | 10       | 35            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts
    # @option options [Integer] :delay
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    def wait_until(waiter_name, params = {}, options = {})
      w = waiter(waiter_name, options)
      yield(w.waiter) if block_given? # deprecated
      w.wait(params)
    end

    # @api private
    # @deprecated
    def waiter_names
      waiters.keys
    end

    private

    # @param [Symbol] waiter_name
    # @param [Hash] options ({})
    def waiter(waiter_name, options = {})
      waiter_class = waiters[waiter_name]
      if waiter_class
        waiter_class.new(options.merge(client: self))
      else
        raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
      end
    end

    def waiters
      {
        bot_alias_available: Waiters::BotAliasAvailable,
        bot_available: Waiters::BotAvailable,
        bot_export_completed: Waiters::BotExportCompleted,
        bot_import_completed: Waiters::BotImportCompleted,
        bot_locale_built: Waiters::BotLocaleBuilt,
        bot_locale_created: Waiters::BotLocaleCreated,
        bot_locale_express_testing_available: Waiters::BotLocaleExpressTestingAvailable,
        bot_version_available: Waiters::BotVersionAvailable
      }
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
