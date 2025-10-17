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

module Aws::MarketplaceMetering
  # An API client for Aws::MarketplaceMetering.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSMPMeteringService

    add_plugin(::Aws::MarketplaceMetering::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::MarketplaceMetering::EndpointProvider)
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

    # <important>
    #             <p>
    #                 The <code>CustomerIdentifier</code> parameter is scheduled for deprecation. Use <code>CustomerAWSAccountID</code> instead.</p>
    #             <p>These parameters are mutually exclusive. You can't specify both <code>CustomerIdentifier</code> and <code>CustomerAWSAccountID</code> in the same request.
    #             </p>
    #          </important>
    #          <p>To post metering records for customers, SaaS applications call
    #         <code>BatchMeterUsage</code>, which is used for metering SaaS flexible
    #       consumption pricing (FCP). Identical requests are idempotent and can be
    #       retried with the same records or a subset of records. Each
    #         <code>BatchMeterUsage</code> request is for only one product. If you
    #       want to meter usage for multiple products, you must make multiple
    #         <code>BatchMeterUsage</code> calls.</p>
    #          <p>Usage records should be submitted in quick succession following a
    #       recorded event. Usage records aren't accepted 6 hours or more after an
    #       event.</p>
    #          <p>
    #             <code>BatchMeterUsage</code> can process up to 25
    #         <code>UsageRecords</code> at a time, and each request must be less than
    #       1 MB in size. Optionally, you can have multiple usage allocations for
    #       usage data that's split into buckets according to predefined tags.</p>
    #          <p>
    #             <code>BatchMeterUsage</code> returns a list of
    #         <code>UsageRecordResult</code> objects, which have each
    #         <code>UsageRecord</code>. It also returns a list of
    #         <code>UnprocessedRecords</code>, which indicate errors on the service
    #       side that should be retried.</p>
    #          <p>For Amazon Web Services Regions that support <code>BatchMeterUsage</code>, see <a href="https://docs.aws.amazon.com/marketplace/latest/APIReference/metering-regions.html#batchmeterusage-region-support">BatchMeterUsage Region support</a>.
    #       </p>
    #          <note>
    #             <p>For an example of <code>BatchMeterUsage</code>, see <a href="https://docs.aws.amazon.com/marketplace/latest/userguide/saas-code-examples.html#saas-batchmeterusage-example"> BatchMeterUsage code example</a> in the <i>Amazon Web Services Marketplace Seller
    #           Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::BatchMeterUsageRequest] params
    # @option params [Array<Types::UsageRecord>] :usage_records
    #   <p>The set of <code>UsageRecords</code> to submit. <code>BatchMeterUsage</code> accepts
    #               up to 25 <code>UsageRecords</code> at a time.</p>
    # @option params [String] :product_code
    #   <p>Product code is used to uniquely identify a product in Amazon Web Services Marketplace. The product code should
    #               be the same as the one used during the publishing of a new product.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     usage_records: [ # required
    #       {
    #         timestamp: Time.now, # required
    #         customer_identifier: "CustomerIdentifier",
    #         dimension: "UsageDimension", # required
    #         quantity: 1,
    #         usage_allocations: [
    #           {
    #             allocated_usage_quantity: 1, # required
    #             tags: [
    #               {
    #                 key: "TagKey", # required
    #                 value: "TagValue", # required
    #               }
    #             ]
    #           }
    #         ],
    #         customer_aws_account_id: "CustomerAWSAccountId"
    #       }
    #     ],
    #     product_code: "ProductCode", # required
    #   }
    #   options = {}
    #   response = client.batch_meter_usage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [
    #       {
    #         usage_record: {
    #           timestamp: Time.now, # required
    #           customer_identifier: "CustomerIdentifier",
    #           dimension: "UsageDimension", # required
    #           quantity: 1,
    #           usage_allocations: [
    #             {
    #               allocated_usage_quantity: 1, # required
    #               tags: [
    #                 {
    #                   key: "TagKey", # required
    #                   value: "TagValue", # required
    #                 }
    #               ]
    #             }
    #           ],
    #           customer_aws_account_id: "CustomerAWSAccountId"
    #         },
    #         metering_record_id: "String",
    #         status: "Success" # One of: ["Success", "CustomerNotSubscribed", "DuplicateRecord"]
    #       }
    #     ],
    #     unprocessed_records: [
    #       {
    #         timestamp: Time.now, # required
    #         customer_identifier: "CustomerIdentifier",
    #         dimension: "UsageDimension", # required
    #         quantity: 1,
    #         usage_allocations: [
    #           {
    #             allocated_usage_quantity: 1, # required
    #             tags: [
    #               {
    #                 key: "TagKey", # required
    #                 value: "TagValue", # required
    #               }
    #             ]
    #           }
    #         ],
    #         customer_aws_account_id: "CustomerAWSAccountId"
    #       }
    #     ]
    #   }
    # @return [Types::BatchMeterUsageResult]
    def batch_meter_usage(params = {}, options = {})
      request = build_request(:batch_meter_usage, params)
      request.send_request(options)
    end

    # <p>API to emit metering records. For identical requests, the API is
    #       idempotent and returns the metering record ID. This is used for metering
    #       flexible consumption pricing (FCP) Amazon Machine Images (AMI) and
    #       container products.</p>
    #          <p>
    #             <code>MeterUsage</code> is authenticated on the buyer's Amazon Web Services account using
    #             credentials from the Amazon EC2 instance, Amazon ECS task, or Amazon EKS pod.</p>
    #          <p>
    #             <code>MeterUsage</code> can optionally include multiple usage allocations, to provide
    #             customers with usage data split into buckets by tags that you define (or allow the
    #             customer to define).</p>
    #          <p>Usage records are expected to be submitted as quickly as possible after the event that
    #             is being recorded, and are not accepted more than 6 hours after the event.</p>
    #          <p>For Amazon Web Services Regions that support <code>MeterUsage</code>, see <a href="https://docs.aws.amazon.com/marketplace/latest/APIReference/metering-regions.html#meterusage-region-support-ec2">MeterUsage Region support for Amazon EC2</a> and <a href="https://docs.aws.amazon.com/marketplace/latest/APIReference/metering-regions.html#meterusage-region-support-ecs-eks">MeterUsage Region support for Amazon ECS and Amazon EKS</a>. </p>
    # @param [Hash, Types::MeterUsageRequest] params
    # @option params [String] :product_code
    #   <p>Product code is used to uniquely identify a product in Amazon Web Services Marketplace. The product code
    #               should be the same as the one used during the publishing of a new product.</p>
    # @option params [Time] :timestamp
    #   <p>Timestamp, in UTC, for which the usage is being reported. Your application can meter
    #               usage for up to six hours in the past. Make sure the <code>timestamp</code> value is not
    #               before the start of the software usage.</p>
    # @option params [String] :usage_dimension
    #   <p>It will be one of the fcp dimension name provided during the publishing of the
    #               product.</p>
    # @option params [Integer] :usage_quantity
    #   <p>Consumption value for the hour. Defaults to <code>0</code> if not specified.</p>
    # @option params [Boolean] :dry_run
    #   <p>Checks whether you have the permissions required for the action, but does not make the
    #               request. If you have the permissions, the request returns <code>DryRunOperation</code>;
    #               otherwise, it returns <code>UnauthorizedException</code>. Defaults to <code>false</code>
    #               if not specified.</p>
    # @option params [Array<Types::UsageAllocation>] :usage_allocations
    #   <p>The set of <code>UsageAllocations</code> to submit.</p>
    #            <p>The sum of all <code>UsageAllocation</code> quantities must equal the
    #                   <code>UsageQuantity</code> of the <code>MeterUsage</code> request, and each
    #                   <code>UsageAllocation</code> must have a unique set of tags (include no
    #               tags).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     product_code: "ProductCode", # required
    #     timestamp: Time.now, # required
    #     usage_dimension: "UsageDimension", # required
    #     usage_quantity: 1,
    #     dry_run: false,
    #     usage_allocations: [
    #       {
    #         allocated_usage_quantity: 1, # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.meter_usage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metering_record_id: "String"
    #   }
    # @return [Types::MeterUsageResult]
    def meter_usage(params = {}, options = {})
      request = build_request(:meter_usage, params)
      request.send_request(options)
    end

    # <p>Paid container software products sold through Amazon Web Services Marketplace must integrate with the Amazon Web Services Marketplace
    #             Metering Service and call the <code>RegisterUsage</code> operation for software
    #             entitlement and metering. Free and BYOL products for Amazon ECS or Amazon EKS aren't required to call <code>RegisterUsage</code>, but you may choose to
    #             do so if you would like to receive usage data in your seller reports. The sections below
    #             explain the behavior of <code>RegisterUsage</code>. <code>RegisterUsage</code> performs
    #             two primary functions: metering and entitlement.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <i>Entitlement</i>: <code>RegisterUsage</code> allows you to
    #                     verify that the customer running your paid software is subscribed to your
    #                     product on Amazon Web Services Marketplace, enabling you to guard against unauthorized use. Your container
    #                     image that integrates with <code>RegisterUsage</code> is only required to guard
    #                     against unauthorized use at container startup, as such a
    #                         <code>CustomerNotSubscribedException</code> or
    #                         <code>PlatformNotSupportedException</code> will only be thrown on the
    #                     initial call to <code>RegisterUsage</code>. Subsequent calls from the same
    #                         Amazon ECS task instance (e.g. task-id) or Amazon EKS pod
    #                     will not throw a <code>CustomerNotSubscribedException</code>, even if the
    #                     customer unsubscribes while the Amazon ECS task or Amazon EKS
    #                     pod is still running.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <i>Metering</i>: <code>RegisterUsage</code> meters software use
    #                     per ECS task, per hour, or per pod for Amazon EKS with usage prorated to
    #                     the second. A minimum of 1 minute of usage applies to tasks that are short
    #                     lived. For example, if a customer has a 10 node Amazon ECS or Amazon EKS cluster and a service configured as a Daemon Set, then Amazon ECS or Amazon EKS will launch a task on all 10 cluster nodes
    #                     and the customer will be charged for 10 tasks. Software metering
    #                     is handled by the Amazon Web Services Marketplace metering control plane—your software is
    #                     not required to perform metering-specific actions other than to call
    #                         <code>RegisterUsage</code> to commence metering.
    #                     The Amazon Web Services Marketplace metering control plane will also bill customers for
    #                     running ECS tasks and Amazon EKS pods, regardless of the customer's
    #                     subscription state, which removes the need for your software to run entitlement
    #                     checks at runtime. For containers, <code>RegisterUsage</code> should be called
    #                     immediately at launch. If you don’t register the container within the first 6 hours
    #                     of the launch, Amazon Web Services Marketplace Metering Service doesn’t provide any metering
    #                     guarantees for previous months. Metering will continue, however, for the
    #                     current month forward until the container ends. <code>RegisterUsage</code> is
    #                     for metering paid hourly container products.</p>
    #                <p>For Amazon Web Services Regions that support <code>RegisterUsage</code>, see <a href="https://docs.aws.amazon.com/marketplace/latest/APIReference/metering-regions.html#registerusage-region-support">RegisterUsage Region support</a>.
    #               </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::RegisterUsageRequest] params
    # @option params [String] :product_code
    #   <p>Product code is used to uniquely identify a product in Amazon Web Services Marketplace. The product code should
    #               be the same as the one used during the publishing of a new product.</p>
    # @option params [Integer] :public_key_version
    #   <p>Public Key Version provided by Amazon Web Services Marketplace</p>
    # @option params [String] :nonce
    #   <p>(Optional) To scope down the registration to a specific running software instance and
    #               guard against replay attacks.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     product_code: "ProductCode", # required
    #     public_key_version: 1, # required
    #     nonce: "Nonce"
    #   }
    #   options = {}
    #   response = client.register_usage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     public_key_rotation_timestamp: Time.now,
    #     signature: "NonEmptyString"
    #   }
    # @return [Types::RegisterUsageResult]
    def register_usage(params = {}, options = {})
      request = build_request(:register_usage, params)
      request.send_request(options)
    end

    # <p>
    #             <code>ResolveCustomer</code> is called by a SaaS application during the registration
    #             process. When a buyer visits your website during the registration process, the buyer
    #             submits a registration token through their browser. The registration token is resolved
    #             through this API to obtain a <code>CustomerIdentifier</code> along with the
    #                 <code>CustomerAWSAccountId</code> and <code>ProductCode</code>.</p>
    #          <note>
    #             <p>To successfully resolve the token, the API must be called from the account that was used to publish the SaaS
    #                 application. For an example of using <code>ResolveCustomer</code>, see <a href="https://docs.aws.amazon.com/marketplace/latest/userguide/saas-code-examples.html#saas-resolvecustomer-example"> ResolveCustomer code example</a> in the <i>Amazon Web Services Marketplace Seller
    #                     Guide</i>.</p>
    #          </note>
    #          <p>Permission is required for this operation. Your IAM role or user performing this
    #             operation requires a policy to allow the <code>aws-marketplace:ResolveCustomer</code>
    #             action. For more information, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsmarketplacemeteringservice.html">Actions, resources, and condition keys for Amazon Web Services Marketplace Metering Service</a> in
    #             the <i>Service Authorization Reference</i>.</p>
    #          <p>For Amazon Web Services Regions that support <code>ResolveCustomer</code>, see <a href="https://docs.aws.amazon.com/marketplace/latest/APIReference/metering-regions.html#resolvecustomer-region-support">ResolveCustomer Region support</a>.
    #       </p>
    # @param [Hash, Types::ResolveCustomerRequest] params
    # @option params [String] :registration_token
    #   <p>When a buyer visits your website during the registration process, the buyer submits a
    #               registration token through the browser. The registration token is resolved to obtain a
    #                   <code>CustomerIdentifier</code> along with the <code>CustomerAWSAccountId</code> and
    #                   <code>ProductCode</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registration_token: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.resolve_customer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     customer_identifier: "CustomerIdentifier",
    #     product_code: "ProductCode",
    #     customer_aws_account_id: "CustomerAWSAccountId"
    #   }
    # @return [Types::ResolveCustomerResult]
    def resolve_customer(params = {}, options = {})
      request = build_request(:resolve_customer, params)
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
      context[:gem_name] = 'aws-sdk-marketplacemetering'
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
