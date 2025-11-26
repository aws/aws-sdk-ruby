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
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:billing)

module Aws::Billing
  # An API client for Aws::Billing.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSBilling
    @identifier = :billing

    add_plugin(::Aws::Billing::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Billing::EndpointProvider)
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

    # <p> Associates one or more source billing views with an existing billing view. This allows creating aggregate billing views that combine data from multiple sources. </p>
    # @param [Hash, Types::AssociateSourceViewsRequest] params
    # @option params [String] :arn
    #   <p> The Amazon Resource Name (ARN) of the billing view to associate source views with. </p>
    # @option params [Array<String>] :source_views
    #   <p> A list of ARNs of the source billing views to associate. </p>
    # @example Invoke AssociateSourceViews
    #   # Example operation for associate_source_views
    #   params = {
    #     arn: "arn:aws:billing::123456789012:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899",
    #     source_views: [
    #       "arn:aws:billing::123456789012:billingview/primary",
    #       "arn:aws:billing::123456789012:billingview/custom-d3f9c7e4-8b2f-4a6e-9d3b-2f7c8a1e5f6d"
    #     ]
    #   }
    #   options = {}
    #   response = client.associate_source_views(params, options)
    #   response.to_h #=>
    #   {
    #     arn: "arn:aws:billing::123456789012:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "BillingViewArn", # required
    #     source_views: ["BillingViewArn"], # required
    #   }
    #   options = {}
    #   response = client.associate_source_views(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "BillingViewArn", # required
    #   }
    # @return [Types::AssociateSourceViewsResponse]
    def associate_source_views(params = {}, options = {})
      request = build_request(:associate_source_views, params)
      request.send_request(options)
    end

    # <p> Creates a billing view with the specified billing view attributes. </p>
    # @param [Hash, Types::CreateBillingViewRequest] params
    # @option params [String] :name
    #   <p> The name of the billing view. </p>
    # @option params [String] :description
    #   <p> The description of the billing view. </p>
    # @option params [Array<String>] :source_views
    #   <p>A list of billing views used as the data source for the custom billing view.</p>
    # @option params [Types::Expression] :data_filter_expression
    #   <p> See <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_billing_Expression.html">Expression</a>. Billing view only supports <code>LINKED_ACCOUNT</code> and <code>Tags</code>. </p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier you specify to ensure idempotency of the request. Idempotency ensures that an API request completes no more than one time. If the original request completes successfully, any subsequent retries complete successfully without performing any further actions with an idempotent request. </p>
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   <p>A list of key value map specifying tags associated to the billing view being created. </p>
    # @example Invoke CreateBillingView
    #   # Example operation for create_billing_view
    #   params = {
    #     name: "Example Custom Billing View",
    #     source_views: [
    #       "arn:aws:billing::123456789101:billingview/primary"
    #     ],
    #     description: "Custom Billing View Example",
    #     data_filter_expression: {
    #       dimensions: {
    #         key: LINKED_ACCOUNT,
    #         values: [
    #           "000000000000"
    #         ]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_billing_view(params, options)
    #   response.to_h #=>
    #   {
    #     arn: "arn:aws:billing::123456789101:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899",
    #     created_at: Time.parse(1719792001)
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "BillingViewName", # required
    #     description: "BillingViewDescription",
    #     source_views: ["BillingViewArn"], # required
    #     data_filter_expression: {
    #       dimensions: {
    #         key: "LINKED_ACCOUNT" # One of: ["LINKED_ACCOUNT"], # required
    #         values: ["Value"], # required
    #       },
    #       tags: {
    #         key: "TagKey", # required
    #         values: ["Value"], # required
    #       },
    #       time_range: {
    #         begin_date_inclusive: Time.now,
    #         end_date_inclusive: Time.now
    #       }
    #     },
    #     client_token: "ClientToken",
    #     resource_tags: [
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_billing_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "BillingViewArn", # required
    #     created_at: Time.now
    #   }
    # @return [Types::CreateBillingViewResponse]
    def create_billing_view(params = {}, options = {})
      request = build_request(:create_billing_view, params)
      request.send_request(options)
    end

    # <p>Deletes the specified billing view.</p>
    # @param [Hash, Types::DeleteBillingViewRequest] params
    # @option params [String] :arn
    #   <p> The Amazon Resource Name (ARN) that can be used to uniquely identify the billing view. </p>
    # @option params [Boolean] :force
    #   <p> If set to true, forces deletion of the billing view even if it has derived resources (e.g. other billing views or budgets). Use with caution as this may break dependent resources. </p>
    # @example Invoke DeleteBillingView
    #   # Example operation for delete_billing_view
    #   params = {
    #     arn: "arn:aws:billing::123456789101:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899"
    #   }
    #   options = {}
    #   response = client.delete_billing_view(params, options)
    #   response.to_h #=>
    #   {
    #     arn: "arn:aws:billing::123456789101:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "BillingViewArn", # required
    #     force: false
    #   }
    #   options = {}
    #   response = client.delete_billing_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "BillingViewArn", # required
    #   }
    # @return [Types::DeleteBillingViewResponse]
    def delete_billing_view(params = {}, options = {})
      request = build_request(:delete_billing_view, params)
      request.send_request(options)
    end

    # <p> Removes the association between one or more source billing views and an existing billing view. This allows modifying the composition of aggregate billing views. </p>
    # @param [Hash, Types::DisassociateSourceViewsRequest] params
    # @option params [String] :arn
    #   <p> The Amazon Resource Name (ARN) of the billing view to disassociate source views from. </p>
    # @option params [Array<String>] :source_views
    #   <p> A list of ARNs of the source billing views to disassociate. </p>
    # @example Invoke DisassociateSourceViews
    #   # Example operation for disassociate_source_views
    #   params = {
    #     arn: "arn:aws:billing::123456789012:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899",
    #     source_views: [
    #       "arn:aws:billing::123456789012:billingview/primary",
    #       "arn:aws:billing::123456789012:billingview/custom-d3f9c7e4-8b2f-4a6e-9d3b-2f7c8a1e5f6d"
    #     ]
    #   }
    #   options = {}
    #   response = client.disassociate_source_views(params, options)
    #   response.to_h #=>
    #   {
    #     arn: "arn:aws:billing::123456789012:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "BillingViewArn", # required
    #     source_views: ["BillingViewArn"], # required
    #   }
    #   options = {}
    #   response = client.disassociate_source_views(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "BillingViewArn", # required
    #   }
    # @return [Types::DisassociateSourceViewsResponse]
    def disassociate_source_views(params = {}, options = {})
      request = build_request(:disassociate_source_views, params)
      request.send_request(options)
    end

    # <p>Returns the metadata associated to the specified billing view ARN. </p>
    # @param [Hash, Types::GetBillingViewRequest] params
    # @option params [String] :arn
    #   <p> The Amazon Resource Name (ARN) that can be used to uniquely identify the billing view. </p>
    # @example Invoke GetBillingView
    #   # Example operation for get_billing_view
    #   params = {
    #     arn: "arn:aws:billing::123456789101:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899"
    #   }
    #   options = {}
    #   response = client.get_billing_view(params, options)
    #   response.to_h #=>
    #   {
    #     billing_view: {
    #       arn: "arn:aws:billing::123456789101:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899",
    #       name: "Example Custom Billing View",
    #       description: "Custom Billing View Example -- updated description",
    #       data_filter_expression: {
    #         dimensions: {
    #           key: LINKED_ACCOUNT,
    #           values: [
    #             "000000000000"
    #           ]
    #         }
    #       },
    #       owner_account_id: "123456789101",
    #       billing_view_type: CUSTOM
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "BillingViewArn", # required
    #   }
    #   options = {}
    #   response = client.get_billing_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     billing_view: { # required
    #       arn: "BillingViewArn",
    #       name: "BillingViewName",
    #       description: "BillingViewDescription",
    #       billing_view_type: "PRIMARY" # One of: ["PRIMARY", "BILLING_GROUP", "CUSTOM"],
    #       owner_account_id: "AccountId",
    #       source_account_id: "AccountId",
    #       data_filter_expression: {
    #         dimensions: {
    #           key: "LINKED_ACCOUNT" # One of: ["LINKED_ACCOUNT"], # required
    #           values: ["Value"], # required
    #         },
    #         tags: {
    #           key: "TagKey", # required
    #           values: ["Value"], # required
    #         },
    #         time_range: {
    #           begin_date_inclusive: Time.now,
    #           end_date_inclusive: Time.now
    #         }
    #       },
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       derived_view_count: 1,
    #       source_view_count: 1,
    #       view_definition_last_updated_at: Time.now,
    #       health_status: {
    #         status_code: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY", "CREATING", "UPDATING"],
    #         status_reasons: ["SOURCE_VIEW_UNHEALTHY" # One of: ["SOURCE_VIEW_UNHEALTHY", "SOURCE_VIEW_UPDATING", "SOURCE_VIEW_ACCESS_DENIED", "SOURCE_VIEW_NOT_FOUND", "CYCLIC_DEPENDENCY", "SOURCE_VIEW_DEPTH_EXCEEDED", "AGGREGATE_SOURCE", "VIEW_OWNER_NOT_MANAGEMENT_ACCOUNT"]]
    #       }
    #     }
    #   }
    # @return [Types::GetBillingViewResponse]
    def get_billing_view(params = {}, options = {})
      request = build_request(:get_billing_view, params)
      request.send_request(options)
    end

    # <p>Returns the resource-based policy document attached to the resource in <code>JSON</code> format. </p>
    # @param [Hash, Types::GetResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the billing view resource to which the policy is attached to. </p>
    # @example Invoke GetResourcePolicy
    #   # Example operation for get_resource_policy
    #   params = {
    #     resource_arn: "arn:aws:billing::123456789101:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899"
    #   }
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    #   response.to_h #=>
    #   {
    #     resource_arn: "arn:aws:billing::123456789101:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899",
    #     policy: "{\"Version\":\"2012-10-17\",\"Id\":\"46f47cb2-a11d-43f3-983d-470b5708a899\",\"Statement\":[{\"Sid\":\"ExampleStatement1\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::000000000000:root\"},\"Action\":[\"ce:GetDimensionValues\",\"ce:GetCostAndUsageWithResources\",\"ce:GetCostAndUsage\",\"ce:GetCostForecast\",\"ce:GetTags\",\"ce:GetUsageForecast\",\"ce:GetCostCategories\",\"billing:GetBillingView\"],\"Resource\":\"arn:aws:billing::123456789101:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899\"}]}"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "ResourceArn", # required
    #     policy: "PolicyDocument"
    #   }
    # @return [Types::GetResourcePolicyResponse]
    def get_resource_policy(params = {}, options = {})
      request = build_request(:get_resource_policy, params)
      request.send_request(options)
    end

    # <p>Lists the billing views available for a given time period. </p> <p>Every Amazon Web Services account has a unique <code>PRIMARY</code> billing view that represents the billing data available by default. Accounts that use Billing Conductor also have <code>BILLING_GROUP</code> billing views representing pro forma costs associated with each created billing group.</p>
    # @param [Hash, Types::ListBillingViewsRequest] params
    # @option params [Types::ActiveTimeRange] :active_time_range
    #   <p> The time range for the billing views listed. <code>PRIMARY</code> billing view is always listed. <code>BILLING_GROUP</code> billing views are listed for time ranges when the associated billing group resource in Billing Conductor is active. The time range must be within one calendar month. </p>
    # @option params [Array<String>] :arns
    #   <p>The Amazon Resource Name (ARN) that can be used to uniquely identify the billing view. </p>
    # @option params [Array<String>] :billing_view_types
    #   <p>The type of billing view.</p>
    # @option params [String] :owner_account_id
    #   <p> The list of owners of the billing view. </p>
    # @option params [String] :source_account_id
    #   <p> Filters the results to include only billing views that use the specified account as a source. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of billing views to retrieve. Default is 100. </p>
    # @option params [String] :next_token
    #   <p>The pagination token that is used on subsequent calls to list billing views.</p>
    # @example Invoke ListBillingViews
    #   # Example operation for list_billing_views
    #   params = {
    #     active_time_range: {
    #       active_after_inclusive: Time.parse(1719792000),
    #       active_before_inclusive: Time.parse(1722470399.999)
    #     }
    #   }
    #   options = {}
    #   response = client.list_billing_views(params, options)
    #   response.to_h #=>
    #   {
    #     billing_views: [
    #       {
    #         arn: "arn:aws:billing::123456789101:billingview/primary",
    #         billing_view_type: PRIMARY,
    #         name: "Primary Billing View Account 123456789101",
    #         owner_account_id: "123456789101"
    #       }
    #     ]
    #   }
    # @example Error example for ListBillingViews
    #   # Example operation for list_billing_views
    #   params = {
    #     active_time_range: {
    #       active_after_inclusive: Time.parse(1719792001),
    #       active_before_inclusive: Time.parse(1719792000)
    #     }
    #   }
    #   options = {}
    #   begin
    #     response = client.list_billing_views(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ValidationException
    #     puts e.data.to_h #=>
    #     {
    #       message: "Failed to get billing view data for an invalid time range.",
    #       reason: other
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     active_time_range: {
    #       active_after_inclusive: Time.now, # required
    #       active_before_inclusive: Time.now, # required
    #     },
    #     arns: ["BillingViewArn"],
    #     billing_view_types: ["PRIMARY" # One of: ["PRIMARY", "BILLING_GROUP", "CUSTOM"]],
    #     owner_account_id: "AccountId",
    #     source_account_id: "AccountId",
    #     max_results: 1,
    #     next_token: "PageToken"
    #   }
    #   options = {}
    #   response = client.list_billing_views(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     billing_views: [ # required
    #       {
    #         arn: "BillingViewArn",
    #         name: "BillingViewName",
    #         description: "BillingViewDescription",
    #         owner_account_id: "AccountId",
    #         source_account_id: "AccountId",
    #         billing_view_type: "PRIMARY" # One of: ["PRIMARY", "BILLING_GROUP", "CUSTOM"],
    #         health_status: {
    #           status_code: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY", "CREATING", "UPDATING"],
    #           status_reasons: ["SOURCE_VIEW_UNHEALTHY" # One of: ["SOURCE_VIEW_UNHEALTHY", "SOURCE_VIEW_UPDATING", "SOURCE_VIEW_ACCESS_DENIED", "SOURCE_VIEW_NOT_FOUND", "CYCLIC_DEPENDENCY", "SOURCE_VIEW_DEPTH_EXCEEDED", "AGGREGATE_SOURCE", "VIEW_OWNER_NOT_MANAGEMENT_ACCOUNT"]]
    #         }
    #       }
    #     ],
    #     next_token: "PageToken"
    #   }
    # @return [Types::ListBillingViewsResponse]
    def list_billing_views(params = {}, options = {})
      request = build_request(:list_billing_views, params)
      request.send_request(options)
    end

    # <p>Lists the source views (managed Amazon Web Services billing views) associated with the billing view. </p>
    # @param [Hash, Types::ListSourceViewsForBillingViewRequest] params
    # @option params [String] :arn
    #   <p> The Amazon Resource Name (ARN) that can be used to uniquely identify the billing view. </p>
    # @option params [Integer] :max_results
    #   <p> The number of entries a paginated response contains. </p>
    # @option params [String] :next_token
    #   <p> The pagination token that is used on subsequent calls to list billing views. </p>
    # @example Invoke ListSourceViewsForBillingView
    #   # Example operation for list_source_views_for_billing_view
    #   params = {
    #     arn: "arn:aws:billing::123456789101:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899"
    #   }
    #   options = {}
    #   response = client.list_source_views_for_billing_view(params, options)
    #   response.to_h #=>
    #   {
    #     source_views: [
    #       "arn:aws:billing::123456789101:billingview/primary"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "BillingViewArn", # required
    #     max_results: 1,
    #     next_token: "PageToken"
    #   }
    #   options = {}
    #   response = client.list_source_views_for_billing_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_views: ["BillingViewArn"], # required
    #     next_token: "PageToken"
    #   }
    # @return [Types::ListSourceViewsForBillingViewResponse]
    def list_source_views_for_billing_view(params = {}, options = {})
      request = build_request(:list_source_views_for_billing_view, params)
      request.send_request(options)
    end

    # <p>Lists tags associated with the billing view resource. </p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource. </p>
    # @example Invoke ListTagsForResource
    #   # Example operation for list_tags_for_resource
    #   params = {
    #     resource_arn: "arn:aws:billing::123456789101:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {
    #     resource_tags: [
    #       {
    #         key: "ExampleTagKey",
    #         value: "ExampleTagValue"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_tags: [
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue"
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p> An API operation for adding one or more tags (key-value pairs) to a resource. </p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource. </p>
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   <p> A list of tag key value pairs that are associated with the resource. </p>
    # @example Invoke TagResource
    #   # Example operation for tag_resource
    #   params = {
    #     resource_arn: "arn:aws:billing::123456789101:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899",
    #     resource_tags: [
    #       {
    #         key: "ExampleTagKey",
    #         value: "ExampleTagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     resource_tags: [ # required
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue"
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

    # <p> Removes one or more tags from a resource. Specify only tag keys in your request. Don't specify the value. </p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource. </p>
    # @option params [Array<String>] :resource_tag_keys
    #   <p> A list of tag key value pairs that are associated with the resource. </p>
    # @example Invoke UntagResource
    #   # Example operation for untag_resource
    #   params = {
    #     resource_arn: "arn:aws:billing::123456789101:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899",
    #     resource_tag_keys: [
    #       "ExampleTagKey"
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     resource_tag_keys: ["ResourceTagKey"], # required
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

    # <p>An API to update the attributes of the billing view. </p>
    # @param [Hash, Types::UpdateBillingViewRequest] params
    # @option params [String] :arn
    #   <p> The Amazon Resource Name (ARN) that can be used to uniquely identify the billing view. </p>
    # @option params [String] :name
    #   <p> The name of the billing view. </p>
    # @option params [String] :description
    #   <p> The description of the billing view. </p>
    # @option params [Types::Expression] :data_filter_expression
    #   <p>See <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_billing_Expression.html">Expression</a>. Billing view only supports <code>LINKED_ACCOUNT</code> and <code>Tags</code>. </p>
    # @example Invoke UpdateBillingView
    #   # Example operation for update_billing_view
    #   params = {
    #     name: "Example Custom Billing View",
    #     arn: "arn:aws:billing::123456789101:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899",
    #     description: "Custom Billing View Example -- updated description",
    #     data_filter_expression: {
    #       dimensions: {
    #         key: LINKED_ACCOUNT,
    #         values: [
    #           "000000000000"
    #         ]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_billing_view(params, options)
    #   response.to_h #=>
    #   {
    #     arn: "arn:aws:billing::123456789101:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899",
    #     updated_at: Time.parse(1719792001)
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "BillingViewArn", # required
    #     name: "BillingViewName",
    #     description: "BillingViewDescription",
    #     data_filter_expression: {
    #       dimensions: {
    #         key: "LINKED_ACCOUNT" # One of: ["LINKED_ACCOUNT"], # required
    #         values: ["Value"], # required
    #       },
    #       tags: {
    #         key: "TagKey", # required
    #         values: ["Value"], # required
    #       },
    #       time_range: {
    #         begin_date_inclusive: Time.now,
    #         end_date_inclusive: Time.now
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_billing_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "BillingViewArn", # required
    #     updated_at: Time.now
    #   }
    # @return [Types::UpdateBillingViewResponse]
    def update_billing_view(params = {}, options = {})
      request = build_request(:update_billing_view, params)
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
      context[:gem_name] = 'aws-sdk-billing'
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
