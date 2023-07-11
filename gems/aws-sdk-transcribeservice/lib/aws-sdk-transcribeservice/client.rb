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
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::TranscribeService::Plugins::Endpoints)

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
    #   @option options [Aws::TranscribeService::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::TranscribeService::EndpointParameters`
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

    # Creates a new Call Analytics category.
    #
    # All categories are automatically applied to your Call Analytics
    # transcriptions. Note that in order to apply categories to your
    # transcriptions, you must create them before submitting your
    # transcription request, as categories cannot be applied retroactively.
    #
    # When creating a new category, you can use the `InputType` parameter to
    # label the category as a `POST_CALL` or a `REAL_TIME` category.
    # `POST_CALL` categories can only be applied to post-call transcriptions
    # and `REAL_TIME` categories can only be applied to real-time
    # transcriptions. If you do not include `InputType`, your category is
    # created as a `POST_CALL` category by default.
    #
    # Call Analytics categories are composed of rules. For each category,
    # you must create between 1 and 20 rules. Rules can include these
    # parameters: , , , and .
    #
    # To update an existing category, see .
    #
    # To learn more about Call Analytics categories, see [Creating
    # categories for post-call transcriptions][1] and [Creating categories
    # for real-time transcriptions][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transcribe/latest/dg/tca-categories-batch.html
    # [2]: https://docs.aws.amazon.com/transcribe/latest/dg/tca-categories-stream.html
    #
    # @option params [required, String] :category_name
    #   A unique name, chosen by you, for your Call Analytics category. It's
    #   helpful to use a detailed naming system that will make sense to you in
    #   the future. For example, it's better to use
    #   `sentiment-positive-last30seconds` for a category over a generic name
    #   like `test-category`.
    #
    #   Category names are case sensitive.
    #
    # @option params [required, Array<Types::Rule>] :rules
    #   Rules define a Call Analytics category. When creating a new category,
    #   you must create between 1 and 20 rules for that category. For each
    #   rule, you specify a filter you want applied to the attributes of a
    #   call. For example, you can choose a sentiment filter that detects if a
    #   customer's sentiment was positive during the last 30 seconds of the
    #   call.
    #
    # @option params [String] :input_type
    #   Choose whether you want to create a real-time or a post-call category
    #   for your Call Analytics transcription.
    #
    #   Specifying `POST_CALL` assigns your category to post-call
    #   transcriptions; categories with this input type cannot be applied to
    #   streaming (real-time) transcriptions.
    #
    #   Specifying `REAL_TIME` assigns your category to streaming
    #   transcriptions; categories with this input type cannot be applied to
    #   post-call transcriptions.
    #
    #   If you do not include `InputType`, your category is created as a
    #   post-call category by default.
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
    #     input_type: "REAL_TIME", # accepts REAL_TIME, POST_CALL
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
    #   resp.category_properties.input_type #=> String, one of "REAL_TIME", "POST_CALL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CreateCallAnalyticsCategory AWS API Documentation
    #
    # @overload create_call_analytics_category(params = {})
    # @param [Hash] params ({})
    def create_call_analytics_category(params = {}, options = {})
      req = build_request(:create_call_analytics_category, params)
      req.send_request(options)
    end

    # Creates a new custom language model.
    #
    # When creating a new custom language model, you must specify:
    #
    # * If you want a Wideband (audio sample rates over 16,000 Hz) or
    #   Narrowband (audio sample rates under 16,000 Hz) base model
    #
    # * The location of your training and tuning files (this must be an
    #   Amazon S3 URI)
    #
    # * The language of your model
    #
    # * A unique name for your model
    #
    # @option params [required, String] :language_code
    #   The language code that represents the language of your model. Each
    #   custom language model must contain terms in only one language, and the
    #   language you select for your custom language model must match the
    #   language of your training and tuning data.
    #
    #   For a list of supported languages and their associated language codes,
    #   refer to the [Supported languages][1] table. Note that US English
    #   (`en-US`) is the only language supported with Amazon Transcribe
    #   Medical.
    #
    #   A custom language model can only be used to transcribe files in the
    #   same language as the model. For example, if you create a custom
    #   language model using US English (`en-US`), you can only apply this
    #   model to files that contain English audio.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
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
    #   A unique name, chosen by you, for your custom language model.
    #
    #   This name is case sensitive, cannot contain spaces, and must be unique
    #   within an Amazon Web Services account. If you try to create a new
    #   custom language model with the same name as an existing custom
    #   language model, you get a `ConflictException` error.
    #
    # @option params [required, Types::InputDataConfig] :input_data_config
    #   Contains the Amazon S3 location of the training data you want to use
    #   to create a new custom language model, and permissions to access this
    #   location.
    #
    #   When using `InputDataConfig`, you must include these sub-parameters:
    #   `S3Uri`, which is the Amazon S3 location of your training data, and
    #   `DataAccessRoleArn`, which is the Amazon Resource Name (ARN) of the
    #   role that has permission to access your specified Amazon S3 location.
    #   You can optionally include `TuningDataS3Uri`, which is the Amazon S3
    #   location of your tuning data. If you specify different Amazon S3
    #   locations for training and tuning data, the ARN you use must have
    #   permissions to access both locations.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Adds one or more custom tags, each in the form of a key:value pair, to
    #   a new custom language model at the time you create this new model.
    #
    #   To learn more about using tags with Amazon Transcribe, refer to
    #   [Tagging resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html
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
    #     language_code: "en-US", # required, accepts en-US, hi-IN, es-US, en-GB, en-AU, de-DE, ja-JP
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
    #   resp.language_code #=> String, one of "en-US", "hi-IN", "es-US", "en-GB", "en-AU", "de-DE", "ja-JP"
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
    # Before creating a new custom medical vocabulary, you must first upload
    # a text file that contains your vocabulary table into an Amazon S3
    # bucket. Note that this differs from , where you can include a list of
    # terms within your request using the `Phrases` flag;
    # `CreateMedicalVocabulary` does not support the `Phrases` flag and only
    # accepts vocabularies in table format.
    #
    # Each language has a character set that contains all allowed characters
    # for that specific language. If you use unsupported characters, your
    # custom vocabulary request fails. Refer to [Character Sets for Custom
    # Vocabularies][1] to get the character set for your language.
    #
    # For more information, see [Custom vocabularies][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html
    # [2]: https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html
    #
    # @option params [required, String] :vocabulary_name
    #   A unique name, chosen by you, for your new custom medical vocabulary.
    #
    #   This name is case sensitive, cannot contain spaces, and must be unique
    #   within an Amazon Web Services account. If you try to create a new
    #   custom medical vocabulary with the same name as an existing custom
    #   medical vocabulary, you get a `ConflictException` error.
    #
    # @option params [required, String] :language_code
    #   The language code that represents the language of the entries in your
    #   custom vocabulary. US English (`en-US`) is the only language supported
    #   with Amazon Transcribe Medical.
    #
    # @option params [required, String] :vocabulary_file_uri
    #   The Amazon S3 location (URI) of the text file that contains your
    #   custom medical vocabulary. The URI must be in the same Amazon Web
    #   Services Region as the resource you're calling.
    #
    #   Here's an example URI path:
    #   `s3://DOC-EXAMPLE-BUCKET/my-vocab-file.txt`
    #
    # @option params [Array<Types::Tag>] :tags
    #   Adds one or more custom tags, each in the form of a key:value pair, to
    #   a new custom medical vocabulary at the time you create this new custom
    #   vocabulary.
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
    #     language_code: "af-ZA", # required, accepts af-ZA, ar-AE, ar-SA, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ, vi-VN, sv-SE
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
    #   resp.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE"
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
    # When creating a new custom vocabulary, you can either upload a text
    # file that contains your new entries, phrases, and terms into an Amazon
    # S3 bucket and include the URI in your request. Or you can include a
    # list of terms directly in your request using the `Phrases` flag.
    #
    # Each language has a character set that contains all allowed characters
    # for that specific language. If you use unsupported characters, your
    # custom vocabulary request fails. Refer to [Character Sets for Custom
    # Vocabularies][1] to get the character set for your language.
    #
    # For more information, see [Custom vocabularies][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html
    # [2]: https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html
    #
    # @option params [required, String] :vocabulary_name
    #   A unique name, chosen by you, for your new custom vocabulary.
    #
    #   This name is case sensitive, cannot contain spaces, and must be unique
    #   within an Amazon Web Services account. If you try to create a new
    #   custom vocabulary with the same name as an existing custom vocabulary,
    #   you get a `ConflictException` error.
    #
    # @option params [required, String] :language_code
    #   The language code that represents the language of the entries in your
    #   custom vocabulary. Each custom vocabulary must contain terms in only
    #   one language.
    #
    #   A custom vocabulary can only be used to transcribe files in the same
    #   language as the custom vocabulary. For example, if you create a custom
    #   vocabulary using US English (`en-US`), you can only apply this custom
    #   vocabulary to files that contain English audio.
    #
    #   For a list of supported languages and their associated language codes,
    #   refer to the [Supported languages][1] table.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
    #
    # @option params [Array<String>] :phrases
    #   Use this parameter if you want to create your custom vocabulary by
    #   including all desired terms, as comma-separated values, within your
    #   request. The other option for creating your custom vocabulary is to
    #   save your entries in a text file and upload them to an Amazon S3
    #   bucket, then specify the location of your file using the
    #   `VocabularyFileUri` parameter.
    #
    #   Note that if you include `Phrases` in your request, you cannot use
    #   `VocabularyFileUri`; you must choose one or the other.
    #
    #   Each language has a character set that contains all allowed characters
    #   for that specific language. If you use unsupported characters, your
    #   custom vocabulary filter request fails. Refer to [Character Sets for
    #   Custom Vocabularies][1] to get the character set for your language.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html
    #
    # @option params [String] :vocabulary_file_uri
    #   The Amazon S3 location of the text file that contains your custom
    #   vocabulary. The URI must be located in the same Amazon Web Services
    #   Region as the resource you're calling.
    #
    #   Here's an example URI path:
    #   `s3://DOC-EXAMPLE-BUCKET/my-vocab-file.txt`
    #
    #   Note that if you include `VocabularyFileUri` in your request, you
    #   cannot use the `Phrases` flag; you must choose one or the other.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Adds one or more custom tags, each in the form of a key:value pair, to
    #   a new custom vocabulary at the time you create this new custom
    #   vocabulary.
    #
    #   To learn more about using tags with Amazon Transcribe, refer to
    #   [Tagging resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html
    #
    # @option params [String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that has permissions to
    #   access the Amazon S3 bucket that contains your input files (in this
    #   case, your custom vocabulary). If the role that you specify doesn’t
    #   have the appropriate permissions to access the specified Amazon S3
    #   location, your request fails.
    #
    #   IAM role ARNs have the format
    #   `arn:partition:iam::account:role/role-name-with-path`. For example:
    #   `arn:aws:iam::111122223333:role/Admin`.
    #
    #   For more information, see [IAM ARNs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns
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
    #     language_code: "af-ZA", # required, accepts af-ZA, ar-AE, ar-SA, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ, vi-VN, sv-SE
    #     phrases: ["Phrase"],
    #     vocabulary_file_uri: "Uri",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     data_access_role_arn: "DataAccessRoleArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.vocabulary_name #=> String
    #   resp.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE"
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

    # Creates a new custom vocabulary filter.
    #
    # You can use custom vocabulary filters to mask, delete, or flag
    # specific words from your transcript. Custom vocabulary filters are
    # commonly used to mask profanity in transcripts.
    #
    # Each language has a character set that contains all allowed characters
    # for that specific language. If you use unsupported characters, your
    # custom vocabulary filter request fails. Refer to [Character Sets for
    # Custom Vocabularies][1] to get the character set for your language.
    #
    # For more information, see [Vocabulary filtering][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html
    # [2]: https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-filtering.html
    #
    # @option params [required, String] :vocabulary_filter_name
    #   A unique name, chosen by you, for your new custom vocabulary filter.
    #
    #   This name is case sensitive, cannot contain spaces, and must be unique
    #   within an Amazon Web Services account. If you try to create a new
    #   custom vocabulary filter with the same name as an existing custom
    #   vocabulary filter, you get a `ConflictException` error.
    #
    # @option params [required, String] :language_code
    #   The language code that represents the language of the entries in your
    #   vocabulary filter. Each custom vocabulary filter must contain terms in
    #   only one language.
    #
    #   A custom vocabulary filter can only be used to transcribe files in the
    #   same language as the filter. For example, if you create a custom
    #   vocabulary filter using US English (`en-US`), you can only apply this
    #   filter to files that contain English audio.
    #
    #   For a list of supported languages and their associated language codes,
    #   refer to the [Supported languages][1] table.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
    #
    # @option params [Array<String>] :words
    #   Use this parameter if you want to create your custom vocabulary filter
    #   by including all desired terms, as comma-separated values, within your
    #   request. The other option for creating your vocabulary filter is to
    #   save your entries in a text file and upload them to an Amazon S3
    #   bucket, then specify the location of your file using the
    #   `VocabularyFilterFileUri` parameter.
    #
    #   Note that if you include `Words` in your request, you cannot use
    #   `VocabularyFilterFileUri`; you must choose one or the other.
    #
    #   Each language has a character set that contains all allowed characters
    #   for that specific language. If you use unsupported characters, your
    #   custom vocabulary filter request fails. Refer to [Character Sets for
    #   Custom Vocabularies][1] to get the character set for your language.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html
    #
    # @option params [String] :vocabulary_filter_file_uri
    #   The Amazon S3 location of the text file that contains your custom
    #   vocabulary filter terms. The URI must be located in the same Amazon
    #   Web Services Region as the resource you're calling.
    #
    #   Here's an example URI path:
    #   `s3://DOC-EXAMPLE-BUCKET/my-vocab-filter-file.txt`
    #
    #   Note that if you include `VocabularyFilterFileUri` in your request,
    #   you cannot use `Words`; you must choose one or the other.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Adds one or more custom tags, each in the form of a key:value pair, to
    #   a new custom vocabulary filter at the time you create this new
    #   vocabulary filter.
    #
    #   To learn more about using tags with Amazon Transcribe, refer to
    #   [Tagging resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html
    #
    # @option params [String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that has permissions to
    #   access the Amazon S3 bucket that contains your input files (in this
    #   case, your custom vocabulary filter). If the role that you specify
    #   doesn’t have the appropriate permissions to access the specified
    #   Amazon S3 location, your request fails.
    #
    #   IAM role ARNs have the format
    #   `arn:partition:iam::account:role/role-name-with-path`. For example:
    #   `arn:aws:iam::111122223333:role/Admin`.
    #
    #   For more information, see [IAM ARNs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns
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
    #     language_code: "af-ZA", # required, accepts af-ZA, ar-AE, ar-SA, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ, vi-VN, sv-SE
    #     words: ["Word"],
    #     vocabulary_filter_file_uri: "Uri",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     data_access_role_arn: "DataAccessRoleArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.vocabulary_filter_name #=> String
    #   resp.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE"
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

    # Deletes a Call Analytics category. To use this operation, specify the
    # name of the category you want to delete using `CategoryName`. Category
    # names are case sensitive.
    #
    # @option params [required, String] :category_name
    #   The name of the Call Analytics category you want to delete. Category
    #   names are case sensitive.
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

    # Deletes a Call Analytics job. To use this operation, specify the name
    # of the job you want to delete using `CallAnalyticsJobName`. Job names
    # are case sensitive.
    #
    # @option params [required, String] :call_analytics_job_name
    #   The name of the Call Analytics job you want to delete. Job names are
    #   case sensitive.
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
    # custom language model names are case sensitive.
    #
    # @option params [required, String] :model_name
    #   The name of the custom language model you want to delete. Model names
    #   are case sensitive.
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

    # Deletes a medical transcription job. To use this operation, specify
    # the name of the job you want to delete using
    # `MedicalTranscriptionJobName`. Job names are case sensitive.
    #
    # @option params [required, String] :medical_transcription_job_name
    #   The name of the medical transcription job you want to delete. Job
    #   names are case sensitive.
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
    # the name of the custom vocabulary you want to delete using
    # `VocabularyName`. Custom vocabulary names are case sensitive.
    #
    # @option params [required, String] :vocabulary_name
    #   The name of the custom medical vocabulary you want to delete. Custom
    #   medical vocabulary names are case sensitive.
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

    # Deletes a transcription job. To use this operation, specify the name
    # of the job you want to delete using `TranscriptionJobName`. Job names
    # are case sensitive.
    #
    # @option params [required, String] :transcription_job_name
    #   The name of the transcription job you want to delete. Job names are
    #   case sensitive.
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
    # of the custom vocabulary you want to delete using `VocabularyName`.
    # Custom vocabulary names are case sensitive.
    #
    # @option params [required, String] :vocabulary_name
    #   The name of the custom vocabulary you want to delete. Custom
    #   vocabulary names are case sensitive.
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

    # Deletes a custom vocabulary filter. To use this operation, specify the
    # name of the custom vocabulary filter you want to delete using
    # `VocabularyFilterName`. Custom vocabulary filter names are case
    # sensitive.
    #
    # @option params [required, String] :vocabulary_filter_name
    #   The name of the custom vocabulary filter you want to delete. Custom
    #   vocabulary filter names are case sensitive.
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

    # Provides information about the specified custom language model.
    #
    # This operation also shows if the base language model that you used to
    # create your custom language model has been updated. If Amazon
    # Transcribe has updated the base model, you can create a new custom
    # language model using the updated base model.
    #
    # If you tried to create a new custom language model and the request
    # wasn't successful, you can use `DescribeLanguageModel` to help
    # identify the reason for this failure.
    #
    # @option params [required, String] :model_name
    #   The name of the custom language model you want information about.
    #   Model names are case sensitive.
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
    #   resp.language_model.language_code #=> String, one of "en-US", "hi-IN", "es-US", "en-GB", "en-AU", "de-DE", "ja-JP"
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

    # Provides information about the specified Call Analytics category.
    #
    # To get a list of your Call Analytics categories, use the operation.
    #
    # @option params [required, String] :category_name
    #   The name of the Call Analytics category you want information about.
    #   Category names are case sensitive.
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
    #   resp.category_properties.input_type #=> String, one of "REAL_TIME", "POST_CALL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetCallAnalyticsCategory AWS API Documentation
    #
    # @overload get_call_analytics_category(params = {})
    # @param [Hash] params ({})
    def get_call_analytics_category(params = {}, options = {})
      req = build_request(:get_call_analytics_category, params)
      req.send_request(options)
    end

    # Provides information about the specified Call Analytics job.
    #
    # To view the job's status, refer to `CallAnalyticsJobStatus`. If the
    # status is `COMPLETED`, the job is finished. You can find your
    # completed transcript at the URI specified in `TranscriptFileUri`. If
    # the status is `FAILED`, `FailureReason` provides details on why your
    # transcription job failed.
    #
    # If you enabled personally identifiable information (PII) redaction,
    # the redacted transcript appears at the location specified in
    # `RedactedTranscriptFileUri`.
    #
    # If you chose to redact the audio in your media file, you can find your
    # redacted media file at the location specified in
    # `RedactedMediaFileUri`.
    #
    # To get a list of your Call Analytics jobs, use the operation.
    #
    # @option params [required, String] :call_analytics_job_name
    #   The name of the Call Analytics job you want information about. Job
    #   names are case sensitive.
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
    #   resp.call_analytics_job.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE"
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
    #   resp.call_analytics_job.settings.language_options[0] #=> String, one of "af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE"
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

    # Provides information about the specified medical transcription job.
    #
    # To view the status of the specified medical transcription job, check
    # the `TranscriptionJobStatus` field. If the status is `COMPLETED`, the
    # job is finished. You can find the results at the location specified in
    # `TranscriptFileUri`. If the status is `FAILED`, `FailureReason`
    # provides details on why your transcription job failed.
    #
    # To get a list of your medical transcription jobs, use the operation.
    #
    # @option params [required, String] :medical_transcription_job_name
    #   The name of the medical transcription job you want information about.
    #   Job names are case sensitive.
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
    #   resp.medical_transcription_job.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE"
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

    # Provides information about the specified custom medical vocabulary.
    #
    # To view the status of the specified custom medical vocabulary, check
    # the `VocabularyState` field. If the status is `READY`, your custom
    # vocabulary is available to use. If the status is `FAILED`,
    # `FailureReason` provides details on why your vocabulary failed.
    #
    # To get a list of your custom medical vocabularies, use the operation.
    #
    # @option params [required, String] :vocabulary_name
    #   The name of the custom medical vocabulary you want information about.
    #   Custom medical vocabulary names are case sensitive.
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
    #   resp.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE"
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

    # Provides information about the specified transcription job.
    #
    # To view the status of the specified transcription job, check the
    # `TranscriptionJobStatus` field. If the status is `COMPLETED`, the job
    # is finished. You can find the results at the location specified in
    # `TranscriptFileUri`. If the status is `FAILED`, `FailureReason`
    # provides details on why your transcription job failed.
    #
    # If you enabled content redaction, the redacted transcript can be found
    # at the location specified in `RedactedTranscriptFileUri`.
    #
    # To get a list of your transcription jobs, use the operation.
    #
    # @option params [required, String] :transcription_job_name
    #   The name of the transcription job you want information about. Job
    #   names are case sensitive.
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
    #   resp.transcription_job.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE"
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
    #   resp.transcription_job.identify_multiple_languages #=> Boolean
    #   resp.transcription_job.language_options #=> Array
    #   resp.transcription_job.language_options[0] #=> String, one of "af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE"
    #   resp.transcription_job.identified_language_score #=> Float
    #   resp.transcription_job.language_codes #=> Array
    #   resp.transcription_job.language_codes[0].language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE"
    #   resp.transcription_job.language_codes[0].duration_in_seconds #=> Float
    #   resp.transcription_job.tags #=> Array
    #   resp.transcription_job.tags[0].key #=> String
    #   resp.transcription_job.tags[0].value #=> String
    #   resp.transcription_job.subtitles.formats #=> Array
    #   resp.transcription_job.subtitles.formats[0] #=> String, one of "vtt", "srt"
    #   resp.transcription_job.subtitles.subtitle_file_uris #=> Array
    #   resp.transcription_job.subtitles.subtitle_file_uris[0] #=> String
    #   resp.transcription_job.subtitles.output_start_index #=> Integer
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

    # Provides information about the specified custom vocabulary.
    #
    # To view the status of the specified custom vocabulary, check the
    # `VocabularyState` field. If the status is `READY`, your custom
    # vocabulary is available to use. If the status is `FAILED`,
    # `FailureReason` provides details on why your custom vocabulary failed.
    #
    # To get a list of your custom vocabularies, use the operation.
    #
    # @option params [required, String] :vocabulary_name
    #   The name of the custom vocabulary you want information about. Custom
    #   vocabulary names are case sensitive.
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
    #   resp.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE"
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

    # Provides information about the specified custom vocabulary filter.
    #
    # To get a list of your custom vocabulary filters, use the operation.
    #
    # @option params [required, String] :vocabulary_filter_name
    #   The name of the custom vocabulary filter you want information about.
    #   Custom vocabulary filter names are case sensitive.
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
    #   resp.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE"
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

    # Provides a list of Call Analytics categories, including all rules that
    # make up each category.
    #
    # To get detailed information about a specific Call Analytics category,
    # use the operation.
    #
    # @option params [String] :next_token
    #   If your `ListCallAnalyticsCategories` request returns more results
    #   than can be displayed, `NextToken` is displayed in the response with
    #   an associated string. To get the next page of results, copy this
    #   string and repeat your request, including `NextToken` with the value
    #   of the copied string. Repeat as needed to view all your results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of Call Analytics categories to return in each page
    #   of results. If there are fewer results than the value that you
    #   specify, only the actual results are returned. If you don't specify a
    #   value, a default of 5 is used.
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
    #   resp.categories[0].input_type #=> String, one of "REAL_TIME", "POST_CALL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListCallAnalyticsCategories AWS API Documentation
    #
    # @overload list_call_analytics_categories(params = {})
    # @param [Hash] params ({})
    def list_call_analytics_categories(params = {}, options = {})
      req = build_request(:list_call_analytics_categories, params)
      req.send_request(options)
    end

    # Provides a list of Call Analytics jobs that match the specified
    # criteria. If no criteria are specified, all Call Analytics jobs are
    # returned.
    #
    # To get detailed information about a specific Call Analytics job, use
    # the operation.
    #
    # @option params [String] :status
    #   Returns only Call Analytics jobs with the specified status. Jobs are
    #   ordered by creation date, with the newest job first. If you don't
    #   include `Status`, all Call Analytics jobs are returned.
    #
    # @option params [String] :job_name_contains
    #   Returns only the Call Analytics jobs that contain the specified
    #   string. The search is not case sensitive.
    #
    # @option params [String] :next_token
    #   If your `ListCallAnalyticsJobs` request returns more results than can
    #   be displayed, `NextToken` is displayed in the response with an
    #   associated string. To get the next page of results, copy this string
    #   and repeat your request, including `NextToken` with the value of the
    #   copied string. Repeat as needed to view all your results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of Call Analytics jobs to return in each page of
    #   results. If there are fewer results than the value that you specify,
    #   only the actual results are returned. If you don't specify a value, a
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
    #   resp.call_analytics_job_summaries[0].language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE"
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

    # Provides a list of custom language models that match the specified
    # criteria. If no criteria are specified, all custom language models are
    # returned.
    #
    # To get detailed information about a specific custom language model,
    # use the operation.
    #
    # @option params [String] :status_equals
    #   Returns only custom language models with the specified status.
    #   Language models are ordered by creation date, with the newest model
    #   first. If you don't include `StatusEquals`, all custom language
    #   models are returned.
    #
    # @option params [String] :name_contains
    #   Returns only the custom language models that contain the specified
    #   string. The search is not case sensitive.
    #
    # @option params [String] :next_token
    #   If your `ListLanguageModels` request returns more results than can be
    #   displayed, `NextToken` is displayed in the response with an associated
    #   string. To get the next page of results, copy this string and repeat
    #   your request, including `NextToken` with the value of the copied
    #   string. Repeat as needed to view all your results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of custom language models to return in each page of
    #   results. If there are fewer results than the value that you specify,
    #   only the actual results are returned. If you don't specify a value, a
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
    #   resp.models[0].language_code #=> String, one of "en-US", "hi-IN", "es-US", "en-GB", "en-AU", "de-DE", "ja-JP"
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

    # Provides a list of medical transcription jobs that match the specified
    # criteria. If no criteria are specified, all medical transcription jobs
    # are returned.
    #
    # To get detailed information about a specific medical transcription
    # job, use the operation.
    #
    # @option params [String] :status
    #   Returns only medical transcription jobs with the specified status.
    #   Jobs are ordered by creation date, with the newest job first. If you
    #   don't include `Status`, all medical transcription jobs are returned.
    #
    # @option params [String] :job_name_contains
    #   Returns only the medical transcription jobs that contain the specified
    #   string. The search is not case sensitive.
    #
    # @option params [String] :next_token
    #   If your `ListMedicalTranscriptionJobs` request returns more results
    #   than can be displayed, `NextToken` is displayed in the response with
    #   an associated string. To get the next page of results, copy this
    #   string and repeat your request, including `NextToken` with the value
    #   of the copied string. Repeat as needed to view all your results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of medical transcription jobs to return in each
    #   page of results. If there are fewer results than the value that you
    #   specify, only the actual results are returned. If you don't specify a
    #   value, a default of 5 is used.
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
    #   resp.medical_transcription_job_summaries[0].language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE"
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

    # Provides a list of custom medical vocabularies that match the
    # specified criteria. If no criteria are specified, all custom medical
    # vocabularies are returned.
    #
    # To get detailed information about a specific custom medical
    # vocabulary, use the operation.
    #
    # @option params [String] :next_token
    #   If your `ListMedicalVocabularies` request returns more results than
    #   can be displayed, `NextToken` is displayed in the response with an
    #   associated string. To get the next page of results, copy this string
    #   and repeat your request, including `NextToken` with the value of the
    #   copied string. Repeat as needed to view all your results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of custom medical vocabularies to return in each
    #   page of results. If there are fewer results than the value that you
    #   specify, only the actual results are returned. If you don't specify a
    #   value, a default of 5 is used.
    #
    # @option params [String] :state_equals
    #   Returns only custom medical vocabularies with the specified state.
    #   Custom vocabularies are ordered by creation date, with the newest
    #   vocabulary first. If you don't include `StateEquals`, all custom
    #   medical vocabularies are returned.
    #
    # @option params [String] :name_contains
    #   Returns only the custom medical vocabularies that contain the
    #   specified string. The search is not case sensitive.
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
    #   resp.vocabularies[0].language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE"
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

    # Lists all tags associated with the specified transcription job,
    # vocabulary, model, or resource.
    #
    # To learn more about using tags with Amazon Transcribe, refer to
    # [Tagging resources][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html
    #
    # @option params [required, String] :resource_arn
    #   Returns a list of all tags associated with the specified Amazon
    #   Resource Name (ARN). ARNs have the format
    #   `arn:partition:service:region:account-id:resource-type/resource-id`.
    #
    #   For example,
    #   `arn:aws:transcribe:us-west-2:111122223333:transcription-job/transcription-job-name`.
    #
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

    # Provides a list of transcription jobs that match the specified
    # criteria. If no criteria are specified, all transcription jobs are
    # returned.
    #
    # To get detailed information about a specific transcription job, use
    # the operation.
    #
    # @option params [String] :status
    #   Returns only transcription jobs with the specified status. Jobs are
    #   ordered by creation date, with the newest job first. If you don't
    #   include `Status`, all transcription jobs are returned.
    #
    # @option params [String] :job_name_contains
    #   Returns only the transcription jobs that contain the specified string.
    #   The search is not case sensitive.
    #
    # @option params [String] :next_token
    #   If your `ListTranscriptionJobs` request returns more results than can
    #   be displayed, `NextToken` is displayed in the response with an
    #   associated string. To get the next page of results, copy this string
    #   and repeat your request, including `NextToken` with the value of the
    #   copied string. Repeat as needed to view all your results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of transcription jobs to return in each page of
    #   results. If there are fewer results than the value that you specify,
    #   only the actual results are returned. If you don't specify a value, a
    #   default of 5 is used.
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
    #   resp.transcription_job_summaries[0].language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE"
    #   resp.transcription_job_summaries[0].transcription_job_status #=> String, one of "QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.transcription_job_summaries[0].failure_reason #=> String
    #   resp.transcription_job_summaries[0].output_location_type #=> String, one of "CUSTOMER_BUCKET", "SERVICE_BUCKET"
    #   resp.transcription_job_summaries[0].content_redaction.redaction_type #=> String, one of "PII"
    #   resp.transcription_job_summaries[0].content_redaction.redaction_output #=> String, one of "redacted", "redacted_and_unredacted"
    #   resp.transcription_job_summaries[0].content_redaction.pii_entity_types #=> Array
    #   resp.transcription_job_summaries[0].content_redaction.pii_entity_types[0] #=> String, one of "BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "ALL"
    #   resp.transcription_job_summaries[0].model_settings.language_model_name #=> String
    #   resp.transcription_job_summaries[0].identify_language #=> Boolean
    #   resp.transcription_job_summaries[0].identify_multiple_languages #=> Boolean
    #   resp.transcription_job_summaries[0].identified_language_score #=> Float
    #   resp.transcription_job_summaries[0].language_codes #=> Array
    #   resp.transcription_job_summaries[0].language_codes[0].language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE"
    #   resp.transcription_job_summaries[0].language_codes[0].duration_in_seconds #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListTranscriptionJobs AWS API Documentation
    #
    # @overload list_transcription_jobs(params = {})
    # @param [Hash] params ({})
    def list_transcription_jobs(params = {}, options = {})
      req = build_request(:list_transcription_jobs, params)
      req.send_request(options)
    end

    # Provides a list of custom vocabularies that match the specified
    # criteria. If no criteria are specified, all custom vocabularies are
    # returned.
    #
    # To get detailed information about a specific custom vocabulary, use
    # the operation.
    #
    # @option params [String] :next_token
    #   If your `ListVocabularies` request returns more results than can be
    #   displayed, `NextToken` is displayed in the response with an associated
    #   string. To get the next page of results, copy this string and repeat
    #   your request, including `NextToken` with the value of the copied
    #   string. Repeat as needed to view all your results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of custom vocabularies to return in each page of
    #   results. If there are fewer results than the value that you specify,
    #   only the actual results are returned. If you don't specify a value, a
    #   default of 5 is used.
    #
    # @option params [String] :state_equals
    #   Returns only custom vocabularies with the specified state.
    #   Vocabularies are ordered by creation date, with the newest vocabulary
    #   first. If you don't include `StateEquals`, all custom medical
    #   vocabularies are returned.
    #
    # @option params [String] :name_contains
    #   Returns only the custom vocabularies that contain the specified
    #   string. The search is not case sensitive.
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
    #   resp.vocabularies[0].language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE"
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

    # Provides a list of custom vocabulary filters that match the specified
    # criteria. If no criteria are specified, all custom vocabularies are
    # returned.
    #
    # To get detailed information about a specific custom vocabulary filter,
    # use the operation.
    #
    # @option params [String] :next_token
    #   If your `ListVocabularyFilters` request returns more results than can
    #   be displayed, `NextToken` is displayed in the response with an
    #   associated string. To get the next page of results, copy this string
    #   and repeat your request, including `NextToken` with the value of the
    #   copied string. Repeat as needed to view all your results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of custom vocabulary filters to return in each page
    #   of results. If there are fewer results than the value that you
    #   specify, only the actual results are returned. If you don't specify a
    #   value, a default of 5 is used.
    #
    # @option params [String] :name_contains
    #   Returns only the custom vocabulary filters that contain the specified
    #   string. The search is not case sensitive.
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
    #   resp.vocabulary_filters[0].language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE"
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

    # Transcribes the audio from a customer service call and applies any
    # additional Request Parameters you choose to include in your request.
    #
    # In addition to many standard transcription features, Call Analytics
    # provides you with call characteristics, call summarization, speaker
    # sentiment, and optional redaction of your text transcript and your
    # audio file. You can also apply custom categories to flag specified
    # conditions. To learn more about these features and insights, refer to
    # [Analyzing call center audio with Call Analytics][1].
    #
    # If you want to apply categories to your Call Analytics job, you must
    # create them before submitting your job request. Categories cannot be
    # retroactively applied to a job. To create a new category, use the
    # operation. To learn more about Call Analytics categories, see
    # [Creating categories for post-call transcriptions][2] and [Creating
    # categories for real-time transcriptions][3].
    #
    # To make a `StartCallAnalyticsJob` request, you must first upload your
    # media file into an Amazon S3 bucket; you can then specify the Amazon
    # S3 location of the file using the `Media` parameter.
    #
    # Note that job queuing is enabled by default for Call Analytics jobs.
    #
    # You must include the following parameters in your
    # `StartCallAnalyticsJob` request:
    #
    # * `region`: The Amazon Web Services Region where you are making your
    #   request. For a list of Amazon Web Services Regions supported with
    #   Amazon Transcribe, refer to [Amazon Transcribe endpoints and
    #   quotas][4].
    #
    # * `CallAnalyticsJobName`: A custom name that you create for your
    #   transcription job that's unique within your Amazon Web Services
    #   account.
    #
    # * `DataAccessRoleArn`: The Amazon Resource Name (ARN) of an IAM role
    #   that has permissions to access the Amazon S3 bucket that contains
    #   your input files.
    #
    # * `Media` (`MediaFileUri` or `RedactedMediaFileUri`): The Amazon S3
    #   location of your media file.
    #
    # <note markdown="1"> With Call Analytics, you can redact the audio contained in your media
    # file by including `RedactedMediaFileUri`, instead of `MediaFileUri`,
    # to specify the location of your input audio. If you choose to redact
    # your audio, you can find your redacted media at the location specified
    # in the `RedactedMediaFileUri` field of your response.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics.html
    # [2]: https://docs.aws.amazon.com/transcribe/latest/dg/tca-categories-batch.html
    # [3]: https://docs.aws.amazon.com/transcribe/latest/dg/tca-categories-stream.html
    # [4]: https://docs.aws.amazon.com/general/latest/gr/transcribe.html
    #
    # @option params [required, String] :call_analytics_job_name
    #   A unique name, chosen by you, for your Call Analytics job.
    #
    #   This name is case sensitive, cannot contain spaces, and must be unique
    #   within an Amazon Web Services account. If you try to create a new job
    #   with the same name as an existing job, you get a `ConflictException`
    #   error.
    #
    # @option params [required, Types::Media] :media
    #   Describes the Amazon S3 location of the media file you want to use in
    #   your Call Analytics request.
    #
    # @option params [String] :output_location
    #   The Amazon S3 location where you want your Call Analytics
    #   transcription output stored. You can use any of the following formats
    #   to specify the output location:
    #
    #   1.  s3://DOC-EXAMPLE-BUCKET
    #
    #   2.  s3://DOC-EXAMPLE-BUCKET/my-output-folder/
    #
    #   3.  s3://DOC-EXAMPLE-BUCKET/my-output-folder/my-call-analytics-job.json
    #
    #   Unless you specify a file name (option 3), the name of your output
    #   file has a default value that matches the name you specified for your
    #   transcription job using the `CallAnalyticsJobName` parameter.
    #
    #   You can specify a KMS key to encrypt your output using the
    #   `OutputEncryptionKMSKeyId` parameter. If you don't specify a KMS key,
    #   Amazon Transcribe uses the default Amazon S3 key for server-side
    #   encryption.
    #
    #   If you don't specify `OutputLocation`, your transcript is placed in a
    #   service-managed Amazon S3 bucket and you are provided with a URI to
    #   access your transcript.
    #
    # @option params [String] :output_encryption_kms_key_id
    #   The KMS key you want to use to encrypt your Call Analytics output.
    #
    #   If using a key located in the **current** Amazon Web Services account,
    #   you can specify your KMS key in one of four ways:
    #
    #   1.  Use the KMS key ID itself. For example,
    #       `1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    #   2.  Use an alias for the KMS key ID. For example,
    #       `alias/ExampleAlias`.
    #
    #   3.  Use the Amazon Resource Name (ARN) for the KMS key ID. For
    #       example,
    #       `arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    #   4.  Use the ARN for the KMS key alias. For example,
    #       `arn:aws:kms:region:account-ID:alias/ExampleAlias`.
    #
    #   If using a key located in a **different** Amazon Web Services account
    #   than the current Amazon Web Services account, you can specify your KMS
    #   key in one of two ways:
    #
    #   1.  Use the ARN for the KMS key ID. For example,
    #       `arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    #   2.  Use the ARN for the KMS key alias. For example,
    #       `arn:aws:kms:region:account-ID:alias/ExampleAlias`.
    #
    #   If you don't specify an encryption key, your output is encrypted with
    #   the default Amazon S3 key (SSE-S3).
    #
    #   If you specify a KMS key to encrypt your output, you must also specify
    #   an output location using the `OutputLocation` parameter.
    #
    #   Note that the role making the request must have permission to use the
    #   specified KMS key.
    #
    # @option params [String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that has permissions to
    #   access the Amazon S3 bucket that contains your input files. If the
    #   role that you specify doesn’t have the appropriate permissions to
    #   access the specified Amazon S3 location, your request fails.
    #
    #   IAM role ARNs have the format
    #   `arn:partition:iam::account:role/role-name-with-path`. For example:
    #   `arn:aws:iam::111122223333:role/Admin`.
    #
    #   For more information, see [IAM ARNs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns
    #
    # @option params [Types::CallAnalyticsJobSettings] :settings
    #   Specify additional optional settings in your request, including
    #   content redaction; allows you to apply custom language models,
    #   vocabulary filters, and custom vocabularies to your Call Analytics
    #   job.
    #
    # @option params [Array<Types::ChannelDefinition>] :channel_definitions
    #   Makes it possible to specify which speaker is on which channel. For
    #   example, if your agent is the first participant to speak, you would
    #   set `ChannelId` to `0` (to indicate the first channel) and
    #   `ParticipantRole` to `AGENT` (to indicate that it's the agent
    #   speaking).
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
    #     data_access_role_arn: "DataAccessRoleArn",
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
    #       language_options: ["af-ZA"], # accepts af-ZA, ar-AE, ar-SA, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ, vi-VN, sv-SE
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
    #   resp.call_analytics_job.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE"
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
    #   resp.call_analytics_job.settings.language_options[0] #=> String, one of "af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE"
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

    # Transcribes the audio from a medical dictation or conversation and
    # applies any additional Request Parameters you choose to include in
    # your request.
    #
    # In addition to many standard transcription features, Amazon Transcribe
    # Medical provides you with a robust medical vocabulary and, optionally,
    # content identification, which adds flags to personal health
    # information (PHI). To learn more about these features, refer to [How
    # Amazon Transcribe Medical works][1].
    #
    # To make a `StartMedicalTranscriptionJob` request, you must first
    # upload your media file into an Amazon S3 bucket; you can then specify
    # the S3 location of the file using the `Media` parameter.
    #
    # You must include the following parameters in your
    # `StartMedicalTranscriptionJob` request:
    #
    # * `region`: The Amazon Web Services Region where you are making your
    #   request. For a list of Amazon Web Services Regions supported with
    #   Amazon Transcribe, refer to [Amazon Transcribe endpoints and
    #   quotas][2].
    #
    # * `MedicalTranscriptionJobName`: A custom name you create for your
    #   transcription job that is unique within your Amazon Web Services
    #   account.
    #
    # * `Media` (`MediaFileUri`): The Amazon S3 location of your media file.
    #
    # * `LanguageCode`: This must be `en-US`.
    #
    # * `OutputBucketName`: The Amazon S3 bucket where you want your
    #   transcript stored. If you want your output stored in a sub-folder of
    #   this bucket, you must also include `OutputKey`.
    #
    # * `Specialty`: This must be `PRIMARYCARE`.
    #
    # * `Type`: Choose whether your audio is a conversation or a dictation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transcribe/latest/dg/how-it-works-med.html
    # [2]: https://docs.aws.amazon.com/general/latest/gr/transcribe.html
    #
    # @option params [required, String] :medical_transcription_job_name
    #   A unique name, chosen by you, for your medical transcription job. The
    #   name that you specify is also used as the default name of your
    #   transcription output file. If you want to specify a different name for
    #   your transcription output, use the `OutputKey` parameter.
    #
    #   This name is case sensitive, cannot contain spaces, and must be unique
    #   within an Amazon Web Services account. If you try to create a new job
    #   with the same name as an existing job, you get a `ConflictException`
    #   error.
    #
    # @option params [required, String] :language_code
    #   The language code that represents the language spoken in the input
    #   media file. US English (`en-US`) is the only valid value for medical
    #   transcription jobs. Any other value you enter for language code
    #   results in a `BadRequestException` error.
    #
    # @option params [Integer] :media_sample_rate_hertz
    #   The sample rate, in hertz, of the audio track in your input media
    #   file.
    #
    #   If you don't specify the media sample rate, Amazon Transcribe Medical
    #   determines it for you. If you specify the sample rate, it must match
    #   the rate detected by Amazon Transcribe Medical; if there's a mismatch
    #   between the value that you specify and the value detected, your job
    #   fails. Therefore, in most cases, it's advised to omit
    #   `MediaSampleRateHertz` and let Amazon Transcribe Medical determine the
    #   sample rate.
    #
    # @option params [String] :media_format
    #   Specify the format of your input media file.
    #
    # @option params [required, Types::Media] :media
    #   Describes the Amazon S3 location of the media file you want to use in
    #   your request.
    #
    #   For information on supported media formats, refer to the
    #   [MediaFormat][1] parameter or the [Media formats][2] section in the
    #   Amazon S3 Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/APIReference/API_StartTranscriptionJob.html#transcribe-StartTranscriptionJob-request-MediaFormat
    #   [2]: https://docs.aws.amazon.com/transcribe/latest/dg/how-input.html#how-input-audio
    #
    # @option params [required, String] :output_bucket_name
    #   The name of the Amazon S3 bucket where you want your medical
    #   transcription output stored. Do not include the `S3://` prefix of the
    #   specified bucket.
    #
    #   If you want your output to go to a sub-folder of this bucket, specify
    #   it using the `OutputKey` parameter; `OutputBucketName` only accepts
    #   the name of a bucket.
    #
    #   For example, if you want your output stored in
    #   `S3://DOC-EXAMPLE-BUCKET`, set `OutputBucketName` to
    #   `DOC-EXAMPLE-BUCKET`. However, if you want your output stored in
    #   `S3://DOC-EXAMPLE-BUCKET/test-files/`, set `OutputBucketName` to
    #   `DOC-EXAMPLE-BUCKET` and `OutputKey` to `test-files/`.
    #
    #   Note that Amazon Transcribe must have permission to use the specified
    #   location. You can change Amazon S3 permissions using the [Amazon Web
    #   Services Management Console][1]. See also [Permissions Required for
    #   IAM User Roles][2].
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/s3
    #   [2]: https://docs.aws.amazon.com/transcribe/latest/dg/security_iam_id-based-policy-examples.html#auth-role-iam-user
    #
    # @option params [String] :output_key
    #   Use in combination with `OutputBucketName` to specify the output
    #   location of your transcript and, optionally, a unique name for your
    #   output file. The default name for your transcription output is the
    #   same as the name you specified for your medical transcription job
    #   (`MedicalTranscriptionJobName`).
    #
    #   Here are some examples of how you can use `OutputKey`:
    #
    #   * If you specify 'DOC-EXAMPLE-BUCKET' as the `OutputBucketName` and
    #     'my-transcript.json' as the `OutputKey`, your transcription output
    #     path is `s3://DOC-EXAMPLE-BUCKET/my-transcript.json`.
    #
    #   * If you specify 'my-first-transcription' as the
    #     `MedicalTranscriptionJobName`, 'DOC-EXAMPLE-BUCKET' as the
    #     `OutputBucketName`, and 'my-transcript' as the `OutputKey`, your
    #     transcription output path is
    #     `s3://DOC-EXAMPLE-BUCKET/my-transcript/my-first-transcription.json`.
    #
    #   * If you specify 'DOC-EXAMPLE-BUCKET' as the `OutputBucketName` and
    #     'test-files/my-transcript.json' as the `OutputKey`, your
    #     transcription output path is
    #     `s3://DOC-EXAMPLE-BUCKET/test-files/my-transcript.json`.
    #
    #   * If you specify 'my-first-transcription' as the
    #     `MedicalTranscriptionJobName`, 'DOC-EXAMPLE-BUCKET' as the
    #     `OutputBucketName`, and 'test-files/my-transcript' as the
    #     `OutputKey`, your transcription output path is
    #     `s3://DOC-EXAMPLE-BUCKET/test-files/my-transcript/my-first-transcription.json`.
    #
    #   If you specify the name of an Amazon S3 bucket sub-folder that
    #   doesn't exist, one is created for you.
    #
    # @option params [String] :output_encryption_kms_key_id
    #   The KMS key you want to use to encrypt your medical transcription
    #   output.
    #
    #   If using a key located in the **current** Amazon Web Services account,
    #   you can specify your KMS key in one of four ways:
    #
    #   1.  Use the KMS key ID itself. For example,
    #       `1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    #   2.  Use an alias for the KMS key ID. For example,
    #       `alias/ExampleAlias`.
    #
    #   3.  Use the Amazon Resource Name (ARN) for the KMS key ID. For
    #       example,
    #       `arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    #   4.  Use the ARN for the KMS key alias. For example,
    #       `arn:aws:kms:region:account-ID:alias/ExampleAlias`.
    #
    #   If using a key located in a **different** Amazon Web Services account
    #   than the current Amazon Web Services account, you can specify your KMS
    #   key in one of two ways:
    #
    #   1.  Use the ARN for the KMS key ID. For example,
    #       `arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    #   2.  Use the ARN for the KMS key alias. For example,
    #       `arn:aws:kms:region:account-ID:alias/ExampleAlias`.
    #
    #   If you don't specify an encryption key, your output is encrypted with
    #   the default Amazon S3 key (SSE-S3).
    #
    #   If you specify a KMS key to encrypt your output, you must also specify
    #   an output location using the `OutputLocation` parameter.
    #
    #   Note that the role making the request must have permission to use the
    #   specified KMS key.
    #
    # @option params [Hash<String,String>] :kms_encryption_context
    #   A map of plain text, non-secret key:value pairs, known as encryption
    #   context pairs, that provide an added layer of security for your data.
    #   For more information, see [KMS encryption context][1] and [Asymmetric
    #   keys in KMS][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/key-management.html#kms-context
    #   [2]: https://docs.aws.amazon.com/transcribe/latest/dg/symmetric-asymmetric.html
    #
    # @option params [Types::MedicalTranscriptionSetting] :settings
    #   Specify additional optional settings in your request, including
    #   channel identification, alternative transcriptions, and speaker
    #   partitioning. You can use that to apply custom vocabularies to your
    #   transcription job.
    #
    # @option params [String] :content_identification_type
    #   Labels all personal health information (PHI) identified in your
    #   transcript. For more information, see [Identifying personal health
    #   information (PHI) in a transcription][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/phi-id.html
    #
    # @option params [required, String] :specialty
    #   Specify the predominant medical specialty represented in your media.
    #   For batch transcriptions, `PRIMARYCARE` is the only valid value. If
    #   you require additional specialties, refer to .
    #
    # @option params [required, String] :type
    #   Specify whether your input media contains only one person
    #   (`DICTATION`) or contains a conversation between two people
    #   (`CONVERSATION`).
    #
    #   For example, `DICTATION` could be used for a medical professional
    #   wanting to transcribe voice memos; `CONVERSATION` could be used for
    #   transcribing the doctor-patient dialogue during the patient's office
    #   visit.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Adds one or more custom tags, each in the form of a key:value pair, to
    #   a new medical transcription job at the time you start this new job.
    #
    #   To learn more about using tags with Amazon Transcribe, refer to
    #   [Tagging resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html
    #
    # @return [Types::StartMedicalTranscriptionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartMedicalTranscriptionJobResponse#medical_transcription_job #medical_transcription_job} => Types::MedicalTranscriptionJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_medical_transcription_job({
    #     medical_transcription_job_name: "TranscriptionJobName", # required
    #     language_code: "af-ZA", # required, accepts af-ZA, ar-AE, ar-SA, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ, vi-VN, sv-SE
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
    #   resp.medical_transcription_job.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE"
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

    # Transcribes the audio from a media file and applies any additional
    # Request Parameters you choose to include in your request.
    #
    # To make a `StartTranscriptionJob` request, you must first upload your
    # media file into an Amazon S3 bucket; you can then specify the Amazon
    # S3 location of the file using the `Media` parameter.
    #
    # You must include the following parameters in your
    # `StartTranscriptionJob` request:
    #
    # * `region`: The Amazon Web Services Region where you are making your
    #   request. For a list of Amazon Web Services Regions supported with
    #   Amazon Transcribe, refer to [Amazon Transcribe endpoints and
    #   quotas][1].
    #
    # * `TranscriptionJobName`: A custom name you create for your
    #   transcription job that is unique within your Amazon Web Services
    #   account.
    #
    # * `Media` (`MediaFileUri`): The Amazon S3 location of your media file.
    #
    # * One of `LanguageCode`, `IdentifyLanguage`, or
    #   `IdentifyMultipleLanguages`: If you know the language of your media
    #   file, specify it using the `LanguageCode` parameter; you can find
    #   all valid language codes in the [Supported languages][2] table. If
    #   you don't know the languages spoken in your media, use either
    #   `IdentifyLanguage` or `IdentifyMultipleLanguages` and let Amazon
    #   Transcribe identify the languages for you.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/transcribe.html
    # [2]: https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
    #
    # @option params [required, String] :transcription_job_name
    #   A unique name, chosen by you, for your transcription job. The name
    #   that you specify is also used as the default name of your
    #   transcription output file. If you want to specify a different name for
    #   your transcription output, use the `OutputKey` parameter.
    #
    #   This name is case sensitive, cannot contain spaces, and must be unique
    #   within an Amazon Web Services account. If you try to create a new job
    #   with the same name as an existing job, you get a `ConflictException`
    #   error.
    #
    # @option params [String] :language_code
    #   The language code that represents the language spoken in the input
    #   media file.
    #
    #   If you're unsure of the language spoken in your media file, consider
    #   using `IdentifyLanguage` or `IdentifyMultipleLanguages` to enable
    #   automatic language identification.
    #
    #   Note that you must include one of `LanguageCode`, `IdentifyLanguage`,
    #   or `IdentifyMultipleLanguages` in your request. If you include more
    #   than one of these parameters, your transcription job fails.
    #
    #   For a list of supported languages and their associated language codes,
    #   refer to the [Supported languages][1] table.
    #
    #   <note markdown="1"> To transcribe speech in Modern Standard Arabic (`ar-SA`), your media
    #   file must be encoded at a sample rate of 16,000 Hz or higher.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
    #
    # @option params [Integer] :media_sample_rate_hertz
    #   The sample rate, in hertz, of the audio track in your input media
    #   file.
    #
    #   If you don't specify the media sample rate, Amazon Transcribe
    #   determines it for you. If you specify the sample rate, it must match
    #   the rate detected by Amazon Transcribe. If there's a mismatch between
    #   the value that you specify and the value detected, your job fails. In
    #   most cases, you can omit `MediaSampleRateHertz` and let Amazon
    #   Transcribe determine the sample rate.
    #
    # @option params [String] :media_format
    #   Specify the format of your input media file.
    #
    # @option params [required, Types::Media] :media
    #   Describes the Amazon S3 location of the media file you want to use in
    #   your request.
    #
    # @option params [String] :output_bucket_name
    #   The name of the Amazon S3 bucket where you want your transcription
    #   output stored. Do not include the `S3://` prefix of the specified
    #   bucket.
    #
    #   If you want your output to go to a sub-folder of this bucket, specify
    #   it using the `OutputKey` parameter; `OutputBucketName` only accepts
    #   the name of a bucket.
    #
    #   For example, if you want your output stored in
    #   `S3://DOC-EXAMPLE-BUCKET`, set `OutputBucketName` to
    #   `DOC-EXAMPLE-BUCKET`. However, if you want your output stored in
    #   `S3://DOC-EXAMPLE-BUCKET/test-files/`, set `OutputBucketName` to
    #   `DOC-EXAMPLE-BUCKET` and `OutputKey` to `test-files/`.
    #
    #   Note that Amazon Transcribe must have permission to use the specified
    #   location. You can change Amazon S3 permissions using the [Amazon Web
    #   Services Management Console][1]. See also [Permissions Required for
    #   IAM User Roles][2].
    #
    #   If you don't specify `OutputBucketName`, your transcript is placed in
    #   a service-managed Amazon S3 bucket and you are provided with a URI to
    #   access your transcript.
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/s3
    #   [2]: https://docs.aws.amazon.com/transcribe/latest/dg/security_iam_id-based-policy-examples.html#auth-role-iam-user
    #
    # @option params [String] :output_key
    #   Use in combination with `OutputBucketName` to specify the output
    #   location of your transcript and, optionally, a unique name for your
    #   output file. The default name for your transcription output is the
    #   same as the name you specified for your transcription job
    #   (`TranscriptionJobName`).
    #
    #   Here are some examples of how you can use `OutputKey`:
    #
    #   * If you specify 'DOC-EXAMPLE-BUCKET' as the `OutputBucketName` and
    #     'my-transcript.json' as the `OutputKey`, your transcription output
    #     path is `s3://DOC-EXAMPLE-BUCKET/my-transcript.json`.
    #
    #   * If you specify 'my-first-transcription' as the
    #     `TranscriptionJobName`, 'DOC-EXAMPLE-BUCKET' as the
    #     `OutputBucketName`, and 'my-transcript' as the `OutputKey`, your
    #     transcription output path is
    #     `s3://DOC-EXAMPLE-BUCKET/my-transcript/my-first-transcription.json`.
    #
    #   * If you specify 'DOC-EXAMPLE-BUCKET' as the `OutputBucketName` and
    #     'test-files/my-transcript.json' as the `OutputKey`, your
    #     transcription output path is
    #     `s3://DOC-EXAMPLE-BUCKET/test-files/my-transcript.json`.
    #
    #   * If you specify 'my-first-transcription' as the
    #     `TranscriptionJobName`, 'DOC-EXAMPLE-BUCKET' as the
    #     `OutputBucketName`, and 'test-files/my-transcript' as the
    #     `OutputKey`, your transcription output path is
    #     `s3://DOC-EXAMPLE-BUCKET/test-files/my-transcript/my-first-transcription.json`.
    #
    #   If you specify the name of an Amazon S3 bucket sub-folder that
    #   doesn't exist, one is created for you.
    #
    # @option params [String] :output_encryption_kms_key_id
    #   The KMS key you want to use to encrypt your transcription output.
    #
    #   If using a key located in the **current** Amazon Web Services account,
    #   you can specify your KMS key in one of four ways:
    #
    #   1.  Use the KMS key ID itself. For example,
    #       `1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    #   2.  Use an alias for the KMS key ID. For example,
    #       `alias/ExampleAlias`.
    #
    #   3.  Use the Amazon Resource Name (ARN) for the KMS key ID. For
    #       example,
    #       `arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    #   4.  Use the ARN for the KMS key alias. For example,
    #       `arn:aws:kms:region:account-ID:alias/ExampleAlias`.
    #
    #   If using a key located in a **different** Amazon Web Services account
    #   than the current Amazon Web Services account, you can specify your KMS
    #   key in one of two ways:
    #
    #   1.  Use the ARN for the KMS key ID. For example,
    #       `arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    #   2.  Use the ARN for the KMS key alias. For example,
    #       `arn:aws:kms:region:account-ID:alias/ExampleAlias`.
    #
    #   If you don't specify an encryption key, your output is encrypted with
    #   the default Amazon S3 key (SSE-S3).
    #
    #   If you specify a KMS key to encrypt your output, you must also specify
    #   an output location using the `OutputLocation` parameter.
    #
    #   Note that the role making the request must have permission to use the
    #   specified KMS key.
    #
    # @option params [Hash<String,String>] :kms_encryption_context
    #   A map of plain text, non-secret key:value pairs, known as encryption
    #   context pairs, that provide an added layer of security for your data.
    #   For more information, see [KMS encryption context][1] and [Asymmetric
    #   keys in KMS][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/key-management.html#kms-context
    #   [2]: https://docs.aws.amazon.com/transcribe/latest/dg/symmetric-asymmetric.html
    #
    # @option params [Types::Settings] :settings
    #   Specify additional optional settings in your request, including
    #   channel identification, alternative transcriptions, speaker
    #   partitioning. You can use that to apply custom vocabularies and
    #   vocabulary filters.
    #
    #   If you want to include a custom vocabulary or a custom vocabulary
    #   filter (or both) with your request but **do not** want to use
    #   automatic language identification, use `Settings` with the
    #   `VocabularyName` or `VocabularyFilterName` (or both) sub-parameter.
    #
    #   If you're using automatic language identification with your request
    #   and want to include a custom language model, a custom vocabulary, or a
    #   custom vocabulary filter, use instead the ` parameter with the
    #   LanguageModelName, VocabularyName or VocabularyFilterName
    #   sub-parameters.</p>
    #   `
    #
    # @option params [Types::ModelSettings] :model_settings
    #   Specify the custom language model you want to include with your
    #   transcription job. If you include `ModelSettings` in your request, you
    #   must include the `LanguageModelName` sub-parameter.
    #
    #   For more information, see [Custom language models][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/custom-language-models.html
    #
    # @option params [Types::JobExecutionSettings] :job_execution_settings
    #   Makes it possible to control how your transcription job is processed.
    #   Currently, the only `JobExecutionSettings` modification you can choose
    #   is enabling job queueing using the `AllowDeferredExecution`
    #   sub-parameter.
    #
    #   If you include `JobExecutionSettings` in your request, you must also
    #   include the sub-parameters: `AllowDeferredExecution` and
    #   `DataAccessRoleArn`.
    #
    # @option params [Types::ContentRedaction] :content_redaction
    #   Makes it possible to redact or flag specified personally identifiable
    #   information (PII) in your transcript. If you use `ContentRedaction`,
    #   you must also include the sub-parameters: `PiiEntityTypes`,
    #   `RedactionOutput`, and `RedactionType`.
    #
    # @option params [Boolean] :identify_language
    #   Enables automatic language identification in your transcription job
    #   request. Use this parameter if your media file contains only one
    #   language. If your media contains multiple languages, use
    #   `IdentifyMultipleLanguages` instead.
    #
    #   If you include `IdentifyLanguage`, you can optionally include a list
    #   of language codes, using `LanguageOptions`, that you think may be
    #   present in your media file. Including `LanguageOptions` restricts
    #   `IdentifyLanguage` to only the language options that you specify,
    #   which can improve transcription accuracy.
    #
    #   If you want to apply a custom language model, a custom vocabulary, or
    #   a custom vocabulary filter to your automatic language identification
    #   request, include `LanguageIdSettings` with the relevant sub-parameters
    #   (`VocabularyName`, `LanguageModelName`, and `VocabularyFilterName`).
    #   If you include `LanguageIdSettings`, also include `LanguageOptions`.
    #
    #   Note that you must include one of `LanguageCode`, `IdentifyLanguage`,
    #   or `IdentifyMultipleLanguages` in your request. If you include more
    #   than one of these parameters, your transcription job fails.
    #
    # @option params [Boolean] :identify_multiple_languages
    #   Enables automatic multi-language identification in your transcription
    #   job request. Use this parameter if your media file contains more than
    #   one language. If your media contains only one language, use
    #   `IdentifyLanguage` instead.
    #
    #   If you include `IdentifyMultipleLanguages`, you can optionally include
    #   a list of language codes, using `LanguageOptions`, that you think may
    #   be present in your media file. Including `LanguageOptions` restricts
    #   `IdentifyLanguage` to only the language options that you specify,
    #   which can improve transcription accuracy.
    #
    #   If you want to apply a custom vocabulary or a custom vocabulary filter
    #   to your automatic language identification request, include
    #   `LanguageIdSettings` with the relevant sub-parameters
    #   (`VocabularyName` and `VocabularyFilterName`). If you include
    #   `LanguageIdSettings`, also include `LanguageOptions`.
    #
    #   Note that you must include one of `LanguageCode`, `IdentifyLanguage`,
    #   or `IdentifyMultipleLanguages` in your request. If you include more
    #   than one of these parameters, your transcription job fails.
    #
    # @option params [Array<String>] :language_options
    #   You can specify two or more language codes that represent the
    #   languages you think may be present in your media. Including more than
    #   five is not recommended. If you're unsure what languages are present,
    #   do not include this parameter.
    #
    #   If you include `LanguageOptions` in your request, you must also
    #   include `IdentifyLanguage`.
    #
    #   For more information, refer to [Supported languages][1].
    #
    #   To transcribe speech in Modern Standard Arabic (`ar-SA`), your media
    #   file must be encoded at a sample rate of 16,000 Hz or higher.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
    #
    # @option params [Types::Subtitles] :subtitles
    #   Produces subtitle files for your input media. You can specify WebVTT
    #   (*.vtt) and SubRip (*.srt) formats.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Adds one or more custom tags, each in the form of a key:value pair, to
    #   a new transcription job at the time you start this new job.
    #
    #   To learn more about using tags with Amazon Transcribe, refer to
    #   [Tagging resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html
    #
    # @option params [Hash<String,Types::LanguageIdSettings>] :language_id_settings
    #   If using automatic language identification in your request and you
    #   want to apply a custom language model, a custom vocabulary, or a
    #   custom vocabulary filter, include `LanguageIdSettings` with the
    #   relevant sub-parameters (`VocabularyName`, `LanguageModelName`, and
    #   `VocabularyFilterName`). Note that multi-language identification
    #   (`IdentifyMultipleLanguages`) doesn't support custom language models.
    #
    #   `LanguageIdSettings` supports two to five language codes. Each
    #   language code you include can have an associated custom language
    #   model, custom vocabulary, and custom vocabulary filter. The language
    #   codes that you specify must match the languages of the associated
    #   custom language models, custom vocabularies, and custom vocabulary
    #   filters.
    #
    #   It's recommended that you include `LanguageOptions` when using
    #   `LanguageIdSettings` to ensure that the correct language dialect is
    #   identified. For example, if you specify a custom vocabulary that is in
    #   `en-US` but Amazon Transcribe determines that the language spoken in
    #   your media is `en-AU`, your custom vocabulary *is not* applied to your
    #   transcription. If you include `LanguageOptions` and include `en-US` as
    #   the only English language dialect, your custom vocabulary *is* applied
    #   to your transcription.
    #
    #   If you want to include a custom language model with your request but
    #   **do not** want to use automatic language identification, use instead
    #   the ` parameter with the LanguageModelName sub-parameter. If you want
    #   to include a custom vocabulary or a custom vocabulary filter (or both)
    #   with your request but do not want to use automatic language
    #   identification, use instead the  parameter with the VocabularyName or
    #   VocabularyFilterName (or both) sub-parameter.</p>
    #   `
    #
    # @return [Types::StartTranscriptionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartTranscriptionJobResponse#transcription_job #transcription_job} => Types::TranscriptionJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_transcription_job({
    #     transcription_job_name: "TranscriptionJobName", # required
    #     language_code: "af-ZA", # accepts af-ZA, ar-AE, ar-SA, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ, vi-VN, sv-SE
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
    #     identify_multiple_languages: false,
    #     language_options: ["af-ZA"], # accepts af-ZA, ar-AE, ar-SA, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ, vi-VN, sv-SE
    #     subtitles: {
    #       formats: ["vtt"], # accepts vtt, srt
    #       output_start_index: 1,
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
    #   resp.transcription_job.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE"
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
    #   resp.transcription_job.identify_multiple_languages #=> Boolean
    #   resp.transcription_job.language_options #=> Array
    #   resp.transcription_job.language_options[0] #=> String, one of "af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE"
    #   resp.transcription_job.identified_language_score #=> Float
    #   resp.transcription_job.language_codes #=> Array
    #   resp.transcription_job.language_codes[0].language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE"
    #   resp.transcription_job.language_codes[0].duration_in_seconds #=> Float
    #   resp.transcription_job.tags #=> Array
    #   resp.transcription_job.tags[0].key #=> String
    #   resp.transcription_job.tags[0].value #=> String
    #   resp.transcription_job.subtitles.formats #=> Array
    #   resp.transcription_job.subtitles.formats[0] #=> String, one of "vtt", "srt"
    #   resp.transcription_job.subtitles.subtitle_file_uris #=> Array
    #   resp.transcription_job.subtitles.subtitle_file_uris[0] #=> String
    #   resp.transcription_job.subtitles.output_start_index #=> Integer
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

    # Adds one or more custom tags, each in the form of a key:value pair, to
    # the specified resource.
    #
    # To learn more about using tags with Amazon Transcribe, refer to
    # [Tagging resources][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource you want to tag. ARNs
    #   have the format
    #   `arn:partition:service:region:account-id:resource-type/resource-id`.
    #
    #   For example,
    #   `arn:aws:transcribe:us-west-2:111122223333:transcription-job/transcription-job-name`.
    #
    #   Valid values for `resource-type` are: `transcription-job`,
    #   `medical-transcription-job`, `vocabulary`, `medical-vocabulary`,
    #   `vocabulary-filter`, and `language-model`.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   Adds one or more custom tags, each in the form of a key:value pair, to
    #   the specified resource.
    #
    #   To learn more about using tags with Amazon Transcribe, refer to
    #   [Tagging resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html
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

    # Removes the specified tags from the specified Amazon Transcribe
    # resource.
    #
    # If you include `UntagResource` in your request, you must also include
    # `ResourceArn` and `TagKeys`.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon Transcribe resource you
    #   want to remove tags from. ARNs have the format
    #   `arn:partition:service:region:account-id:resource-type/resource-id`.
    #
    #   For example,
    #   `arn:aws:transcribe:us-west-2:111122223333:transcription-job/transcription-job-name`.
    #
    #   Valid values for `resource-type` are: `transcription-job`,
    #   `medical-transcription-job`, `vocabulary`, `medical-vocabulary`,
    #   `vocabulary-filter`, and `language-model`.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Removes the specified tag keys from the specified Amazon Transcribe
    #   resource.
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

    # Updates the specified Call Analytics category with new rules. Note
    # that the `UpdateCallAnalyticsCategory` operation overwrites all
    # existing rules contained in the specified category. You cannot append
    # additional rules onto an existing category.
    #
    # To create a new category, see .
    #
    # @option params [required, String] :category_name
    #   The name of the Call Analytics category you want to update. Category
    #   names are case sensitive.
    #
    # @option params [required, Array<Types::Rule>] :rules
    #   The rules used for the updated Call Analytics category. The rules you
    #   provide in this field replace the ones that are currently being used
    #   in the specified category.
    #
    # @option params [String] :input_type
    #   Choose whether you want to update a real-time or a post-call category.
    #   The input type you specify must match the input type specified when
    #   the category was created. For example, if you created a category with
    #   the `POST_CALL` input type, you must use `POST_CALL` as the input type
    #   when updating this category.
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
    #     input_type: "REAL_TIME", # accepts REAL_TIME, POST_CALL
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
    #   resp.category_properties.input_type #=> String, one of "REAL_TIME", "POST_CALL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/UpdateCallAnalyticsCategory AWS API Documentation
    #
    # @overload update_call_analytics_category(params = {})
    # @param [Hash] params ({})
    def update_call_analytics_category(params = {}, options = {})
      req = build_request(:update_call_analytics_category, params)
      req.send_request(options)
    end

    # Updates an existing custom medical vocabulary with new values. This
    # operation overwrites all existing information with your new values;
    # you cannot append new terms onto an existing custom vocabulary.
    #
    # @option params [required, String] :vocabulary_name
    #   The name of the custom medical vocabulary you want to update. Custom
    #   medical vocabulary names are case sensitive.
    #
    # @option params [required, String] :language_code
    #   The language code that represents the language of the entries in the
    #   custom vocabulary you want to update. US English (`en-US`) is the only
    #   language supported with Amazon Transcribe Medical.
    #
    # @option params [required, String] :vocabulary_file_uri
    #   The Amazon S3 location of the text file that contains your custom
    #   medical vocabulary. The URI must be located in the same Amazon Web
    #   Services Region as the resource you're calling.
    #
    #   Here's an example URI path:
    #   `s3://DOC-EXAMPLE-BUCKET/my-vocab-file.txt`
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
    #     language_code: "af-ZA", # required, accepts af-ZA, ar-AE, ar-SA, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ, vi-VN, sv-SE
    #     vocabulary_file_uri: "Uri", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vocabulary_name #=> String
    #   resp.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE"
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

    # Updates an existing custom vocabulary with new values. This operation
    # overwrites all existing information with your new values; you cannot
    # append new terms onto an existing custom vocabulary.
    #
    # @option params [required, String] :vocabulary_name
    #   The name of the custom vocabulary you want to update. Custom
    #   vocabulary names are case sensitive.
    #
    # @option params [required, String] :language_code
    #   The language code that represents the language of the entries in the
    #   custom vocabulary you want to update. Each custom vocabulary must
    #   contain terms in only one language.
    #
    #   A custom vocabulary can only be used to transcribe files in the same
    #   language as the custom vocabulary. For example, if you create a custom
    #   vocabulary using US English (`en-US`), you can only apply this custom
    #   vocabulary to files that contain English audio.
    #
    #   For a list of supported languages and their associated language codes,
    #   refer to the [Supported languages][1] table.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
    #
    # @option params [Array<String>] :phrases
    #   Use this parameter if you want to update your custom vocabulary by
    #   including all desired terms, as comma-separated values, within your
    #   request. The other option for updating your custom vocabulary is to
    #   save your entries in a text file and upload them to an Amazon S3
    #   bucket, then specify the location of your file using the
    #   `VocabularyFileUri` parameter.
    #
    #   Note that if you include `Phrases` in your request, you cannot use
    #   `VocabularyFileUri`; you must choose one or the other.
    #
    #   Each language has a character set that contains all allowed characters
    #   for that specific language. If you use unsupported characters, your
    #   custom vocabulary filter request fails. Refer to [Character Sets for
    #   Custom Vocabularies][1] to get the character set for your language.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html
    #
    # @option params [String] :vocabulary_file_uri
    #   The Amazon S3 location of the text file that contains your custom
    #   vocabulary. The URI must be located in the same Amazon Web Services
    #   Region as the resource you're calling.
    #
    #   Here's an example URI path:
    #   `s3://DOC-EXAMPLE-BUCKET/my-vocab-file.txt`
    #
    #   Note that if you include `VocabularyFileUri` in your request, you
    #   cannot use the `Phrases` flag; you must choose one or the other.
    #
    # @option params [String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that has permissions to
    #   access the Amazon S3 bucket that contains your input files (in this
    #   case, your custom vocabulary). If the role that you specify doesn’t
    #   have the appropriate permissions to access the specified Amazon S3
    #   location, your request fails.
    #
    #   IAM role ARNs have the format
    #   `arn:partition:iam::account:role/role-name-with-path`. For example:
    #   `arn:aws:iam::111122223333:role/Admin`.
    #
    #   For more information, see [IAM ARNs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns
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
    #     language_code: "af-ZA", # required, accepts af-ZA, ar-AE, ar-SA, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ, vi-VN, sv-SE
    #     phrases: ["Phrase"],
    #     vocabulary_file_uri: "Uri",
    #     data_access_role_arn: "DataAccessRoleArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.vocabulary_name #=> String
    #   resp.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE"
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

    # Updates an existing custom vocabulary filter with a new list of words.
    # The new list you provide overwrites all previous entries; you cannot
    # append new terms onto an existing custom vocabulary filter.
    #
    # @option params [required, String] :vocabulary_filter_name
    #   The name of the custom vocabulary filter you want to update. Custom
    #   vocabulary filter names are case sensitive.
    #
    # @option params [Array<String>] :words
    #   Use this parameter if you want to update your custom vocabulary filter
    #   by including all desired terms, as comma-separated values, within your
    #   request. The other option for updating your vocabulary filter is to
    #   save your entries in a text file and upload them to an Amazon S3
    #   bucket, then specify the location of your file using the
    #   `VocabularyFilterFileUri` parameter.
    #
    #   Note that if you include `Words` in your request, you cannot use
    #   `VocabularyFilterFileUri`; you must choose one or the other.
    #
    #   Each language has a character set that contains all allowed characters
    #   for that specific language. If you use unsupported characters, your
    #   custom vocabulary filter request fails. Refer to [Character Sets for
    #   Custom Vocabularies][1] to get the character set for your language.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html
    #
    # @option params [String] :vocabulary_filter_file_uri
    #   The Amazon S3 location of the text file that contains your custom
    #   vocabulary filter terms. The URI must be located in the same Amazon
    #   Web Services Region as the resource you're calling.
    #
    #   Here's an example URI path:
    #   `s3://DOC-EXAMPLE-BUCKET/my-vocab-filter-file.txt`
    #
    #   Note that if you include `VocabularyFilterFileUri` in your request,
    #   you cannot use `Words`; you must choose one or the other.
    #
    # @option params [String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that has permissions to
    #   access the Amazon S3 bucket that contains your input files (in this
    #   case, your custom vocabulary filter). If the role that you specify
    #   doesn’t have the appropriate permissions to access the specified
    #   Amazon S3 location, your request fails.
    #
    #   IAM role ARNs have the format
    #   `arn:partition:iam::account:role/role-name-with-path`. For example:
    #   `arn:aws:iam::111122223333:role/Admin`.
    #
    #   For more information, see [IAM ARNs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns
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
    #     data_access_role_arn: "DataAccessRoleArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.vocabulary_filter_name #=> String
    #   resp.language_code #=> String, one of "af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE"
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
      context[:gem_version] = '1.87.0'
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
