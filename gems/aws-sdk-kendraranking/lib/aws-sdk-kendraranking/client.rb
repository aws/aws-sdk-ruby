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
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'

module Aws::KendraRanking
  # An API client for Aws::KendraRanking.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSKendraRerankingFrontendService

    add_plugin(::Aws::KendraRanking::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
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
    #  Custom Endpoint
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::KendraRanking::EndpointProvider)
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
    #  TODO
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
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
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Creates a rescore execution plan. A rescore execution 
    #             plan is an Amazon Kendra Intelligent Ranking resource 
    #             used for provisioning the <code>Rescore</code> API. You set 
    #             the number of capacity units that you require for 
    #             Amazon Kendra Intelligent Ranking to rescore or re-rank 
    #             a search service's results.</p>
    #          <p>For an example of using the 
    #             <code>CreateRescoreExecutionPlan</code> API, including using 
    #             the Python and Java SDKs, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/search-service-rerank.html">Semantically 
    #                 ranking a search service's results</a>.</p>
    # @param [Hash, Types::CreateRescoreExecutionPlanRequest] params
    # @option params [String] :name
    #   <p>A name for the rescore execution plan.</p>
    # @option params [String] :description
    #   <p>A description for the rescore execution plan.</p>
    # @option params [Types::CapacityUnitsConfiguration] :capacity_units
    #   <p>You can set additional capacity units to meet the 
    #               needs of your rescore execution plan. You are given a single 
    #               capacity unit by default. If you want to use the default 
    #               capacity, you don't set additional capacity units. For more 
    #               information on the default capacity and additional capacity 
    #               units, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/adjusting-capacity.html">Adjusting 
    #                   capacity</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of key-value pairs that identify or categorize your 
    #               rescore execution plan. You can also use tags to help control 
    #               access to the rescore execution plan. Tag keys and values can 
    #               consist of Unicode letters, digits, white space, and any of 
    #               the following symbols: _ . : / = + - @.</p>
    # @option params [String] :client_token
    #   <p>A token that you provide to identify the request to create 
    #               a rescore execution plan. Multiple calls to the 
    #               <code>CreateRescoreExecutionPlanRequest</code> API with the 
    #               same client token will create only one rescore execution plan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "RescoreExecutionPlanName", # required
    #     description: "Description",
    #     capacity_units: {
    #       rescore_capacity_units: 1, # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "ClientTokenName"
    #   }
    #   options = {}
    #   response = client.create_rescore_execution_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "RescoreExecutionPlanId", # required
    #     arn: "RescoreExecutionPlanArn", # required
    #   }
    # @return [Types::CreateRescoreExecutionPlanResponse]
    def create_rescore_execution_plan(params = {}, options = {})
      request = build_request(:create_rescore_execution_plan, params)
      request.send_request(options)
    end

    # <p>Deletes a rescore execution plan. A rescore execution 
    #             plan is an Amazon Kendra Intelligent Ranking resource 
    #             used for provisioning the <code>Rescore</code> API.</p>
    # @param [Hash, Types::DeleteRescoreExecutionPlanRequest] params
    # @option params [String] :id
    #   <p>The identifier of the rescore execution plan that you 
    #               want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "RescoreExecutionPlanId", # required
    #   }
    #   options = {}
    #   response = client.delete_rescore_execution_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_rescore_execution_plan(params = {}, options = {})
      request = build_request(:delete_rescore_execution_plan, params)
      request.send_request(options)
    end

    # <p>Gets information about a rescore execution plan. A rescore 
    #             execution plan is an Amazon Kendra Intelligent Ranking 
    #             resource used for provisioning the <code>Rescore</code> API.</p>
    # @param [Hash, Types::DescribeRescoreExecutionPlanRequest] params
    # @option params [String] :id
    #   <p>The identifier of the rescore execution plan that you want 
    #               to get information on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "RescoreExecutionPlanId", # required
    #   }
    #   options = {}
    #   response = client.describe_rescore_execution_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "RescoreExecutionPlanId",
    #     arn: "RescoreExecutionPlanArn",
    #     name: "RescoreExecutionPlanName",
    #     description: "Description",
    #     capacity_units: {
    #       rescore_capacity_units: 1, # required
    #     },
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"],
    #     error_message: "ErrorMessage"
    #   }
    # @return [Types::DescribeRescoreExecutionPlanResponse]
    def describe_rescore_execution_plan(params = {}, options = {})
      request = build_request(:describe_rescore_execution_plan, params)
      request.send_request(options)
    end

    # <p>Lists your rescore execution plans. A rescore execution plan 
    #             is an Amazon Kendra Intelligent Ranking resource used for 
    #             provisioning the <code>Rescore</code> API.</p>
    # @param [Hash, Types::ListRescoreExecutionPlansRequest] params
    # @option params [String] :next_token
    #   <p>If the response is truncated, Amazon Kendra Intelligent 
    #               Ranking returns a pagination token in the response. You can use 
    #               this pagination token to retrieve the next set of rescore 
    #               execution plans.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of rescore execution plans to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_rescore_execution_plans(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summary_items: [
    #       {
    #         name: "RescoreExecutionPlanName",
    #         id: "RescoreExecutionPlanId",
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         status: "CREATING" # One of: ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRescoreExecutionPlansResponse]
    def list_rescore_execution_plans(params = {}, options = {})
      request = build_request(:list_rescore_execution_plans, params)
      request.send_request(options)
    end

    # <p>Gets a list of tags associated with a specified resource. 
    #             A rescore execution plan is an example of a resource that 
    #             can have tags associated with it.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the rescore execution 
    #               plan to get a list of tags for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Rescores or re-ranks search results from a search service 
    #             such as OpenSearch (self managed). You use the semantic search 
    #             capabilities of Amazon Kendra Intelligent Ranking to 
    #             improve the search service's results.</p>
    # @param [Hash, Types::RescoreRequest] params
    # @option params [String] :rescore_execution_plan_id
    #   <p>The identifier of the rescore execution plan. A rescore 
    #               execution plan is an Amazon Kendra Intelligent Ranking 
    #               resource used for provisioning the <code>Rescore</code> API.</p>
    # @option params [String] :search_query
    #   <p>The input query from the search service.</p>
    # @option params [Array<Types::Document>] :documents
    #   <p>The list of documents for Amazon Kendra Intelligent 
    #               Ranking to rescore or rank on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rescore_execution_plan_id: "RescoreExecutionPlanId", # required
    #     search_query: "SearchQuery", # required
    #     documents: [ # required
    #       {
    #         id: "DocumentId", # required
    #         group_id: "GroupId",
    #         title: "DocumentTitle",
    #         body: "DocumentBody",
    #         tokenized_title: ["Tokens"],
    #         tokenized_body: ["Tokens"],
    #         original_score: 1.0, # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.rescore(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rescore_id: "RescoreId",
    #     result_items: [
    #       {
    #         document_id: "DocumentId",
    #         score: 1.0
    #       }
    #     ]
    #   }
    # @return [Types::RescoreResult]
    def rescore(params = {}, options = {})
      request = build_request(:rescore, params)
      request.send_request(options)
    end

    # <p>Adds a specified tag to a specified rescore execution 
    #             plan. A rescore execution plan is an Amazon Kendra 
    #             Intelligent Ranking resource used for provisioning the 
    #             <code>Rescore</code> API. If the tag already exists, 
    #             the existing value is replaced with the new value.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the rescore execution 
    #               plan to tag.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tag keys to add to a rescore execution plan. 
    #               If a tag already exists, the existing value is replaced 
    #               with the new value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes a tag from a rescore execution plan. A rescore 
    #             execution plan is an Amazon Kendra Intelligent 
    #             Ranking resource used for provisioning the 
    #             <code>Rescore</code> operation.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the rescore execution 
    #               plan to remove the tag.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys to remove from the rescore execution 
    #               plan. If a tag key does not exist on the resource, it is 
    #               ignored.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates a rescore execution plan. A rescore execution plan 
    #             is an Amazon Kendra Intelligent Ranking resource used for 
    #             provisioning the <code>Rescore</code> API. You can update the 
    #             number of capacity units you require for Amazon Kendra 
    #             Intelligent Ranking to rescore or re-rank a search service's 
    #             results.</p>
    # @param [Hash, Types::UpdateRescoreExecutionPlanRequest] params
    # @option params [String] :id
    #   <p>The identifier of the rescore execution plan that you want 
    #               to update.</p>
    # @option params [String] :name
    #   <p>A new name for the rescore execution plan.</p>
    # @option params [String] :description
    #   <p>A new description for the rescore execution plan.</p>
    # @option params [Types::CapacityUnitsConfiguration] :capacity_units
    #   <p>You can set additional capacity units to meet the needs 
    #               of your rescore execution plan. You are given a single capacity 
    #               unit by default. If you want to use the default capacity, you 
    #               don't set additional capacity units. For more information on the
    #               default capacity and additional capacity units, see 
    #               <a href="https://docs.aws.amazon.com/kendra/latest/dg/adjusting-capacity.html">Adjusting capacity</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "RescoreExecutionPlanId", # required
    #     name: "RescoreExecutionPlanName",
    #     description: "Description",
    #     capacity_units: {
    #       rescore_capacity_units: 1, # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_rescore_execution_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_rescore_execution_plan(params = {}, options = {})
      request = build_request(:update_rescore_execution_plan, params)
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
      context[:gem_name] = 'aws-sdk-kendraranking'
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
