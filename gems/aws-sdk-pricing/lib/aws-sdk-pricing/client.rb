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
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

module Aws::Pricing
  # An API client for Aws::Pricing.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSPriceListService

    add_plugin(::Aws::Pricing::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Pricing::EndpointProvider)
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

    # <p>Returns the metadata for one service or a list of the metadata for all services. Use
    #          this without a service code to get the service codes for all services.
    #          Use it with a service code, such as <code>AmazonEC2</code>, to get information specific to 
    #          that service, such as the attribute 
    #          names available for that service. For example, some of the attribute names available for EC2 are 
    #          <code>volumeType</code>, <code>maxIopsVolume</code>, <code>operation</code>,
    #          <code>locationType</code>, and <code>instanceCapacity10xlarge</code>.</p>
    # @param [Hash, Types::DescribeServicesRequest] params
    # @option params [String] :service_code
    #   <p>The code for the service whose information you want to retrieve, such as <code>AmazonEC2</code>.
    #             You can use 
    #            the <code>ServiceCode</code> to filter the results in a <code>GetProducts</code> call.
    #         To retrieve a list of all services, leave this blank.</p>
    # @option params [String] :format_version
    #   <p>The format version that you want the response to be in.</p>
    #            <p>Valid values are: <code>aws_v1</code>
    #            </p>
    # @option params [String] :next_token
    #   <p>The pagination token that indicates the next set of results that you want to retrieve.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want returned in the response.</p>
    # @example To retrieve a list of services and service codes
    #   # Retrieves the service for the given Service Code.
    #   params = {
    #     service_code: "AmazonEC2",
    #     format_version: "aws_v1",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_services(params, options)
    #   response.to_h #=>
    #   {
    #     format_version: "aws_v1",
    #     next_token: "abcdefg123",
    #     services: [
    #       {
    #         attribute_names: [
    #           "volumeType",
    #           "maxIopsvolume",
    #           "instanceCapacity10xlarge",
    #           "locationType",
    #           "operation"
    #         ],
    #         service_code: "AmazonEC2"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     service_code: "String",
    #     format_version: "FormatVersion",
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_services(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     services: [
    #       {
    #         service_code: "String", # required
    #         attribute_names: ["String"]
    #       }
    #     ],
    #     format_version: "FormatVersion",
    #     next_token: "String"
    #   }
    # @return [Types::DescribeServicesResponse]
    def describe_services(params = {}, options = {})
      request = build_request(:describe_services, params)
      request.send_request(options)
    end

    # <p>Returns a list of attribute values. Attributes are similar to the details 
    #           in a Price List API offer file. For a list of available attributes, see 
    #          <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/reading-an-offer.html#pps-defs">Offer File Definitions</a>
    #          in the <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-what-is.html">Billing and Cost Management User Guide</a>.</p>
    # @param [Hash, Types::GetAttributeValuesRequest] params
    # @option params [String] :service_code
    #   <p>The service code for the service whose attributes you want to retrieve. For example, if you want 
    #             the retrieve an EC2 attribute, use <code>AmazonEC2</code>.</p>
    # @option params [String] :attribute_name
    #   <p>The name of the attribute that you want to retrieve the values for, such as <code>volumeType</code>.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that indicates the next set of results that you want to retrieve.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in response.</p>
    # @example To retrieve a list of attribute values
    #   # This operation returns a list of values available for the given attribute.
    #   params = {
    #     service_code: "AmazonEC2",
    #     attribute_name: "volumeType",
    #     max_results: 2
    #   }
    #   options = {}
    #   response = client.get_attribute_values(params, options)
    #   response.to_h #=>
    #   {
    #     next_token: "GpgauEXAMPLEezucl5LV0w==:7GzYJ0nw0DBTJ2J66EoTIIynE6O1uXwQtTRqioJzQadBnDVgHPzI1en4BUQnPCLpzeBk9RQQAWaFieA4+DapFAGLgk+Z/9/cTw9GldnPOHN98+FdmJP7wKU3QQpQ8MQr5KOeBkIsAqvAQYdL0DkL7tHwPtE5iCEByAmg9gcC/yBU1vAOsf7R3VaNN4M5jMDv3woSWqASSIlBVB6tgW78YL22KhssoItM/jWW+aP6Jqtq4mldxp/ct6DWAl+xLFwHU/CbketimPPXyqHF3/UXDw==",
    #     attribute_values: [
    #       {
    #         value: "Throughput Optimized HDD"
    #       },
    #       {
    #         value: "Provisioned IOPS"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     service_code: "String", # required
    #     attribute_name: "String", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_attribute_values(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attribute_values: [
    #       {
    #         value: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::GetAttributeValuesResponse]
    def get_attribute_values(params = {}, options = {})
      request = build_request(:get_attribute_values, params)
      request.send_request(options)
    end

    # <p>
    #             <i>
    #                <b>This feature is in preview release and is subject to change. Your use of Amazon Web Services Price List API is subject to the Beta Service Participation terms of the <a href="https://aws.amazon.com/service-terms/">Amazon Web Services Service Terms</a> (Section 1.10).</b>
    #             </i>
    #          </p>
    #          <p>This returns the URL that you can retrieve your Price List file from. This URL is based
    #          on the <code>PriceListArn</code> and <code>FileFormat</code> that you retrieve from the
    #             <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_ListPriceLists.html">ListPriceLists</a> response. </p>
    # @param [Hash, Types::GetPriceListFileUrlRequest] params
    # @option params [String] :price_list_arn
    #   <p>The unique identifier that maps to where your Price List files are located.
    #               <code>PriceListArn</code> can be obtained from the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_ListPriceLists.html">ListPriceLists</a> response. </p>
    # @option params [String] :file_format
    #   <p>The format that you want to retrieve your Price List files in. The
    #               <code>FileFormat</code> can be obtained from the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_ListPriceLists.html">ListPriceLists</a> response. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     price_list_arn: "PriceListArn", # required
    #     file_format: "FileFormat", # required
    #   }
    #   options = {}
    #   response = client.get_price_list_file_url(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     url: "String"
    #   }
    # @return [Types::GetPriceListFileUrlResponse]
    def get_price_list_file_url(params = {}, options = {})
      request = build_request(:get_price_list_file_url, params)
      request.send_request(options)
    end

    # <p>Returns a list of all products that match the filter criteria.</p>
    # @param [Hash, Types::GetProductsRequest] params
    # @option params [String] :service_code
    #   <p>The code for the service whose products you want to retrieve. </p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>The list of filters that limit the returned products. only products that match all filters
    #            are returned.</p>
    # @option params [String] :format_version
    #   <p>The format version that you want the response to be in.</p>
    #            <p>Valid values are: <code>aws_v1</code>
    #            </p>
    # @option params [String] :next_token
    #   <p>The pagination token that indicates the next set of results that you want to retrieve.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_code: "String", # required
    #     filters: [
    #       {
    #         type: "TERM_MATCH" # One of: ["TERM_MATCH", "EQUALS", "CONTAINS", "ANY_OF", "NONE_OF"], # required
    #         field: "Field", # required
    #         value: "Value", # required
    #       }
    #     ],
    #     format_version: "FormatVersion",
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_products(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     format_version: "FormatVersion",
    #     price_list: ["SynthesizedJsonPriceListJsonItem"],
    #     next_token: "String"
    #   }
    # @return [Types::GetProductsResponse]
    def get_products(params = {}, options = {})
      request = build_request(:get_products, params)
      request.send_request(options)
    end

    # <p>
    #             <i>
    #                <b>This feature is in preview release and is subject to change. Your use of Amazon Web Services Price List API is subject to the Beta Service Participation terms of the <a href="https://aws.amazon.com/service-terms/">Amazon Web Services Service Terms</a> (Section 1.10).</b>
    #             </i>
    #          </p>
    #          <p>This returns a list of Price List references that the requester if authorized to view,
    #          given a <code>ServiceCode</code>, <code>CurrencyCode</code>, and an
    #             <code>EffectiveDate</code>. Use without a <code>RegionCode</code> filter to list Price
    #          List references from all available Amazon Web Services Regions. Use with a
    #             <code>RegionCode</code> filter to get the Price List reference that's specific to a
    #          specific Amazon Web Services Region. You can use the <code>PriceListArn</code> from the
    #          response to get your preferred Price List files through the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_GetPriceListFileUrl.html">GetPriceListFileUrl</a> API.</p>
    # @param [Hash, Types::ListPriceListsRequest] params
    # @option params [String] :service_code
    #   <p>The service code or the Savings Plan service code for the attributes that
    #            you want to retrieve. For example, to get the list of applicable Amazon EC2 price
    #            lists, use <code>AmazonEC2</code>. For a full list of service codes containing On-Demand
    #            and Reserved Instance (RI) pricing, use the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_DescribeServices.html#awscostmanagement-pricing_DescribeServices-request-FormatVersion">DescribeServices</a> API.</p>
    #            <p>To retrieve the Reserved Instance and Compute Savings Plan price lists,
    #            use <code>ComputeSavingsPlans</code>. </p>
    #            <p>To retrieve Machine Learning Savings Plans price lists, use
    #               <code>MachineLearningSavingsPlans</code>. </p>
    # @option params [Time] :effective_date
    #   <p>The date that the Price List file prices are effective from. </p>
    # @option params [String] :region_code
    #   <p>This is used to filter the Price List by Amazon Web Services Region. For example, to get
    #            the price list only for the <code>US East (N. Virginia)</code> Region, use
    #               <code>us-east-1</code>. If nothing is specified, you retrieve price lists for all
    #            applicable Regions. The available <code>RegionCode</code> list can be retrieved from <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_GetAttributeValues.html">GetAttributeValues</a> API.</p>
    # @option params [String] :currency_code
    #   <p>The three alphabetical character ISO-4217 currency code that the Price List files are
    #            denominated in. </p>
    # @option params [String] :next_token
    #   <p>The pagination token that indicates the next set of results that you want to retrieve. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_code: "ServiceCode", # required
    #     effective_date: Time.now, # required
    #     region_code: "RegionCode",
    #     currency_code: "CurrencyCode", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_price_lists(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     price_lists: [
    #       {
    #         price_list_arn: "PriceListArn",
    #         region_code: "RegionCode",
    #         currency_code: "CurrencyCode",
    #         file_formats: ["FileFormat"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListPriceListsResponse]
    def list_price_lists(params = {}, options = {})
      request = build_request(:list_price_lists, params)
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
      context[:gem_name] = 'aws-sdk-pricing'
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
