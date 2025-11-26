# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:personalizeruntime)

module Aws::PersonalizeRuntime
  # An API client for Aws::PersonalizeRuntime.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonPersonalizeRuntime
    @identifier = :personalizeruntime

    add_plugin(::Aws::PersonalizeRuntime::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [String] :account_id_endpoint_mode
    #  The account ID endpoint mode to use. This can be one of the following values:
    #  * `preferred` - (default) Use the account ID endpoint if available, otherwise use the standard endpoint.
    #  * `disabled` - Never use the account ID endpoint, only use the standard endpoint.
    #  * `required` - Always use the account ID endpoint. If the account ID cannot be retrieved from credentials, an error is raised.
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::PersonalizeRuntime::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [String] :region
    #  The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
    #  When not provided, a default region is searched for in the following locations:
    #  * `Aws.config[:region]`
    #  * `ENV['AWS_REGION']`
    #  * `ENV['AWS_DEFAULT_REGION']`
    #  * `~/.aws/credentials` as `region` under a profile
    #  * `~/.aws/config` as `region` under a profile
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [#call(attempts)] :retry_backoff (Smithy::Client::Retry::ExponentialBackoff.new)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_base_delay (2)
    #  The base delay, in seconds, used to calculate the exponential backoff for
    #  retry attempts. This option is ignored if a custom `retry_backoff` is provided.
    #  Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_max_delay (20)
    #  The maximum delay, in seconds, between retry attempts. This option is ignored
    #  if a custom `retry_backoff` is provided. Used in the `standard` and `adaptive`
    #  retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Boolean] :use_dualstack_endpoint
    #  When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
    #  * `~/.aws/config` as `use_dualstack_endpoint` under a profile
    # @option options [Boolean] :use_fips_endpoint
    #  When set to `true`, FIPS compatible endpoints will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_FIPS_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_fips_endpoint` under a profile
    #  * `~/.aws/config` as `use_fips_endpoint` under a profile
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Returns a list of recommended actions in sorted in descending order by prediction score. 
    #       Use the <code>GetActionRecommendations</code> API if you have a custom
    #        campaign that deploys a solution version trained with a PERSONALIZED_ACTIONS recipe.
    #     </p>
    #          <p>For more information about PERSONALIZED_ACTIONS recipes, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/nexts-best-action-recipes.html">PERSONALIZED_ACTIONS recipes</a>.
    #       For more information about getting action recommendations, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/get-action-recommendations.html">Getting action recommendations</a>.</p>
    # @param [Hash, Types::GetActionRecommendationsRequest] params
    # @option params [String] :campaign_arn
    #   <p>The Amazon Resource Name (ARN) of the campaign to use for getting action recommendations. This campaign must deploy a solution version trained with a PERSONALIZED_ACTIONS recipe.</p>
    # @option params [String] :user_id
    #   <p>The user ID of the user to provide action recommendations for.</p>
    # @option params [Integer] :num_results
    #   <p>The number of results to return. The default is 5. The maximum is 100.</p>
    # @option params [String] :filter_arn
    #   <p>The ARN of the filter to apply to the returned recommendations. For more information, see
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/filter.html">Filtering Recommendations</a>.</p>
    #            <p>When using this parameter, be sure the filter resource is <code>ACTIVE</code>.</p>
    # @option params [Hash<String, String>] :filter_values
    #   <p>The values to use when filtering recommendations. For each placeholder parameter in your filter expression, provide the parameter name (in matching case)
    #         as a key and the filter value(s) as the corresponding value. Separate multiple values for one parameter with a comma.
    #       </p>
    #            <p>For filter expressions that use an <code>INCLUDE</code> element to include actions,
    #       you must provide values for all parameters that are defined in the expression. For
    #       filters with expressions that use an <code>EXCLUDE</code> element to exclude actions, you
    #         can omit the <code>filter-values</code>. In this case, Amazon Personalize doesn't use that portion of
    #       the expression to filter recommendations.</p>
    #            <p>For more information, see
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/filter.html">Filtering recommendations and user segments</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     campaign_arn: "Arn",
    #     user_id: "UserID",
    #     num_results: 1,
    #     filter_arn: "Arn",
    #     filter_values: {
    #       "FilterAttributeName" => "FilterAttributeValue"
    #     }
    #   }
    #   options = {}
    #   response = client.get_action_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action_list: [
    #       {
    #         action_id: "ActionID",
    #         score: 1.0
    #       }
    #     ],
    #     recommendation_id: "RecommendationID"
    #   }
    # @return [Types::GetActionRecommendationsResponse]
    def get_action_recommendations(params = {}, options = {})
      request = build_request(:get_action_recommendations, params)
      request.send_request(options)
    end

    # <p>Re-ranks a list of recommended items for the given user. The first item in the list is
    #       deemed the most likely item to be of interest to the user.</p>
    #          <note>
    #             <p>The solution backing the campaign must have been created using a recipe of type
    #         PERSONALIZED_RANKING.</p>
    #          </note>
    # @param [Hash, Types::GetPersonalizedRankingRequest] params
    # @option params [String] :campaign_arn
    #   <p>The Amazon Resource Name (ARN) of the campaign to use for generating the personalized
    #         ranking.</p>
    # @option params [Array<String>] :input_list
    #   <p>A list of items (by <code>itemId</code>) to rank. If an item was not included in the training dataset,
    #         the item is appended to the end of the reranked list. If you are including 
    #         metadata in recommendations, the maximum is 50. Otherwise, the maximum is 500.</p>
    # @option params [String] :user_id
    #   <p>The user for which you want the campaign to provide a personalized ranking.</p>
    # @option params [Hash<String, String>] :context
    #   <p>The contextual metadata to use when getting recommendations. Contextual metadata includes
    #         any interaction information that might be relevant when getting a user's recommendations, such
    #         as the user's current location or device type.</p>
    # @option params [String] :filter_arn
    #   <p>The Amazon Resource Name (ARN) of a filter you created to include items or exclude items from recommendations for a given user. 
    #         For more information, see
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/filter.html">Filtering Recommendations</a>.</p>
    # @option params [Hash<String, String>] :filter_values
    #   <p>The values to use when filtering recommendations. For each placeholder parameter in your filter expression, provide the parameter name (in matching case)
    #         as a key and the filter value(s) as the corresponding value. Separate multiple values for one parameter with a comma.
    #       </p>
    #            <p>For filter expressions that use an <code>INCLUDE</code> element to include items,
    #         you must provide values for all parameters that are defined in the expression. For
    #         filters with expressions that use an <code>EXCLUDE</code> element to exclude items, you
    #         can omit the <code>filter-values</code>.In this case, Amazon Personalize doesn't use that portion of
    #         the expression to filter recommendations.</p>
    #            <p>For more information, see
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/filter.html">Filtering Recommendations</a>.</p>
    # @option params [Hash<String, Array<String>>] :metadata_columns
    #   <p>If you enabled metadata in recommendations when you created or updated the campaign, specify metadata columns from your Items dataset to include
    #         in the personalized ranking.
    #         The map key is <code>ITEMS</code> and the value is a list of column names from your Items dataset.
    #         The maximum number of columns you can provide is 10.</p>
    #            <p>
    #         For information about enabling metadata for a campaign, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/campaigns.html#create-campaign-return-metadata">Enabling metadata in recommendations for a campaign</a>.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     campaign_arn: "Arn", # required
    #     input_list: ["ItemID"], # required
    #     user_id: "UserID", # required
    #     context: {
    #       "AttributeName" => "AttributeValue"
    #     },
    #     filter_arn: "Arn",
    #     filter_values: {
    #       "FilterAttributeName" => "FilterAttributeValue"
    #     },
    #     metadata_columns: {
    #       "DatasetType" => ["ColumnName"]
    #     }
    #   }
    #   options = {}
    #   response = client.get_personalized_ranking(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     personalized_ranking: [
    #       {
    #         item_id: "ItemID",
    #         score: 1.0,
    #         promotion_name: "Name",
    #         metadata: {
    #           "ColumnName" => "ColumnValue"
    #         },
    #         reason: ["Reason"]
    #       }
    #     ],
    #     recommendation_id: "RecommendationID"
    #   }
    # @return [Types::GetPersonalizedRankingResponse]
    def get_personalized_ranking(params = {}, options = {})
      request = build_request(:get_personalized_ranking, params)
      request.send_request(options)
    end

    # <p>Returns a list of recommended items. For campaigns, the campaign's Amazon Resource Name (ARN) is required and the required user and item input depends on the recipe type used to
    #       create the solution backing the campaign as follows:</p>
    #          <ul>
    #             <li>
    #                <p>USER_PERSONALIZATION - <code>userId</code> required, <code>itemId</code> not used</p>
    #             </li>
    #             <li>
    #                <p>RELATED_ITEMS - <code>itemId</code> required, <code>userId</code> not used</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>Campaigns that are backed by a solution created using a recipe of type
    #         PERSONALIZED_RANKING use the  API.</p>
    #          </note>
    #          <p>
    #       For recommenders, the recommender's ARN is required and the required item and user input depends on the use case (domain-based recipe) backing the recommender.
    #       For information on use case requirements see <a href="https://docs.aws.amazon.com/personalize/latest/dg/domain-use-cases.html">Choosing recommender use cases</a>.
    #     </p>
    # @param [Hash, Types::GetRecommendationsRequest] params
    # @option params [String] :campaign_arn
    #   <p>The Amazon Resource Name (ARN) of the campaign to use for getting recommendations.</p>
    # @option params [String] :item_id
    #   <p>The item ID to provide recommendations for.</p>
    #            <p>Required for <code>RELATED_ITEMS</code> recipe type.</p>
    # @option params [String] :user_id
    #   <p>The user ID to provide recommendations for.</p>
    #            <p>Required for <code>USER_PERSONALIZATION</code> recipe type.</p>
    # @option params [Integer] :num_results
    #   <p>The number of results to return. The default is 25. If you are including 
    #         metadata in recommendations, the maximum is 50. Otherwise, the maximum is 500.</p>
    # @option params [Hash<String, String>] :context
    #   <p>The contextual metadata to use when getting recommendations. Contextual metadata includes
    #         any interaction information that might be relevant when getting a user's recommendations, such
    #         as the user's current location or device type.</p>
    # @option params [String] :filter_arn
    #   <p>The ARN of the filter to apply to the returned recommendations. For more information, see
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/filter.html">Filtering Recommendations</a>.</p>
    #            <p>When using this parameter, be sure the filter resource is <code>ACTIVE</code>.</p>
    # @option params [Hash<String, String>] :filter_values
    #   <p>The values to use when filtering recommendations. For each placeholder parameter in your filter expression, provide the parameter name (in matching case)
    #         as a key and the filter value(s) as the corresponding value. Separate multiple values for one parameter with a comma.
    #       </p>
    #            <p>For filter expressions that use an <code>INCLUDE</code> element to include items,
    #       you must provide values for all parameters that are defined in the expression. For
    #       filters with expressions that use an <code>EXCLUDE</code> element to exclude items, you
    #         can omit the <code>filter-values</code>.In this case, Amazon Personalize doesn't use that portion of
    #       the expression to filter recommendations.</p>
    #            <p>For more information, see
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/filter.html">Filtering recommendations and user segments</a>.</p>
    # @option params [String] :recommender_arn
    #   <p>The Amazon Resource Name (ARN) of the recommender to use to get recommendations. Provide a recommender ARN if you
    #       created a Domain dataset group with a recommender for a domain use case.</p>
    # @option params [Array<Types::Promotion>] :promotions
    #   <p>The promotions to apply to the recommendation request. 
    #         A promotion defines additional business rules that apply to a configurable subset of recommended items.</p>
    # @option params [Hash<String, Array<String>>] :metadata_columns
    #   <p>If you enabled metadata in recommendations when you created or updated the campaign or recommender, specify the metadata columns from your Items dataset to include in item recommendations. 
    #         The map key is <code>ITEMS</code> and the value is a list of column names from your Items dataset.
    #       The maximum number of columns you can provide is 10.</p>
    #            <p>
    #         For information about enabling metadata for a campaign, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/campaigns.html#create-campaign-return-metadata">Enabling metadata in recommendations for a campaign</a>.
    #         For information about enabling metadata for a recommender, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/creating-recommenders.html#create-recommender-return-metadata">Enabling metadata in recommendations for a recommender</a>.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     campaign_arn: "Arn",
    #     item_id: "ItemID",
    #     user_id: "UserID",
    #     num_results: 1,
    #     context: {
    #       "AttributeName" => "AttributeValue"
    #     },
    #     filter_arn: "Arn",
    #     filter_values: {
    #       "FilterAttributeName" => "FilterAttributeValue"
    #     },
    #     recommender_arn: "Arn",
    #     promotions: [
    #       {
    #         name: "Name",
    #         percent_promoted_items: 1,
    #         filter_arn: "Arn",
    #         filter_values: {
    #           "FilterAttributeName" => "FilterAttributeValue"
    #         }
    #       }
    #     ],
    #     metadata_columns: {
    #       "DatasetType" => ["ColumnName"]
    #     }
    #   }
    #   options = {}
    #   response = client.get_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     item_list: [
    #       {
    #         item_id: "ItemID",
    #         score: 1.0,
    #         promotion_name: "Name",
    #         metadata: {
    #           "ColumnName" => "ColumnValue"
    #         },
    #         reason: ["Reason"]
    #       }
    #     ],
    #     recommendation_id: "RecommendationID"
    #   }
    # @return [Types::GetRecommendationsResponse]
    def get_recommendations(params = {}, options = {})
      request = build_request(:get_recommendations, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-personalizeruntime'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end
    end
  end
end
