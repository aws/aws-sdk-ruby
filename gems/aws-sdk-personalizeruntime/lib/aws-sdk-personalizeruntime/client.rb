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
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:personalizeruntime)

module Aws::PersonalizeRuntime
  # An API client for PersonalizeRuntime.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::PersonalizeRuntime::Client.new(
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

    @identifier = :personalizeruntime

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
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

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

    # Re-ranks a list of recommended items for the given user. The first
    # item in the list is deemed the most likely item to be of interest to
    # the user.
    #
    # <note markdown="1"> The solution backing the campaign must have been created using a
    # recipe of type PERSONALIZED\_RANKING.
    #
    #  </note>
    #
    # @option params [required, String] :campaign_arn
    #   The Amazon Resource Name (ARN) of the campaign to use for generating
    #   the personalized ranking.
    #
    # @option params [required, Array<String>] :input_list
    #   A list of items (by `itemId`) to rank. If an item was not included in
    #   the training dataset, the item is appended to the end of the reranked
    #   list. The maximum is 500.
    #
    # @option params [required, String] :user_id
    #   The user for which you want the campaign to provide a personalized
    #   ranking.
    #
    # @option params [Hash<String,String>] :context
    #   The contextual metadata to use when getting recommendations.
    #   Contextual metadata includes any interaction information that might be
    #   relevant when getting a user's recommendations, such as the user's
    #   current location or device type.
    #
    # @option params [String] :filter_arn
    #   The Amazon Resource Name (ARN) of a filter you created to include
    #   items or exclude items from recommendations for a given user. For more
    #   information, see [Filtering Recommendations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/filter.html
    #
    # @option params [Hash<String,String>] :filter_values
    #   The values to use when filtering recommendations. For each placeholder
    #   parameter in your filter expression, provide the parameter name (in
    #   matching case) as a key and the filter value(s) as the corresponding
    #   value. Separate multiple values for one parameter with a comma.
    #
    #   For filter expressions that use an `INCLUDE` element to include items,
    #   you must provide values for all parameters that are defined in the
    #   expression. For filters with expressions that use an `EXCLUDE` element
    #   to exclude items, you can omit the `filter-values`.In this case,
    #   Amazon Personalize doesn't use that portion of the expression to
    #   filter recommendations.
    #
    #   For more information, see [Filtering Recommendations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/filter.html
    #
    # @return [Types::GetPersonalizedRankingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPersonalizedRankingResponse#personalized_ranking #personalized_ranking} => Array&lt;Types::PredictedItem&gt;
    #   * {Types::GetPersonalizedRankingResponse#recommendation_id #recommendation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_personalized_ranking({
    #     campaign_arn: "Arn", # required
    #     input_list: ["ItemID"], # required
    #     user_id: "UserID", # required
    #     context: {
    #       "AttributeName" => "AttributeValue",
    #     },
    #     filter_arn: "Arn",
    #     filter_values: {
    #       "FilterAttributeName" => "FilterAttributeValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.personalized_ranking #=> Array
    #   resp.personalized_ranking[0].item_id #=> String
    #   resp.personalized_ranking[0].score #=> Float
    #   resp.recommendation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-runtime-2018-05-22/GetPersonalizedRanking AWS API Documentation
    #
    # @overload get_personalized_ranking(params = {})
    # @param [Hash] params ({})
    def get_personalized_ranking(params = {}, options = {})
      req = build_request(:get_personalized_ranking, params)
      req.send_request(options)
    end

    # Returns a list of recommended items. For campaigns, the campaign's
    # Amazon Resource Name (ARN) is required and the required user and item
    # input depends on the recipe type used to create the solution backing
    # the campaign as follows:
    #
    # * USER\_PERSONALIZATION - `userId` required, `itemId` not used
    #
    # * RELATED\_ITEMS - `itemId` required, `userId` not used
    #
    # <note markdown="1"> Campaigns that are backed by a solution created using a recipe of type
    # PERSONALIZED\_RANKING use the API.
    #
    #  </note>
    #
    # For recommenders, the recommender's ARN is required and the required
    # item and user input depends on the use case (domain-based recipe)
    # backing the recommender. For information on use case requirements see
    # [Choosing recommender use cases][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/domain-use-cases.html
    #
    # @option params [String] :campaign_arn
    #   The Amazon Resource Name (ARN) of the campaign to use for getting
    #   recommendations.
    #
    # @option params [String] :item_id
    #   The item ID to provide recommendations for.
    #
    #   Required for `RELATED_ITEMS` recipe type.
    #
    # @option params [String] :user_id
    #   The user ID to provide recommendations for.
    #
    #   Required for `USER_PERSONALIZATION` recipe type.
    #
    # @option params [Integer] :num_results
    #   The number of results to return. The default is 25. The maximum is
    #   500.
    #
    # @option params [Hash<String,String>] :context
    #   The contextual metadata to use when getting recommendations.
    #   Contextual metadata includes any interaction information that might be
    #   relevant when getting a user's recommendations, such as the user's
    #   current location or device type.
    #
    # @option params [String] :filter_arn
    #   The ARN of the filter to apply to the returned recommendations. For
    #   more information, see [Filtering Recommendations][1].
    #
    #   When using this parameter, be sure the filter resource is `ACTIVE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/filter.html
    #
    # @option params [Hash<String,String>] :filter_values
    #   The values to use when filtering recommendations. For each placeholder
    #   parameter in your filter expression, provide the parameter name (in
    #   matching case) as a key and the filter value(s) as the corresponding
    #   value. Separate multiple values for one parameter with a comma.
    #
    #   For filter expressions that use an `INCLUDE` element to include items,
    #   you must provide values for all parameters that are defined in the
    #   expression. For filters with expressions that use an `EXCLUDE` element
    #   to exclude items, you can omit the `filter-values`.In this case,
    #   Amazon Personalize doesn't use that portion of the expression to
    #   filter recommendations.
    #
    #   For more information, see [Filtering Recommendations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/filter.html
    #
    # @option params [String] :recommender_arn
    #   The Amazon Resource Name (ARN) of the recommender to use to get
    #   recommendations. Provide a recommender ARN if you created a Domain
    #   dataset group with a recommender for a domain use case.
    #
    # @return [Types::GetRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRecommendationsResponse#item_list #item_list} => Array&lt;Types::PredictedItem&gt;
    #   * {Types::GetRecommendationsResponse#recommendation_id #recommendation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recommendations({
    #     campaign_arn: "Arn",
    #     item_id: "ItemID",
    #     user_id: "UserID",
    #     num_results: 1,
    #     context: {
    #       "AttributeName" => "AttributeValue",
    #     },
    #     filter_arn: "Arn",
    #     filter_values: {
    #       "FilterAttributeName" => "FilterAttributeValue",
    #     },
    #     recommender_arn: "Arn",
    #   })
    #
    # @example Response structure
    #
    #   resp.item_list #=> Array
    #   resp.item_list[0].item_id #=> String
    #   resp.item_list[0].score #=> Float
    #   resp.recommendation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-runtime-2018-05-22/GetRecommendations AWS API Documentation
    #
    # @overload get_recommendations(params = {})
    # @param [Hash] params ({})
    def get_recommendations(params = {}, options = {})
      req = build_request(:get_recommendations, params)
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
      context[:gem_name] = 'aws-sdk-personalizeruntime'
      context[:gem_version] = '1.30.0'
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
