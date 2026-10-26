# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/transport'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/protocol'
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
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'
require 'smithy-client/rpc_v2_cbor'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:partnercentralrevenuemeasurement)

module Aws::PartnerCentralRevenueMeasurement
  # An API client for Aws::PartnerCentralRevenueMeasurement.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::PartnerCentralRevenueMeasurement
    @identifier = :partnercentralrevenuemeasurement

    add_plugin(::Aws::PartnerCentralRevenueMeasurement::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::Transport)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::Protocol)
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
    # @option options [Numeric] :connect_timeout
    #  The number of seconds to wait when opening a connection before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::PartnerCentralRevenueMeasurement::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Boolean] :http_wire_trace
    #  When `true`, HTTP wire trace output is sent to the configured logger.
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
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:rpc_v2_cbor+ (defaults to +:rpc_v2_cbor+).
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [Numeric] :read_timeout
    #  The number of seconds to wait for data to be read before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
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
    # @option options [String] :ssl_ca_bundle
    #  The path to a CA certificate bundle file in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [String] :ssl_ca_directory
    #  The path to a directory of CA certificates in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [OpenSSL::X509::Store] :ssl_ca_store
    #  An in-memory TLS trust store used to verify peer certificates. Defaults to `nil`,
    #  which uses the transport's default trust store.
    # @option options [Boolean] :ssl_verify_peer (true)
    #  When `true` (default), the peer's TLS certificate is verified. Disable only
    #  for debugging, as it is insecure.
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Smithy::Client::NetHTTP::Transport] :transport
    #  The transport used to send requests. Defaults to an HTTP/1.1 transport based on
    #  Net::HTTP ({Smithy::Client::NetHTTP::Transport}), constructed with the resolved
    #  common client transport options. Supply a custom object responding to
    #  `#transmit(request, sink)` and `#transmit_background(request, sink)` (both push
    #  the response into the sink; see {Smithy::Client::Transport}) to swap the transport,
    #  or a directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
    #  caller-supplied transport instance is used as-is.
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

    # <p>Creates a new marketplace revenue share resource in the specified catalog.</p>
    # @param [Hash, Types::CreateMarketplaceRevenueShareInput] params
    # @option params [String] :catalog
    #   <p>The catalog in which to create the marketplace revenue share.</p>
    # @option params [String] :client_token
    #   <p>A unique token to ensure idempotency of the create request.</p>
    # @option params [String] :product_id
    #   <p>The AWS Marketplace product identifier for this revenue share.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags to associate with the marketplace revenue share upon creation.</p>
    # @example Example for CreateMarketplaceRevenueShare
    #   # Example operation for create_marketplace_revenue_share
    #   params = {
    #     catalog: AWS,
    #     product_id: "prod-abc123def4567"
    #   }
    #   options = {}
    #   response = client.create_marketplace_revenue_share(params, options)
    #   response.to_h #=>
    #   {
    #     product_id: "prod-abc123def4567",
    #     arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/marketplace-revenue-share/prod-abc123def4567"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "AWS" # One of: ["AWS", "Sandbox"], # required
    #     client_token: "ClientToken",
    #     product_id: "MarketplaceProductId", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_marketplace_revenue_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     product_id: "MarketplaceProductId", # required
    #     arn: "String", # required
    #     catalog: "AWS" # One of: ["AWS", "Sandbox"],
    #     product_code: "String",
    #     product_name: "String",
    #     created_date: Time.now,
    #     last_modified_date: Time.now,
    #     revision: 1
    #   }
    # @return [Types::CreateMarketplaceRevenueShareOutput]
    def create_marketplace_revenue_share(params = {}, options = {})
      request = build_request(:create_marketplace_revenue_share, params)
      request.send_request(options)
    end

    # <p>Creates a new marketplace revenue share allocation for the specified product.</p>
    # @param [Hash, Types::CreateMarketplaceRevenueShareAllocationInput] params
    # @option params [String] :catalog
    #   <p>The catalog in which to create the allocation.</p>
    # @option params [String] :product_id
    #   <p>The AWS Marketplace product identifier for the parent revenue share.</p>
    # @option params [String] :client_token
    #   <p>A unique token to ensure idempotency of the create request.</p>
    # @option params [String] :effective_from
    #   <p>The effective start date for the allocation. Must be the first day of a month.</p>
    # @option params [String] :effective_until
    #   <p>The effective end date for the allocation. Must be the last day of a month (YYYY-MM-DD). Omit for open-ended allocations.</p>
    # @option params [String] :revenue_share_percent
    #   <p>The revenue share percentage for this allocation.</p>
    # @example Example for CreateMarketplaceRevenueShareAllocation
    #   # Example operation for create_marketplace_revenue_share_allocation
    #   params = {
    #     catalog: AWS,
    #     product_id: "prod-abc123def4567",
    #     effective_from: "2026-07-01",
    #     revenue_share_percent: "15.50"
    #   }
    #   options = {}
    #   response = client.create_marketplace_revenue_share_allocation(params, options)
    #   response.to_h #=>
    #   {
    #     marketplace_revenue_share_allocation_id: "mrsa-abc123def4567",
    #     product_id: "prod-abc123def4567",
    #     arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/marketplace-revenue-share-allocation/mrsa-abc123def4567",
    #     effective_from: "2026-07-01",
    #     revenue_share_percent: "15.50",
    #     status: ACTIVE
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "AWS" # One of: ["AWS", "Sandbox"], # required
    #     product_id: "MarketplaceProductId", # required
    #     client_token: "ClientToken",
    #     effective_from: "AllocationEffectiveDateString", # required
    #     effective_until: "AllocationEffectiveDateString",
    #     revenue_share_percent: "RevenueSharePercent", # required
    #   }
    #   options = {}
    #   response = client.create_marketplace_revenue_share_allocation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marketplace_revenue_share_allocation_id: "MarketplaceRevenueShareAllocationId", # required
    #     product_id: "MarketplaceProductId", # required
    #     product_name: "String",
    #     arn: "String", # required
    #     effective_from: "AllocationEffectiveDateString", # required
    #     effective_until: "AllocationEffectiveDateString",
    #     revenue_share_percent: "RevenueSharePercent", # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #     created_date: Time.now,
    #     last_modified_date: Time.now,
    #     latest_marketplace_revenue_share_revision: "RevisionToken"
    #   }
    # @return [Types::CreateMarketplaceRevenueShareAllocationOutput]
    def create_marketplace_revenue_share_allocation(params = {}, options = {})
      request = build_request(:create_marketplace_revenue_share_allocation, params)
      request.send_request(options)
    end

    # <p>Creates a new revenue attribution record in the specified catalog.</p>
    # @param [Hash, Types::CreateRevenueAttributionInput] params
    # @option params [String] :catalog
    #   <p>The catalog in which to create the revenue attribution.</p>
    # @option params [String] :client_token
    #   <p>A unique token to ensure idempotency of the create request.</p>
    # @option params [String] :name
    #   <p>The name of the revenue attribution. Must be unique within the catalog and the partner's account.</p>
    # @option params [String] :description
    #   <p>A description of the revenue attribution.</p>
    # @option params [String] :tenancy_model
    #   <p>The tenancy model for this revenue attribution.</p>
    # @option params [String] :product_identifier
    #   <p>The unique product identifier in AWS Marketplace. Accepts a product entity ID (e.g., prod-abc123def4567) or a product ARN.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags to associate with the revenue attribution upon creation.</p>
    # @example Example for CreateRevenueAttribution
    #   # Example operation for create_revenue_attribution
    #   params = {
    #     catalog: AWS,
    #     name: "My Revenue Attribution",
    #     tenancy_model: MULTI_TENANT
    #   }
    #   options = {}
    #   response = client.create_revenue_attribution(params, options)
    #   response.to_h #=>
    #   {
    #     id: "ra-0a1b2c3d4e5f6",
    #     arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/revenue-attribution/ra-0a1b2c3d4e5f6",
    #     tenancy_model: MULTI_TENANT
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "AWS" # One of: ["AWS", "Sandbox"], # required
    #     client_token: "ClientToken",
    #     name: "String", # required
    #     description: "String",
    #     tenancy_model: "MULTI_TENANT" # One of: ["MULTI_TENANT", "SINGLE_TENANT"], # required
    #     product_identifier: "String",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_revenue_attribution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "RevenueAttributionId", # required
    #     arn: "String", # required
    #     name: "String",
    #     description: "String",
    #     tenancy_model: "MULTI_TENANT" # One of: ["MULTI_TENANT", "SINGLE_TENANT"], # required
    #     marketplace_product: {
    #       product_id: "String",
    #       product_code: "String",
    #       product_name: "String"
    #     },
    #     revision: "RevisionToken"
    #   }
    # @return [Types::CreateRevenueAttributionOutput]
    def create_revenue_attribution(params = {}, options = {})
      request = build_request(:create_revenue_attribution, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of a specific marketplace revenue share.</p>
    # @param [Hash, Types::GetMarketplaceRevenueShareInput] params
    # @option params [String] :catalog
    #   <p>The catalog that the marketplace revenue share belongs to.</p>
    # @option params [String] :product_id
    #   <p>The AWS Marketplace product identifier of the revenue share to retrieve.</p>
    # @option params [Integer] :revision
    #   <p>The revision of the marketplace revenue share to retrieve. Omit to return the latest revision.</p>
    # @example Example for GetMarketplaceRevenueShare
    #   # Example operation for get_marketplace_revenue_share
    #   params = {
    #     catalog: AWS,
    #     product_id: "prod-abc123def4567"
    #   }
    #   options = {}
    #   response = client.get_marketplace_revenue_share(params, options)
    #   response.to_h #=>
    #   {
    #     product_id: "prod-abc123def4567",
    #     arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/marketplace-revenue-share/prod-abc123def4567",
    #     catalog: AWS
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "AWS" # One of: ["AWS", "Sandbox"], # required
    #     product_id: "MarketplaceProductId", # required
    #     revision: 1
    #   }
    #   options = {}
    #   response = client.get_marketplace_revenue_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     product_id: "MarketplaceProductId", # required
    #     arn: "String", # required
    #     catalog: "AWS" # One of: ["AWS", "Sandbox"], # required
    #     product_code: "String",
    #     product_name: "String",
    #     created_date: Time.now,
    #     last_modified_date: Time.now,
    #     revision: 1,
    #     latest_revision: 1,
    #     total_active_marketplace_revenue_share_allocation_count: 1,
    #     total_marketplace_revenue_share_allocation_count: 1
    #   }
    # @return [Types::GetMarketplaceRevenueShareOutput]
    def get_marketplace_revenue_share(params = {}, options = {})
      request = build_request(:get_marketplace_revenue_share, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of a specific marketplace revenue share allocation.</p>
    # @param [Hash, Types::GetMarketplaceRevenueShareAllocationInput] params
    # @option params [String] :catalog
    #   <p>The catalog that the allocation belongs to.</p>
    # @option params [String] :product_id
    #   <p>The AWS Marketplace product identifier of the parent revenue share.</p>
    # @option params [String] :marketplace_revenue_share_allocation_id
    #   <p>The unique identifier of the allocation to retrieve.</p>
    # @option params [String] :marketplace_revenue_share_revision
    #   <p>The revision of the parent marketplace revenue share at which to retrieve the allocation. Omit to return the latest.</p>
    # @example Example for GetMarketplaceRevenueShareAllocation
    #   # Example operation for get_marketplace_revenue_share_allocation
    #   params = {
    #     catalog: AWS,
    #     product_id: "prod-abc123def4567",
    #     marketplace_revenue_share_allocation_id: "mrsa-abc123def4567"
    #   }
    #   options = {}
    #   response = client.get_marketplace_revenue_share_allocation(params, options)
    #   response.to_h #=>
    #   {
    #     marketplace_revenue_share_allocation_id: "mrsa-abc123def4567",
    #     product_id: "prod-abc123def4567",
    #     arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/marketplace-revenue-share-allocation/mrsa-abc123def4567",
    #     effective_from: "2026-07-01",
    #     revenue_share_percent: "15.50",
    #     status: ACTIVE
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "AWS" # One of: ["AWS", "Sandbox"], # required
    #     product_id: "MarketplaceProductId", # required
    #     marketplace_revenue_share_allocation_id: "MarketplaceRevenueShareAllocationId", # required
    #     marketplace_revenue_share_revision: "RevisionToken"
    #   }
    #   options = {}
    #   response = client.get_marketplace_revenue_share_allocation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marketplace_revenue_share_allocation_id: "MarketplaceRevenueShareAllocationId", # required
    #     product_id: "MarketplaceProductId", # required
    #     product_name: "String",
    #     arn: "String", # required
    #     effective_from: "AllocationEffectiveDateString", # required
    #     effective_until: "AllocationEffectiveDateString",
    #     revenue_share_percent: "RevenueSharePercent", # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #     created_date: Time.now,
    #     last_modified_date: Time.now,
    #     latest_marketplace_revenue_share_revision: "RevisionToken"
    #   }
    # @return [Types::GetMarketplaceRevenueShareAllocationOutput]
    def get_marketplace_revenue_share_allocation(params = {}, options = {})
      request = build_request(:get_marketplace_revenue_share_allocation, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of a specific revenue attribution.</p>
    # @param [Hash, Types::GetRevenueAttributionInput] params
    # @option params [String] :catalog
    #   <p>The catalog that the revenue attribution belongs to.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the revenue attribution to retrieve. Accepts a direct ID or ARN.</p>
    # @option params [String] :revision
    #   <p>The revision of the attribution to retrieve. Omit to return the latest revision.</p>
    # @example Example for GetRevenueAttribution
    #   # Example operation for get_revenue_attribution
    #   params = {
    #     catalog: AWS,
    #     identifier: "ra-0a1b2c3d4e5f6"
    #   }
    #   options = {}
    #   response = client.get_revenue_attribution(params, options)
    #   response.to_h #=>
    #   {
    #     arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/revenue-attribution/ra-0a1b2c3d4e5f6",
    #     id: "ra-0a1b2c3d4e5f6",
    #     catalog: AWS,
    #     tenancy_model: MULTI_TENANT
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "AWS" # One of: ["AWS", "Sandbox"], # required
    #     identifier: "RevenueAttributionIdentifier", # required
    #     revision: "RevisionToken"
    #   }
    #   options = {}
    #   response = client.get_revenue_attribution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "String", # required
    #     id: "RevenueAttributionId", # required
    #     catalog: "AWS" # One of: ["AWS", "Sandbox"], # required
    #     name: "String",
    #     description: "String",
    #     tenancy_model: "MULTI_TENANT" # One of: ["MULTI_TENANT", "SINGLE_TENANT"], # required
    #     marketplace_product: {
    #       product_id: "String",
    #       product_code: "String",
    #       product_name: "String"
    #     },
    #     created_date: Time.now,
    #     last_modified_date: Time.now,
    #     revision: "RevisionToken",
    #     latest_revision: "RevisionToken",
    #     effective_from: "AllocationEffectiveDateString",
    #     effective_until: "AllocationEffectiveDateString",
    #     total_active_revenue_attribution_allocation_count: 1,
    #     total_revenue_attribution_allocation_count: 1
    #   }
    # @return [Types::GetRevenueAttributionOutput]
    def get_revenue_attribution(params = {}, options = {})
      request = build_request(:get_revenue_attribution, params)
      request.send_request(options)
    end

    # <p>Retrieves a single allocation by its RevenueAttributionAllocationId. Supports optional point-in-time version queries.</p>
    # @param [Hash, Types::GetRevenueAttributionAllocationInput] params
    # @option params [String] :catalog
    #   <p>The catalog that contains the resource.</p>
    # @option params [String] :revenue_attribution_identifier
    #   <p>The revenue attribution identifier.</p>
    # @option params [String] :revenue_attribution_allocation_id
    #   <p>The allocation identifier.</p>
    # @option params [String] :revenue_attribution_revision
    #   <p>Point-in-time revision number to query.</p>
    # @example Example for GetRevenueAttributionAllocation
    #   # Example operation for get_revenue_attribution_allocation
    #   params = {
    #     catalog: AWS,
    #     revenue_attribution_identifier: "ra-0a1b2c3d4e5f6",
    #     revenue_attribution_allocation_id: "alloc-abc123def4567"
    #   }
    #   options = {}
    #   response = client.get_revenue_attribution_allocation(params, options)
    #   response.to_h #=>
    #   {
    #     revenue_attribution_allocation_id: "alloc-abc123def4567",
    #     revenue_attribution_identifier: "ra-0a1b2c3d4e5f6",
    #     entity_type: OFFER,
    #     entity_identifier: "offer-abc123",
    #     customer_aws_account_id: "123456789012",
    #     revenue_share_percent: "15.50",
    #     effective_from: "2026-07-01",
    #     effective_until: "2026-07-31",
    #     status: ACTIVE,
    #     created_date: Time.parse(1719792000),
    #     last_modified_date: Time.parse(1719792000),
    #     revenue_attribution_revision: "1",
    #     revenue_attribution_latest_revision: "1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "AWS" # One of: ["AWS", "Sandbox"], # required
    #     revenue_attribution_identifier: "RevenueAttributionIdentifier", # required
    #     revenue_attribution_allocation_id: "RevenueAttributionAllocationId", # required
    #     revenue_attribution_revision: "RevisionToken"
    #   }
    #   options = {}
    #   response = client.get_revenue_attribution_allocation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     revenue_attribution_allocation_id: "RevenueAttributionAllocationId", # required
    #     revenue_attribution_identifier: "RevenueAttributionIdentifier", # required
    #     entity_type: "OFFER" # One of: ["OFFER", "OPPORTUNITY"], # required
    #     entity_identifier: "EntityIdentifier", # required
    #     entity_name: "String",
    #     customer_aws_account_id: "CustomerAwsAccountId", # required
    #     revenue_share_percent: "RevenueSharePercent", # required
    #     effective_from: "AllocationEffectiveDateString", # required
    #     effective_until: "AllocationEffectiveDateString", # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #     created_date: Time.now, # required
    #     last_modified_date: Time.now, # required
    #     revenue_attribution_revision: "RevisionToken", # required
    #     revenue_attribution_latest_revision: "RevisionToken", # required
    #   }
    # @return [Types::GetRevenueAttributionAllocationOutput]
    def get_revenue_attribution_allocation(params = {}, options = {})
      request = build_request(:get_revenue_attribution_allocation, params)
      request.send_request(options)
    end

    # <p>Retrieves the current status of a previously submitted allocations task. When COMPLETE, includes the latest revision. When FAILED, includes error details.</p>
    # @param [Hash, Types::GetRevenueAttributionAllocationsTaskInput] params
    # @option params [String] :catalog
    #   <p>The catalog that contains the resource.</p>
    # @option params [String] :revenue_attribution_identifier
    #   <p>The revenue attribution identifier.</p>
    # @example Example for GetRevenueAttributionAllocationsTask
    #   # Example operation for get_revenue_attribution_allocations_task
    #   params = {
    #     catalog: AWS,
    #     revenue_attribution_identifier: "ra-0a1b2c3d4e5f6"
    #   }
    #   options = {}
    #   response = client.get_revenue_attribution_allocations_task(params, options)
    #   response.to_h #=>
    #   {
    #     task_id: "raatask-abc123def4567",
    #     status: COMPLETE,
    #     catalog: AWS,
    #     revenue_attribution_arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/revenue-attribution/ra-0a1b2c3d4e5f6",
    #     started_at: Time.parse(1719792000),
    #     total_revenue_attribution_allocation_records: 1
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "AWS" # One of: ["AWS", "Sandbox"], # required
    #     revenue_attribution_identifier: "RevenueAttributionIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_revenue_attribution_allocations_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_id: "RevenueAttributionAllocationTaskId", # required
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETE", "FAILED"], # required
    #     catalog: "AWS" # One of: ["AWS", "Sandbox"], # required
    #     revenue_attribution_arn: "String", # required
    #     started_at: Time.now, # required
    #     ended_at: Time.now,
    #     total_revenue_attribution_allocation_records: 1, # required
    #     description: "String",
    #     revenue_attribution_latest_revision: "RevisionToken",
    #     error_detail_list: [
    #       {
    #         revenue_attribution_allocation_id: "RevenueAttributionAllocationId",
    #         entity_type: "OFFER" # One of: ["OFFER", "OPPORTUNITY"], # required
    #         entity_id: "EntityIdentifier", # required
    #         customer_aws_account_id: "CustomerAwsAccountId", # required
    #         effective_from: "AllocationEffectiveDateString", # required
    #         effective_until: "AllocationEffectiveDateString", # required
    #         action: "CREATE" # One of: ["CREATE", "UPDATE"], # required
    #         error_code: "ALLOCATION_CAP_EXCEEDED" # One of: ["ALLOCATION_CAP_EXCEEDED", "RESOURCE_NOT_FOUND", "IMMUTABLE_ALLOCATION", "ACCESS_DENIED", "INVALID_VALUE", "CONCURRENT_MODIFICATION", "INTERNAL_ERROR"], # required
    #         error_message: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::GetRevenueAttributionAllocationsTaskOutput]
    def get_revenue_attribution_allocations_task(params = {}, options = {})
      request = build_request(:get_revenue_attribution_allocations_task, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of allocations under a marketplace revenue share, with optional filtering by status and effective date range. Supports historical reads at a specific share revision.</p>
    # @param [Hash, Types::ListMarketplaceRevenueShareAllocationsInput] params
    # @option params [String] :catalog
    #   <p>The catalog containing the allocations.</p>
    # @option params [String] :product_id
    #   <p>The AWS Marketplace product identifier for the parent revenue share.</p>
    # @option params [String] :status
    #   <p>Filter by allocation status.</p>
    # @option params [String] :after_effective_from
    #   <p>Inclusive lower bound for EffectiveFrom date filter.</p>
    # @option params [String] :before_effective_from
    #   <p>Exclusive upper bound for EffectiveFrom date filter (half-open range).</p>
    # @option params [String] :sort_by
    #   <p>The field to sort marketplace revenue share allocations by.</p>
    # @option params [String] :sort_order
    #   <p>The direction to sort results. Defaults to DESCENDING.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results per page.</p>
    # @option params [String] :next_token
    #   <p>Pagination token from a previous response.</p>
    # @option params [String] :marketplace_revenue_share_revision
    #   <p>Optional share revision for historical list. Returns allocations as they existed at this revision.</p>
    # @example Example for ListMarketplaceRevenueShareAllocations
    #   # Example operation for list_marketplace_revenue_share_allocations
    #   params = {
    #     catalog: AWS,
    #     product_id: "prod-abc123def4567"
    #   }
    #   options = {}
    #   response = client.list_marketplace_revenue_share_allocations(params, options)
    #   response.to_h #=>
    #   {
    #     marketplace_revenue_share_allocation_summaries: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "AWS" # One of: ["AWS", "Sandbox"], # required
    #     product_id: "MarketplaceProductId", # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #     after_effective_from: "AllocationEffectiveDateString",
    #     before_effective_from: "AllocationEffectiveDateString",
    #     sort_by: "EffectiveFrom" # One of: ["EffectiveFrom"],
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     max_results: 1,
    #     next_token: "NextToken",
    #     marketplace_revenue_share_revision: "RevisionToken"
    #   }
    #   options = {}
    #   response = client.list_marketplace_revenue_share_allocations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marketplace_revenue_share_allocation_summaries: [ # required
    #       {
    #         marketplace_revenue_share_allocation_id: "MarketplaceRevenueShareAllocationId", # required
    #         product_id: "MarketplaceProductId", # required
    #         product_name: "String",
    #         arn: "String", # required
    #         effective_from: "AllocationEffectiveDateString", # required
    #         effective_until: "AllocationEffectiveDateString",
    #         revenue_share_percent: "RevenueSharePercent", # required
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #         created_date: Time.now,
    #         last_modified_date: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListMarketplaceRevenueShareAllocationsOutput]
    def list_marketplace_revenue_share_allocations(params = {}, options = {})
      request = build_request(:list_marketplace_revenue_share_allocations, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of marketplace revenue shares with optional filters.</p>
    # @param [Hash, Types::ListMarketplaceRevenueSharesInput] params
    # @option params [String] :catalog
    #   <p>The catalog to list marketplace revenue shares from.</p>
    # @option params [Array<String>] :product_ids
    #   <p>Filter results to only include shares with these product identifiers.</p>
    # @option params [Array<String>] :product_codes
    #   <p>Filter results to only include shares with these product codes.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>Token for pagination. Use the value returned in the previous response to retrieve the next page.</p>
    # @option params [String] :sort_by
    #   <p>The field to sort marketplace revenue shares by.</p>
    # @option params [String] :sort_order
    #   <p>The direction to sort results.</p>
    # @option params [Time] :created_after
    #   <p>Filter results to only include marketplace revenue shares created after this timestamp.</p>
    # @option params [Time] :created_before
    #   <p>Filter results to only include marketplace revenue shares created before this timestamp.</p>
    # @example Example for ListMarketplaceRevenueShares
    #   # Example operation for list_marketplace_revenue_shares
    #   params = {
    #     catalog: AWS,
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_marketplace_revenue_shares(params, options)
    #   response.to_h #=>
    #   {
    #     marketplace_revenue_share_summaries: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "AWS" # One of: ["AWS", "Sandbox"], # required
    #     product_ids: ["MarketplaceProductId"],
    #     product_codes: ["String"],
    #     max_results: 1,
    #     next_token: "NextToken",
    #     sort_by: "LastModifiedDate" # One of: ["LastModifiedDate"],
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     created_after: Time.now,
    #     created_before: Time.now
    #   }
    #   options = {}
    #   response = client.list_marketplace_revenue_shares(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marketplace_revenue_share_summaries: [ # required
    #       {
    #         product_id: "MarketplaceProductId", # required
    #         arn: "String", # required
    #         catalog: "AWS" # One of: ["AWS", "Sandbox"],
    #         product_code: "String",
    #         product_name: "String",
    #         created_date: Time.now,
    #         last_modified_date: Time.now,
    #         latest_revision: 1,
    #         total_active_marketplace_revenue_share_allocation_count: 1,
    #         total_marketplace_revenue_share_allocation_count: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListMarketplaceRevenueSharesOutput]
    def list_marketplace_revenue_shares(params = {}, options = {})
      request = build_request(:list_marketplace_revenue_shares, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of committed allocations with support for filtering by entity, customer, status, or date range.</p>
    # @param [Hash, Types::ListRevenueAttributionAllocationsInput] params
    # @option params [String] :catalog
    #   <p>The catalog that contains the resource.</p>
    # @option params [String] :revenue_attribution_identifier
    #   <p>The revenue attribution identifier to query.</p>
    # @option params [Array<String>] :entity_type_filters
    #   <p>Filter by deal entity types.</p>
    # @option params [Array<String>] :entity_identifier_filters
    #   <p>Filter by deal entity identifiers.</p>
    # @option params [Array<String>] :customer_aws_account_id_filters
    #   <p>Filter by customer AWS account IDs for associated deal entities.</p>
    # @option params [String] :status_filter
    #   <p>Filter by allocation status.</p>
    # @option params [String] :after_effective_from
    #   <p>Inclusive lower bound for EffectiveFrom date filter.</p>
    # @option params [String] :before_effective_from
    #   <p>Exclusive upper bound for EffectiveFrom date filter (half-open range).</p>
    # @option params [String] :after_effective_until
    #   <p>Inclusive lower bound for EffectiveUntil date filter.</p>
    # @option params [String] :before_effective_until
    #   <p>Exclusive upper bound for EffectiveUntil date filter (half-open range).</p>
    # @option params [String] :sort_by
    #   <p>Field to sort by.</p>
    # @option params [String] :sort_order
    #   <p>Sort direction. Defaults to ASCENDING.</p>
    # @option params [String] :revenue_attribution_revision
    #   <p>Point-in-time revision number to query.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum results per page.</p>
    # @option params [String] :next_token
    #   <p>Pagination token from previous response.</p>
    # @example Example for ListRevenueAttributionAllocations
    #   # Example operation for list_revenue_attribution_allocations
    #   params = {
    #     catalog: AWS,
    #     revenue_attribution_identifier: "ra-0a1b2c3d4e5f6"
    #   }
    #   options = {}
    #   response = client.list_revenue_attribution_allocations(params, options)
    #   response.to_h #=>
    #   {
    #     revenue_attribution_allocation_summaries: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "AWS" # One of: ["AWS", "Sandbox"], # required
    #     revenue_attribution_identifier: "RevenueAttributionIdentifier", # required
    #     entity_type_filters: ["OFFER" # One of: ["OFFER", "OPPORTUNITY"]],
    #     entity_identifier_filters: ["EntityIdentifier"],
    #     customer_aws_account_id_filters: ["CustomerAwsAccountId"],
    #     status_filter: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #     after_effective_from: "AllocationEffectiveDateString",
    #     before_effective_from: "AllocationEffectiveDateString",
    #     after_effective_until: "AllocationEffectiveDateString",
    #     before_effective_until: "AllocationEffectiveDateString",
    #     sort_by: "EffectiveFrom" # One of: ["EffectiveFrom"],
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     revenue_attribution_revision: "RevisionToken",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_revenue_attribution_allocations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     revenue_attribution_allocation_summaries: [ # required
    #       {
    #         revenue_attribution_allocation_id: "RevenueAttributionAllocationId", # required
    #         revenue_attribution_identifier: "RevenueAttributionIdentifier", # required
    #         entity_type: "OFFER" # One of: ["OFFER", "OPPORTUNITY"], # required
    #         entity_identifier: "EntityIdentifier", # required
    #         entity_name: "String",
    #         customer_aws_account_id: "CustomerAwsAccountId", # required
    #         revenue_share_percent: "RevenueSharePercent", # required
    #         effective_from: "AllocationEffectiveDateString", # required
    #         effective_until: "AllocationEffectiveDateString", # required
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRevenueAttributionAllocationsOutput]
    def list_revenue_attribution_allocations(params = {}, options = {})
      request = build_request(:list_revenue_attribution_allocations, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of revenue attributions with optional filters.</p>
    # @param [Hash, Types::ListRevenueAttributionsInput] params
    # @option params [String] :catalog
    #   <p>The catalog to list revenue attributions from.</p>
    # @option params [Array<String>] :identifiers
    #   <p>Filter results to only include revenue attributions with the specified identifiers.</p>
    # @option params [Time] :created_after
    #   <p>Filter results to only include revenue attributions created after this timestamp.</p>
    # @option params [Time] :created_before
    #   <p>Filter results to only include revenue attributions created before this timestamp.</p>
    # @option params [String] :sort_by
    #   <p>The field to sort revenue attributions by.</p>
    # @option params [String] :sort_order
    #   <p>The direction to sort results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>Token for pagination. Use the value returned in the previous response to retrieve the next page.</p>
    # @example Example for ListRevenueAttributions
    #   # Example operation for list_revenue_attributions
    #   params = {
    #     catalog: AWS
    #   }
    #   options = {}
    #   response = client.list_revenue_attributions(params, options)
    #   response.to_h #=>
    #   {
    #     revenue_attribution_summaries: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "AWS" # One of: ["AWS", "Sandbox"], # required
    #     identifiers: ["RevenueAttributionIdentifier"],
    #     created_after: Time.now,
    #     created_before: Time.now,
    #     sort_by: "LastModifiedDate" # One of: ["LastModifiedDate"],
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_revenue_attributions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     revenue_attribution_summaries: [
    #       {
    #         arn: "String",
    #         id: "RevenueAttributionId",
    #         catalog: "AWS" # One of: ["AWS", "Sandbox"],
    #         name: "String",
    #         tenancy_model: "MULTI_TENANT" # One of: ["MULTI_TENANT", "SINGLE_TENANT"], # required
    #         marketplace_product: {
    #           product_id: "String",
    #           product_code: "String",
    #           product_name: "String"
    #         },
    #         created_date: Time.now,
    #         last_modified_date: Time.now,
    #         latest_revision: "RevisionToken",
    #         effective_from: "AllocationEffectiveDateString",
    #         effective_until: "AllocationEffectiveDateString",
    #         total_active_revenue_attribution_allocation_count: 1,
    #         total_revenue_attribution_allocation_count: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRevenueAttributionsOutput]
    def list_revenue_attributions(params = {}, options = {})
      request = build_request(:list_revenue_attributions, params)
      request.send_request(options)
    end

    # <p>Returns the tags associated with the specified resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to list tags for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceARN", # required
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
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Submits a batch of up to 250 allocation changes (CREATE and/or UPDATE) for asynchronous processing. Returns a TaskId for tracking.</p>
    # @param [Hash, Types::StartRevenueAttributionAllocationsTaskInput] params
    # @option params [String] :catalog
    #   <p>The catalog context for this operation.</p>
    # @option params [String] :revenue_attribution_identifier
    #   <p>The revenue attribution identifier.</p>
    # @option params [String] :revenue_attribution_revision
    #   <p>Current revision of the revenue attribution for optimistic locking.</p>
    # @option params [Array<Types::RevenueShareAllocation>] :revenue_share_allocations
    #   <p>The list of allocation changes to process in this batch.</p>
    # @option params [String] :client_token
    #   <p>Idempotency token for deduplication and retry.</p>
    # @option params [String] :description
    #   <p>Human-readable description of the batch.</p>
    # @example Example for StartRevenueAttributionAllocationsTask
    #   # Example operation for start_revenue_attribution_allocations_task
    #   params = {
    #     catalog: AWS,
    #     revenue_attribution_identifier: "ra-0a1b2c3d4e5f6",
    #     revenue_attribution_revision: "1",
    #     revenue_share_allocations: [
    #       {
    #         action: CREATE,
    #         entity_type: OFFER,
    #         entity_identifier: "offer-abc123",
    #         customer_aws_account_id: "123456789012",
    #         revenue_share_percent: "15.50",
    #         effective_from: "2026-07-01",
    #         effective_until: "2026-07-31"
    #       }
    #     ],
    #     client_token: "unique-token-123"
    #   }
    #   options = {}
    #   response = client.start_revenue_attribution_allocations_task(params, options)
    #   response.to_h #=>
    #   {
    #     task_id: "raatask-abc123def4567",
    #     status: IN_PROGRESS,
    #     catalog: AWS,
    #     revenue_attribution_arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/revenue-attribution/ra-0a1b2c3d4e5f6",
    #     started_at: Time.parse(1719792000),
    #     total_revenue_attribution_allocation_records: 1
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "AWS" # One of: ["AWS", "Sandbox"], # required
    #     revenue_attribution_identifier: "RevenueAttributionIdentifier", # required
    #     revenue_attribution_revision: "RevisionToken", # required
    #     revenue_share_allocations: [ # required
    #       {
    #         action: "CREATE" # One of: ["CREATE", "UPDATE"], # required
    #         revenue_attribution_allocation_id: "RevenueAttributionAllocationId",
    #         entity_type: "OFFER" # One of: ["OFFER", "OPPORTUNITY"], # required
    #         entity_identifier: "EntityIdentifier", # required
    #         customer_aws_account_id: "CustomerAwsAccountId", # required
    #         revenue_share_percent: "RevenueSharePercent", # required
    #         effective_from: "AllocationEffectiveDateString", # required
    #         effective_until: "AllocationEffectiveDateString", # required
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"]
    #       }
    #     ],
    #     client_token: "ClientToken",
    #     description: "String"
    #   }
    #   options = {}
    #   response = client.start_revenue_attribution_allocations_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_id: "RevenueAttributionAllocationTaskId", # required
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETE", "FAILED"], # required
    #     catalog: "AWS" # One of: ["AWS", "Sandbox"], # required
    #     revenue_attribution_arn: "String", # required
    #     started_at: Time.now, # required
    #     total_revenue_attribution_allocation_records: 1, # required
    #   }
    # @return [Types::StartRevenueAttributionAllocationsTaskOutput]
    def start_revenue_attribution_allocations_task(params = {}, options = {})
      request = build_request(:start_revenue_attribution_allocations_task, params)
      request.send_request(options)
    end

    # <p>Adds or overwrites one or more tags for the specified resource.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to tag.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to add to the resource.</p>
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
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes one or more tags from the specified resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys to remove from the resource.</p>
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
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates an existing marketplace revenue share allocation. Supports modifying effective dates, revenue share percentage, and status with time-based mutability rules.</p>
    # @param [Hash, Types::UpdateMarketplaceRevenueShareAllocationInput] params
    # @option params [String] :catalog
    #   <p>The catalog containing the allocation.</p>
    # @option params [String] :product_id
    #   <p>The AWS Marketplace product identifier for the parent revenue share.</p>
    # @option params [String] :marketplace_revenue_share_allocation_id
    #   <p>The identifier of the allocation to update.</p>
    # @option params [String] :marketplace_revenue_share_revision
    #   <p>The current revision of the parent share. Must match for optimistic concurrency control.</p>
    # @option params [String] :client_token
    #   <p>A unique token to ensure idempotency of the update request.</p>
    # @option params [String] :effective_from
    #   <p>The new effective start date. Must be the first day of a month. Only modifiable on future-dated allocations.</p>
    # @option params [String] :effective_until
    #   <p>The new effective end date. Must be the last day of a month and on or after today.</p>
    # @option params [String] :revenue_share_percent
    #   <p>The new revenue share percentage. Only modifiable on future-dated allocations.</p>
    # @option params [String] :status
    #   <p>The new status. Set to INACTIVE for soft-delete. Only modifiable on future-dated allocations.</p>
    # @example Example for UpdateMarketplaceRevenueShareAllocation
    #   # Example operation for update_marketplace_revenue_share_allocation
    #   params = {
    #     catalog: AWS,
    #     product_id: "prod-abc123def4567",
    #     marketplace_revenue_share_allocation_id: "mrsa-abc123def4567",
    #     marketplace_revenue_share_revision: "1",
    #     revenue_share_percent: "20.00"
    #   }
    #   options = {}
    #   response = client.update_marketplace_revenue_share_allocation(params, options)
    #   response.to_h #=>
    #   {
    #     marketplace_revenue_share_allocation_id: "mrsa-abc123def4567",
    #     product_id: "prod-abc123def4567",
    #     arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/marketplace-revenue-share-allocation/mrsa-abc123def4567",
    #     effective_from: "2026-07-01",
    #     revenue_share_percent: "20.00",
    #     status: ACTIVE
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "AWS" # One of: ["AWS", "Sandbox"], # required
    #     product_id: "MarketplaceProductId", # required
    #     marketplace_revenue_share_allocation_id: "MarketplaceRevenueShareAllocationId", # required
    #     marketplace_revenue_share_revision: "RevisionToken", # required
    #     client_token: "ClientToken",
    #     effective_from: "AllocationEffectiveDateString",
    #     effective_until: "AllocationEffectiveDateString",
    #     revenue_share_percent: "RevenueSharePercent",
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"]
    #   }
    #   options = {}
    #   response = client.update_marketplace_revenue_share_allocation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marketplace_revenue_share_allocation_id: "MarketplaceRevenueShareAllocationId", # required
    #     product_id: "MarketplaceProductId", # required
    #     product_name: "String",
    #     arn: "String", # required
    #     effective_from: "AllocationEffectiveDateString", # required
    #     effective_until: "AllocationEffectiveDateString",
    #     revenue_share_percent: "RevenueSharePercent", # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #     created_date: Time.now,
    #     last_modified_date: Time.now,
    #     latest_marketplace_revenue_share_revision: "RevisionToken"
    #   }
    # @return [Types::UpdateMarketplaceRevenueShareAllocationOutput]
    def update_marketplace_revenue_share_allocation(params = {}, options = {})
      request = build_request(:update_marketplace_revenue_share_allocation, params)
      request.send_request(options)
    end

    # <p>Updates an existing revenue attribution record.</p>
    # @param [Hash, Types::UpdateRevenueAttributionInput] params
    # @option params [String] :catalog
    #   <p>The catalog that the revenue attribution belongs to.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the revenue attribution to update. Accepts a direct ID or ARN.</p>
    # @option params [String] :client_token
    #   <p>A unique token to ensure idempotency of the update request.</p>
    # @option params [String] :description
    #   <p>The updated description of the revenue attribution.</p>
    # @option params [String] :revision
    #   <p>The current revision of the revenue attribution. Must match the server's current value.</p>
    # @example Example for UpdateRevenueAttribution
    #   # Example operation for update_revenue_attribution
    #   params = {
    #     catalog: AWS,
    #     identifier: "ra-0a1b2c3d4e5f6",
    #     revision: "1"
    #   }
    #   options = {}
    #   response = client.update_revenue_attribution(params, options)
    #   response.to_h #=>
    #   {
    #     id: "ra-0a1b2c3d4e5f6",
    #     arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/revenue-attribution/ra-0a1b2c3d4e5f6",
    #     last_modified_date: Time.parse(1719792000)
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "AWS" # One of: ["AWS", "Sandbox"], # required
    #     identifier: "RevenueAttributionIdentifier", # required
    #     client_token: "ClientToken",
    #     description: "String",
    #     revision: "RevisionToken", # required
    #   }
    #   options = {}
    #   response = client.update_revenue_attribution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "RevenueAttributionId", # required
    #     arn: "String", # required
    #     description: "String",
    #     last_modified_date: Time.now, # required
    #     latest_revision: "RevisionToken"
    #   }
    # @return [Types::UpdateRevenueAttributionOutput]
    def update_revenue_attribution(params = {}, options = {})
      request = build_request(:update_revenue_attribution, params)
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
      context[:gem_name] = 'aws-sdk-partnercentralrevenuemeasurement'
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

      # @api private
      def protocols
        {
          rpc_v2_cbor: Smithy::Client::RpcV2Cbor
        }
      end
    end
  end
end
