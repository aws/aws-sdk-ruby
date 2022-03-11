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
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:transcribeservice)

module Aws::TranscribeService
  # An API client for TranscribeService.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::TranscribeService::Client.new(
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

    @identifier = :transcribeservice

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
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

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
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
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

    # Creates a call analytics category. Amazon Transcribe applies the
    # conditions specified by your call analytics categories to your call
    # analytics jobs. For each analytics category, you must create between 1
    # and 20 rules. For example, you can create a 'greeting' category with
    # a rule that flags calls in which your agent does not use a specified
    # phrase (for example: "Please note this call may be recorded.") in
    # the first 15 seconds of the call. When you start a call analytics job,
    # Amazon Transcribe applies all your existing call analytics categories
    # to that job.
    #
    # @option params [required, String] :category_name
    #   A unique name, chosen by you, for your call analytics category. For
    #   example, `sentiment-positive-last30seconds`.
    #
    # @option params [required, Array<Types::Rule>] :rules
    #   Rules make up a call analytics category. When creating a call
    #   analytics category, you must create between 1 and 20 rules for your
    #   category. For each rule, you specify a filter you want applied to the
    #   attributes of a call. For example, you can choose a sentiment filter
    #   that detects if a customer's sentiment was positive during the last
    #   30 seconds of the call.
    #
    # @return [Types::CreateCallAnalyticsCategoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCallAnalyticsCategoryResponse#category_properties #category_properties} => Types::CategoryProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_call_analytics_category({
    #     category_name: "CategoryName", # required
    #     rules: [ # required
    #       {
    #         non_talk_time_filter: {
    #           threshold: 1,
    #           absolute_time_range: {
    #             start_time: 1,
    #             end_time: 1,
    #             first: 1,
    #             last: 1,
    #           },
    #           relative_time_range: {
    #             start_percentage: 1,
    #             end_percentage: 1,
    #             first: 1,
    #             last: 1,
    #           },
    #           negate: false,
    #         },
    #         interruption_filter: {
    #           threshold: 1,
    #           participant_role: "AGENT", # accepts AGENT, CUSTOMER
    #           absolute_time_range: {
    #             start_time: 1,
    #             end_time: 1,
    #             first: 1,
    #             last: 1,
    #           },
    #           relative_time_range: {
    #             start_percentage: 1,
    #             end_percentage: 1,
    #             first: 1,
    #             last: 1,
    #           },
    #           negate: false,
    #         },
    #         transcript_filter: {
    #           transcript_filter_type: "EXACT", # required, accepts EXACT
    #           absolute_time_range: {
    #             start_time: 1,
    #             end_time: 1,
    #             first: 1,
    #             last: 1,
    #           },
    #           relative_time_range: {
    #             start_percentage: 1,
    #             end_percentage: 1,
    #             first: 1,
    #             last: 1,
    #           },
    #           participant_role: "AGENT", # accepts AGENT, CUSTOMER
    #           negate: false,
    #           targets: ["NonEmptyString"], # required
    #         },
    #         sentiment_filter: {
    #           sentiments: ["POSITIVE"], # required, accepts POSITIVE, NEGATIVE, NEUTRAL, MIXED
    #           absolute_time_range: {
    #             start_time: 1,
    #             end_time: 1,
    #             first: 1,
    #             last: 1,
    #           },
    #           relative_time_range: {
    #             start_percentage: 1,
    #             end_percentage: 1,
    #             first: 1,
    #             last: 1,
    #           },
    #           participant_role: "AGENT", # accepts AGENT, CUSTOMER
    #           negate: false,
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.category_properties.category_name #=> String
    #   resp.category_properties.rules #=> Array
    #   resp.category_properties.rules[0].non_talk_time_filter.threshold #=> Integer
    #   resp.category_properties.rules[0].non_talk_time_filter.absolute_time_range.start_time #=> Integer
    #   resp.category_properties.rules[0].non_talk_time_filter.absolute_time_range.end_time #=> Integer
    #   resp.category_properties.rules[0].non_talk_time_filter.absolute_time_range.first #=> Integer
    #   resp.category_properties.rules[0].non_talk_time_filter.absolute_time_range.last #=> Integer
    #   resp.category_properties.rules[0].non_talk_time_filter.relative_time_range.start_percentage #=> Integer
    #   resp.category_properties.rules[0].non_talk_time_filter.relative_time_range.end_percentage #=> Integer
    #   resp.category_properties.rules[0].non_talk_time_filter.relative_time_range.first #=> Integer
    #   resp.category_properties.rules[0].non_talk_time_filter.relative_time_range.last #=> Integer
    #   resp.category_properties.rules[0].non_talk_time_filter.negate #=> Boolean
    #   resp.category_properties.rules[0].interruption_filter.threshold #=> Integer
    #   resp.category_properties.rules[0].interruption_filter.participant_role #=> String, one of "AGENT", "CUSTOMER"
    #   resp.category_properties.rules[0].interruption_filter.absolute_time_range.start_time #=> Integer
    #   resp.category_properties.rules[0].interruption_filter.absolute_time_range.end_time #=> Integer
    #   resp.category_properties.rules[0].interruption_filter.absolute_time_range.first #=> Integer
    #   resp.category_properties.rules[0].interruption_filter.absolute_time_range.last #=> Integer
    #   resp.category_properties.rules[0].interruption_filter.relative_time_range.start_percentage #=> Integer
    #   resp.category_properties.rules[0].interruption_filter.relative_time_range.end_percentage #=> Integer
    #   resp.category_properties.rules[0].interruption_filter.relative_time_range.first #=> Integer
    #   resp.category_properties.rules[0].interruption_filter.relative_time_range.last #=> Integer
    #   resp.category_properties.rules[0].interruption_filter.negate #=> Boolean
    #   resp.category_properties.rules[0].transcript_filter.transcript_filter_type #=> String, one of "EXACT"
    #   resp.category_properties.rules[0].transcript_filter.absolute_time_range.start_time #=> Integer
    #   resp.category_properties.rules[0].transcript_filter.absolute_time_range.end_time #=> Integer
    #   resp.category_properties.rules[0].transcript_filter.absolute_time_range.first #=> Integer
    #   resp.category_properties.rules[0].transcript_filter.absolute_time_range.last #=> Integer
    #   resp.category_properties.rules[0].transcript_filter.relative_time_range.start_percentage #=> Integer
    #   resp.category_properties.rules[0].transcript_filter.relative_time_range.end_percentage #=> Integer
    #   resp.category_properties.rules[0].transcript_filter.relative_time_range.first #=> Integer
    #   resp.category_properties.rules[0].transcript_filter.relative_time_range.last #=> Integer
    #   resp.category_properties.rules[0].transcript_filter.participant_role #=> String, one of "AGENT", "CUSTOMER"
    #   resp.category_properties.rules[0].transcript_filter.negate #=> Boolean
    #   resp.category_properties.rules[0].transcript_filter.targets #=> Array
    #   resp.category_properties.rules[0].transcript_filter.targets[0] #=> String
    #   resp.category_properties.rules[0].sentiment_filter.sentiments #=> Array
    #   resp.category_properties.rules[0].sentiment_filter.sentiments[0] #=> String, one of "POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"
    #   resp.category_properties.rules[0].sentiment_filter.absolute_time_range.start_time #=> Integer
    #   resp.category_properties.rules[0].sentiment_filter.absolute_time_range.end_time #=> Integer
    #   resp.category_properties.rules[0].sentiment_filter.absolute_time_range.first #=> Integer
    #   resp.category_properties.rules[0].sentiment_filter.absolute_time_range.last #=> Integer
    #   resp.category_properties.rules[0].sentiment_filter.relative_time_range.start_percentage #=> Integer
    #   resp.category_properties.rules[0].sentiment_filter.relative_time_range.end_percentage #=> Integer
    #   resp.category_properties.rules[0].sentiment_filter.relative_time_range.first #=> Integer
    #   resp.category_properties.rules[0].sentiment_filter.relative_time_range.last #=> Integer
    #   resp.category_properties.rules[0].sentiment_filter.participant_role #=> String, one of "AGENT", "CUSTOMER"
    #   resp.category_properties.rules[0].sentiment_filter.negate #=> Boolean
    #   resp.category_properties.create_time #=> Time
    #   resp.category_properties.last_update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CreateCallAnalyticsCategory AWS API Documentation
    #
    # @overload create_call_analytics_category(params = {})
    # @param [Hash] params ({})
    def create_call_analytics_category(params = {}, options = {})
      req = build_request(:create_call_analytics_category, params)
      req.send_request(options)
    end

    # Creates a new custom language model. When creating a new language
    # model, you must specify if you want a Wideband (audio sample rates
    # over 16,000 Hz) or Narrowband (audio sample rates under 16,000 Hz)
    # base model. You then include the S3 URI location of your training and
    # tuning files, the language for the model, a unique name, and any tags
    # you want associated with your model.
    #
    # @option params [required, String] :language_code
    #   The language of your custom language model; note that the language
    #   code you select must match the language of your training and tuning
    #   data.
    #
    # @option params [required, String] :base_model_name
    #   The Amazon Transcribe standard language model, or base model, used to
    #   create your custom language model. Amazon Transcribe offers two
    #   options for base models: Wideband and Narrowband.
    #
    #   If the audio you want to transcribe has a sample rate of 16,000 Hz or
    #   greater, choose `WideBand`. To transcribe audio with a sample rate
    #   less than 16,000 Hz, choose `NarrowBand`.
    #
    # @option params [required, String] :model_name
    #   The name of your new custom language model.
    #
    #   This name is case sensitive, cannot contain spaces, and must be unique
    #   within an Amazon Web Services account. If you try to create a language
    #   model with the same name as a previous language model, you get a
    #   `ConflictException` error.
    #
    # @option params [required, Types::InputDataConfig] :input_data_config
    #   Contains your data access role ARN (Amazon Resource Name) and the
    #   Amazon S3 locations of your training (`S3Uri`) and tuning
    #   (`TuningDataS3Uri`) data.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Optionally add tags, each in the form of a key:value pair, to your new
    #   language model. See also: .
    #
    # @return [Types::CreateLanguageModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLanguageModelResponse#language_code #language_code} => String
    #   * {Types::CreateLanguageModelResponse#base_model_name #base_model_name} => String
    #   * {Types::CreateLanguageModelResponse#model_name #model_name} => String
    #   * {Types::CreateLanguageModelResponse#input_data_config #input_data_config} => Types::InputDataConfig
    #   * {Types::CreateLanguageModelResponse#model_status #model_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_language_model({
    #     language_code: "en-US", # required, accepts en-US, hi-IN, es-US, en-GB, en-AU
    #     base_model_name: "NarrowBand", # required, accepts NarrowBand, WideBand
    #     model_name: "ModelName", # required
    #     input_data_config: { # required
    #       s3_uri: "Uri", # required
    #       tuning_data_s3_uri: "Uri",
    #       data_access_role_arn: "DataAccessRoleArn", # required
    #     },
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
    #   resp.language_code #=> String, one of "en-US", "hi-IN", "es-US", "en-GB", "en-AU"
    #   resp.base_model_name #=> String, one of "NarrowBand", "WideBand"
    #   resp.model_name #=> String
    #   resp.input_data_config.s3_uri #=> String
    #   resp.input_data_config.tuning_data_s3_uri #=> String
    #   resp.input_data_config.data_access_role_arn #=> String
    #   resp.model_status #=> String, one of "IN_PROGRESS", "FAILED", "COMPLETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CreateLanguageModel AWS API Documentation
    #
    # @overload create_language_model(params = {})
    # @param [Hash] params ({})
    def create_language_model(params = {}, options = {})
      req = build_request(:create_language_model, params)
      req.send_request(options)
    end

    # Creates a new custom medical vocabulary.
    #
    # When creating a new medical vocabulary, you must upload a text file
    # that contains your new entries, phrases, and terms into an S3 bucket.
    # Note that this differs from , where you can include a list of terms
    # within your request using the `Phrases` flag, as
    # `CreateMedicalVocabulary` does not support the `Phrases` flag.
    #
    # For more information on creating a custom vocabulary text file, see
    # [Creating a custom vocabulary][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary-create.html
    #
    # @option params [required, String] :vocabulary_name
    #   The name of your new vocabulary.
    #
    #   This name is case sensitive, cannot contain spaces, and must be unique
    #   within an Amazon Web Services account. If you try to create a
    #   vocabulary with the same name as a previous vocabulary, you get a
    #   `ConflictException` error.
    #
    # @option params [required, String] :language_code
    #   The language code that represents the language of the entries in your
    #   custom vocabulary. Note that U.S. English (`en-US`) is the only
    #   language supported with Amazon Transcribe Medical.
    #
    # @option params [required, String] :vocabulary_file_uri
    #   The Amazon S3 location (URI) of the text file that contains your
    #   custom vocabulary. The URI must be in the same Amazon Web Services
    #   Region as the resource that you're calling.
    #
    #   Here's an example URI path:
    #
    #   `https://s3.us-east-1.amazonaws.com/my-s3-bucket/my-vocab-file.txt`
    #
    # @option params [Array<Types::Tag>] :tags
    #   Adds one or more tags, each in the form of a key:value pair, to a new
    #   medical vocabulary at the time you create the new vocabulary.
    #
    #   To learn more about using tags with Amazon Transcribe, refer to
    #   [Tagging resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html
    #
    # @return [Types::CreateMedicalVocabularyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMedicalVocabularyResponse#vocabulary_name #vocabulary_name} => String
    #   * {Types::CreateMedicalVocabularyResponse#language_code #language_code} => String
    #   * {Types::CreateMedicalVocabularyResponse#vocabulary_state #vocabulary_state} => String
    #   * {Types::CreateMedicalVocabularyResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::CreateMedicalVocabularyResponse#failure_reason #failure_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_medical_vocabulary({
    #     vocabulary_name: "VocabularyName", # required
    #     language_code: "af-ZA", # required, accepts af-ZA, ar-AE, ar-SA, cy-GB, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, ga-IE, gd-GB, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ
    #     vocabulary_file_uri: "Uri", # required
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
    #   resp.vocabulary_name #=> String
    #   resp.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"
    #   resp.vocabulary_state #=> String, one of "PENDING", "READY", "FAILED"
    #   resp.last_modified_time #=> Time
    #   resp.failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CreateMedicalVocabulary AWS API Documentation
    #
    # @overload create_medical_vocabulary(params = {})
    # @param [Hash] params ({})
    def create_medical_vocabulary(params = {}, options = {})
      req = build_request(:create_medical_vocabulary, params)
      req.send_request(options)
    end

    # Creates a new custom vocabulary.
    #
    # When creating a new medical vocabulary, you can either upload a text
    # file that contains your new entries, phrases, and terms into an S3
    # bucket or include a list of terms directly in your request using the
    # `Phrases` flag.
    #
    # For more information on creating a custom vocabulary, see [Creating a
    # custom vocabulary][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary-create.html
    #
    # @option params [required, String] :vocabulary_name
    #   The name of your new vocabulary.
    #
    #   This name is case sensitive, cannot contain spaces, and must be unique
    #   within an Amazon Web Services account. If you try to create a
    #   vocabulary with the same name as a previous vocabulary, you get a
    #   `ConflictException` error.
    #
    # @option params [required, String] :language_code
    #   The language code that represents the language of the entries in your
    #   custom vocabulary. Each vocabulary must contain terms in only one
    #   language. For a list of languages and their corresponding language
    #   codes, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
    #
    # @option params [Array<String>] :phrases
    #   Use this flag to include a list of terms within your request.
    #
    #   Note that if you include `Phrases` in your request, you cannot use
    #   `VocabularyFileUri`; you must choose one or the other.
    #
    # @option params [String] :vocabulary_file_uri
    #   The S3 location of the text file that contains your custom vocabulary.
    #   The URI must be located in the same region as the API endpoint you're
    #   calling.
    #
    #   Here's an example URI path:
    #
    #   `https://s3.us-east-1.amazonaws.com/my-s3-bucket/my-vocab-file.txt`
    #
    #   Note that if you include `VocabularyFileUri` in your request, you
    #   cannot use the `Phrases` flag; you must choose one or the other.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Adds one or more tags, each in the form of a key:value pair, to a new
    #   custom vocabulary at the time you create this new vocabulary.
    #
    # @return [Types::CreateVocabularyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVocabularyResponse#vocabulary_name #vocabulary_name} => String
    #   * {Types::CreateVocabularyResponse#language_code #language_code} => String
    #   * {Types::CreateVocabularyResponse#vocabulary_state #vocabulary_state} => String
    #   * {Types::CreateVocabularyResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::CreateVocabularyResponse#failure_reason #failure_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vocabulary({
    #     vocabulary_name: "VocabularyName", # required
    #     language_code: "af-ZA", # required, accepts af-ZA, ar-AE, ar-SA, cy-GB, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, ga-IE, gd-GB, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ
    #     phrases: ["Phrase"],
    #     vocabulary_file_uri: "Uri",
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
    #   resp.vocabulary_name #=> String
    #   resp.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"
    #   resp.vocabulary_state #=> String, one of "PENDING", "READY", "FAILED"
    #   resp.last_modified_time #=> Time
    #   resp.failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CreateVocabulary AWS API Documentation
    #
    # @overload create_vocabulary(params = {})
    # @param [Hash] params ({})
    def create_vocabulary(params = {}, options = {})
      req = build_request(:create_vocabulary, params)
      req.send_request(options)
    end

    # Creates a new vocabulary filter that you can use to filter words from
    # your transcription output. For example, you can use this operation to
    # remove profanity from your transcript.
    #
    # @option params [required, String] :vocabulary_filter_name
    #   The name of your new vocabulary filter.
    #
    #   This name is case sensitive, cannot contain spaces, and must be unique
    #   within an Amazon Web Services account. If you try to create a
    #   vocabulary filter with the same name as a previous vocabulary filter,
    #   you get a `ConflictException` error.
    #
    # @option params [required, String] :language_code
    #   The language code of the words in the vocabulary filter. All words in
    #   the filter must be in the same language. The vocabulary filter can
    #   only be used with transcription jobs in the specified language.
    #
    # @option params [Array<String>] :words
    #   The words you want in your vocabulary filter. Only use characters
    #   specified in the [Character sets][1] for the language you're
    #   transcribing.
    #
    #   Note that if you include `Words` in your request, you cannot use
    #   `VocabularyFilterFileUri`; you must choose one or the other.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html
    #
    # @option params [String] :vocabulary_filter_file_uri
    #   The Amazon S3 location of a text file used as input to create the
    #   vocabulary filter. Only use characters from the character set defined
    #   for custom vocabularies. For a list of character sets, see [Character
    #   Sets for Custom Vocabularies][1].
    #
    #   Your vocabulary filter file must be less than 50 KB in size.
    #
    #   Note that if you include `VocabularyFilterFileUri` in your request,
    #   you cannot use `Words`; you must choose one or the other.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   Adds one or more tags, each in the form of a key:value pair, to a new
    #   vocabulary filter at the time you create this new vocabulary filter.
    #
    # @return [Types::CreateVocabularyFilterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVocabularyFilterResponse#vocabulary_filter_name #vocabulary_filter_name} => String
    #   * {Types::CreateVocabularyFilterResponse#language_code #language_code} => String
    #   * {Types::CreateVocabularyFilterResponse#last_modified_time #last_modified_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vocabulary_filter({
    #     vocabulary_filter_name: "VocabularyFilterName", # required
    #     language_code: "af-ZA", # required, accepts af-ZA, ar-AE, ar-SA, cy-GB, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, ga-IE, gd-GB, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ
    #     words: ["Word"],
    #     vocabulary_filter_file_uri: "Uri",
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
    #   resp.vocabulary_filter_name #=> String
    #   resp.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"
    #   resp.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CreateVocabularyFilter AWS API Documentation
    #
    # @overload create_vocabulary_filter(params = {})
    # @param [Hash] params ({})
    def create_vocabulary_filter(params = {}, options = {})
      req = build_request(:create_vocabulary_filter, params)
      req.send_request(options)
    end

    # Deletes a call analytics category. To use this operation, specify the
    # name of the category you want to delete using `CategoryName`.
    #
    # @option params [required, String] :category_name
    #   The name of the call analytics category you want to delete. Category
    #   names are case-sensitive.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_call_analytics_category({
    #     category_name: "CategoryName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DeleteCallAnalyticsCategory AWS API Documentation
    #
    # @overload delete_call_analytics_category(params = {})
    # @param [Hash] params ({})
    def delete_call_analytics_category(params = {}, options = {})
      req = build_request(:delete_call_analytics_category, params)
      req.send_request(options)
    end

    # Deletes a call analytics job. To use this operation, specify the name
    # of the job you want to delete using `CallAnalyticsJobName`.
    #
    # @option params [required, String] :call_analytics_job_name
    #   The name of the call analytics job you want to delete. Job names are
    #   case-sensitive.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_call_analytics_job({
    #     call_analytics_job_name: "CallAnalyticsJobName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DeleteCallAnalyticsJob AWS API Documentation
    #
    # @overload delete_call_analytics_job(params = {})
    # @param [Hash] params ({})
    def delete_call_analytics_job(params = {}, options = {})
      req = build_request(:delete_call_analytics_job, params)
      req.send_request(options)
    end

    # Deletes a custom language model. To use this operation, specify the
    # name of the language model you want to delete using `ModelName`.
    #
    # @option params [required, String] :model_name
    #   The name of the model you want to delete. Model names are
    #   case-sensitive.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_language_model({
    #     model_name: "ModelName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DeleteLanguageModel AWS API Documentation
    #
    # @overload delete_language_model(params = {})
    # @param [Hash] params ({})
    def delete_language_model(params = {}, options = {})
      req = build_request(:delete_language_model, params)
      req.send_request(options)
    end

    # Deletes a medical transcription job, along with any related
    # information. To use this operation, specify the name of the job you
    # want to delete using `MedicalTranscriptionJobName`.
    #
    # @option params [required, String] :medical_transcription_job_name
    #   The name of the medical transcription job you want to delete. Job
    #   names are case-sensitive.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_medical_transcription_job({
    #     medical_transcription_job_name: "TranscriptionJobName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DeleteMedicalTranscriptionJob AWS API Documentation
    #
    # @overload delete_medical_transcription_job(params = {})
    # @param [Hash] params ({})
    def delete_medical_transcription_job(params = {}, options = {})
      req = build_request(:delete_medical_transcription_job, params)
      req.send_request(options)
    end

    # Deletes a custom medical vocabulary. To use this operation, specify
    # the name of the vocabulary you want to delete using `VocabularyName`.
    #
    # @option params [required, String] :vocabulary_name
    #   The name of the vocabulary that you want to delete. Vocabulary names
    #   are case-sensitive.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_medical_vocabulary({
    #     vocabulary_name: "VocabularyName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DeleteMedicalVocabulary AWS API Documentation
    #
    # @overload delete_medical_vocabulary(params = {})
    # @param [Hash] params ({})
    def delete_medical_vocabulary(params = {}, options = {})
      req = build_request(:delete_medical_vocabulary, params)
      req.send_request(options)
    end

    # Deletes a transcription job, along with any related information. To
    # use this operation, specify the name of the job you want to delete
    # using `TranscriptionJobName`.
    #
    # @option params [required, String] :transcription_job_name
    #   The name of the transcription job you want to delete. Job names are
    #   case-sensitive.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_transcription_job({
    #     transcription_job_name: "TranscriptionJobName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DeleteTranscriptionJob AWS API Documentation
    #
    # @overload delete_transcription_job(params = {})
    # @param [Hash] params ({})
    def delete_transcription_job(params = {}, options = {})
      req = build_request(:delete_transcription_job, params)
      req.send_request(options)
    end

    # Deletes a custom vocabulary. To use this operation, specify the name
    # of the vocabulary you want to delete using `VocabularyName`.
    #
    # @option params [required, String] :vocabulary_name
    #   The name of the vocabulary you want to delete. Vocabulary names are
    #   case-sensitive.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vocabulary({
    #     vocabulary_name: "VocabularyName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DeleteVocabulary AWS API Documentation
    #
    # @overload delete_vocabulary(params = {})
    # @param [Hash] params ({})
    def delete_vocabulary(params = {}, options = {})
      req = build_request(:delete_vocabulary, params)
      req.send_request(options)
    end

    # Deletes a vocabulary filter. To use this operation, specify the name
    # of the vocabulary filter you want to delete using
    # `VocabularyFilterName`.
    #
    # @option params [required, String] :vocabulary_filter_name
    #   The name of the vocabulary filter you want to delete. Vocabulary
    #   filter names are case-sensitive.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vocabulary_filter({
    #     vocabulary_filter_name: "VocabularyFilterName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DeleteVocabularyFilter AWS API Documentation
    #
    # @overload delete_vocabulary_filter(params = {})
    # @param [Hash] params ({})
    def delete_vocabulary_filter(params = {}, options = {})
      req = build_request(:delete_vocabulary_filter, params)
      req.send_request(options)
    end

    # Provides information about a specific custom language model in your
    # Amazon Web Services account.
    #
    # This operation also shows if the base language model you used to
    # create your custom language model has been updated. If Amazon
    # Transcribe has updated the base model, you can create a new custom
    # language model using the updated base model.
    #
    # If you tried to create a new custom language model and the request
    # wasn't successful, you can use this operation to help identify the
    # reason.
    #
    # @option params [required, String] :model_name
    #   The name of the custom language model you want described. Model names
    #   are case-sensitive.
    #
    # @return [Types::DescribeLanguageModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLanguageModelResponse#language_model #language_model} => Types::LanguageModel
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_language_model({
    #     model_name: "ModelName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.language_model.model_name #=> String
    #   resp.language_model.create_time #=> Time
    #   resp.language_model.last_modified_time #=> Time
    #   resp.language_model.language_code #=> String, one of "en-US", "hi-IN", "es-US", "en-GB", "en-AU"
    #   resp.language_model.base_model_name #=> String, one of "NarrowBand", "WideBand"
    #   resp.language_model.model_status #=> String, one of "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.language_model.upgrade_availability #=> Boolean
    #   resp.language_model.failure_reason #=> String
    #   resp.language_model.input_data_config.s3_uri #=> String
    #   resp.language_model.input_data_config.tuning_data_s3_uri #=> String
    #   resp.language_model.input_data_config.data_access_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DescribeLanguageModel AWS API Documentation
    #
    # @overload describe_language_model(params = {})
    # @param [Hash] params ({})
    def describe_language_model(params = {}, options = {})
      req = build_request(:describe_language_model, params)
      req.send_request(options)
    end

    # Retrieves information about a call analytics category.
    #
    # @option params [required, String] :category_name
    #   The name of the category you want information about. Category names
    #   are case sensitive.
    #
    # @return [Types::GetCallAnalyticsCategoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCallAnalyticsCategoryResponse#category_properties #category_properties} => Types::CategoryProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_call_analytics_category({
    #     category_name: "CategoryName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.category_properties.category_name #=> String
    #   resp.category_properties.rules #=> Array
    #   resp.category_properties.rules[0].non_talk_time_filter.threshold #=> Integer
    #   resp.category_properties.rules[0].non_talk_time_filter.absolute_time_range.start_time #=> Integer
    #   resp.category_properties.rules[0].non_talk_time_filter.absolute_time_range.end_time #=> Integer
    #   resp.category_properties.rules[0].non_talk_time_filter.absolute_time_range.first #=> Integer
    #   resp.category_properties.rules[0].non_talk_time_filter.absolute_time_range.last #=> Integer
    #   resp.category_properties.rules[0].non_talk_time_filter.relative_time_range.start_percentage #=> Integer
    #   resp.category_properties.rules[0].non_talk_time_filter.relative_time_range.end_percentage #=> Integer
    #   resp.category_properties.rules[0].non_talk_time_filter.relative_time_range.first #=> Integer
    #   resp.category_properties.rules[0].non_talk_time_filter.relative_time_range.last #=> Integer
    #   resp.category_properties.rules[0].non_talk_time_filter.negate #=> Boolean
    #   resp.category_properties.rules[0].interruption_filter.threshold #=> Integer
    #   resp.category_properties.rules[0].interruption_filter.participant_role #=> String, one of "AGENT", "CUSTOMER"
    #   resp.category_properties.rules[0].interruption_filter.absolute_time_range.start_time #=> Integer
    #   resp.category_properties.rules[0].interruption_filter.absolute_time_range.end_time #=> Integer
    #   resp.category_properties.rules[0].interruption_filter.absolute_time_range.first #=> Integer
    #   resp.category_properties.rules[0].interruption_filter.absolute_time_range.last #=> Integer
    #   resp.category_properties.rules[0].interruption_filter.relative_time_range.start_percentage #=> Integer
    #   resp.category_properties.rules[0].interruption_filter.relative_time_range.end_percentage #=> Integer
    #   resp.category_properties.rules[0].interruption_filter.relative_time_range.first #=> Integer
    #   resp.category_properties.rules[0].interruption_filter.relative_time_range.last #=> Integer
    #   resp.category_properties.rules[0].interruption_filter.negate #=> Boolean
    #   resp.category_properties.rules[0].transcript_filter.transcript_filter_type #=> String, one of "EXACT"
    #   resp.category_properties.rules[0].transcript_filter.absolute_time_range.start_time #=> Integer
    #   resp.category_properties.rules[0].transcript_filter.absolute_time_range.end_time #=> Integer
    #   resp.category_properties.rules[0].transcript_filter.absolute_time_range.first #=> Integer
    #   resp.category_properties.rules[0].transcript_filter.absolute_time_range.last #=> Integer
    #   resp.category_properties.rules[0].transcript_filter.relative_time_range.start_percentage #=> Integer
    #   resp.category_properties.rules[0].transcript_filter.relative_time_range.end_percentage #=> Integer
    #   resp.category_properties.rules[0].transcript_filter.relative_time_range.first #=> Integer
    #   resp.category_properties.rules[0].transcript_filter.relative_time_range.last #=> Integer
    #   resp.category_properties.rules[0].transcript_filter.participant_role #=> String, one of "AGENT", "CUSTOMER"
    #   resp.category_properties.rules[0].transcript_filter.negate #=> Boolean
    #   resp.category_properties.rules[0].transcript_filter.targets #=> Array
    #   resp.category_properties.rules[0].transcript_filter.targets[0] #=> String
    #   resp.category_properties.rules[0].sentiment_filter.sentiments #=> Array
    #   resp.category_properties.rules[0].sentiment_filter.sentiments[0] #=> String, one of "POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"
    #   resp.category_properties.rules[0].sentiment_filter.absolute_time_range.start_time #=> Integer
    #   resp.category_properties.rules[0].sentiment_filter.absolute_time_range.end_time #=> Integer
    #   resp.category_properties.rules[0].sentiment_filter.absolute_time_range.first #=> Integer
    #   resp.category_properties.rules[0].sentiment_filter.absolute_time_range.last #=> Integer
    #   resp.category_properties.rules[0].sentiment_filter.relative_time_range.start_percentage #=> Integer
    #   resp.category_properties.rules[0].sentiment_filter.relative_time_range.end_percentage #=> Integer
    #   resp.category_properties.rules[0].sentiment_filter.relative_time_range.first #=> Integer
    #   resp.category_properties.rules[0].sentiment_filter.relative_time_range.last #=> Integer
    #   resp.category_properties.rules[0].sentiment_filter.participant_role #=> String, one of "AGENT", "CUSTOMER"
    #   resp.category_properties.rules[0].sentiment_filter.negate #=> Boolean
    #   resp.category_properties.create_time #=> Time
    #   resp.category_properties.last_update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetCallAnalyticsCategory AWS API Documentation
    #
    # @overload get_call_analytics_category(params = {})
    # @param [Hash] params ({})
    def get_call_analytics_category(params = {}, options = {})
      req = build_request(:get_call_analytics_category, params)
      req.send_request(options)
    end

    # Retrieves information about a call analytics job.
    #
    # To view the job's status, refer to the `CallAnalyticsJobStatus`
    # field. If the status is `COMPLETED`, the job is finished. You can then
    # find your transcript at the URI specified in the `TranscriptFileUri`
    # field. If you enabled personally identifiable information (PII)
    # redaction, the redacted transcript appears in the
    # `RedactedTranscriptFileUri` field.
    #
    # @option params [required, String] :call_analytics_job_name
    #   The name of the analytics job you want information about. This value
    #   is case sensitive.
    #
    # @return [Types::GetCallAnalyticsJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCallAnalyticsJobResponse#call_analytics_job #call_analytics_job} => Types::CallAnalyticsJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_call_analytics_job({
    #     call_analytics_job_name: "CallAnalyticsJobName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.call_analytics_job.call_analytics_job_name #=> String
    #   resp.call_analytics_job.call_analytics_job_status #=> String, one of "QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.call_analytics_job.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"
    #   resp.call_analytics_job.media_sample_rate_hertz #=> Integer
    #   resp.call_analytics_job.media_format #=> String, one of "mp3", "mp4", "wav", "flac", "ogg", "amr", "webm"
    #   resp.call_analytics_job.media.media_file_uri #=> String
    #   resp.call_analytics_job.media.redacted_media_file_uri #=> String
    #   resp.call_analytics_job.transcript.transcript_file_uri #=> String
    #   resp.call_analytics_job.transcript.redacted_transcript_file_uri #=> String
    #   resp.call_analytics_job.start_time #=> Time
    #   resp.call_analytics_job.creation_time #=> Time
    #   resp.call_analytics_job.completion_time #=> Time
    #   resp.call_analytics_job.failure_reason #=> String
    #   resp.call_analytics_job.data_access_role_arn #=> String
    #   resp.call_analytics_job.identified_language_score #=> Float
    #   resp.call_analytics_job.settings.vocabulary_name #=> String
    #   resp.call_analytics_job.settings.vocabulary_filter_name #=> String
    #   resp.call_analytics_job.settings.vocabulary_filter_method #=> String, one of "remove", "mask", "tag"
    #   resp.call_analytics_job.settings.language_model_name #=> String
    #   resp.call_analytics_job.settings.content_redaction.redaction_type #=> String, one of "PII"
    #   resp.call_analytics_job.settings.content_redaction.redaction_output #=> String, one of "redacted", "redacted_and_unredacted"
    #   resp.call_analytics_job.settings.content_redaction.pii_entity_types #=> Array
    #   resp.call_analytics_job.settings.content_redaction.pii_entity_types[0] #=> String, one of "BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "ALL"
    #   resp.call_analytics_job.settings.language_options #=> Array
    #   resp.call_analytics_job.settings.language_options[0] #=> String, one of "af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"
    #   resp.call_analytics_job.settings.language_id_settings #=> Hash
    #   resp.call_analytics_job.settings.language_id_settings["LanguageCode"].vocabulary_name #=> String
    #   resp.call_analytics_job.settings.language_id_settings["LanguageCode"].vocabulary_filter_name #=> String
    #   resp.call_analytics_job.settings.language_id_settings["LanguageCode"].language_model_name #=> String
    #   resp.call_analytics_job.channel_definitions #=> Array
    #   resp.call_analytics_job.channel_definitions[0].channel_id #=> Integer
    #   resp.call_analytics_job.channel_definitions[0].participant_role #=> String, one of "AGENT", "CUSTOMER"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetCallAnalyticsJob AWS API Documentation
    #
    # @overload get_call_analytics_job(params = {})
    # @param [Hash] params ({})
    def get_call_analytics_job(params = {}, options = {})
      req = build_request(:get_call_analytics_job, params)
      req.send_request(options)
    end

    # Retrieves information about a medical transcription job.
    #
    # To view the job's status, refer to the `TranscriptionJobStatus`
    # field. If the status is `COMPLETED`, the job is finished. You can then
    # find your transcript at the URI specified in the `TranscriptFileUri`
    # field.
    #
    # @option params [required, String] :medical_transcription_job_name
    #   The name of the medical transcription job you want information about.
    #   This value is case sensitive.
    #
    # @return [Types::GetMedicalTranscriptionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMedicalTranscriptionJobResponse#medical_transcription_job #medical_transcription_job} => Types::MedicalTranscriptionJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_medical_transcription_job({
    #     medical_transcription_job_name: "TranscriptionJobName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.medical_transcription_job.medical_transcription_job_name #=> String
    #   resp.medical_transcription_job.transcription_job_status #=> String, one of "QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.medical_transcription_job.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"
    #   resp.medical_transcription_job.media_sample_rate_hertz #=> Integer
    #   resp.medical_transcription_job.media_format #=> String, one of "mp3", "mp4", "wav", "flac", "ogg", "amr", "webm"
    #   resp.medical_transcription_job.media.media_file_uri #=> String
    #   resp.medical_transcription_job.media.redacted_media_file_uri #=> String
    #   resp.medical_transcription_job.transcript.transcript_file_uri #=> String
    #   resp.medical_transcription_job.start_time #=> Time
    #   resp.medical_transcription_job.creation_time #=> Time
    #   resp.medical_transcription_job.completion_time #=> Time
    #   resp.medical_transcription_job.failure_reason #=> String
    #   resp.medical_transcription_job.settings.show_speaker_labels #=> Boolean
    #   resp.medical_transcription_job.settings.max_speaker_labels #=> Integer
    #   resp.medical_transcription_job.settings.channel_identification #=> Boolean
    #   resp.medical_transcription_job.settings.show_alternatives #=> Boolean
    #   resp.medical_transcription_job.settings.max_alternatives #=> Integer
    #   resp.medical_transcription_job.settings.vocabulary_name #=> String
    #   resp.medical_transcription_job.content_identification_type #=> String, one of "PHI"
    #   resp.medical_transcription_job.specialty #=> String, one of "PRIMARYCARE"
    #   resp.medical_transcription_job.type #=> String, one of "CONVERSATION", "DICTATION"
    #   resp.medical_transcription_job.tags #=> Array
    #   resp.medical_transcription_job.tags[0].key #=> String
    #   resp.medical_transcription_job.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetMedicalTranscriptionJob AWS API Documentation
    #
    # @overload get_medical_transcription_job(params = {})
    # @param [Hash] params ({})
    def get_medical_transcription_job(params = {}, options = {})
      req = build_request(:get_medical_transcription_job, params)
      req.send_request(options)
    end

    # Retrieves information about a medical vocabulary.
    #
    # @option params [required, String] :vocabulary_name
    #   The name of the medical vocabulary you want information about. This
    #   value is case sensitive.
    #
    # @return [Types::GetMedicalVocabularyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMedicalVocabularyResponse#vocabulary_name #vocabulary_name} => String
    #   * {Types::GetMedicalVocabularyResponse#language_code #language_code} => String
    #   * {Types::GetMedicalVocabularyResponse#vocabulary_state #vocabulary_state} => String
    #   * {Types::GetMedicalVocabularyResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::GetMedicalVocabularyResponse#failure_reason #failure_reason} => String
    #   * {Types::GetMedicalVocabularyResponse#download_uri #download_uri} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_medical_vocabulary({
    #     vocabulary_name: "VocabularyName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vocabulary_name #=> String
    #   resp.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"
    #   resp.vocabulary_state #=> String, one of "PENDING", "READY", "FAILED"
    #   resp.last_modified_time #=> Time
    #   resp.failure_reason #=> String
    #   resp.download_uri #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetMedicalVocabulary AWS API Documentation
    #
    # @overload get_medical_vocabulary(params = {})
    # @param [Hash] params ({})
    def get_medical_vocabulary(params = {}, options = {})
      req = build_request(:get_medical_vocabulary, params)
      req.send_request(options)
    end

    # Returns information about a transcription job. To see the status of
    # the job, check the `TranscriptionJobStatus` field. If the status is
    # `COMPLETED`, the job is finished and you can find the results at the
    # location specified in the `TranscriptFileUri` field. If you enable
    # content redaction, the redacted transcript appears in
    # `RedactedTranscriptFileUri`.
    #
    # @option params [required, String] :transcription_job_name
    #   The name of the job.
    #
    # @return [Types::GetTranscriptionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTranscriptionJobResponse#transcription_job #transcription_job} => Types::TranscriptionJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_transcription_job({
    #     transcription_job_name: "TranscriptionJobName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.transcription_job.transcription_job_name #=> String
    #   resp.transcription_job.transcription_job_status #=> String, one of "QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.transcription_job.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"
    #   resp.transcription_job.media_sample_rate_hertz #=> Integer
    #   resp.transcription_job.media_format #=> String, one of "mp3", "mp4", "wav", "flac", "ogg", "amr", "webm"
    #   resp.transcription_job.media.media_file_uri #=> String
    #   resp.transcription_job.media.redacted_media_file_uri #=> String
    #   resp.transcription_job.transcript.transcript_file_uri #=> String
    #   resp.transcription_job.transcript.redacted_transcript_file_uri #=> String
    #   resp.transcription_job.start_time #=> Time
    #   resp.transcription_job.creation_time #=> Time
    #   resp.transcription_job.completion_time #=> Time
    #   resp.transcription_job.failure_reason #=> String
    #   resp.transcription_job.settings.vocabulary_name #=> String
    #   resp.transcription_job.settings.show_speaker_labels #=> Boolean
    #   resp.transcription_job.settings.max_speaker_labels #=> Integer
    #   resp.transcription_job.settings.channel_identification #=> Boolean
    #   resp.transcription_job.settings.show_alternatives #=> Boolean
    #   resp.transcription_job.settings.max_alternatives #=> Integer
    #   resp.transcription_job.settings.vocabulary_filter_name #=> String
    #   resp.transcription_job.settings.vocabulary_filter_method #=> String, one of "remove", "mask", "tag"
    #   resp.transcription_job.model_settings.language_model_name #=> String
    #   resp.transcription_job.job_execution_settings.allow_deferred_execution #=> Boolean
    #   resp.transcription_job.job_execution_settings.data_access_role_arn #=> String
    #   resp.transcription_job.content_redaction.redaction_type #=> String, one of "PII"
    #   resp.transcription_job.content_redaction.redaction_output #=> String, one of "redacted", "redacted_and_unredacted"
    #   resp.transcription_job.content_redaction.pii_entity_types #=> Array
    #   resp.transcription_job.content_redaction.pii_entity_types[0] #=> String, one of "BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "ALL"
    #   resp.transcription_job.identify_language #=> Boolean
    #   resp.transcription_job.language_options #=> Array
    #   resp.transcription_job.language_options[0] #=> String, one of "af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"
    #   resp.transcription_job.identified_language_score #=> Float
    #   resp.transcription_job.tags #=> Array
    #   resp.transcription_job.tags[0].key #=> String
    #   resp.transcription_job.tags[0].value #=> String
    #   resp.transcription_job.subtitles.formats #=> Array
    #   resp.transcription_job.subtitles.formats[0] #=> String, one of "vtt", "srt"
    #   resp.transcription_job.subtitles.subtitle_file_uris #=> Array
    #   resp.transcription_job.subtitles.subtitle_file_uris[0] #=> String
    #   resp.transcription_job.language_id_settings #=> Hash
    #   resp.transcription_job.language_id_settings["LanguageCode"].vocabulary_name #=> String
    #   resp.transcription_job.language_id_settings["LanguageCode"].vocabulary_filter_name #=> String
    #   resp.transcription_job.language_id_settings["LanguageCode"].language_model_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetTranscriptionJob AWS API Documentation
    #
    # @overload get_transcription_job(params = {})
    # @param [Hash] params ({})
    def get_transcription_job(params = {}, options = {})
      req = build_request(:get_transcription_job, params)
      req.send_request(options)
    end

    # Gets information about a vocabulary.
    #
    # @option params [required, String] :vocabulary_name
    #   The name of the vocabulary to return information about. The name is
    #   case sensitive.
    #
    # @return [Types::GetVocabularyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVocabularyResponse#vocabulary_name #vocabulary_name} => String
    #   * {Types::GetVocabularyResponse#language_code #language_code} => String
    #   * {Types::GetVocabularyResponse#vocabulary_state #vocabulary_state} => String
    #   * {Types::GetVocabularyResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::GetVocabularyResponse#failure_reason #failure_reason} => String
    #   * {Types::GetVocabularyResponse#download_uri #download_uri} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vocabulary({
    #     vocabulary_name: "VocabularyName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vocabulary_name #=> String
    #   resp.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"
    #   resp.vocabulary_state #=> String, one of "PENDING", "READY", "FAILED"
    #   resp.last_modified_time #=> Time
    #   resp.failure_reason #=> String
    #   resp.download_uri #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetVocabulary AWS API Documentation
    #
    # @overload get_vocabulary(params = {})
    # @param [Hash] params ({})
    def get_vocabulary(params = {}, options = {})
      req = build_request(:get_vocabulary, params)
      req.send_request(options)
    end

    # Returns information about a vocabulary filter.
    #
    # @option params [required, String] :vocabulary_filter_name
    #   The name of the vocabulary filter for which to return information.
    #
    # @return [Types::GetVocabularyFilterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVocabularyFilterResponse#vocabulary_filter_name #vocabulary_filter_name} => String
    #   * {Types::GetVocabularyFilterResponse#language_code #language_code} => String
    #   * {Types::GetVocabularyFilterResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::GetVocabularyFilterResponse#download_uri #download_uri} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vocabulary_filter({
    #     vocabulary_filter_name: "VocabularyFilterName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vocabulary_filter_name #=> String
    #   resp.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"
    #   resp.last_modified_time #=> Time
    #   resp.download_uri #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetVocabularyFilter AWS API Documentation
    #
    # @overload get_vocabulary_filter(params = {})
    # @param [Hash] params ({})
    def get_vocabulary_filter(params = {}, options = {})
      req = build_request(:get_vocabulary_filter, params)
      req.send_request(options)
    end

    # Provides more information about the call analytics categories that
    # you've created. You can use the information in this list to find a
    # specific category. You can then use the operation to get more
    # information about it.
    #
    # @option params [String] :next_token
    #   When included, `NextToken`fetches the next set of categories if the
    #   result of the previous request was truncated.
    #
    # @option params [Integer] :max_results
    #   The maximum number of categories to return in each page of results. If
    #   there are fewer results than the value you specify, only the actual
    #   results are returned. If you do not specify a value, the default of 5
    #   is used.
    #
    # @return [Types::ListCallAnalyticsCategoriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCallAnalyticsCategoriesResponse#next_token #next_token} => String
    #   * {Types::ListCallAnalyticsCategoriesResponse#categories #categories} => Array&lt;Types::CategoryProperties&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_call_analytics_categories({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.categories #=> Array
    #   resp.categories[0].category_name #=> String
    #   resp.categories[0].rules #=> Array
    #   resp.categories[0].rules[0].non_talk_time_filter.threshold #=> Integer
    #   resp.categories[0].rules[0].non_talk_time_filter.absolute_time_range.start_time #=> Integer
    #   resp.categories[0].rules[0].non_talk_time_filter.absolute_time_range.end_time #=> Integer
    #   resp.categories[0].rules[0].non_talk_time_filter.absolute_time_range.first #=> Integer
    #   resp.categories[0].rules[0].non_talk_time_filter.absolute_time_range.last #=> Integer
    #   resp.categories[0].rules[0].non_talk_time_filter.relative_time_range.start_percentage #=> Integer
    #   resp.categories[0].rules[0].non_talk_time_filter.relative_time_range.end_percentage #=> Integer
    #   resp.categories[0].rules[0].non_talk_time_filter.relative_time_range.first #=> Integer
    #   resp.categories[0].rules[0].non_talk_time_filter.relative_time_range.last #=> Integer
    #   resp.categories[0].rules[0].non_talk_time_filter.negate #=> Boolean
    #   resp.categories[0].rules[0].interruption_filter.threshold #=> Integer
    #   resp.categories[0].rules[0].interruption_filter.participant_role #=> String, one of "AGENT", "CUSTOMER"
    #   resp.categories[0].rules[0].interruption_filter.absolute_time_range.start_time #=> Integer
    #   resp.categories[0].rules[0].interruption_filter.absolute_time_range.end_time #=> Integer
    #   resp.categories[0].rules[0].interruption_filter.absolute_time_range.first #=> Integer
    #   resp.categories[0].rules[0].interruption_filter.absolute_time_range.last #=> Integer
    #   resp.categories[0].rules[0].interruption_filter.relative_time_range.start_percentage #=> Integer
    #   resp.categories[0].rules[0].interruption_filter.relative_time_range.end_percentage #=> Integer
    #   resp.categories[0].rules[0].interruption_filter.relative_time_range.first #=> Integer
    #   resp.categories[0].rules[0].interruption_filter.relative_time_range.last #=> Integer
    #   resp.categories[0].rules[0].interruption_filter.negate #=> Boolean
    #   resp.categories[0].rules[0].transcript_filter.transcript_filter_type #=> String, one of "EXACT"
    #   resp.categories[0].rules[0].transcript_filter.absolute_time_range.start_time #=> Integer
    #   resp.categories[0].rules[0].transcript_filter.absolute_time_range.end_time #=> Integer
    #   resp.categories[0].rules[0].transcript_filter.absolute_time_range.first #=> Integer
    #   resp.categories[0].rules[0].transcript_filter.absolute_time_range.last #=> Integer
    #   resp.categories[0].rules[0].transcript_filter.relative_time_range.start_percentage #=> Integer
    #   resp.categories[0].rules[0].transcript_filter.relative_time_range.end_percentage #=> Integer
    #   resp.categories[0].rules[0].transcript_filter.relative_time_range.first #=> Integer
    #   resp.categories[0].rules[0].transcript_filter.relative_time_range.last #=> Integer
    #   resp.categories[0].rules[0].transcript_filter.participant_role #=> String, one of "AGENT", "CUSTOMER"
    #   resp.categories[0].rules[0].transcript_filter.negate #=> Boolean
    #   resp.categories[0].rules[0].transcript_filter.targets #=> Array
    #   resp.categories[0].rules[0].transcript_filter.targets[0] #=> String
    #   resp.categories[0].rules[0].sentiment_filter.sentiments #=> Array
    #   resp.categories[0].rules[0].sentiment_filter.sentiments[0] #=> String, one of "POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"
    #   resp.categories[0].rules[0].sentiment_filter.absolute_time_range.start_time #=> Integer
    #   resp.categories[0].rules[0].sentiment_filter.absolute_time_range.end_time #=> Integer
    #   resp.categories[0].rules[0].sentiment_filter.absolute_time_range.first #=> Integer
    #   resp.categories[0].rules[0].sentiment_filter.absolute_time_range.last #=> Integer
    #   resp.categories[0].rules[0].sentiment_filter.relative_time_range.start_percentage #=> Integer
    #   resp.categories[0].rules[0].sentiment_filter.relative_time_range.end_percentage #=> Integer
    #   resp.categories[0].rules[0].sentiment_filter.relative_time_range.first #=> Integer
    #   resp.categories[0].rules[0].sentiment_filter.relative_time_range.last #=> Integer
    #   resp.categories[0].rules[0].sentiment_filter.participant_role #=> String, one of "AGENT", "CUSTOMER"
    #   resp.categories[0].rules[0].sentiment_filter.negate #=> Boolean
    #   resp.categories[0].create_time #=> Time
    #   resp.categories[0].last_update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListCallAnalyticsCategories AWS API Documentation
    #
    # @overload list_call_analytics_categories(params = {})
    # @param [Hash] params ({})
    def list_call_analytics_categories(params = {}, options = {})
      req = build_request(:list_call_analytics_categories, params)
      req.send_request(options)
    end

    # List call analytics jobs with a specified status or substring that
    # matches their names.
    #
    # @option params [String] :status
    #   When specified, returns only call analytics jobs with the specified
    #   status. Jobs are ordered by creation date, with the most recent jobs
    #   returned first. If you don't specify a status, Amazon Transcribe
    #   returns all analytics jobs ordered by creation date.
    #
    # @option params [String] :job_name_contains
    #   When specified, the jobs returned in the list are limited to jobs
    #   whose name contains the specified string.
    #
    # @option params [String] :next_token
    #   If you receive a truncated result in the previous request of , include
    #   `NextToken` to fetch the next set of jobs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of call analytics jobs to return in each page of
    #   results. If there are fewer results than the value you specify, only
    #   the actual results are returned. If you do not specify a value, the
    #   default of 5 is used.
    #
    # @return [Types::ListCallAnalyticsJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCallAnalyticsJobsResponse#status #status} => String
    #   * {Types::ListCallAnalyticsJobsResponse#next_token #next_token} => String
    #   * {Types::ListCallAnalyticsJobsResponse#call_analytics_job_summaries #call_analytics_job_summaries} => Array&lt;Types::CallAnalyticsJobSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_call_analytics_jobs({
    #     status: "QUEUED", # accepts QUEUED, IN_PROGRESS, FAILED, COMPLETED
    #     job_name_contains: "CallAnalyticsJobName",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.next_token #=> String
    #   resp.call_analytics_job_summaries #=> Array
    #   resp.call_analytics_job_summaries[0].call_analytics_job_name #=> String
    #   resp.call_analytics_job_summaries[0].creation_time #=> Time
    #   resp.call_analytics_job_summaries[0].start_time #=> Time
    #   resp.call_analytics_job_summaries[0].completion_time #=> Time
    #   resp.call_analytics_job_summaries[0].language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"
    #   resp.call_analytics_job_summaries[0].call_analytics_job_status #=> String, one of "QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.call_analytics_job_summaries[0].failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListCallAnalyticsJobs AWS API Documentation
    #
    # @overload list_call_analytics_jobs(params = {})
    # @param [Hash] params ({})
    def list_call_analytics_jobs(params = {}, options = {})
      req = build_request(:list_call_analytics_jobs, params)
      req.send_request(options)
    end

    # Provides more information about the custom language models you've
    # created. You can use the information in this list to find a specific
    # custom language model. You can then use the operation to get more
    # information about it.
    #
    # @option params [String] :status_equals
    #   When specified, returns only custom language models with the specified
    #   status. Language models are ordered by creation date, with the newest
    #   models first. If you don't specify a status, Amazon Transcribe
    #   returns all custom language models ordered by date.
    #
    # @option params [String] :name_contains
    #   When specified, the custom language model names returned contain the
    #   substring you've specified.
    #
    # @option params [String] :next_token
    #   When included, fetches the next set of jobs if the result of the
    #   previous request was truncated.
    #
    # @option params [Integer] :max_results
    #   The maximum number of language models to return in each page of
    #   results. If there are fewer results than the value you specify, only
    #   the actual results are returned. If you do not specify a value, the
    #   default of 5 is used.
    #
    # @return [Types::ListLanguageModelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLanguageModelsResponse#next_token #next_token} => String
    #   * {Types::ListLanguageModelsResponse#models #models} => Array&lt;Types::LanguageModel&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_language_models({
    #     status_equals: "IN_PROGRESS", # accepts IN_PROGRESS, FAILED, COMPLETED
    #     name_contains: "ModelName",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.models #=> Array
    #   resp.models[0].model_name #=> String
    #   resp.models[0].create_time #=> Time
    #   resp.models[0].last_modified_time #=> Time
    #   resp.models[0].language_code #=> String, one of "en-US", "hi-IN", "es-US", "en-GB", "en-AU"
    #   resp.models[0].base_model_name #=> String, one of "NarrowBand", "WideBand"
    #   resp.models[0].model_status #=> String, one of "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.models[0].upgrade_availability #=> Boolean
    #   resp.models[0].failure_reason #=> String
    #   resp.models[0].input_data_config.s3_uri #=> String
    #   resp.models[0].input_data_config.tuning_data_s3_uri #=> String
    #   resp.models[0].input_data_config.data_access_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListLanguageModels AWS API Documentation
    #
    # @overload list_language_models(params = {})
    # @param [Hash] params ({})
    def list_language_models(params = {}, options = {})
      req = build_request(:list_language_models, params)
      req.send_request(options)
    end

    # Lists medical transcription jobs with a specified status or substring
    # that matches their names.
    #
    # @option params [String] :status
    #   When specified, returns only medical transcription jobs with the
    #   specified status. Jobs are ordered by creation date, with the newest
    #   jobs returned first. If you don't specify a status, Amazon Transcribe
    #   Medical returns all transcription jobs ordered by creation date.
    #
    # @option params [String] :job_name_contains
    #   When specified, the jobs returned in the list are limited to jobs
    #   whose name contains the specified string.
    #
    # @option params [String] :next_token
    #   If you a receive a truncated result in the previous request of
    #   `ListMedicalTranscriptionJobs`, include `NextToken` to fetch the next
    #   set of jobs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of medical transcription jobs to return in each
    #   page of results. If there are fewer results than the value you
    #   specify, only the actual results are returned. If you do not specify a
    #   value, the default of 5 is used.
    #
    # @return [Types::ListMedicalTranscriptionJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMedicalTranscriptionJobsResponse#status #status} => String
    #   * {Types::ListMedicalTranscriptionJobsResponse#next_token #next_token} => String
    #   * {Types::ListMedicalTranscriptionJobsResponse#medical_transcription_job_summaries #medical_transcription_job_summaries} => Array&lt;Types::MedicalTranscriptionJobSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_medical_transcription_jobs({
    #     status: "QUEUED", # accepts QUEUED, IN_PROGRESS, FAILED, COMPLETED
    #     job_name_contains: "TranscriptionJobName",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.next_token #=> String
    #   resp.medical_transcription_job_summaries #=> Array
    #   resp.medical_transcription_job_summaries[0].medical_transcription_job_name #=> String
    #   resp.medical_transcription_job_summaries[0].creation_time #=> Time
    #   resp.medical_transcription_job_summaries[0].start_time #=> Time
    #   resp.medical_transcription_job_summaries[0].completion_time #=> Time
    #   resp.medical_transcription_job_summaries[0].language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"
    #   resp.medical_transcription_job_summaries[0].transcription_job_status #=> String, one of "QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.medical_transcription_job_summaries[0].failure_reason #=> String
    #   resp.medical_transcription_job_summaries[0].output_location_type #=> String, one of "CUSTOMER_BUCKET", "SERVICE_BUCKET"
    #   resp.medical_transcription_job_summaries[0].specialty #=> String, one of "PRIMARYCARE"
    #   resp.medical_transcription_job_summaries[0].content_identification_type #=> String, one of "PHI"
    #   resp.medical_transcription_job_summaries[0].type #=> String, one of "CONVERSATION", "DICTATION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListMedicalTranscriptionJobs AWS API Documentation
    #
    # @overload list_medical_transcription_jobs(params = {})
    # @param [Hash] params ({})
    def list_medical_transcription_jobs(params = {}, options = {})
      req = build_request(:list_medical_transcription_jobs, params)
      req.send_request(options)
    end

    # Returns a list of vocabularies that match the specified criteria. If
    # you don't enter a value in any of the request parameters, returns the
    # entire list of vocabularies.
    #
    # @option params [String] :next_token
    #   If the result of your previous request to `ListMedicalVocabularies`
    #   was truncated, include the `NextToken` to fetch the next set of
    #   vocabularies.
    #
    # @option params [Integer] :max_results
    #   The maximum number of vocabularies to return in each page of results.
    #   If there are fewer results than the value you specify, only the actual
    #   results are returned. If you do not specify a value, the default of 5
    #   is used.
    #
    # @option params [String] :state_equals
    #   When specified, returns only vocabularies with the `VocabularyState`
    #   equal to the specified vocabulary state. Use this field to see which
    #   vocabularies are ready for your medical transcription jobs.
    #
    # @option params [String] :name_contains
    #   Returns vocabularies whose names contain the specified string. The
    #   search is not case sensitive. `ListMedicalVocabularies` returns both
    #   "`vocabularyname`" and "`VocabularyName`".
    #
    # @return [Types::ListMedicalVocabulariesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMedicalVocabulariesResponse#status #status} => String
    #   * {Types::ListMedicalVocabulariesResponse#next_token #next_token} => String
    #   * {Types::ListMedicalVocabulariesResponse#vocabularies #vocabularies} => Array&lt;Types::VocabularyInfo&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_medical_vocabularies({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     state_equals: "PENDING", # accepts PENDING, READY, FAILED
    #     name_contains: "VocabularyName",
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "PENDING", "READY", "FAILED"
    #   resp.next_token #=> String
    #   resp.vocabularies #=> Array
    #   resp.vocabularies[0].vocabulary_name #=> String
    #   resp.vocabularies[0].language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"
    #   resp.vocabularies[0].last_modified_time #=> Time
    #   resp.vocabularies[0].vocabulary_state #=> String, one of "PENDING", "READY", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListMedicalVocabularies AWS API Documentation
    #
    # @overload list_medical_vocabularies(params = {})
    # @param [Hash] params ({})
    def list_medical_vocabularies(params = {}, options = {})
      req = build_request(:list_medical_vocabularies, params)
      req.send_request(options)
    end

    # Lists all tags associated with a given transcription job, vocabulary,
    # or resource.
    #
    # @option params [required, String] :resource_arn
    #   Lists all tags associated with a given Amazon Resource Name (ARN).
    #   ARNs have the format
    #   `arn:partition:service:region:account-id:resource-type/resource-id`
    #   (for example,
    #   `arn:aws:transcribe:us-east-1:account-id:transcription-job/your-job-name`).
    #   Valid values for `resource-type` are: `transcription-job`,
    #   `medical-transcription-job`, `vocabulary`, `medical-vocabulary`,
    #   `vocabulary-filter`, and `language-model`.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#resource_arn #resource_arn} => String
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "TranscribeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists transcription jobs with the specified status.
    #
    # @option params [String] :status
    #   When specified, returns only transcription jobs with the specified
    #   status. Jobs are ordered by creation date, with the newest jobs
    #   returned first. If you don’t specify a status, Amazon Transcribe
    #   returns all transcription jobs ordered by creation date.
    #
    # @option params [String] :job_name_contains
    #   When specified, the jobs returned in the list are limited to jobs
    #   whose name contains the specified string.
    #
    # @option params [String] :next_token
    #   If the result of the previous request to `ListTranscriptionJobs` is
    #   truncated, include the `NextToken` to fetch the next set of jobs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of jobs to return in each page of results. If there
    #   are fewer results than the value you specify, only the actual results
    #   are returned. If you do not specify a value, the default of 5 is used.
    #
    # @return [Types::ListTranscriptionJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTranscriptionJobsResponse#status #status} => String
    #   * {Types::ListTranscriptionJobsResponse#next_token #next_token} => String
    #   * {Types::ListTranscriptionJobsResponse#transcription_job_summaries #transcription_job_summaries} => Array&lt;Types::TranscriptionJobSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_transcription_jobs({
    #     status: "QUEUED", # accepts QUEUED, IN_PROGRESS, FAILED, COMPLETED
    #     job_name_contains: "TranscriptionJobName",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.next_token #=> String
    #   resp.transcription_job_summaries #=> Array
    #   resp.transcription_job_summaries[0].transcription_job_name #=> String
    #   resp.transcription_job_summaries[0].creation_time #=> Time
    #   resp.transcription_job_summaries[0].start_time #=> Time
    #   resp.transcription_job_summaries[0].completion_time #=> Time
    #   resp.transcription_job_summaries[0].language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"
    #   resp.transcription_job_summaries[0].transcription_job_status #=> String, one of "QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.transcription_job_summaries[0].failure_reason #=> String
    #   resp.transcription_job_summaries[0].output_location_type #=> String, one of "CUSTOMER_BUCKET", "SERVICE_BUCKET"
    #   resp.transcription_job_summaries[0].content_redaction.redaction_type #=> String, one of "PII"
    #   resp.transcription_job_summaries[0].content_redaction.redaction_output #=> String, one of "redacted", "redacted_and_unredacted"
    #   resp.transcription_job_summaries[0].content_redaction.pii_entity_types #=> Array
    #   resp.transcription_job_summaries[0].content_redaction.pii_entity_types[0] #=> String, one of "BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "ALL"
    #   resp.transcription_job_summaries[0].model_settings.language_model_name #=> String
    #   resp.transcription_job_summaries[0].identify_language #=> Boolean
    #   resp.transcription_job_summaries[0].identified_language_score #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListTranscriptionJobs AWS API Documentation
    #
    # @overload list_transcription_jobs(params = {})
    # @param [Hash] params ({})
    def list_transcription_jobs(params = {}, options = {})
      req = build_request(:list_transcription_jobs, params)
      req.send_request(options)
    end

    # Returns a list of vocabularies that match the specified criteria. If
    # no criteria are specified, returns the entire list of vocabularies.
    #
    # @option params [String] :next_token
    #   If the result of the previous request to `ListVocabularies` was
    #   truncated, include the `NextToken` to fetch the next set of jobs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of vocabularies to return in each page of results.
    #   If there are fewer results than the value you specify, only the actual
    #   results are returned. If you do not specify a value, the default of 5
    #   is used.
    #
    # @option params [String] :state_equals
    #   When specified, only returns vocabularies with the `VocabularyState`
    #   field equal to the specified state.
    #
    # @option params [String] :name_contains
    #   When specified, the vocabularies returned in the list are limited to
    #   vocabularies whose name contains the specified string. The search is
    #   not case sensitive, `ListVocabularies` returns both "vocabularyname"
    #   and "VocabularyName" in the response list.
    #
    # @return [Types::ListVocabulariesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVocabulariesResponse#status #status} => String
    #   * {Types::ListVocabulariesResponse#next_token #next_token} => String
    #   * {Types::ListVocabulariesResponse#vocabularies #vocabularies} => Array&lt;Types::VocabularyInfo&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vocabularies({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     state_equals: "PENDING", # accepts PENDING, READY, FAILED
    #     name_contains: "VocabularyName",
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "PENDING", "READY", "FAILED"
    #   resp.next_token #=> String
    #   resp.vocabularies #=> Array
    #   resp.vocabularies[0].vocabulary_name #=> String
    #   resp.vocabularies[0].language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"
    #   resp.vocabularies[0].last_modified_time #=> Time
    #   resp.vocabularies[0].vocabulary_state #=> String, one of "PENDING", "READY", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListVocabularies AWS API Documentation
    #
    # @overload list_vocabularies(params = {})
    # @param [Hash] params ({})
    def list_vocabularies(params = {}, options = {})
      req = build_request(:list_vocabularies, params)
      req.send_request(options)
    end

    # Gets information about vocabulary filters.
    #
    # @option params [String] :next_token
    #   If the result of the previous request to `ListVocabularyFilters` was
    #   truncated, include the `NextToken` to fetch the next set of
    #   collections.
    #
    # @option params [Integer] :max_results
    #   The maximum number of filters to return in each page of results. If
    #   there are fewer results than the value you specify, only the actual
    #   results are returned. If you do not specify a value, the default of 5
    #   is used.
    #
    # @option params [String] :name_contains
    #   Filters the response so that it only contains vocabulary filters whose
    #   name contains the specified string.
    #
    # @return [Types::ListVocabularyFiltersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVocabularyFiltersResponse#next_token #next_token} => String
    #   * {Types::ListVocabularyFiltersResponse#vocabulary_filters #vocabulary_filters} => Array&lt;Types::VocabularyFilterInfo&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vocabulary_filters({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     name_contains: "VocabularyFilterName",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.vocabulary_filters #=> Array
    #   resp.vocabulary_filters[0].vocabulary_filter_name #=> String
    #   resp.vocabulary_filters[0].language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"
    #   resp.vocabulary_filters[0].last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListVocabularyFilters AWS API Documentation
    #
    # @overload list_vocabulary_filters(params = {})
    # @param [Hash] params ({})
    def list_vocabulary_filters(params = {}, options = {})
      req = build_request(:list_vocabulary_filters, params)
      req.send_request(options)
    end

    # Starts an asynchronous analytics job that not only transcribes the
    # audio recording of a caller and agent, but also returns additional
    # insights. These insights include how quickly or loudly the caller or
    # agent was speaking. To retrieve additional insights with your
    # analytics jobs, create categories. A category is a way to classify
    # analytics jobs based on attributes, such as a customer's sentiment or
    # a particular phrase being used during the call. For more information,
    # see the operation.
    #
    # @option params [required, String] :call_analytics_job_name
    #   The name of the call analytics job. You can't use the string "." or
    #   ".." by themselves as the job name. The name must also be unique
    #   within an Amazon Web Services account. If you try to create a call
    #   analytics job with the same name as a previous call analytics job, you
    #   get a `ConflictException` error.
    #
    # @option params [required, Types::Media] :media
    #   Describes the input media file in a transcription request.
    #
    # @option params [String] :output_location
    #   The Amazon S3 location where the output of the call analytics job is
    #   stored. You can provide the following location types to store the
    #   output of call analytics job:
    #
    #   * s3://DOC-EXAMPLE-BUCKET1
    #
    #     If you specify a bucket, Amazon Transcribe saves the output of the
    #     analytics job as a JSON file at the root level of the bucket.
    #
    #   * s3://DOC-EXAMPLE-BUCKET1/folder/
    #
    #     f you specify a path, Amazon Transcribe saves the output of the
    #     analytics job as
    #     s3://DOC-EXAMPLE-BUCKET1/folder/your-transcription-job-name.json.
    #
    #     If you specify a folder, you must provide a trailing slash.
    #
    #   * s3://DOC-EXAMPLE-BUCKET1/folder/filename.json.
    #
    #     If you provide a path that has the filename specified, Amazon
    #     Transcribe saves the output of the analytics job as
    #     s3://DOC-EXAMPLEBUCKET1/folder/filename.json.
    #
    #   You can specify an Amazon Web Services Key Management Service (KMS)
    #   key to encrypt the output of our analytics job using the
    #   `OutputEncryptionKMSKeyId` parameter. If you don't specify a KMS key,
    #   Amazon Transcribe uses the default Amazon S3 key for server-side
    #   encryption of the analytics job output that is placed in your S3
    #   bucket.
    #
    # @option params [String] :output_encryption_kms_key_id
    #   The Amazon Resource Name (ARN) of the Amazon Web Services Key
    #   Management Service key used to encrypt the output of the call
    #   analytics job. The user calling the operation must have permission to
    #   use the specified KMS key.
    #
    #   You use either of the following to identify an Amazon Web Services KMS
    #   key in the current account:
    #
    #   * KMS Key ID: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #
    #   * KMS Key Alias: "alias/ExampleAlias"
    #
    #   You can use either of the following to identify a KMS key in the
    #   current account or another account:
    #
    #   * Amazon Resource Name (ARN) of a KMS key in the current account or
    #     another account: "arn:aws:kms:region:account
    #     ID:key/1234abcd-12ab-34cd-56ef1234567890ab"
    #
    #   * ARN of a KMS Key Alias:
    #     "arn:aws:kms:region:accountID:alias/ExampleAlias"
    #
    #   If you don't specify an encryption key, the output of the call
    #   analytics job is encrypted with the default Amazon S3 key (SSE-S3).
    #
    #   If you specify a KMS key to encrypt your output, you must also specify
    #   an output location in the `OutputLocation` parameter.
    #
    # @option params [required, String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of a role that has access to the S3
    #   bucket that contains your input files. Amazon Transcribe assumes this
    #   role to read queued audio files. If you have specified an output S3
    #   bucket for your transcription results, this role should have access to
    #   the output bucket as well.
    #
    # @option params [Types::CallAnalyticsJobSettings] :settings
    #   A `Settings` object that provides optional settings for a call
    #   analytics job.
    #
    # @option params [Array<Types::ChannelDefinition>] :channel_definitions
    #   When you start a call analytics job, you must pass an array that maps
    #   the agent and the customer to specific audio channels. The values you
    #   can assign to a channel are 0 and 1. The agent and the customer must
    #   each have their own channel. You can't assign more than one channel
    #   to an agent or customer.
    #
    # @return [Types::StartCallAnalyticsJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartCallAnalyticsJobResponse#call_analytics_job #call_analytics_job} => Types::CallAnalyticsJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_call_analytics_job({
    #     call_analytics_job_name: "CallAnalyticsJobName", # required
    #     media: { # required
    #       media_file_uri: "Uri",
    #       redacted_media_file_uri: "Uri",
    #     },
    #     output_location: "Uri",
    #     output_encryption_kms_key_id: "KMSKeyId",
    #     data_access_role_arn: "DataAccessRoleArn", # required
    #     settings: {
    #       vocabulary_name: "VocabularyName",
    #       vocabulary_filter_name: "VocabularyFilterName",
    #       vocabulary_filter_method: "remove", # accepts remove, mask, tag
    #       language_model_name: "ModelName",
    #       content_redaction: {
    #         redaction_type: "PII", # required, accepts PII
    #         redaction_output: "redacted", # required, accepts redacted, redacted_and_unredacted
    #         pii_entity_types: ["BANK_ACCOUNT_NUMBER"], # accepts BANK_ACCOUNT_NUMBER, BANK_ROUTING, CREDIT_DEBIT_NUMBER, CREDIT_DEBIT_CVV, CREDIT_DEBIT_EXPIRY, PIN, EMAIL, ADDRESS, NAME, PHONE, SSN, ALL
    #       },
    #       language_options: ["af-ZA"], # accepts af-ZA, ar-AE, ar-SA, cy-GB, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, ga-IE, gd-GB, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ
    #       language_id_settings: {
    #         "af-ZA" => {
    #           vocabulary_name: "VocabularyName",
    #           vocabulary_filter_name: "VocabularyFilterName",
    #           language_model_name: "ModelName",
    #         },
    #       },
    #     },
    #     channel_definitions: [
    #       {
    #         channel_id: 1,
    #         participant_role: "AGENT", # accepts AGENT, CUSTOMER
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.call_analytics_job.call_analytics_job_name #=> String
    #   resp.call_analytics_job.call_analytics_job_status #=> String, one of "QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.call_analytics_job.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"
    #   resp.call_analytics_job.media_sample_rate_hertz #=> Integer
    #   resp.call_analytics_job.media_format #=> String, one of "mp3", "mp4", "wav", "flac", "ogg", "amr", "webm"
    #   resp.call_analytics_job.media.media_file_uri #=> String
    #   resp.call_analytics_job.media.redacted_media_file_uri #=> String
    #   resp.call_analytics_job.transcript.transcript_file_uri #=> String
    #   resp.call_analytics_job.transcript.redacted_transcript_file_uri #=> String
    #   resp.call_analytics_job.start_time #=> Time
    #   resp.call_analytics_job.creation_time #=> Time
    #   resp.call_analytics_job.completion_time #=> Time
    #   resp.call_analytics_job.failure_reason #=> String
    #   resp.call_analytics_job.data_access_role_arn #=> String
    #   resp.call_analytics_job.identified_language_score #=> Float
    #   resp.call_analytics_job.settings.vocabulary_name #=> String
    #   resp.call_analytics_job.settings.vocabulary_filter_name #=> String
    #   resp.call_analytics_job.settings.vocabulary_filter_method #=> String, one of "remove", "mask", "tag"
    #   resp.call_analytics_job.settings.language_model_name #=> String
    #   resp.call_analytics_job.settings.content_redaction.redaction_type #=> String, one of "PII"
    #   resp.call_analytics_job.settings.content_redaction.redaction_output #=> String, one of "redacted", "redacted_and_unredacted"
    #   resp.call_analytics_job.settings.content_redaction.pii_entity_types #=> Array
    #   resp.call_analytics_job.settings.content_redaction.pii_entity_types[0] #=> String, one of "BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "ALL"
    #   resp.call_analytics_job.settings.language_options #=> Array
    #   resp.call_analytics_job.settings.language_options[0] #=> String, one of "af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"
    #   resp.call_analytics_job.settings.language_id_settings #=> Hash
    #   resp.call_analytics_job.settings.language_id_settings["LanguageCode"].vocabulary_name #=> String
    #   resp.call_analytics_job.settings.language_id_settings["LanguageCode"].vocabulary_filter_name #=> String
    #   resp.call_analytics_job.settings.language_id_settings["LanguageCode"].language_model_name #=> String
    #   resp.call_analytics_job.channel_definitions #=> Array
    #   resp.call_analytics_job.channel_definitions[0].channel_id #=> Integer
    #   resp.call_analytics_job.channel_definitions[0].participant_role #=> String, one of "AGENT", "CUSTOMER"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/StartCallAnalyticsJob AWS API Documentation
    #
    # @overload start_call_analytics_job(params = {})
    # @param [Hash] params ({})
    def start_call_analytics_job(params = {}, options = {})
      req = build_request(:start_call_analytics_job, params)
      req.send_request(options)
    end

    # Starts a batch job to transcribe medical speech to text.
    #
    # @option params [required, String] :medical_transcription_job_name
    #   The name of the medical transcription job. You can't use the strings
    #   "`.`" or "`..`" by themselves as the job name. The name must also
    #   be unique within an Amazon Web Services account. If you try to create
    #   a medical transcription job with the same name as a previous medical
    #   transcription job, you get a `ConflictException` error.
    #
    # @option params [required, String] :language_code
    #   The language code for the language spoken in the input media file. US
    #   English (en-US) is the valid value for medical transcription jobs. Any
    #   other value you enter for language code results in a
    #   `BadRequestException` error.
    #
    # @option params [Integer] :media_sample_rate_hertz
    #   The sample rate, in Hertz, of the audio track in the input media file.
    #
    #   If you do not specify the media sample rate, Amazon Transcribe Medical
    #   determines the sample rate. If you specify the sample rate, it must
    #   match the rate detected by Amazon Transcribe Medical. In most cases,
    #   you should leave the `MediaSampleRateHertz` field blank and let Amazon
    #   Transcribe Medical determine the sample rate.
    #
    # @option params [String] :media_format
    #   The audio format of the input media file.
    #
    # @option params [required, Types::Media] :media
    #   Describes the input media file in a transcription request.
    #
    # @option params [required, String] :output_bucket_name
    #   The Amazon S3 location where the transcription is stored.
    #
    #   You must set `OutputBucketName` for Amazon Transcribe Medical to store
    #   the transcription results. Your transcript appears in the S3 location
    #   you specify. When you call the GetMedicalTranscriptionJob, the
    #   operation returns this location in the `TranscriptFileUri` field. The
    #   S3 bucket must have permissions that allow Amazon Transcribe Medical
    #   to put files in the bucket. For more information, see [Permissions
    #   Required for IAM User Roles][1].
    #
    #   You can specify an Amazon Web Services Key Management Service (KMS)
    #   key to encrypt the output of your transcription using the
    #   `OutputEncryptionKMSKeyId` parameter. If you don't specify a KMS key,
    #   Amazon Transcribe Medical uses the default Amazon S3 key for
    #   server-side encryption of transcripts that are placed in your S3
    #   bucket.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/security_iam_id-based-policy-examples.html#auth-role-iam-user
    #
    # @option params [String] :output_key
    #   You can specify a location in an Amazon S3 bucket to store the output
    #   of your medical transcription job.
    #
    #   If you don't specify an output key, Amazon Transcribe Medical stores
    #   the output of your transcription job in the Amazon S3 bucket you
    #   specified. By default, the object key is
    #   "your-transcription-job-name.json".
    #
    #   You can use output keys to specify the Amazon S3 prefix and file name
    #   of the transcription output. For example, specifying the Amazon S3
    #   prefix, "folder1/folder2/", as an output key would lead to the
    #   output being stored as
    #   "folder1/folder2/your-transcription-job-name.json". If you specify
    #   "my-other-job-name.json" as the output key, the object key is
    #   changed to "my-other-job-name.json". You can use an output key to
    #   change both the prefix and the file name, for example
    #   "folder/my-other-job-name.json".
    #
    #   If you specify an output key, you must also specify an S3 bucket in
    #   the `OutputBucketName` parameter.
    #
    # @option params [String] :output_encryption_kms_key_id
    #   The Amazon Resource Name (ARN) of the Amazon Web Services Key
    #   Management Service (KMS) key used to encrypt the output of the
    #   transcription job. The user calling the StartMedicalTranscriptionJob
    #   operation must have permission to use the specified KMS key.
    #
    #   You use either of the following to identify a KMS key in the current
    #   account:
    #
    #   * KMS Key ID: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #
    #   * KMS Key Alias: "alias/ExampleAlias"
    #
    #   You can use either of the following to identify a KMS key in the
    #   current account or another account:
    #
    #   * Amazon Resource Name (ARN) of a KMS key in the current account or
    #     another account:
    #     "arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab"
    #
    #   * ARN of a KMS Key Alias: "arn:aws:kms:region:account
    #     ID:alias/ExampleAlias"
    #
    #   If you don't specify an encryption key, the output of the medical
    #   transcription job is encrypted with the default Amazon S3 key
    #   (SSE-S3).
    #
    #   If you specify a KMS key to encrypt your output, you must also specify
    #   an output location in the `OutputBucketName` parameter.
    #
    # @option params [Hash<String,String>] :kms_encryption_context
    #   A map of plain text, non-secret key:value pairs, known as encryption
    #   context pairs, that provide an added layer of security for your data.
    #
    # @option params [Types::MedicalTranscriptionSetting] :settings
    #   Optional settings for the medical transcription job.
    #
    # @option params [String] :content_identification_type
    #   You can configure Amazon Transcribe Medical to label content in the
    #   transcription output. If you specify `PHI`, Amazon Transcribe Medical
    #   labels the personal health information (PHI) that it identifies in the
    #   transcription output.
    #
    # @option params [required, String] :specialty
    #   The medical specialty of any clinician speaking in the input media.
    #
    # @option params [required, String] :type
    #   The type of speech in the input audio. `CONVERSATION` refers to
    #   conversations between two or more speakers, e.g., a conversations
    #   between doctors and patients. `DICTATION` refers to single-speaker
    #   dictated speech, such as clinical notes.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Add tags to an Amazon Transcribe Medical transcription job.
    #
    # @return [Types::StartMedicalTranscriptionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartMedicalTranscriptionJobResponse#medical_transcription_job #medical_transcription_job} => Types::MedicalTranscriptionJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_medical_transcription_job({
    #     medical_transcription_job_name: "TranscriptionJobName", # required
    #     language_code: "af-ZA", # required, accepts af-ZA, ar-AE, ar-SA, cy-GB, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, ga-IE, gd-GB, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ
    #     media_sample_rate_hertz: 1,
    #     media_format: "mp3", # accepts mp3, mp4, wav, flac, ogg, amr, webm
    #     media: { # required
    #       media_file_uri: "Uri",
    #       redacted_media_file_uri: "Uri",
    #     },
    #     output_bucket_name: "OutputBucketName", # required
    #     output_key: "OutputKey",
    #     output_encryption_kms_key_id: "KMSKeyId",
    #     kms_encryption_context: {
    #       "NonEmptyString" => "NonEmptyString",
    #     },
    #     settings: {
    #       show_speaker_labels: false,
    #       max_speaker_labels: 1,
    #       channel_identification: false,
    #       show_alternatives: false,
    #       max_alternatives: 1,
    #       vocabulary_name: "VocabularyName",
    #     },
    #     content_identification_type: "PHI", # accepts PHI
    #     specialty: "PRIMARYCARE", # required, accepts PRIMARYCARE
    #     type: "CONVERSATION", # required, accepts CONVERSATION, DICTATION
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
    #   resp.medical_transcription_job.medical_transcription_job_name #=> String
    #   resp.medical_transcription_job.transcription_job_status #=> String, one of "QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.medical_transcription_job.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"
    #   resp.medical_transcription_job.media_sample_rate_hertz #=> Integer
    #   resp.medical_transcription_job.media_format #=> String, one of "mp3", "mp4", "wav", "flac", "ogg", "amr", "webm"
    #   resp.medical_transcription_job.media.media_file_uri #=> String
    #   resp.medical_transcription_job.media.redacted_media_file_uri #=> String
    #   resp.medical_transcription_job.transcript.transcript_file_uri #=> String
    #   resp.medical_transcription_job.start_time #=> Time
    #   resp.medical_transcription_job.creation_time #=> Time
    #   resp.medical_transcription_job.completion_time #=> Time
    #   resp.medical_transcription_job.failure_reason #=> String
    #   resp.medical_transcription_job.settings.show_speaker_labels #=> Boolean
    #   resp.medical_transcription_job.settings.max_speaker_labels #=> Integer
    #   resp.medical_transcription_job.settings.channel_identification #=> Boolean
    #   resp.medical_transcription_job.settings.show_alternatives #=> Boolean
    #   resp.medical_transcription_job.settings.max_alternatives #=> Integer
    #   resp.medical_transcription_job.settings.vocabulary_name #=> String
    #   resp.medical_transcription_job.content_identification_type #=> String, one of "PHI"
    #   resp.medical_transcription_job.specialty #=> String, one of "PRIMARYCARE"
    #   resp.medical_transcription_job.type #=> String, one of "CONVERSATION", "DICTATION"
    #   resp.medical_transcription_job.tags #=> Array
    #   resp.medical_transcription_job.tags[0].key #=> String
    #   resp.medical_transcription_job.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/StartMedicalTranscriptionJob AWS API Documentation
    #
    # @overload start_medical_transcription_job(params = {})
    # @param [Hash] params ({})
    def start_medical_transcription_job(params = {}, options = {})
      req = build_request(:start_medical_transcription_job, params)
      req.send_request(options)
    end

    # Starts an asynchronous job to transcribe speech to text.
    #
    # @option params [required, String] :transcription_job_name
    #   The name of the job. You can't use the strings "`.`" or "`..`" by
    #   themselves as the job name. The name must also be unique within an
    #   Amazon Web Services account. If you try to create a transcription job
    #   with the same name as a previous transcription job, you get a
    #   `ConflictException` error.
    #
    # @option params [String] :language_code
    #   The language code for the language used in the input media file.
    #
    #   To transcribe speech in Modern Standard Arabic (ar-SA), your audio or
    #   video file must be encoded at a sample rate of 16,000 Hz or higher.
    #
    # @option params [Integer] :media_sample_rate_hertz
    #   The sample rate, in Hertz, of the audio track in the input media file.
    #
    #   If you do not specify the media sample rate, Amazon Transcribe
    #   determines the sample rate. If you specify the sample rate, it must
    #   match the sample rate detected by Amazon Transcribe. In most cases,
    #   you should leave the `MediaSampleRateHertz` field blank and let Amazon
    #   Transcribe determine the sample rate.
    #
    # @option params [String] :media_format
    #   The format of the input media file.
    #
    # @option params [required, Types::Media] :media
    #   An object that describes the input media for a transcription job.
    #
    # @option params [String] :output_bucket_name
    #   The location where the transcription is stored.
    #
    #   If you set the `OutputBucketName`, Amazon Transcribe puts the
    #   transcript in the specified S3 bucket. When you call the
    #   GetTranscriptionJob operation, the operation returns this location in
    #   the `TranscriptFileUri` field. If you enable content redaction, the
    #   redacted transcript appears in `RedactedTranscriptFileUri`. If you
    #   enable content redaction and choose to output an unredacted
    #   transcript, that transcript's location still appears in the
    #   `TranscriptFileUri`. The S3 bucket must have permissions that allow
    #   Amazon Transcribe to put files in the bucket. For more information,
    #   see [Permissions Required for IAM User Roles][1].
    #
    #   You can specify an Amazon Web Services Key Management Service (KMS)
    #   key to encrypt the output of your transcription using the
    #   `OutputEncryptionKMSKeyId` parameter. If you don't specify a KMS key,
    #   Amazon Transcribe uses the default Amazon S3 key for server-side
    #   encryption of transcripts that are placed in your S3 bucket.
    #
    #   If you don't set the `OutputBucketName`, Amazon Transcribe generates
    #   a pre-signed URL, a shareable URL that provides secure access to your
    #   transcription, and returns it in the `TranscriptFileUri` field. Use
    #   this URL to download the transcription.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/security_iam_id-based-policy-examples.html#auth-role-iam-user
    #
    # @option params [String] :output_key
    #   You can specify a location in an Amazon S3 bucket to store the output
    #   of your transcription job.
    #
    #   If you don't specify an output key, Amazon Transcribe stores the
    #   output of your transcription job in the Amazon S3 bucket you
    #   specified. By default, the object key is
    #   "your-transcription-job-name.json".
    #
    #   You can use output keys to specify the Amazon S3 prefix and file name
    #   of the transcription output. For example, specifying the Amazon S3
    #   prefix, "folder1/folder2/", as an output key would lead to the
    #   output being stored as
    #   "folder1/folder2/your-transcription-job-name.json". If you specify
    #   "my-other-job-name.json" as the output key, the object key is
    #   changed to "my-other-job-name.json". You can use an output key to
    #   change both the prefix and the file name, for example
    #   "folder/my-other-job-name.json".
    #
    #   If you specify an output key, you must also specify an S3 bucket in
    #   the `OutputBucketName` parameter.
    #
    # @option params [String] :output_encryption_kms_key_id
    #   The Amazon Resource Name (ARN) of the Amazon Web Services Key
    #   Management Service (KMS) key used to encrypt the output of the
    #   transcription job. The user calling the `StartTranscriptionJob`
    #   operation must have permission to use the specified KMS key.
    #
    #   You can use either of the following to identify a KMS key in the
    #   current account:
    #
    #   * KMS Key ID: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #
    #   * KMS Key Alias: "alias/ExampleAlias"
    #
    #   You can use either of the following to identify a KMS key in the
    #   current account or another account:
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     "arn:aws:kms:region:account
    #     ID:key/1234abcd-12ab-34cd-56ef-1234567890ab"
    #
    #   * ARN of a KMS Key Alias:
    #     "arn:aws:kms:region:account-ID:alias/ExampleAlias"
    #
    #   If you don't specify an encryption key, the output of the
    #   transcription job is encrypted with the default Amazon S3 key
    #   (SSE-S3).
    #
    #   If you specify a KMS key to encrypt your output, you must also specify
    #   an output location in the `OutputBucketName` parameter.
    #
    # @option params [Hash<String,String>] :kms_encryption_context
    #   A map of plain text, non-secret key:value pairs, known as encryption
    #   context pairs, that provide an added layer of security for your data.
    #
    # @option params [Types::Settings] :settings
    #   A `Settings` object that provides optional settings for a
    #   transcription job.
    #
    # @option params [Types::ModelSettings] :model_settings
    #   Choose the custom language model you use for your transcription job in
    #   this parameter.
    #
    # @option params [Types::JobExecutionSettings] :job_execution_settings
    #   Provides information about how a transcription job is executed. Use
    #   this field to indicate that the job can be queued for deferred
    #   execution if the concurrency limit is reached and there are no slots
    #   available to immediately run the job.
    #
    # @option params [Types::ContentRedaction] :content_redaction
    #   An object that contains the request parameters for content redaction.
    #
    # @option params [Boolean] :identify_language
    #   Set this field to `true` to enable automatic language identification.
    #   Automatic language identification is disabled by default. You receive
    #   a `BadRequestException` error if you enter a value for a
    #   `LanguageCode`.
    #
    # @option params [Array<String>] :language_options
    #   An object containing a list of languages that might be present in your
    #   collection of audio files. Automatic language identification chooses a
    #   language that best matches the source audio from that list.
    #
    #   To transcribe speech in Modern Standard Arabic (ar-SA), your audio or
    #   video file must be encoded at a sample rate of 16,000 Hz or higher.
    #
    # @option params [Types::Subtitles] :subtitles
    #   Add subtitles to your batch transcription job.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Add tags to an Amazon Transcribe transcription job.
    #
    # @option params [Hash<String,Types::LanguageIdSettings>] :language_id_settings
    #   The language identification settings associated with your
    #   transcription job. These settings include `VocabularyName`,
    #   `VocabularyFilterName`, and `LanguageModelName`.
    #
    # @return [Types::StartTranscriptionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartTranscriptionJobResponse#transcription_job #transcription_job} => Types::TranscriptionJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_transcription_job({
    #     transcription_job_name: "TranscriptionJobName", # required
    #     language_code: "af-ZA", # accepts af-ZA, ar-AE, ar-SA, cy-GB, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, ga-IE, gd-GB, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ
    #     media_sample_rate_hertz: 1,
    #     media_format: "mp3", # accepts mp3, mp4, wav, flac, ogg, amr, webm
    #     media: { # required
    #       media_file_uri: "Uri",
    #       redacted_media_file_uri: "Uri",
    #     },
    #     output_bucket_name: "OutputBucketName",
    #     output_key: "OutputKey",
    #     output_encryption_kms_key_id: "KMSKeyId",
    #     kms_encryption_context: {
    #       "NonEmptyString" => "NonEmptyString",
    #     },
    #     settings: {
    #       vocabulary_name: "VocabularyName",
    #       show_speaker_labels: false,
    #       max_speaker_labels: 1,
    #       channel_identification: false,
    #       show_alternatives: false,
    #       max_alternatives: 1,
    #       vocabulary_filter_name: "VocabularyFilterName",
    #       vocabulary_filter_method: "remove", # accepts remove, mask, tag
    #     },
    #     model_settings: {
    #       language_model_name: "ModelName",
    #     },
    #     job_execution_settings: {
    #       allow_deferred_execution: false,
    #       data_access_role_arn: "DataAccessRoleArn",
    #     },
    #     content_redaction: {
    #       redaction_type: "PII", # required, accepts PII
    #       redaction_output: "redacted", # required, accepts redacted, redacted_and_unredacted
    #       pii_entity_types: ["BANK_ACCOUNT_NUMBER"], # accepts BANK_ACCOUNT_NUMBER, BANK_ROUTING, CREDIT_DEBIT_NUMBER, CREDIT_DEBIT_CVV, CREDIT_DEBIT_EXPIRY, PIN, EMAIL, ADDRESS, NAME, PHONE, SSN, ALL
    #     },
    #     identify_language: false,
    #     language_options: ["af-ZA"], # accepts af-ZA, ar-AE, ar-SA, cy-GB, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, ga-IE, gd-GB, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ
    #     subtitles: {
    #       formats: ["vtt"], # accepts vtt, srt
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     language_id_settings: {
    #       "af-ZA" => {
    #         vocabulary_name: "VocabularyName",
    #         vocabulary_filter_name: "VocabularyFilterName",
    #         language_model_name: "ModelName",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.transcription_job.transcription_job_name #=> String
    #   resp.transcription_job.transcription_job_status #=> String, one of "QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.transcription_job.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"
    #   resp.transcription_job.media_sample_rate_hertz #=> Integer
    #   resp.transcription_job.media_format #=> String, one of "mp3", "mp4", "wav", "flac", "ogg", "amr", "webm"
    #   resp.transcription_job.media.media_file_uri #=> String
    #   resp.transcription_job.media.redacted_media_file_uri #=> String
    #   resp.transcription_job.transcript.transcript_file_uri #=> String
    #   resp.transcription_job.transcript.redacted_transcript_file_uri #=> String
    #   resp.transcription_job.start_time #=> Time
    #   resp.transcription_job.creation_time #=> Time
    #   resp.transcription_job.completion_time #=> Time
    #   resp.transcription_job.failure_reason #=> String
    #   resp.transcription_job.settings.vocabulary_name #=> String
    #   resp.transcription_job.settings.show_speaker_labels #=> Boolean
    #   resp.transcription_job.settings.max_speaker_labels #=> Integer
    #   resp.transcription_job.settings.channel_identification #=> Boolean
    #   resp.transcription_job.settings.show_alternatives #=> Boolean
    #   resp.transcription_job.settings.max_alternatives #=> Integer
    #   resp.transcription_job.settings.vocabulary_filter_name #=> String
    #   resp.transcription_job.settings.vocabulary_filter_method #=> String, one of "remove", "mask", "tag"
    #   resp.transcription_job.model_settings.language_model_name #=> String
    #   resp.transcription_job.job_execution_settings.allow_deferred_execution #=> Boolean
    #   resp.transcription_job.job_execution_settings.data_access_role_arn #=> String
    #   resp.transcription_job.content_redaction.redaction_type #=> String, one of "PII"
    #   resp.transcription_job.content_redaction.redaction_output #=> String, one of "redacted", "redacted_and_unredacted"
    #   resp.transcription_job.content_redaction.pii_entity_types #=> Array
    #   resp.transcription_job.content_redaction.pii_entity_types[0] #=> String, one of "BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "ALL"
    #   resp.transcription_job.identify_language #=> Boolean
    #   resp.transcription_job.language_options #=> Array
    #   resp.transcription_job.language_options[0] #=> String, one of "af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"
    #   resp.transcription_job.identified_language_score #=> Float
    #   resp.transcription_job.tags #=> Array
    #   resp.transcription_job.tags[0].key #=> String
    #   resp.transcription_job.tags[0].value #=> String
    #   resp.transcription_job.subtitles.formats #=> Array
    #   resp.transcription_job.subtitles.formats[0] #=> String, one of "vtt", "srt"
    #   resp.transcription_job.subtitles.subtitle_file_uris #=> Array
    #   resp.transcription_job.subtitles.subtitle_file_uris[0] #=> String
    #   resp.transcription_job.language_id_settings #=> Hash
    #   resp.transcription_job.language_id_settings["LanguageCode"].vocabulary_name #=> String
    #   resp.transcription_job.language_id_settings["LanguageCode"].vocabulary_filter_name #=> String
    #   resp.transcription_job.language_id_settings["LanguageCode"].language_model_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/StartTranscriptionJob AWS API Documentation
    #
    # @overload start_transcription_job(params = {})
    # @param [Hash] params ({})
    def start_transcription_job(params = {}, options = {})
      req = build_request(:start_transcription_job, params)
      req.send_request(options)
    end

    # Tags an Amazon Transcribe resource with the given list of tags.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon Transcribe resource you
    #   want to tag. ARNs have the format
    #   `arn:partition:service:region:account-id:resource-type/resource-id`
    #   (for example,
    #   `arn:aws:transcribe:us-east-1:account-id:transcription-job/your-job-name`).
    #   Valid values for `resource-type` are: `transcription-job`,
    #   `medical-transcription-job`, `vocabulary`, `medical-vocabulary`,
    #   `vocabulary-filter`, and `language-model`.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags you are assigning to a given Amazon Transcribe resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "TranscribeArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes specified tags from a specified Amazon Transcribe resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon Transcribe resource you
    #   want to remove tags from. ARNs have the format
    #   `arn:partition:service:region:account-id:resource-type/resource-id`
    #   (for example,
    #   `arn:aws:transcribe:us-east-1:account-id:transcription-job/your-job-name`).
    #   Valid values for `resource-type` are: `transcription-job`,
    #   `medical-transcription-job`, `vocabulary`, `medical-vocabulary`,
    #   `vocabulary-filter`, and `language-model`.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys you want to remove from a specified Amazon
    #   Transcribe resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "TranscribeArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the call analytics category with new values. The
    # `UpdateCallAnalyticsCategory` operation overwrites all of the existing
    # information with the values that you provide in the request.
    #
    # @option params [required, String] :category_name
    #   The name of the analytics category to update. The name is case
    #   sensitive. If you try to update a call analytics category with the
    #   same name as a previous category you will receive a
    #   `ConflictException` error.
    #
    # @option params [required, Array<Types::Rule>] :rules
    #   The rules used for the updated analytics category. The rules that you
    #   provide in this field replace the ones that are currently being used.
    #
    # @return [Types::UpdateCallAnalyticsCategoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCallAnalyticsCategoryResponse#category_properties #category_properties} => Types::CategoryProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_call_analytics_category({
    #     category_name: "CategoryName", # required
    #     rules: [ # required
    #       {
    #         non_talk_time_filter: {
    #           threshold: 1,
    #           absolute_time_range: {
    #             start_time: 1,
    #             end_time: 1,
    #             first: 1,
    #             last: 1,
    #           },
    #           relative_time_range: {
    #             start_percentage: 1,
    #             end_percentage: 1,
    #             first: 1,
    #             last: 1,
    #           },
    #           negate: false,
    #         },
    #         interruption_filter: {
    #           threshold: 1,
    #           participant_role: "AGENT", # accepts AGENT, CUSTOMER
    #           absolute_time_range: {
    #             start_time: 1,
    #             end_time: 1,
    #             first: 1,
    #             last: 1,
    #           },
    #           relative_time_range: {
    #             start_percentage: 1,
    #             end_percentage: 1,
    #             first: 1,
    #             last: 1,
    #           },
    #           negate: false,
    #         },
    #         transcript_filter: {
    #           transcript_filter_type: "EXACT", # required, accepts EXACT
    #           absolute_time_range: {
    #             start_time: 1,
    #             end_time: 1,
    #             first: 1,
    #             last: 1,
    #           },
    #           relative_time_range: {
    #             start_percentage: 1,
    #             end_percentage: 1,
    #             first: 1,
    #             last: 1,
    #           },
    #           participant_role: "AGENT", # accepts AGENT, CUSTOMER
    #           negate: false,
    #           targets: ["NonEmptyString"], # required
    #         },
    #         sentiment_filter: {
    #           sentiments: ["POSITIVE"], # required, accepts POSITIVE, NEGATIVE, NEUTRAL, MIXED
    #           absolute_time_range: {
    #             start_time: 1,
    #             end_time: 1,
    #             first: 1,
    #             last: 1,
    #           },
    #           relative_time_range: {
    #             start_percentage: 1,
    #             end_percentage: 1,
    #             first: 1,
    #             last: 1,
    #           },
    #           participant_role: "AGENT", # accepts AGENT, CUSTOMER
    #           negate: false,
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.category_properties.category_name #=> String
    #   resp.category_properties.rules #=> Array
    #   resp.category_properties.rules[0].non_talk_time_filter.threshold #=> Integer
    #   resp.category_properties.rules[0].non_talk_time_filter.absolute_time_range.start_time #=> Integer
    #   resp.category_properties.rules[0].non_talk_time_filter.absolute_time_range.end_time #=> Integer
    #   resp.category_properties.rules[0].non_talk_time_filter.absolute_time_range.first #=> Integer
    #   resp.category_properties.rules[0].non_talk_time_filter.absolute_time_range.last #=> Integer
    #   resp.category_properties.rules[0].non_talk_time_filter.relative_time_range.start_percentage #=> Integer
    #   resp.category_properties.rules[0].non_talk_time_filter.relative_time_range.end_percentage #=> Integer
    #   resp.category_properties.rules[0].non_talk_time_filter.relative_time_range.first #=> Integer
    #   resp.category_properties.rules[0].non_talk_time_filter.relative_time_range.last #=> Integer
    #   resp.category_properties.rules[0].non_talk_time_filter.negate #=> Boolean
    #   resp.category_properties.rules[0].interruption_filter.threshold #=> Integer
    #   resp.category_properties.rules[0].interruption_filter.participant_role #=> String, one of "AGENT", "CUSTOMER"
    #   resp.category_properties.rules[0].interruption_filter.absolute_time_range.start_time #=> Integer
    #   resp.category_properties.rules[0].interruption_filter.absolute_time_range.end_time #=> Integer
    #   resp.category_properties.rules[0].interruption_filter.absolute_time_range.first #=> Integer
    #   resp.category_properties.rules[0].interruption_filter.absolute_time_range.last #=> Integer
    #   resp.category_properties.rules[0].interruption_filter.relative_time_range.start_percentage #=> Integer
    #   resp.category_properties.rules[0].interruption_filter.relative_time_range.end_percentage #=> Integer
    #   resp.category_properties.rules[0].interruption_filter.relative_time_range.first #=> Integer
    #   resp.category_properties.rules[0].interruption_filter.relative_time_range.last #=> Integer
    #   resp.category_properties.rules[0].interruption_filter.negate #=> Boolean
    #   resp.category_properties.rules[0].transcript_filter.transcript_filter_type #=> String, one of "EXACT"
    #   resp.category_properties.rules[0].transcript_filter.absolute_time_range.start_time #=> Integer
    #   resp.category_properties.rules[0].transcript_filter.absolute_time_range.end_time #=> Integer
    #   resp.category_properties.rules[0].transcript_filter.absolute_time_range.first #=> Integer
    #   resp.category_properties.rules[0].transcript_filter.absolute_time_range.last #=> Integer
    #   resp.category_properties.rules[0].transcript_filter.relative_time_range.start_percentage #=> Integer
    #   resp.category_properties.rules[0].transcript_filter.relative_time_range.end_percentage #=> Integer
    #   resp.category_properties.rules[0].transcript_filter.relative_time_range.first #=> Integer
    #   resp.category_properties.rules[0].transcript_filter.relative_time_range.last #=> Integer
    #   resp.category_properties.rules[0].transcript_filter.participant_role #=> String, one of "AGENT", "CUSTOMER"
    #   resp.category_properties.rules[0].transcript_filter.negate #=> Boolean
    #   resp.category_properties.rules[0].transcript_filter.targets #=> Array
    #   resp.category_properties.rules[0].transcript_filter.targets[0] #=> String
    #   resp.category_properties.rules[0].sentiment_filter.sentiments #=> Array
    #   resp.category_properties.rules[0].sentiment_filter.sentiments[0] #=> String, one of "POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"
    #   resp.category_properties.rules[0].sentiment_filter.absolute_time_range.start_time #=> Integer
    #   resp.category_properties.rules[0].sentiment_filter.absolute_time_range.end_time #=> Integer
    #   resp.category_properties.rules[0].sentiment_filter.absolute_time_range.first #=> Integer
    #   resp.category_properties.rules[0].sentiment_filter.absolute_time_range.last #=> Integer
    #   resp.category_properties.rules[0].sentiment_filter.relative_time_range.start_percentage #=> Integer
    #   resp.category_properties.rules[0].sentiment_filter.relative_time_range.end_percentage #=> Integer
    #   resp.category_properties.rules[0].sentiment_filter.relative_time_range.first #=> Integer
    #   resp.category_properties.rules[0].sentiment_filter.relative_time_range.last #=> Integer
    #   resp.category_properties.rules[0].sentiment_filter.participant_role #=> String, one of "AGENT", "CUSTOMER"
    #   resp.category_properties.rules[0].sentiment_filter.negate #=> Boolean
    #   resp.category_properties.create_time #=> Time
    #   resp.category_properties.last_update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/UpdateCallAnalyticsCategory AWS API Documentation
    #
    # @overload update_call_analytics_category(params = {})
    # @param [Hash] params ({})
    def update_call_analytics_category(params = {}, options = {})
      req = build_request(:update_call_analytics_category, params)
      req.send_request(options)
    end

    # Updates a vocabulary with new values that you provide in a different
    # text file from the one you used to create the vocabulary. The
    # `UpdateMedicalVocabulary` operation overwrites all of the existing
    # information with the values that you provide in the request.
    #
    # @option params [required, String] :vocabulary_name
    #   The name of the vocabulary to update. The name is case sensitive. If
    #   you try to update a vocabulary with the same name as a vocabulary
    #   you've already made, you get a `ConflictException` error.
    #
    # @option params [required, String] :language_code
    #   The language code of the language used for the entries in the updated
    #   vocabulary. U.S. English (en-US) is the only valid language code in
    #   Amazon Transcribe Medical.
    #
    # @option params [String] :vocabulary_file_uri
    #   The location in Amazon S3 of the text file that contains your custom
    #   vocabulary. The URI must be in the same Amazon Web Services Region as
    #   the resource that you are calling. The following is the format for a
    #   URI:
    #
    #   `https://s3.aws-region.amazonaws.com/bucket-name/keyprefix/objectkey`
    #
    #   For example:
    #
    #   `https://s3.us-east-1.amazonaws.com/DOC-EXAMPLE-BUCKET/vocab.txt`
    #
    #   For more information about Amazon S3 object names, see [Object
    #   Keys][1] in the *Amazon S3 Developer Guide*.
    #
    #   For more information about custom vocabularies in Amazon Transcribe
    #   Medical, see [Medical Custom Vocabularies][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys
    #   [2]: https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-med.html
    #
    # @return [Types::UpdateMedicalVocabularyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMedicalVocabularyResponse#vocabulary_name #vocabulary_name} => String
    #   * {Types::UpdateMedicalVocabularyResponse#language_code #language_code} => String
    #   * {Types::UpdateMedicalVocabularyResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::UpdateMedicalVocabularyResponse#vocabulary_state #vocabulary_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_medical_vocabulary({
    #     vocabulary_name: "VocabularyName", # required
    #     language_code: "af-ZA", # required, accepts af-ZA, ar-AE, ar-SA, cy-GB, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, ga-IE, gd-GB, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ
    #     vocabulary_file_uri: "Uri",
    #   })
    #
    # @example Response structure
    #
    #   resp.vocabulary_name #=> String
    #   resp.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"
    #   resp.last_modified_time #=> Time
    #   resp.vocabulary_state #=> String, one of "PENDING", "READY", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/UpdateMedicalVocabulary AWS API Documentation
    #
    # @overload update_medical_vocabulary(params = {})
    # @param [Hash] params ({})
    def update_medical_vocabulary(params = {}, options = {})
      req = build_request(:update_medical_vocabulary, params)
      req.send_request(options)
    end

    # Updates an existing vocabulary with new values. The `UpdateVocabulary`
    # operation overwrites all of the existing information with the values
    # that you provide in the request.
    #
    # @option params [required, String] :vocabulary_name
    #   The name of the vocabulary to update. The name is case sensitive. If
    #   you try to update a vocabulary with the same name as a previous
    #   vocabulary you will receive a `ConflictException` error.
    #
    # @option params [required, String] :language_code
    #   The language code of the vocabulary entries. For a list of languages
    #   and their corresponding language codes, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
    #
    # @option params [Array<String>] :phrases
    #   An array of strings containing the vocabulary entries.
    #
    # @option params [String] :vocabulary_file_uri
    #   The S3 location of the text file that contains the definition of the
    #   custom vocabulary. The URI must be in the same region as the API
    #   endpoint that you are calling. The general form is:
    #
    #   `https://s3.aws-region.amazonaws.com/bucket-name/keyprefix/objectkey`
    #
    #   For example:
    #
    #   `https://s3.us-east-1.amazonaws.com/DOC-EXAMPLE-BUCKET/vocab.txt`
    #
    #   For more information about S3 object names, see [Object Keys][1] in
    #   the *Amazon S3 Developer Guide*.
    #
    #   For more information about custom vocabularies, see [Custom
    #   Vocabularies][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys
    #   [2]: https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html
    #
    # @return [Types::UpdateVocabularyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVocabularyResponse#vocabulary_name #vocabulary_name} => String
    #   * {Types::UpdateVocabularyResponse#language_code #language_code} => String
    #   * {Types::UpdateVocabularyResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::UpdateVocabularyResponse#vocabulary_state #vocabulary_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_vocabulary({
    #     vocabulary_name: "VocabularyName", # required
    #     language_code: "af-ZA", # required, accepts af-ZA, ar-AE, ar-SA, cy-GB, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, ga-IE, gd-GB, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ
    #     phrases: ["Phrase"],
    #     vocabulary_file_uri: "Uri",
    #   })
    #
    # @example Response structure
    #
    #   resp.vocabulary_name #=> String
    #   resp.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"
    #   resp.last_modified_time #=> Time
    #   resp.vocabulary_state #=> String, one of "PENDING", "READY", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/UpdateVocabulary AWS API Documentation
    #
    # @overload update_vocabulary(params = {})
    # @param [Hash] params ({})
    def update_vocabulary(params = {}, options = {})
      req = build_request(:update_vocabulary, params)
      req.send_request(options)
    end

    # Updates a vocabulary filter with a new list of filtered words.
    #
    # @option params [required, String] :vocabulary_filter_name
    #   The name of the vocabulary filter to update. If you try to update a
    #   vocabulary filter with the same name as another vocabulary filter, you
    #   get a `ConflictException` error.
    #
    # @option params [Array<String>] :words
    #   The words to use in the vocabulary filter. Only use characters from
    #   the character set defined for custom vocabularies. For a list of
    #   character sets, see [Character Sets for Custom Vocabularies][1].
    #
    #   If you provide a list of words in the `Words` parameter, you can't
    #   use the `VocabularyFilterFileUri` parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html
    #
    # @option params [String] :vocabulary_filter_file_uri
    #   The Amazon S3 location of a text file used as input to create the
    #   vocabulary filter. Only use characters from the character set defined
    #   for custom vocabularies. For a list of character sets, see [Character
    #   Sets for Custom Vocabularies][1].
    #
    #   The specified file must be less than 50 KB of UTF-8 characters.
    #
    #   If you provide the location of a list of words in the
    #   `VocabularyFilterFileUri` parameter, you can't use the `Words`
    #   parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html
    #
    # @return [Types::UpdateVocabularyFilterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVocabularyFilterResponse#vocabulary_filter_name #vocabulary_filter_name} => String
    #   * {Types::UpdateVocabularyFilterResponse#language_code #language_code} => String
    #   * {Types::UpdateVocabularyFilterResponse#last_modified_time #last_modified_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_vocabulary_filter({
    #     vocabulary_filter_name: "VocabularyFilterName", # required
    #     words: ["Word"],
    #     vocabulary_filter_file_uri: "Uri",
    #   })
    #
    # @example Response structure
    #
    #   resp.vocabulary_filter_name #=> String
    #   resp.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"
    #   resp.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/UpdateVocabularyFilter AWS API Documentation
    #
    # @overload update_vocabulary_filter(params = {})
    # @param [Hash] params ({})
    def update_vocabulary_filter(params = {}, options = {})
      req = build_request(:update_vocabulary_filter, params)
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
      context[:gem_name] = 'aws-sdk-transcribeservice'
      context[:gem_version] = '1.73.0'
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
