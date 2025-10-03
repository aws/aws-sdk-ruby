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
require 'aws-sdk-core/plugins/rest_json_protocol'

module Aws::MarketplaceCatalog
  # An API client for Aws::MarketplaceCatalog.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSMPSeymour

    add_plugin(::Aws::MarketplaceCatalog::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)

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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::MarketplaceCatalog::EndpointProvider)
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
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Returns metadata and content for multiple entities. This is the Batch version of the <code>DescribeEntity</code> API and uses the same IAM permission action as <code>DescribeEntity</code> API.</p>
    # @param [Hash, Types::BatchDescribeEntitiesRequest] params
    # @option params [Array<Types::EntityRequest>] :entity_request_list
    #   <p>List of entity IDs and the catalogs the entities are present in.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     entity_request_list: [ # required
    #       {
    #         catalog: "Catalog", # required
    #         entity_id: "EntityId", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_describe_entities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entity_details: {
    #       "EntityId" => {
    #         entity_type: "EntityType",
    #         entity_arn: "ARN",
    #         entity_identifier: "Identifier",
    #         last_modified_date: "DateTimeISO8601",
    #         details_document: ""null""
    #       }
    #     },
    #     errors: {
    #       "EntityId" => {
    #         error_code: "BatchDescribeErrorCodeString",
    #         error_message: "BatchDescribeErrorMessageContent"
    #       }
    #     }
    #   }
    # @return [Types::BatchDescribeEntitiesResponse]
    def batch_describe_entities(params = {}, options = {})
      request = build_request(:batch_describe_entities, params)
      request.send_request(options)
    end

    # <p>Used to cancel an open change request. Must be sent before the status of the request
    #             changes to <code>APPLYING</code>, the final stage of completing your change request. You
    #             can describe a change during the 60-day request history retention period for API
    #             calls.</p>
    # @param [Hash, Types::CancelChangeSetRequest] params
    # @option params [String] :catalog
    #   <p>Required. The catalog related to the request. Fixed value:
    #               <code>AWSMarketplace</code>.</p>
    # @option params [String] :change_set_id
    #   <p>Required. The unique identifier of the <code>StartChangeSet</code> request that you
    #               want to cancel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     change_set_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.cancel_change_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_set_id: "ResourceId",
    #     change_set_arn: "ARN"
    #   }
    # @return [Types::CancelChangeSetResponse]
    def cancel_change_set(params = {}, options = {})
      request = build_request(:cancel_change_set, params)
      request.send_request(options)
    end

    # <p>Deletes a resource-based policy on an entity that is identified by its resource
    #             ARN.</p>
    # @param [Hash, Types::DeleteResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the entity resource that is associated with the
    #               resource policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceARN", # required
    #   }
    #   options = {}
    #   response = client.delete_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteResourcePolicyResponse]
    def delete_resource_policy(params = {}, options = {})
      request = build_request(:delete_resource_policy, params)
      request.send_request(options)
    end

    # <p>Provides information about a given change set.</p>
    # @param [Hash, Types::DescribeChangeSetRequest] params
    # @option params [String] :catalog
    #   <p>Required. The catalog related to the request. Fixed value:
    #               <code>AWSMarketplace</code>
    #            </p>
    # @option params [String] :change_set_id
    #   <p>Required. The unique identifier for the <code>StartChangeSet</code> request that you
    #               want to describe the details for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     change_set_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.describe_change_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_set_id: "ResourceId",
    #     change_set_arn: "ARN",
    #     change_set_name: "ChangeSetName",
    #     intent: "VALIDATE" # One of: ["VALIDATE", "APPLY"],
    #     start_time: "DateTimeISO8601",
    #     end_time: "DateTimeISO8601",
    #     status: "PREPARING" # One of: ["PREPARING", "APPLYING", "SUCCEEDED", "CANCELLED", "FAILED"],
    #     failure_code: "CLIENT_ERROR" # One of: ["CLIENT_ERROR", "SERVER_FAULT"],
    #     failure_description: "ExceptionMessageContent",
    #     change_set: [
    #       {
    #         change_type: "ChangeType",
    #         entity: {
    #           type: "EntityType", # required
    #           identifier: "Identifier"
    #         },
    #         details: "Json",
    #         details_document: ""null"",
    #         error_detail_list: [
    #           {
    #             error_code: "ErrorCodeString",
    #             error_message: "ExceptionMessageContent"
    #           }
    #         ],
    #         change_name: "ChangeName"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeChangeSetResponse]
    def describe_change_set(params = {}, options = {})
      request = build_request(:describe_change_set, params)
      request.send_request(options)
    end

    # <p>Returns the metadata and content of the entity.</p>
    # @param [Hash, Types::DescribeEntityRequest] params
    # @option params [String] :catalog
    #   <p>Required. The catalog related to the request. Fixed value:
    #               <code>AWSMarketplace</code>
    #            </p>
    # @option params [String] :entity_id
    #   <p>Required. The unique ID of the entity to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     entity_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.describe_entity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entity_type: "EntityType",
    #     entity_identifier: "Identifier",
    #     entity_arn: "ARN",
    #     last_modified_date: "DateTimeISO8601",
    #     details: "Json",
    #     details_document: ""null""
    #   }
    # @return [Types::DescribeEntityResponse]
    def describe_entity(params = {}, options = {})
      request = build_request(:describe_entity, params)
      request.send_request(options)
    end

    # <p>Gets a resource-based policy of an entity that is identified by its resource
    #             ARN.</p>
    # @param [Hash, Types::GetResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the entity resource that is associated with the
    #               resource policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceARN", # required
    #   }
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "ResourcePolicyJson"
    #   }
    # @return [Types::GetResourcePolicyResponse]
    def get_resource_policy(params = {}, options = {})
      request = build_request(:get_resource_policy, params)
      request.send_request(options)
    end

    # <p>Returns the list of change sets owned by the account being used to make the call. You
    #             can filter this list by providing any combination of <code>entityId</code>,
    #                 <code>ChangeSetName</code>, and status. If you provide more than one filter, the API
    #             operation applies a logical AND between the filters.</p>
    #          <p>You can describe a change during the 60-day request history retention period for API
    #             calls.</p>
    # @param [Hash, Types::ListChangeSetsRequest] params
    # @option params [String] :catalog
    #   <p>The catalog related to the request. Fixed value: <code>AWSMarketplace</code>
    #            </p>
    # @option params [Array<Types::Filter>] :filter_list
    #   <p>An array of filter objects.</p>
    # @option params [Types::Sort] :sort
    #   <p>An object that contains two attributes, <code>SortBy</code> and
    #               <code>SortOrder</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned by a single call. This value must be provided
    #               in the next call to retrieve the next set of results. By default, this value is
    #               20.</p>
    # @option params [String] :next_token
    #   <p>The token value retrieved from a previous call to access the next page of
    #               results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     filter_list: [
    #       {
    #         name: "FilterName",
    #         value_list: ["FilterValueContent"]
    #       }
    #     ],
    #     sort: {
    #       sort_by: "SortBy",
    #       sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #     },
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_change_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_set_summary_list: [
    #       {
    #         change_set_id: "ResourceId",
    #         change_set_arn: "ARN",
    #         change_set_name: "ChangeSetName",
    #         start_time: "DateTimeISO8601",
    #         end_time: "DateTimeISO8601",
    #         status: "PREPARING" # One of: ["PREPARING", "APPLYING", "SUCCEEDED", "CANCELLED", "FAILED"],
    #         entity_id_list: ["ResourceId"],
    #         failure_code: "CLIENT_ERROR" # One of: ["CLIENT_ERROR", "SERVER_FAULT"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListChangeSetsResponse]
    def list_change_sets(params = {}, options = {})
      request = build_request(:list_change_sets, params)
      request.send_request(options)
    end

    # <p>Provides the list of entities of a given type.</p>
    # @param [Hash, Types::ListEntitiesRequest] params
    # @option params [String] :catalog
    #   <p>The catalog related to the request. Fixed value: <code>AWSMarketplace</code>
    #            </p>
    # @option params [String] :entity_type
    #   <p>The type of entities to
    #               retrieve. Valid
    #               values are: <code>AmiProduct</code>, <code>ContainerProduct</code>,
    #                   <code>DataProduct</code>, <code>SaaSProduct</code>, <code>ProcurementPolicy</code>,
    #                   <code>Experience</code>, <code>Audience</code>, <code>BrandingSettings</code>,
    #                   <code>Offer</code>, <code>Seller</code>,
    #               <code>ResaleAuthorization</code>.</p>
    # @option params [Array<Types::Filter>] :filter_list
    #   <p>An array of filter objects. Each filter object contains two attributes,
    #                   <code>filterName</code> and <code>filterValues</code>.</p>
    # @option params [Types::Sort] :sort
    #   <p>An object that contains two attributes, <code>SortBy</code> and
    #               <code>SortOrder</code>.</p>
    # @option params [String] :next_token
    #   <p>The value of the next token, if it exists. Null if there are no more results.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the upper limit of the elements on a single page. If a value isn't provided,
    #               the default value is 20.</p>
    # @option params [String] :ownership_type
    #   <p>Filters the returned set of entities based on their owner. The default is
    #                   <code>SELF</code>. To list entities shared with you
    #               through AWS Resource Access Manager (AWS RAM), set to <code>SHARED</code>. Entities shared through the AWS Marketplace
    #               Catalog API <code>PutResourcePolicy</code> operation can't be discovered through the
    #                   <code>SHARED</code> parameter.</p>
    # @option params [Types::EntityTypeFilters] :entity_type_filters
    #   <p>A Union object containing filter shapes for all <code>EntityType</code>s. Each
    #                   <code>EntityTypeFilter</code> shape will have filters applicable for that
    #                   <code>EntityType</code> that can be used to search or filter entities.</p>
    # @option params [Types::EntityTypeSort] :entity_type_sort
    #   <p>A Union object containing <code>Sort</code> shapes for all <code>EntityType</code>s.
    #               Each <code>EntityTypeSort</code> shape will have <code>SortBy</code> and
    #                   <code>SortOrder</code> applicable for fields on that <code>EntityType</code>. This
    #               can be used to sort the results of the filter query.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     entity_type: "EntityType", # required
    #     filter_list: [
    #       {
    #         name: "FilterName",
    #         value_list: ["FilterValueContent"]
    #       }
    #     ],
    #     sort: {
    #       sort_by: "SortBy",
    #       sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #     ownership_type: "SELF" # One of: ["SELF", "SHARED"],
    #     entity_type_filters: {
    #       # One of:
    #       data_product_filters: {
    #         entity_id: {
    #           value_list: ["DataProductEntityIdString"]
    #         },
    #         product_title: {
    #           value_list: ["DataProductTitleString"],
    #           wild_card_value: "DataProductTitleString"
    #         },
    #         visibility: {
    #           value_list: ["Limited" # One of: ["Limited", "Public", "Restricted", "Unavailable", "Draft"]]
    #         },
    #         last_modified_date: {
    #           date_range: {
    #             after_value: "DateTimeISO8601",
    #             before_value: "DateTimeISO8601"
    #           }
    #         }
    #       },
    #       saa_s_product_filters: {
    #         entity_id: {
    #           value_list: ["SaaSProductEntityIdString"]
    #         },
    #         product_title: {
    #           value_list: ["SaaSProductTitleString"],
    #           wild_card_value: "SaaSProductTitleString"
    #         },
    #         visibility: {
    #           value_list: ["Limited" # One of: ["Limited", "Public", "Restricted", "Draft"]]
    #         },
    #         last_modified_date: {
    #           date_range: {
    #             after_value: "DateTimeISO8601",
    #             before_value: "DateTimeISO8601"
    #           }
    #         }
    #       },
    #       ami_product_filters: {
    #         entity_id: {
    #           value_list: ["AmiProductEntityIdString"]
    #         },
    #         last_modified_date: {
    #           date_range: {
    #             after_value: "DateTimeISO8601",
    #             before_value: "DateTimeISO8601"
    #           }
    #         },
    #         product_title: {
    #           value_list: ["AmiProductTitleString"],
    #           wild_card_value: "AmiProductTitleString"
    #         },
    #         visibility: {
    #           value_list: ["Limited" # One of: ["Limited", "Public", "Restricted", "Draft"]]
    #         }
    #       },
    #       offer_filters: {
    #         entity_id: {
    #           value_list: ["OfferEntityIdString"]
    #         },
    #         name: {
    #           value_list: ["OfferNameString"],
    #           wild_card_value: "OfferNameString"
    #         },
    #         product_id: {
    #           value_list: ["OfferProductIdString"]
    #         },
    #         resale_authorization_id: {
    #           value_list: ["OfferResaleAuthorizationIdString"]
    #         },
    #         release_date: {
    #           date_range: {
    #             after_value: "DateTimeISO8601",
    #             before_value: "DateTimeISO8601"
    #           }
    #         },
    #         availability_end_date: {
    #           date_range: {
    #             after_value: "DateTimeISO8601",
    #             before_value: "DateTimeISO8601"
    #           }
    #         },
    #         buyer_accounts: {
    #           wild_card_value: "OfferBuyerAccountsFilterWildcard"
    #         },
    #         state: {
    #           value_list: ["Draft" # One of: ["Draft", "Released"]]
    #         },
    #         targeting: {
    #           value_list: ["BuyerAccounts" # One of: ["BuyerAccounts", "ParticipatingPrograms", "CountryCodes", "None"]]
    #         },
    #         last_modified_date: {
    #           date_range: {
    #             after_value: "DateTimeISO8601",
    #             before_value: "DateTimeISO8601"
    #           }
    #         }
    #       },
    #       container_product_filters: {
    #         entity_id: {
    #           value_list: ["ContainerProductEntityIdString"]
    #         },
    #         last_modified_date: {
    #           date_range: {
    #             after_value: "DateTimeISO8601",
    #             before_value: "DateTimeISO8601"
    #           }
    #         },
    #         product_title: {
    #           value_list: ["ContainerProductTitleString"],
    #           wild_card_value: "ContainerProductTitleString"
    #         },
    #         visibility: {
    #           value_list: ["Limited" # One of: ["Limited", "Public", "Restricted", "Draft"]]
    #         }
    #       },
    #       resale_authorization_filters: {
    #         entity_id: {
    #           value_list: ["ResaleAuthorizationEntityIdString"]
    #         },
    #         name: {
    #           value_list: ["ResaleAuthorizationNameString"],
    #           wild_card_value: "ResaleAuthorizationNameFilterWildcard"
    #         },
    #         product_id: {
    #           value_list: ["ResaleAuthorizationProductIdString"],
    #           wild_card_value: "ResaleAuthorizationProductIdFilterWildcard"
    #         },
    #         created_date: {
    #           date_range: {
    #             after_value: "DateTimeISO8601",
    #             before_value: "DateTimeISO8601"
    #           },
    #           value_list: ["DateTimeISO8601"]
    #         },
    #         availability_end_date: {
    #           date_range: {
    #             after_value: "DateTimeISO8601",
    #             before_value: "DateTimeISO8601"
    #           },
    #           value_list: ["DateTimeISO8601"]
    #         },
    #         manufacturer_account_id: {
    #           value_list: ["ResaleAuthorizationManufacturerAccountIdString"],
    #           wild_card_value: "ResaleAuthorizationManufacturerAccountIdFilterWildcard"
    #         },
    #         product_name: {
    #           value_list: ["ResaleAuthorizationProductNameString"],
    #           wild_card_value: "ResaleAuthorizationProductNameFilterWildcard"
    #         },
    #         manufacturer_legal_name: {
    #           value_list: ["ResaleAuthorizationManufacturerLegalNameString"],
    #           wild_card_value: "ResaleAuthorizationManufacturerLegalNameFilterWildcard"
    #         },
    #         reseller_account_id: {
    #           value_list: ["ResaleAuthorizationResellerAccountIDString"],
    #           wild_card_value: "ResaleAuthorizationResellerAccountIDFilterWildcard"
    #         },
    #         reseller_legal_name: {
    #           value_list: ["ResaleAuthorizationResellerLegalNameString"],
    #           wild_card_value: "ResaleAuthorizationResellerLegalNameFilterWildcard"
    #         },
    #         status: {
    #           value_list: ["Draft" # One of: ["Draft", "Active", "Restricted"]]
    #         },
    #         offer_extended_status: {
    #           value_list: ["ResaleAuthorizationOfferExtendedStatusString"]
    #         },
    #         last_modified_date: {
    #           date_range: {
    #             after_value: "DateTimeISO8601",
    #             before_value: "DateTimeISO8601"
    #           }
    #         }
    #       },
    #       machine_learning_product_filters: {
    #         entity_id: {
    #           value_list: ["MachineLearningProductEntityIdString"]
    #         },
    #         last_modified_date: {
    #           date_range: {
    #             after_value: "DateTimeISO8601",
    #             before_value: "DateTimeISO8601"
    #           }
    #         },
    #         product_title: {
    #           value_list: ["MachineLearningProductTitleString"],
    #           wild_card_value: "MachineLearningProductTitleString"
    #         },
    #         visibility: {
    #           value_list: ["Limited" # One of: ["Limited", "Public", "Restricted", "Draft"]]
    #         }
    #       }
    #     },
    #     entity_type_sort: {
    #       # One of:
    #       data_product_sort: {
    #         sort_by: "EntityId" # One of: ["EntityId", "ProductTitle", "Visibility", "LastModifiedDate"],
    #         sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #       },
    #       saa_s_product_sort: {
    #         sort_by: "EntityId" # One of: ["EntityId", "ProductTitle", "Visibility", "LastModifiedDate"],
    #         sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #       },
    #       ami_product_sort: {
    #         sort_by: "EntityId" # One of: ["EntityId", "LastModifiedDate", "ProductTitle", "Visibility"],
    #         sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #       },
    #       offer_sort: {
    #         sort_by: "EntityId" # One of: ["EntityId", "Name", "ProductId", "ResaleAuthorizationId", "ReleaseDate", "AvailabilityEndDate", "BuyerAccounts", "State", "Targeting", "LastModifiedDate"],
    #         sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #       },
    #       container_product_sort: {
    #         sort_by: "EntityId" # One of: ["EntityId", "LastModifiedDate", "ProductTitle", "Visibility"],
    #         sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #       },
    #       resale_authorization_sort: {
    #         sort_by: "EntityId" # One of: ["EntityId", "Name", "ProductId", "ProductName", "ManufacturerAccountId", "ManufacturerLegalName", "ResellerAccountID", "ResellerLegalName", "Status", "OfferExtendedStatus", "CreatedDate", "AvailabilityEndDate", "LastModifiedDate"],
    #         sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #       },
    #       machine_learning_product_sort: {
    #         sort_by: "EntityId" # One of: ["EntityId", "LastModifiedDate", "ProductTitle", "Visibility"],
    #         sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.list_entities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entity_summary_list: [
    #       {
    #         name: "EntityNameString",
    #         entity_type: "EntityType",
    #         entity_id: "ResourceId",
    #         entity_arn: "ARN",
    #         last_modified_date: "DateTimeISO8601",
    #         visibility: "VisibilityValue",
    #         ami_product_summary: {
    #           product_title: "AmiProductTitleString",
    #           visibility: "Limited" # One of: ["Limited", "Public", "Restricted", "Draft"]
    #         },
    #         container_product_summary: {
    #           product_title: "ContainerProductTitleString",
    #           visibility: "Limited" # One of: ["Limited", "Public", "Restricted", "Draft"]
    #         },
    #         data_product_summary: {
    #           product_title: "DataProductTitleString",
    #           visibility: "Limited" # One of: ["Limited", "Public", "Restricted", "Unavailable", "Draft"]
    #         },
    #         saa_s_product_summary: {
    #           product_title: "SaaSProductTitleString",
    #           visibility: "Limited" # One of: ["Limited", "Public", "Restricted", "Draft"]
    #         },
    #         offer_summary: {
    #           name: "OfferNameString",
    #           product_id: "OfferProductIdString",
    #           resale_authorization_id: "OfferResaleAuthorizationIdString",
    #           release_date: "DateTimeISO8601",
    #           availability_end_date: "DateTimeISO8601",
    #           buyer_accounts: ["OfferBuyerAccountsString"],
    #           state: "Draft" # One of: ["Draft", "Released"],
    #           targeting: ["BuyerAccounts" # One of: ["BuyerAccounts", "ParticipatingPrograms", "CountryCodes", "None"]]
    #         },
    #         resale_authorization_summary: {
    #           name: "ResaleAuthorizationNameString",
    #           product_id: "ResaleAuthorizationProductIdString",
    #           product_name: "ResaleAuthorizationProductNameString",
    #           manufacturer_account_id: "ResaleAuthorizationManufacturerAccountIdString",
    #           manufacturer_legal_name: "ResaleAuthorizationManufacturerLegalNameString",
    #           reseller_account_id: "ResaleAuthorizationResellerAccountIDString",
    #           reseller_legal_name: "ResaleAuthorizationResellerLegalNameString",
    #           status: "Draft" # One of: ["Draft", "Active", "Restricted"],
    #           offer_extended_status: "ResaleAuthorizationOfferExtendedStatusString",
    #           created_date: "DateTimeISO8601",
    #           availability_end_date: "DateTimeISO8601"
    #         },
    #         machine_learning_product_summary: {
    #           product_title: "MachineLearningProductTitleString",
    #           visibility: "Limited" # One of: ["Limited", "Public", "Restricted", "Draft"]
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEntitiesResponse]
    def list_entities(params = {}, options = {})
      request = build_request(:list_entities, params)
      request.send_request(options)
    end

    # <p>Lists all tags that have been added to a resource (either an <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#catalog-api-entities">entity</a> or <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets">change set</a>).</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>Required. The Amazon Resource Name (ARN) associated with the resource you want to list
    #               tags on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceARN", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "ResourceARN",
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

    # <p>Attaches a resource-based policy to an entity. Examples of an entity include:
    #                 <code>AmiProduct</code> and <code>ContainerProduct</code>.</p>
    # @param [Hash, Types::PutResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the entity resource you want to associate with a
    #               resource policy.</p>
    # @option params [String] :policy
    #   <p>The policy document to set; formatted in JSON.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceARN", # required
    #     policy: "ResourcePolicyJson", # required
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutResourcePolicyResponse]
    def put_resource_policy(params = {}, options = {})
      request = build_request(:put_resource_policy, params)
      request.send_request(options)
    end

    # <p>Allows you to request changes for your entities. Within a single
    #                 <code>ChangeSet</code>, you can't start the same change type against the same entity
    #             multiple times. Additionally, when a <code>ChangeSet</code> is running, all the entities
    #             targeted by the different changes are locked until the change set has completed (either
    #             succeeded, cancelled, or failed). If you try to start a change set containing a change
    #             against an entity that is already locked, you will receive a
    #                 <code>ResourceInUseException</code> error.</p>
    #          <p>For example, you can't start the <code>ChangeSet</code> described in the <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/API_StartChangeSet.html#API_StartChangeSet_Examples">example</a> later in this topic because it contains two changes to run the same
    #             change type (<code>AddRevisions</code>) against the same entity
    #                 (<code>entity-id@1</code>).</p>
    #          <p>For more information about working with change sets, see <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets"> Working with change sets</a>. For information about change types for
    #             single-AMI products, see <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/ami-products.html#working-with-single-AMI-products">Working with single-AMI products</a>. Also, for more information about change
    #             types available for container-based products, see <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/container-products.html#working-with-container-products">Working with container products</a>.</p>
    #          <p>To download "DetailsDocument" shapes, see <a href="https://github.com/awslabs/aws-marketplace-catalog-api-shapes-for-python">Python</a> 
    #             and <a href="https://github.com/awslabs/aws-marketplace-catalog-api-shapes-for-java/tree/main">Java</a> shapes on GitHub.</p>
    # @param [Hash, Types::StartChangeSetRequest] params
    # @option params [String] :catalog
    #   <p>The catalog related to the request. Fixed value: <code>AWSMarketplace</code>
    #            </p>
    # @option params [Array<Types::Change>] :change_set
    #   <p>Array of <code>change</code> object.</p>
    # @option params [String] :change_set_name
    #   <p>Optional case sensitive string of up to 100 ASCII characters. The change set name can
    #               be used to filter the list of change sets. </p>
    # @option params [String] :client_request_token
    #   <p>A unique token to identify the request to ensure idempotency.</p>
    # @option params [Array<Types::Tag>] :change_set_tags
    #   <p>A list of objects specifying each key name and value for the
    #                   <code>ChangeSetTags</code> property.</p>
    # @option params [String] :intent
    #   <p>The intent related to the request. The default is <code>APPLY</code>.
    #               To test your request before applying changes to your entities, use <code>VALIDATE</code>.
    #               This feature is currently available for adding versions to single-AMI products. For more information, see
    #               <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/ami-products.html#ami-add-version">Add a new version</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     change_set: [ # required
    #       {
    #         change_type: "ChangeType", # required
    #         entity: { # required
    #           type: "EntityType", # required
    #           identifier: "Identifier"
    #         },
    #         entity_tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ],
    #         details: "Json",
    #         details_document: ""null"",
    #         change_name: "ChangeName"
    #       }
    #     ],
    #     change_set_name: "ChangeSetName",
    #     client_request_token: "ClientRequestToken",
    #     change_set_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     intent: "VALIDATE" # One of: ["VALIDATE", "APPLY"]
    #   }
    #   options = {}
    #   response = client.start_change_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_set_id: "ResourceId",
    #     change_set_arn: "ARN"
    #   }
    # @return [Types::StartChangeSetResponse]
    def start_change_set(params = {}, options = {})
      request = build_request(:start_change_set, params)
      request.send_request(options)
    end

    # <p>Tags a resource (either an <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#catalog-api-entities">entity</a> or <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets">change set</a>).</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>Required. The Amazon Resource Name (ARN) associated with the resource you want to
    #               tag.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Required. A list of objects specifying each key name and value. Number of objects
    #               allowed: 1-50.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceARN", # required
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

    # <p>Removes a tag or list of tags from a resource (either an <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#catalog-api-entities">entity</a> or <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets">change set</a>).</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>Required. The Amazon Resource Name (ARN) associated with the resource you want to
    #               remove the tag from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Required. A list of key names of tags to be removed. Number of strings allowed:
    #               0-256.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceARN", # required
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
      context[:gem_name] = 'aws-sdk-marketplacecatalog'
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
