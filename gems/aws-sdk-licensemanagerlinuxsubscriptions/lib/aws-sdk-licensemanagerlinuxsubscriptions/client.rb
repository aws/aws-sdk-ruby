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
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:licensemanagerlinuxsubscriptions)

module Aws::LicenseManagerLinuxSubscriptions
  # An API client for Aws::LicenseManagerLinuxSubscriptions.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::LicenseManagerLinuxSubscriptions
    @identifier = :licensemanagerlinuxsubscriptions

    add_plugin(::Aws::LicenseManagerLinuxSubscriptions::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::LicenseManagerLinuxSubscriptions::EndpointProvider)
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
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
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
    # @option options [String] :retry_mode (standard)
    #  Specifies which retry algorithm to use. Values are:
    #  
    #  * `standard` - A standardized set of retry rules across the AWS SDKs.
    #    This includes support for retry quotas, which limit the number of
    #    unsuccessful retries a client can make. This is the default
    #    value if no retry mode is provided.
    #  
    #  * `adaptive` - A retry mode that includes all the functionality of
    #    `standard` mode along with automatic client side throttling.
    # @option options [Object] :retry_strategy
    #  The retry strategy used by the client. If not provided, a default strategy is built
    #  based on `:retry_mode` — either `Standard` or `Adaptive`.
    #  
    #  A custom strategy must respond to:
    #  * `#acquire_initial_retry_token` - returns a token
    #  * `#refresh_retry_token(token, error_info)` - returns a token or nil
    #  * `#record_success(token)` - records a successful request
    #  * `#request_bookkeeping(error_info = nil)` - updates internal state
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

    # <p>Remove a third-party subscription provider from the Bring Your Own License (BYOL) subscriptions 
    # 			registered to your account.</p>
    # @param [Hash, Types::DeregisterSubscriptionProviderRequest] params
    # @option params [String] :subscription_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the subscription provider resource to deregister.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscription_provider_arn: "SubscriptionProviderArn", # required
    #   }
    #   options = {}
    #   response = client.deregister_subscription_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeregisterSubscriptionProviderResponse]
    def deregister_subscription_provider(params = {}, options = {})
      request = build_request(:deregister_subscription_provider, params)
      request.send_request(options)
    end

    # <p>Get details for a Bring Your Own License (BYOL) subscription that's registered to your account.</p>
    # @param [Hash, Types::GetRegisteredSubscriptionProviderRequest] params
    # @option params [String] :subscription_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the BYOL registration resource to get details for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscription_provider_arn: "SubscriptionProviderArn", # required
    #   }
    #   options = {}
    #   response = client.get_registered_subscription_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription_provider_arn: "SubscriptionProviderArn",
    #     subscription_provider_source: "SubscriptionProviderSource",
    #     secret_arn: "SecretArn",
    #     subscription_provider_status: "SubscriptionProviderStatus",
    #     subscription_provider_status_message: "String",
    #     last_successful_data_retrieval_time: "String"
    #   }
    # @return [Types::GetRegisteredSubscriptionProviderResponse]
    def get_registered_subscription_provider(params = {}, options = {})
      request = build_request(:get_registered_subscription_provider, params)
      request.send_request(options)
    end

    # <p>Lists the Linux subscriptions service settings for your account.</p>
    # @param [Hash, Types::GetServiceSettingsInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_service_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     linux_subscriptions_discovery: "LinuxSubscriptionsDiscovery",
    #     linux_subscriptions_discovery_settings: {
    #       source_regions: ["String"], # required
    #       organization_integration: "OrganizationIntegration", # required
    #     },
    #     status: "Status",
    #     status_message: {
    #       "String" => "String"
    #     },
    #     home_regions: ["String"]
    #   }
    # @return [Types::GetServiceSettingsOutput]
    def get_service_settings(params = {}, options = {})
      request = build_request(:get_service_settings, params)
      request.send_request(options)
    end

    # <p>Lists the running Amazon EC2 instances that were discovered with commercial Linux
    #       subscriptions.</p>
    # @param [Hash, Types::ListLinuxSubscriptionInstancesInput] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>An array of structures that you can use to filter the results by your specified criteria. 
    #       	For example, you can specify <code>Region</code> in the <code>Name</code>, with the 
    #       	<code>contains</code> operator to list all subscriptions that match a partial string in the 
    #       	<code>Value</code>, such as <code>us-west</code>.</p>
    #            <p>For each filter, you can specify one of the following values for the <code>Name</code> key 
    #       	to streamline results:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AccountID</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmiID</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DualSubscription</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InstanceID</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InstanceType</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ProductCode</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Region</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UsageOperation</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For each filter, you can use one of the following <code>Operator</code> values to 
    #     		define the behavior of the filter:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>contains</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>equals</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Notequal</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>The maximum items to return in a request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This 
    #   	is the nextToken from a previously truncated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #         operator: "Operator"
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_linux_subscription_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instances: [
    #       {
    #         ami_id: "String",
    #         instance_id: "String",
    #         instance_type: "String",
    #         account_id: "String",
    #         status: "String",
    #         region: "String",
    #         usage_operation: "String",
    #         product_code: ["String"],
    #         last_updated_time: "String",
    #         subscription_name: "String",
    #         os_version: "String",
    #         subscription_provider_create_time: "String",
    #         subscription_provider_update_time: "String",
    #         dual_subscription: "String",
    #         registered_with_subscription_provider: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListLinuxSubscriptionInstancesOutput]
    def list_linux_subscription_instances(params = {}, options = {})
      request = build_request(:list_linux_subscription_instances, params)
      request.send_request(options)
    end

    # <p>Lists the Linux subscriptions that have been discovered. If you have linked your
    #       organization, the returned results will include data aggregated across your accounts in
    #       Organizations.</p>
    # @param [Hash, Types::ListLinuxSubscriptionsInput] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>An array of structures that you can use to filter the results to those that match one or
    #         more sets of key-value pairs that you specify. For example, you can filter by the name of
    #           <code>Subscription</code> with an optional operator to see subscriptions that match,
    #         partially match, or don't match a certain subscription's name.</p>
    #            <p>The valid names for this filter are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Subscription</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The valid Operators for this filter are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>contains</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>equals</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Notequal</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>The maximum items to return in a request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This 
    #   	is the nextToken from a previously truncated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #         operator: "Operator"
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_linux_subscriptions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscriptions: [
    #       {
    #         name: "String",
    #         type: "String",
    #         instance_count: 1
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListLinuxSubscriptionsOutput]
    def list_linux_subscriptions(params = {}, options = {})
      request = build_request(:list_linux_subscriptions, params)
      request.send_request(options)
    end

    # <p>List Bring Your Own License (BYOL) subscription registration resources for your account.</p>
    # @param [Hash, Types::ListRegisteredSubscriptionProvidersRequest] params
    # @option params [Array<String>] :subscription_provider_sources
    #   <p>To filter your results, specify which subscription providers to return 
    #   			in the list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum items to return in a request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This 
    #   	is the nextToken from a previously truncated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscription_provider_sources: ["SubscriptionProviderSource"],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_registered_subscription_providers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registered_subscription_providers: [
    #       {
    #         subscription_provider_arn: "SubscriptionProviderArn",
    #         subscription_provider_source: "SubscriptionProviderSource",
    #         secret_arn: "SecretArn",
    #         subscription_provider_status: "SubscriptionProviderStatus",
    #         subscription_provider_status_message: "String",
    #         last_successful_data_retrieval_time: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListRegisteredSubscriptionProvidersResponse]
    def list_registered_subscription_providers(params = {}, options = {})
      request = build_request(:list_registered_subscription_providers, params)
      request.send_request(options)
    end

    # <p>List the metadata tags that are assigned to the 
    # 			specified Amazon Web Services resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which to list metadata tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "SubscriptionProviderArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Register the supported third-party subscription provider for your Bring Your Own License (BYOL) subscription.</p>
    # @param [Hash, Types::RegisterSubscriptionProviderRequest] params
    # @option params [String] :subscription_provider_source
    #   <p>The supported Linux subscription provider to register.</p>
    # @option params [String] :secret_arn
    #   <p>The Amazon Resource Name (ARN) of the secret where you've stored your subscription provider's access token. For 
    #   			RHEL subscriptions managed through the Red Hat Subscription Manager (RHSM), the secret contains 
    #   			your Red Hat Offline token.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The metadata tags to assign to your registered Linux subscription provider 
    #   			resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscription_provider_source: "SubscriptionProviderSource", # required
    #     secret_arn: "SecretArn", # required
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.register_subscription_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription_provider_source: "SubscriptionProviderSource",
    #     subscription_provider_arn: "String",
    #     subscription_provider_status: "SubscriptionProviderStatus"
    #   }
    # @return [Types::RegisterSubscriptionProviderResponse]
    def register_subscription_provider(params = {}, options = {})
      request = build_request(:register_subscription_provider, params)
      request.send_request(options)
    end

    # <p>Add metadata tags to the specified Amazon Web Services resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services resource to which to add the specified 
    #   			metadata tags.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The metadata tags to assign to the Amazon Web Services resource. Tags are 
    #   			formatted as key value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "SubscriptionProviderArn", # required
    #     tags: { # required
    #       "String" => "String"
    #     }
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

    # <p>Remove one or more metadata tag from the specified Amazon Web Services resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services resource to remove the metadata tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of metadata tag keys to remove from the requested 
    #   			resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "SubscriptionProviderArn", # required
    #     tag_keys: ["String"], # required
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

    # <p>Updates the service settings for Linux subscriptions.</p>
    # @param [Hash, Types::UpdateServiceSettingsInput] params
    # @option params [String] :linux_subscriptions_discovery
    #   <p>Describes if the discovery of Linux subscriptions is enabled.</p>
    # @option params [Types::LinuxSubscriptionsDiscoverySettings] :linux_subscriptions_discovery_settings
    #   <p>The settings defined for Linux subscriptions discovery. The settings include if Organizations
    #         integration has been enabled, and which Regions data will be aggregated from.</p>
    # @option params [Boolean] :allow_update
    #   <p>Describes if updates are allowed to the service settings for Linux subscriptions. If you
    #         allow updates, you can aggregate Linux subscription data in more than one home Region.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     linux_subscriptions_discovery: "LinuxSubscriptionsDiscovery", # required
    #     linux_subscriptions_discovery_settings: { # required
    #       source_regions: ["String"], # required
    #       organization_integration: "OrganizationIntegration", # required
    #     },
    #     allow_update: false
    #   }
    #   options = {}
    #   response = client.update_service_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     linux_subscriptions_discovery: "LinuxSubscriptionsDiscovery",
    #     linux_subscriptions_discovery_settings: {
    #       source_regions: ["String"], # required
    #       organization_integration: "OrganizationIntegration", # required
    #     },
    #     status: "Status",
    #     status_message: {
    #       "String" => "String"
    #     },
    #     home_regions: ["String"]
    #   }
    # @return [Types::UpdateServiceSettingsOutput]
    def update_service_settings(params = {}, options = {})
      request = build_request(:update_service_settings, params)
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
      context[:gem_name] = 'aws-sdk-licensemanagerlinuxsubscriptions'
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
