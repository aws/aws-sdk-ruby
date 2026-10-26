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
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:outposts)

module Aws::Outposts
  # An API client for Aws::Outposts.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::OutpostsOlafService
    @identifier = :outposts

    add_plugin(::Aws::Outposts::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Outposts::EndpointProvider)
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
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
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

    # <p>Cancels the capacity task.</p>
    # @param [Hash, Types::CancelCapacityTaskInput] params
    # @option params [String] :capacity_task_id
    #   <p>ID of the capacity task that you want to cancel.</p>
    # @option params [String] :outpost_identifier
    #   <p>ID or ARN of the Outpost associated with the capacity task that you want to cancel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     capacity_task_id: "CapacityTaskId", # required
    #     outpost_identifier: "OutpostIdentifier", # required
    #   }
    #   options = {}
    #   response = client.cancel_capacity_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelCapacityTaskOutput]
    def cancel_capacity_task(params = {}, options = {})
      request = build_request(:cancel_capacity_task, params)
      request.send_request(options)
    end

    # <p>Cancels the specified order for an Outpost.</p>
    # @param [Hash, Types::CancelOrderInput] params
    # @option params [String] :order_id
    #   <p> The ID of the order. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     order_id: "OrderId", # required
    #   }
    #   options = {}
    #   response = client.cancel_order(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelOrderOutput]
    def cancel_order(params = {}, options = {})
      request = build_request(:cancel_order, params)
      request.send_request(options)
    end

    # <p>Creates an order for an Outpost.</p>
    # @param [Hash, Types::CreateOrderInput] params
    # @option params [String] :outpost_identifier
    #   <p> The ID or the Amazon Resource Name (ARN) of the Outpost. </p>
    # @option params [String] :quote_identifier
    #   <p>The ID of the quote to use for the order.</p>
    # @option params [String] :quote_option_identifier
    #   <p>The ID of the quote option to use for the order.</p>
    # @option params [Array<Types::LineItemRequest>] :line_items
    #   <p>The line items that make up the order.</p>
    # @option params [String] :payment_option
    #   <p>The payment option.</p>
    # @option params [String] :payment_term
    #   <p>The payment terms.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     outpost_identifier: "OutpostIdentifier", # required
    #     quote_identifier: "QuoteIdentifier",
    #     quote_option_identifier: "QuoteOptionIdentifier",
    #     line_items: [
    #       {
    #         catalog_item_id: "SkuCode",
    #         quantity: 1
    #       }
    #     ],
    #     payment_option: "ALL_UPFRONT" # One of: ["ALL_UPFRONT", "NO_UPFRONT", "PARTIAL_UPFRONT"], # required
    #     payment_term: "THREE_YEARS" # One of: ["THREE_YEARS", "ONE_YEAR", "FIVE_YEARS"]
    #   }
    #   options = {}
    #   response = client.create_order(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     order: {
    #       outpost_id: "OutpostIdOnly",
    #       quote_identifier: "QuoteIdentifier",
    #       quote_option_identifier: "QuoteOptionIdentifier",
    #       order_id: "OrderId",
    #       status: "RECEIVED" # One of: ["RECEIVED", "PENDING", "PROCESSING", "INSTALLING", "FULFILLED", "CANCELLED", "PREPARING", "IN_PROGRESS", "DELIVERED", "COMPLETED", "ERROR"],
    #       line_items: [
    #         {
    #           catalog_item_id: "SkuCode",
    #           line_item_id: "LineItemId",
    #           quantity: 1,
    #           status: "PREPARING" # One of: ["PREPARING", "BUILDING", "SHIPPED", "DELIVERED", "INSTALLING", "INSTALLED", "ERROR", "CANCELLED", "REPLACED"],
    #           shipment_information: {
    #             shipment_tracking_number: "TrackingId",
    #             shipment_carrier: "DHL" # One of: ["DHL", "DBS", "FEDEX", "UPS", "EXPEDITORS"]
    #           },
    #           asset_information_list: [
    #             {
    #               asset_id: "AssetId",
    #               mac_address_list: ["MacAddress"]
    #             }
    #           ],
    #           previous_line_item_id: "LineItemId",
    #           previous_order_id: "OrderId"
    #         }
    #       ],
    #       payment_option: "ALL_UPFRONT" # One of: ["ALL_UPFRONT", "NO_UPFRONT", "PARTIAL_UPFRONT"],
    #       order_submission_date: Time.now,
    #       order_fulfilled_date: Time.now,
    #       payment_term: "THREE_YEARS" # One of: ["THREE_YEARS", "ONE_YEAR", "FIVE_YEARS"],
    #       order_type: "OUTPOST" # One of: ["OUTPOST", "REPLACEMENT"]
    #     }
    #   }
    # @return [Types::CreateOrderOutput]
    def create_order(params = {}, options = {})
      request = build_request(:create_order, params)
      request.send_request(options)
    end

    # <p>Creates an Outpost.</p>
    #          <p>You can specify either an Availability one or an AZ ID.</p>
    # @param [Hash, Types::CreateOutpostInput] params
    # @option params [String] :name
    #   <p>The name of the Outpost.</p>
    # @option params [String] :description
    #   <p>The description of the Outpost.</p>
    # @option params [String] :site_id
    #   <p> The ID or the Amazon Resource Name (ARN) of the site. </p>
    # @option params [String] :availability_zone
    #   <p>The Availability Zone.</p>
    # @option params [String] :availability_zone_id
    #   <p>The ID of the Availability Zone.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to apply to the Outpost.</p>
    # @option params [String] :supported_hardware_type
    #   <p> The type of hardware for this Outpost. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "OutpostName", # required
    #     description: "OutpostDescription",
    #     site_id: "SiteId", # required
    #     availability_zone: "AvailabilityZone",
    #     availability_zone_id: "AvailabilityZoneId",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     supported_hardware_type: "RACK" # One of: ["RACK", "SERVER"]
    #   }
    #   options = {}
    #   response = client.create_outpost(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     outpost: {
    #       outpost_id: "OutpostId",
    #       owner_id: "OwnerId",
    #       outpost_arn: "OutpostArn",
    #       site_id: "SiteId",
    #       name: "OutpostName",
    #       description: "OutpostDescription",
    #       life_cycle_status: "LifeCycleStatus",
    #       availability_zone: "AvailabilityZone",
    #       availability_zone_id: "AvailabilityZoneId",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       site_arn: "SiteArn",
    #       supported_hardware_type: "RACK" # One of: ["RACK", "SERVER"],
    #       generation: "GENERATION_2" # One of: ["GENERATION_2", "GENERATION_1"],
    #       rack_scaling_type: "SINGLE_RACK" # One of: ["SINGLE_RACK", "MULTI_RACK"]
    #     }
    #   }
    # @return [Types::CreateOutpostOutput]
    def create_outpost(params = {}, options = {})
      request = build_request(:create_outpost, params)
      request.send_request(options)
    end

    # <p>Creates the private connectivity configuration for the specified Outpost. Private
    #       connectivity establishes a service link VPN connection between the Outpost and its home
    #       Amazon Web Services Region using a VPC and subnet that you specify, which allows the service link traffic
    #       to flow through your VPC and minimizes public internet exposure.</p>
    # @param [Hash, Types::CreatePrivateConnectivityConfigInput] params
    # @option params [String] :outpost_id
    #   <p>The ID or ARN of the Outpost.</p>
    # @option params [Array<Types::VpcInformation>] :vpc_information_list
    #   <p>Information about the VPC used for private connectivity, including the VPC, its subnets,
    #         and an associated VPC endpoint. You can specify at most one entry.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     outpost_id: "OutpostId", # required
    #     vpc_information_list: [ # required
    #       {
    #         vpc_id: "VpcId",
    #         subnet_ids: ["SubnetId"],
    #         vpc_endpoint_id: "VpcEndpointId"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_private_connectivity_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     private_connectivity_config: {
    #       role_arn: "RoleArn",
    #       private_connectivity_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       vpc_information_list: [
    #         {
    #           vpc_id: "VpcId",
    #           subnet_ids: ["SubnetId"],
    #           vpc_endpoint_id: "VpcEndpointId"
    #         }
    #       ],
    #       provisioning_role_arn: "RoleArn"
    #     },
    #     outpost_id: "OutpostId"
    #   }
    # @return [Types::CreatePrivateConnectivityConfigOutput]
    def create_private_connectivity_config(params = {}, options = {})
      request = build_request(:create_private_connectivity_config, params)
      request.send_request(options)
    end

    # <p>Creates a quote for an Outpost. A quote provides pricing and configuration options based
    #       on the requested capacity. You can optionally associate the quote with an existing Outpost or
    #       create a standalone quote by specifying only the country code and requested capacities.</p>
    # @param [Hash, Types::CreateQuoteInput] params
    # @option params [String] :outpost_identifier
    #   <p>The ID or ARN of the Outpost to associate with the quote. If not specified, the quote is
    #         created without an Outpost association.</p>
    # @option params [String] :country_code
    #   <p>The country code for the Outpost site location.</p>
    # @option params [Array<Types::QuoteCapacity>] :requested_capacities
    #   <p>The capacity requirements for the quote. Each entry specifies a capacity type (such as
    #         Amazon EC2), the unit, and the quantity. For Amazon EC2, the quantity is the number of additional
    #         instances to add to the Outpost. For Amazon EBS and Amazon S3, the quantity is the total desired
    #         end-state capacity of the Outpost.</p>
    # @option params [Array<Types::QuoteConstraint>] :requested_constraints
    #   <p>The physical constraints for the quote, such as maximum number of racks, maximum power
    #         draw per rack, or maximum weight per rack.</p>
    # @option params [Array<String>] :requested_payment_options
    #   <p>The payment options to include in the quote pricing. If not specified, all available
    #         payment options are returned.</p>
    # @option params [Array<String>] :requested_payment_terms
    #   <p>The payment terms to include in the quote pricing. If not specified, all available
    #         payment terms are returned.</p>
    # @option params [String] :description
    #   <p>A description for the quote.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     outpost_identifier: "OutpostIdentifier",
    #     country_code: "CountryCode", # required
    #     requested_capacities: [ # required
    #       {
    #         quote_capacity_type: "EC2" # One of: ["EC2", "EBS", "S3"],
    #         unit: "String",
    #         quantity: 1.0
    #       }
    #     ],
    #     requested_constraints: [
    #       {
    #         quote_constraint_type: "RACK_MAXIMUM" # One of: ["RACK_MAXIMUM", "RACK_MAX_POWER_KVA", "RACK_MAX_WEIGHT_LBS", "RACK_SPACE_CONSTRAINED"],
    #         value: "ConstraintValue"
    #       }
    #     ],
    #     requested_payment_options: ["ALL_UPFRONT" # One of: ["ALL_UPFRONT", "NO_UPFRONT", "PARTIAL_UPFRONT"]],
    #     requested_payment_terms: ["THREE_YEARS" # One of: ["THREE_YEARS", "ONE_YEAR", "FIVE_YEARS"]],
    #     description: "QuoteDescription"
    #   }
    #   options = {}
    #   response = client.create_quote(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     quote: {
    #       quote_id: "QuoteId",
    #       account_id: "AccountId",
    #       quote_status: "CREATED" # One of: ["CREATED", "ORDER_SUBMITTED", "EXPIRED"],
    #       status_message: "StatusMessage",
    #       outpost_arn: "OutpostArn",
    #       country_code: "CountryCode",
    #       requested_capacities: [
    #         {
    #           quote_capacity_type: "EC2" # One of: ["EC2", "EBS", "S3"],
    #           unit: "String",
    #           quantity: 1.0
    #         }
    #       ],
    #       requested_constraints: [
    #         {
    #           quote_constraint_type: "RACK_MAXIMUM" # One of: ["RACK_MAXIMUM", "RACK_MAX_POWER_KVA", "RACK_MAX_WEIGHT_LBS", "RACK_SPACE_CONSTRAINED"],
    #           value: "ConstraintValue"
    #         }
    #       ],
    #       requested_payment_options: ["ALL_UPFRONT" # One of: ["ALL_UPFRONT", "NO_UPFRONT", "PARTIAL_UPFRONT"]],
    #       requested_payment_terms: ["THREE_YEARS" # One of: ["THREE_YEARS", "ONE_YEAR", "FIVE_YEARS"]],
    #       quote_options: [
    #         {
    #           quote_option_identifier: "QuoteOptionIdentifier",
    #           capacities: [
    #             {
    #               quote_capacity_type: "EC2" # One of: ["EC2", "EBS", "S3"],
    #               unit: "String",
    #               quantity: 1.0
    #             }
    #           ],
    #           capacity_summary: {
    #             existing_capacities: [
    #               {
    #                 quote_capacity_type: "EC2" # One of: ["EC2", "EBS", "S3"],
    #                 unit: "String",
    #                 quantity: 1.0
    #               }
    #             ],
    #             final_capacities: [
    #               {
    #                 quote_capacity_type: "EC2" # One of: ["EC2", "EBS", "S3"],
    #                 unit: "String",
    #                 quantity: 1.0
    #               }
    #             ],
    #             capacity_change: [
    #               {
    #                 quote_capacity_type: "EC2" # One of: ["EC2", "EBS", "S3"],
    #                 unit: "String",
    #                 quantity: 1.0
    #               }
    #             ]
    #           },
    #           specifications: [
    #             {
    #               quote_specification_type: "UPDATED_RACK" # One of: ["UPDATED_RACK", "NEW_RACK", "EXISTING_RACK", "SERVER"],
    #               existing_rack_specification_details: {
    #                 rack_id: "RackId",
    #                 rack_use: "NETWORKING" # One of: ["NETWORKING", "COMPUTE"],
    #                 rack_power_draw_kva: 1.0,
    #                 rack_weight_lbs: 1.0,
    #                 rack_height_inches: 1.0,
    #                 rack_width_inches: 1.0,
    #                 rack_depth_inches: 1.0,
    #                 rack_unit_height: "HEIGHT_42U" # One of: ["HEIGHT_42U", "HEIGHT_2U", "HEIGHT_1U"],
    #                 ec2_capacities: [
    #                   {
    #                     family: "Family",
    #                     max_size: "MaxSize",
    #                     quantity: "Quantity"
    #                   }
    #                 ]
    #               },
    #               final_rack_specification_details: {
    #                 rack_id: "RackId",
    #                 rack_use: "NETWORKING" # One of: ["NETWORKING", "COMPUTE"],
    #                 rack_power_draw_kva: 1.0,
    #                 rack_weight_lbs: 1.0,
    #                 rack_height_inches: 1.0,
    #                 rack_width_inches: 1.0,
    #                 rack_depth_inches: 1.0,
    #                 rack_unit_height: "HEIGHT_42U" # One of: ["HEIGHT_42U", "HEIGHT_2U", "HEIGHT_1U"],
    #                 ec2_capacities: [
    #                   {
    #                     family: "Family",
    #                     max_size: "MaxSize",
    #                     quantity: "Quantity"
    #                   }
    #                 ]
    #               },
    #               server_specification_details: {
    #                 server_power_draw_kva: 1.0,
    #                 server_weight_lbs: 1.0,
    #                 server_height_inches: 1.0,
    #                 server_width_inches: 1.0,
    #                 server_depth_inches: 1.0,
    #                 rack_unit_height: "HEIGHT_42U" # One of: ["HEIGHT_42U", "HEIGHT_2U", "HEIGHT_1U"],
    #                 ec2_capacities: [
    #                   {
    #                     family: "Family",
    #                     max_size: "MaxSize",
    #                     quantity: "Quantity"
    #                   }
    #                 ]
    #               }
    #             }
    #           ],
    #           pricing_options: [
    #             {
    #               pricing_type: "SUBSCRIPTION" # One of: ["SUBSCRIPTION"],
    #               subscription_pricing_details: {
    #                 payment_option: "ALL_UPFRONT" # One of: ["ALL_UPFRONT", "NO_UPFRONT", "PARTIAL_UPFRONT"],
    #                 payment_term: "THREE_YEARS" # One of: ["THREE_YEARS", "ONE_YEAR", "FIVE_YEARS"],
    #                 upfront_price: 1.0,
    #                 monthly_recurring_price: 1.0,
    #                 currency: "USD" # One of: ["USD"]
    #               }
    #             }
    #           ]
    #         }
    #       ],
    #       ordering_requirements: [
    #         {
    #           status_message: "StatusMessage",
    #           ordering_requirement_type: "OUTPOST_ACTIVE_CHECK_ERROR" # One of: ["OUTPOST_ACTIVE_CHECK_ERROR", "MAXIMUM_ALLOWED_ORDERS_CHECK_ERROR", "VALID_ZIP_CODE_CHECK_ERROR", "RACK_PHYSICAL_PROPERTIES_CHECK_ERROR", "OPERATING_ADDRESS_EXISTENCE_CHECK_ERROR", "SHIPPING_ADDRESS_EXISTENCE_CHECK_ERROR", "COUNTRY_CODE_MISMATCH_CHECK_ERROR", "OUTPOST_GENERATION_MISMATCH_ERROR", "UNSUPPORTED", "OUTPOST_ID_MISSING_ON_QUOTE_ERROR", "ENTERPRISE_SUPPORT_ERROR", "SHIPPING_ADDRESS_MISSING_CONTACT_NAME_ERROR", "SHIPPING_ADDRESS_MISSING_CONTACT_NUMBER_ERROR", "SHIPPING_ADDRESS_MISSING_CONTACT_INFO_ERROR", "OUTPOST_STATE_CHANGED_ERROR", "OUTPOST_NOT_FOUND_ERROR", "OUTPOST_RENEWAL_REQUIRED_ERROR"],
    #           status: "PASS" # One of: ["PASS", "FAIL", "EXEMPT"]
    #         }
    #       ],
    #       submitted_order_id: "OrderIdentifier",
    #       created_date: Time.now,
    #       expiration_date: Time.now,
    #       description: "QuoteDescription"
    #     }
    #   }
    # @return [Types::CreateQuoteOutput]
    def create_quote(params = {}, options = {})
      request = build_request(:create_quote, params)
      request.send_request(options)
    end

    # <p>Creates a renewal contract for the specified Outpost.</p>
    # @param [Hash, Types::CreateRenewalInput] params
    # @option params [String] :payment_option
    #   <p>The payment option.</p>
    # @option params [String] :payment_term
    #   <p>The payment term.</p>
    # @option params [String] :outpost_identifier
    #   <p>The ID or ARN of the Outpost.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #         request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     payment_option: "ALL_UPFRONT" # One of: ["ALL_UPFRONT", "NO_UPFRONT", "PARTIAL_UPFRONT"], # required
    #     payment_term: "THREE_YEARS" # One of: ["THREE_YEARS", "ONE_YEAR", "FIVE_YEARS"], # required
    #     outpost_identifier: "OutpostIdentifier", # required
    #     client_token: "AutoFillIdempotencyToken"
    #   }
    #   options = {}
    #   response = client.create_renewal(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payment_option: "ALL_UPFRONT" # One of: ["ALL_UPFRONT", "NO_UPFRONT", "PARTIAL_UPFRONT"],
    #     payment_term: "THREE_YEARS" # One of: ["THREE_YEARS", "ONE_YEAR", "FIVE_YEARS"],
    #     outpost_id: "OutpostIdOnly",
    #     upfront_price: 1.0,
    #     monthly_recurring_price: 1.0,
    #     currency: "USD" # One of: ["USD"]
    #   }
    # @return [Types::CreateRenewalOutput]
    def create_renewal(params = {}, options = {})
      request = build_request(:create_renewal, params)
      request.send_request(options)
    end

    # <p> Creates a site for an Outpost. </p>
    # @param [Hash, Types::CreateSiteInput] params
    # @option params [String] :name
    #   <p>The name of the site.</p>
    # @option params [String] :description
    #   <p>The description of the site.</p>
    # @option params [String] :notes
    #   <p>Additional information that you provide about site access requirements, electrician
    #         scheduling, personal protective equipment, or regulation of equipment materials that could
    #         affect your installation process. </p>
    # @option params [Hash<String, String>] :tags
    #   <p> The tags to apply to a site. </p>
    # @option params [Types::Address] :operating_address
    #   <p> The location to install and power on the hardware. This address might be different from
    #         the shipping address. </p>
    # @option params [Types::Address] :shipping_address
    #   <p> The location to ship the hardware. This address might be different from the operating
    #         address. </p>
    # @option params [Types::RackPhysicalProperties] :rack_physical_properties
    #   <p> Information about the physical and logistical details for the rack at this site.
    #         For more information
    #         about hardware requirements for racks, see <a href="https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#checklist">Network
    #           readiness checklist</a> in the Amazon Web Services Outposts User Guide.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "SiteName", # required
    #     description: "SiteDescription",
    #     notes: "SiteNotes",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     operating_address: {
    #       contact_name: "ContactName", # required
    #       contact_phone_number: "ContactPhoneNumber", # required
    #       address_line1: "AddressLine1", # required
    #       address_line2: "AddressLine2",
    #       address_line3: "AddressLine3",
    #       city: "City", # required
    #       state_or_region: "StateOrRegion", # required
    #       district_or_county: "DistrictOrCounty",
    #       postal_code: "PostalCode", # required
    #       country_code: "CountryCode", # required
    #       municipality: "Municipality"
    #     },
    #     shipping_address: {
    #       contact_name: "ContactName", # required
    #       contact_phone_number: "ContactPhoneNumber", # required
    #       address_line1: "AddressLine1", # required
    #       address_line2: "AddressLine2",
    #       address_line3: "AddressLine3",
    #       city: "City", # required
    #       state_or_region: "StateOrRegion", # required
    #       district_or_county: "DistrictOrCounty",
    #       postal_code: "PostalCode", # required
    #       country_code: "CountryCode", # required
    #       municipality: "Municipality"
    #     },
    #     rack_physical_properties: {
    #       power_draw_kva: "POWER_5_KVA" # One of: ["POWER_5_KVA", "POWER_10_KVA", "POWER_15_KVA", "POWER_30_KVA"],
    #       power_phase: "SINGLE_PHASE" # One of: ["SINGLE_PHASE", "THREE_PHASE"],
    #       power_connector: "L6_30P" # One of: ["L6_30P", "IEC309", "AH530P7W", "AH532P6W", "CS8365C"],
    #       power_feed_drop: "ABOVE_RACK" # One of: ["ABOVE_RACK", "BELOW_RACK"],
    #       uplink_gbps: "UPLINK_1G" # One of: ["UPLINK_1G", "UPLINK_10G", "UPLINK_40G", "UPLINK_100G"],
    #       uplink_count: "UPLINK_COUNT_1" # One of: ["UPLINK_COUNT_1", "UPLINK_COUNT_2", "UPLINK_COUNT_3", "UPLINK_COUNT_4", "UPLINK_COUNT_5", "UPLINK_COUNT_6", "UPLINK_COUNT_7", "UPLINK_COUNT_8", "UPLINK_COUNT_12", "UPLINK_COUNT_16"],
    #       fiber_optic_cable_type: "SINGLE_MODE" # One of: ["SINGLE_MODE", "MULTI_MODE"],
    #       optical_standard: "OPTIC_10GBASE_SR" # One of: ["OPTIC_10GBASE_SR", "OPTIC_10GBASE_IR", "OPTIC_10GBASE_LR", "OPTIC_40GBASE_SR", "OPTIC_40GBASE_ESR", "OPTIC_40GBASE_IR4_LR4L", "OPTIC_40GBASE_LR4", "OPTIC_100GBASE_SR4", "OPTIC_100GBASE_CWDM4", "OPTIC_100GBASE_LR4", "OPTIC_100G_PSM4_MSA", "OPTIC_1000BASE_LX", "OPTIC_1000BASE_SX"],
    #       maximum_supported_weight_lbs: "NO_LIMIT" # One of: ["NO_LIMIT", "MAX_1400_LBS", "MAX_1600_LBS", "MAX_1800_LBS", "MAX_2000_LBS"]
    #     }
    #   }
    #   options = {}
    #   response = client.create_site(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     site: {
    #       site_id: "SiteId",
    #       account_id: "AccountId",
    #       name: "SiteName",
    #       description: "SiteDescription",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       site_arn: "SiteArn",
    #       notes: "SiteNotes",
    #       operating_address_country_code: "CountryCode",
    #       operating_address_state_or_region: "StateOrRegion",
    #       operating_address_city: "City",
    #       rack_physical_properties: {
    #         power_draw_kva: "POWER_5_KVA" # One of: ["POWER_5_KVA", "POWER_10_KVA", "POWER_15_KVA", "POWER_30_KVA"],
    #         power_phase: "SINGLE_PHASE" # One of: ["SINGLE_PHASE", "THREE_PHASE"],
    #         power_connector: "L6_30P" # One of: ["L6_30P", "IEC309", "AH530P7W", "AH532P6W", "CS8365C"],
    #         power_feed_drop: "ABOVE_RACK" # One of: ["ABOVE_RACK", "BELOW_RACK"],
    #         uplink_gbps: "UPLINK_1G" # One of: ["UPLINK_1G", "UPLINK_10G", "UPLINK_40G", "UPLINK_100G"],
    #         uplink_count: "UPLINK_COUNT_1" # One of: ["UPLINK_COUNT_1", "UPLINK_COUNT_2", "UPLINK_COUNT_3", "UPLINK_COUNT_4", "UPLINK_COUNT_5", "UPLINK_COUNT_6", "UPLINK_COUNT_7", "UPLINK_COUNT_8", "UPLINK_COUNT_12", "UPLINK_COUNT_16"],
    #         fiber_optic_cable_type: "SINGLE_MODE" # One of: ["SINGLE_MODE", "MULTI_MODE"],
    #         optical_standard: "OPTIC_10GBASE_SR" # One of: ["OPTIC_10GBASE_SR", "OPTIC_10GBASE_IR", "OPTIC_10GBASE_LR", "OPTIC_40GBASE_SR", "OPTIC_40GBASE_ESR", "OPTIC_40GBASE_IR4_LR4L", "OPTIC_40GBASE_LR4", "OPTIC_100GBASE_SR4", "OPTIC_100GBASE_CWDM4", "OPTIC_100GBASE_LR4", "OPTIC_100G_PSM4_MSA", "OPTIC_1000BASE_LX", "OPTIC_1000BASE_SX"],
    #         maximum_supported_weight_lbs: "NO_LIMIT" # One of: ["NO_LIMIT", "MAX_1400_LBS", "MAX_1600_LBS", "MAX_1800_LBS", "MAX_2000_LBS"]
    #       }
    #     }
    #   }
    # @return [Types::CreateSiteOutput]
    def create_site(params = {}, options = {})
      request = build_request(:create_site, params)
      request.send_request(options)
    end

    # <p>Deletes the specified Outpost.</p>
    # @param [Hash, Types::DeleteOutpostInput] params
    # @option params [String] :outpost_id
    #   <p> The ID or ARN of the Outpost. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     outpost_id: "OutpostId", # required
    #   }
    #   options = {}
    #   response = client.delete_outpost(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteOutpostOutput]
    def delete_outpost(params = {}, options = {})
      request = build_request(:delete_outpost, params)
      request.send_request(options)
    end

    # <p>Deletes the specified quote.</p>
    # @param [Hash, Types::DeleteQuoteInput] params
    # @option params [String] :quote_identifier
    #   <p>The ID of the quote.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     quote_identifier: "QuoteIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_quote(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteQuoteOutput]
    def delete_quote(params = {}, options = {})
      request = build_request(:delete_quote, params)
      request.send_request(options)
    end

    # <p>Deletes the specified site.</p>
    # @param [Hash, Types::DeleteSiteInput] params
    # @option params [String] :site_id
    #   <p> The ID or the Amazon Resource Name (ARN) of the site. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     site_id: "SiteId", # required
    #   }
    #   options = {}
    #   response = client.delete_site(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSiteOutput]
    def delete_site(params = {}, options = {})
      request = build_request(:delete_site, params)
      request.send_request(options)
    end

    # <p>Gets details of the specified capacity task.</p>
    # @param [Hash, Types::GetCapacityTaskInput] params
    # @option params [String] :capacity_task_id
    #   <p>ID of the capacity task.</p>
    # @option params [String] :outpost_identifier
    #   <p>ID or ARN of the Outpost associated with the specified capacity task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     capacity_task_id: "CapacityTaskId", # required
    #     outpost_identifier: "OutpostIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_capacity_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     capacity_task_id: "CapacityTaskId",
    #     outpost_id: "OutpostId",
    #     order_id: "OrderId",
    #     asset_id: "AssetId",
    #     requested_instance_pools: [
    #       {
    #         instance_type: "InstanceTypeName", # required
    #         count: 1, # required
    #       }
    #     ],
    #     instances_to_exclude: {
    #       instances: ["InstanceId"],
    #       account_ids: ["AccountId"],
    #       services: ["AWS" # One of: ["AWS", "EC2", "EKS", "ELASTICACHE", "ELB", "RDS", "ROUTE53"]]
    #     },
    #     dry_run: false,
    #     capacity_task_status: "REQUESTED" # One of: ["REQUESTED", "IN_PROGRESS", "FAILED", "COMPLETED", "WAITING_FOR_EVACUATION", "CANCELLATION_IN_PROGRESS", "CANCELLED"],
    #     failed: {
    #       reason: "CapacityTaskStatusReason", # required
    #       type: "UNSUPPORTED_CAPACITY_CONFIGURATION" # One of: ["UNSUPPORTED_CAPACITY_CONFIGURATION", "UNEXPECTED_ASSET_STATE", "BLOCKING_INSTANCES_NOT_EVACUATED", "INTERNAL_SERVER_ERROR", "RESOURCE_NOT_FOUND"]
    #     },
    #     creation_date: Time.now,
    #     completion_date: Time.now,
    #     last_modified_date: Time.now,
    #     task_action_on_blocking_instances: "WAIT_FOR_EVACUATION" # One of: ["WAIT_FOR_EVACUATION", "FAIL_TASK"]
    #   }
    # @return [Types::GetCapacityTaskOutput]
    def get_capacity_task(params = {}, options = {})
      request = build_request(:get_capacity_task, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified catalog item.</p>
    # @param [Hash, Types::GetCatalogItemInput] params
    # @option params [String] :catalog_item_id
    #   <p>The ID of the catalog item.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_item_id: "SkuCode", # required
    #   }
    #   options = {}
    #   response = client.get_catalog_item(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog_item: {
    #       catalog_item_id: "SkuCode",
    #       item_status: "AVAILABLE" # One of: ["AVAILABLE", "DISCONTINUED"],
    #       ec2_capacities: [
    #         {
    #           family: "Family",
    #           max_size: "MaxSize",
    #           quantity: "Quantity"
    #         }
    #       ],
    #       power_kva: 1.0,
    #       weight_lbs: 1,
    #       supported_uplink_gbps: [1],
    #       supported_storage: ["EBS" # One of: ["EBS", "S3"]],
    #       rack_scaling_type: "SINGLE_RACK" # One of: ["SINGLE_RACK", "MULTI_RACK"]
    #     }
    #   }
    # @return [Types::GetCatalogItemOutput]
    def get_catalog_item(params = {}, options = {})
      request = build_request(:get_catalog_item, params)
      request.send_request(options)
    end

    # <note>
    #             <p>
    #       Amazon Web Services uses this action to install Outpost servers.</p>
    #          </note>
    #          <p> Gets information about the specified connection. </p>
    #          <p>
    #       Use CloudTrail to monitor this action or Amazon Web Services managed policy for Amazon Web Services Outposts to secure it. For
    #       more information, see <a href="https://docs.aws.amazon.com/outposts/latest/userguide/security-iam-awsmanpol.html">
    #       Amazon Web Services managed policies for Amazon Web Services Outposts</a> and <a href="https://docs.aws.amazon.com/outposts/latest/userguide/logging-using-cloudtrail.html">
    #       Logging Amazon Web Services Outposts API calls with Amazon Web Services CloudTrail</a> in the <i>Amazon Web Services Outposts User Guide</i>.
    #       </p>
    # @param [Hash, Types::GetConnectionRequest] params
    # @option params [String] :connection_id
    #   <p> The ID of the connection. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_id: "ConnectionId", # required
    #   }
    #   options = {}
    #   response = client.get_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection_id: "ConnectionId",
    #     connection_details: {
    #       client_public_key: "WireGuardPublicKey",
    #       server_public_key: "WireGuardPublicKey",
    #       server_endpoint: "ServerEndpoint",
    #       client_tunnel_address: "CIDR",
    #       server_tunnel_address: "CIDR",
    #       allowed_ips: ["CIDR"]
    #     }
    #   }
    # @return [Types::GetConnectionResponse]
    def get_connection(params = {}, options = {})
      request = build_request(:get_connection, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified order.</p>
    # @param [Hash, Types::GetOrderInput] params
    # @option params [String] :order_id
    #   <p>The ID of the order.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     order_id: "OrderId", # required
    #   }
    #   options = {}
    #   response = client.get_order(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     order: {
    #       outpost_id: "OutpostIdOnly",
    #       quote_identifier: "QuoteIdentifier",
    #       quote_option_identifier: "QuoteOptionIdentifier",
    #       order_id: "OrderId",
    #       status: "RECEIVED" # One of: ["RECEIVED", "PENDING", "PROCESSING", "INSTALLING", "FULFILLED", "CANCELLED", "PREPARING", "IN_PROGRESS", "DELIVERED", "COMPLETED", "ERROR"],
    #       line_items: [
    #         {
    #           catalog_item_id: "SkuCode",
    #           line_item_id: "LineItemId",
    #           quantity: 1,
    #           status: "PREPARING" # One of: ["PREPARING", "BUILDING", "SHIPPED", "DELIVERED", "INSTALLING", "INSTALLED", "ERROR", "CANCELLED", "REPLACED"],
    #           shipment_information: {
    #             shipment_tracking_number: "TrackingId",
    #             shipment_carrier: "DHL" # One of: ["DHL", "DBS", "FEDEX", "UPS", "EXPEDITORS"]
    #           },
    #           asset_information_list: [
    #             {
    #               asset_id: "AssetId",
    #               mac_address_list: ["MacAddress"]
    #             }
    #           ],
    #           previous_line_item_id: "LineItemId",
    #           previous_order_id: "OrderId"
    #         }
    #       ],
    #       payment_option: "ALL_UPFRONT" # One of: ["ALL_UPFRONT", "NO_UPFRONT", "PARTIAL_UPFRONT"],
    #       order_submission_date: Time.now,
    #       order_fulfilled_date: Time.now,
    #       payment_term: "THREE_YEARS" # One of: ["THREE_YEARS", "ONE_YEAR", "FIVE_YEARS"],
    #       order_type: "OUTPOST" # One of: ["OUTPOST", "REPLACEMENT"]
    #     }
    #   }
    # @return [Types::GetOrderOutput]
    def get_order(params = {}, options = {})
      request = build_request(:get_order, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified Outpost.</p>
    # @param [Hash, Types::GetOutpostInput] params
    # @option params [String] :outpost_id
    #   <p>The ID or ARN of the Outpost.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     outpost_id: "OutpostId", # required
    #   }
    #   options = {}
    #   response = client.get_outpost(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     outpost: {
    #       outpost_id: "OutpostId",
    #       owner_id: "OwnerId",
    #       outpost_arn: "OutpostArn",
    #       site_id: "SiteId",
    #       name: "OutpostName",
    #       description: "OutpostDescription",
    #       life_cycle_status: "LifeCycleStatus",
    #       availability_zone: "AvailabilityZone",
    #       availability_zone_id: "AvailabilityZoneId",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       site_arn: "SiteArn",
    #       supported_hardware_type: "RACK" # One of: ["RACK", "SERVER"],
    #       generation: "GENERATION_2" # One of: ["GENERATION_2", "GENERATION_1"],
    #       rack_scaling_type: "SINGLE_RACK" # One of: ["SINGLE_RACK", "MULTI_RACK"]
    #     }
    #   }
    # @return [Types::GetOutpostOutput]
    def get_outpost(params = {}, options = {})
      request = build_request(:get_outpost, params)
      request.send_request(options)
    end

    # <p>Gets current and historical billing information about the specified Outpost.</p>
    # @param [Hash, Types::GetOutpostBillingInformationInput] params
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum page size.</p>
    # @option params [String] :outpost_identifier
    #   <p>The ID or ARN of the Outpost.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "Token",
    #     max_results: 1,
    #     outpost_identifier: "OutpostIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_outpost_billing_information(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "Token",
    #     subscriptions: [
    #       {
    #         subscription_id: "String",
    #         subscription_type: "ORIGINAL" # One of: ["ORIGINAL", "RENEWAL", "CAPACITY_INCREASE"],
    #         subscription_status: "ACTIVE" # One of: ["ACTIVE", "PENDING", "INACTIVE", "CANCELLED"],
    #         order_ids: ["String"],
    #         begin_date: Time.now,
    #         end_date: Time.now,
    #         currency: "USD" # One of: ["USD"],
    #         monthly_recurring_price: 1.0,
    #         upfront_price: 1.0
    #       }
    #     ],
    #     contract_end_date: "String",
    #     payment_term: "THREE_YEARS" # One of: ["THREE_YEARS", "ONE_YEAR", "FIVE_YEARS"],
    #     payment_option: "ALL_UPFRONT" # One of: ["ALL_UPFRONT", "NO_UPFRONT", "PARTIAL_UPFRONT"]
    #   }
    # @return [Types::GetOutpostBillingInformationOutput]
    def get_outpost_billing_information(params = {}, options = {})
      request = build_request(:get_outpost_billing_information, params)
      request.send_request(options)
    end

    # <p>Gets the instance types for the specified Outpost.</p>
    # @param [Hash, Types::GetOutpostInstanceTypesInput] params
    # @option params [String] :outpost_id
    #   <p> The ID or ARN of the Outpost. </p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum page size.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     outpost_id: "OutpostId", # required
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_outpost_instance_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_types: [
    #       {
    #         instance_type: "InstanceType",
    #         vcp_us: 1
    #       }
    #     ],
    #     next_token: "Token",
    #     outpost_id: "OutpostId",
    #     outpost_arn: "OutpostArn"
    #   }
    # @return [Types::GetOutpostInstanceTypesOutput]
    def get_outpost_instance_types(params = {}, options = {})
      request = build_request(:get_outpost_instance_types, params)
      request.send_request(options)
    end

    # <p>Gets the instance types that an Outpost can support in <code>InstanceTypeCapacity</code>.
    #       This will generally include instance types that are not currently configured and therefore
    #       cannot be launched with the current Outpost capacity configuration.</p>
    # @param [Hash, Types::GetOutpostSupportedInstanceTypesInput] params
    # @option params [String] :outpost_identifier
    #   <p>The ID or ARN of the Outpost.</p>
    # @option params [String] :order_id
    #   <p>The ID for the Amazon Web Services Outposts order.</p>
    # @option params [String] :asset_id
    #   <p>The ID of the Outpost asset. An Outpost asset can be a single server within an Outposts
    #         rack or an Outposts server configuration.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum page size.</p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     outpost_identifier: "OutpostIdentifier", # required
    #     order_id: "OrderId",
    #     asset_id: "AssetIdInput",
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.get_outpost_supported_instance_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_types: [
    #       {
    #         instance_type: "InstanceType",
    #         vcp_us: 1
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::GetOutpostSupportedInstanceTypesOutput]
    def get_outpost_supported_instance_types(params = {}, options = {})
      request = build_request(:get_outpost_supported_instance_types, params)
      request.send_request(options)
    end

    # <p>Gets the private connectivity configuration for the specified Outpost.</p>
    # @param [Hash, Types::GetPrivateConnectivityConfigInput] params
    # @option params [String] :outpost_id
    #   <p>The ID or ARN of the Outpost.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     outpost_id: "OutpostId", # required
    #   }
    #   options = {}
    #   response = client.get_private_connectivity_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     private_connectivity_config: {
    #       role_arn: "RoleArn",
    #       private_connectivity_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       vpc_information_list: [
    #         {
    #           vpc_id: "VpcId",
    #           subnet_ids: ["SubnetId"],
    #           vpc_endpoint_id: "VpcEndpointId"
    #         }
    #       ],
    #       provisioning_role_arn: "RoleArn"
    #     }
    #   }
    # @return [Types::GetPrivateConnectivityConfigOutput]
    def get_private_connectivity_config(params = {}, options = {})
      request = build_request(:get_private_connectivity_config, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified quote.</p>
    # @param [Hash, Types::GetQuoteInput] params
    # @option params [String] :quote_identifier
    #   <p>The ID of the quote.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     quote_identifier: "QuoteIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_quote(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     quote: {
    #       quote_id: "QuoteId",
    #       account_id: "AccountId",
    #       quote_status: "CREATED" # One of: ["CREATED", "ORDER_SUBMITTED", "EXPIRED"],
    #       status_message: "StatusMessage",
    #       outpost_arn: "OutpostArn",
    #       country_code: "CountryCode",
    #       requested_capacities: [
    #         {
    #           quote_capacity_type: "EC2" # One of: ["EC2", "EBS", "S3"],
    #           unit: "String",
    #           quantity: 1.0
    #         }
    #       ],
    #       requested_constraints: [
    #         {
    #           quote_constraint_type: "RACK_MAXIMUM" # One of: ["RACK_MAXIMUM", "RACK_MAX_POWER_KVA", "RACK_MAX_WEIGHT_LBS", "RACK_SPACE_CONSTRAINED"],
    #           value: "ConstraintValue"
    #         }
    #       ],
    #       requested_payment_options: ["ALL_UPFRONT" # One of: ["ALL_UPFRONT", "NO_UPFRONT", "PARTIAL_UPFRONT"]],
    #       requested_payment_terms: ["THREE_YEARS" # One of: ["THREE_YEARS", "ONE_YEAR", "FIVE_YEARS"]],
    #       quote_options: [
    #         {
    #           quote_option_identifier: "QuoteOptionIdentifier",
    #           capacities: [
    #             {
    #               quote_capacity_type: "EC2" # One of: ["EC2", "EBS", "S3"],
    #               unit: "String",
    #               quantity: 1.0
    #             }
    #           ],
    #           capacity_summary: {
    #             existing_capacities: [
    #               {
    #                 quote_capacity_type: "EC2" # One of: ["EC2", "EBS", "S3"],
    #                 unit: "String",
    #                 quantity: 1.0
    #               }
    #             ],
    #             final_capacities: [
    #               {
    #                 quote_capacity_type: "EC2" # One of: ["EC2", "EBS", "S3"],
    #                 unit: "String",
    #                 quantity: 1.0
    #               }
    #             ],
    #             capacity_change: [
    #               {
    #                 quote_capacity_type: "EC2" # One of: ["EC2", "EBS", "S3"],
    #                 unit: "String",
    #                 quantity: 1.0
    #               }
    #             ]
    #           },
    #           specifications: [
    #             {
    #               quote_specification_type: "UPDATED_RACK" # One of: ["UPDATED_RACK", "NEW_RACK", "EXISTING_RACK", "SERVER"],
    #               existing_rack_specification_details: {
    #                 rack_id: "RackId",
    #                 rack_use: "NETWORKING" # One of: ["NETWORKING", "COMPUTE"],
    #                 rack_power_draw_kva: 1.0,
    #                 rack_weight_lbs: 1.0,
    #                 rack_height_inches: 1.0,
    #                 rack_width_inches: 1.0,
    #                 rack_depth_inches: 1.0,
    #                 rack_unit_height: "HEIGHT_42U" # One of: ["HEIGHT_42U", "HEIGHT_2U", "HEIGHT_1U"],
    #                 ec2_capacities: [
    #                   {
    #                     family: "Family",
    #                     max_size: "MaxSize",
    #                     quantity: "Quantity"
    #                   }
    #                 ]
    #               },
    #               final_rack_specification_details: {
    #                 rack_id: "RackId",
    #                 rack_use: "NETWORKING" # One of: ["NETWORKING", "COMPUTE"],
    #                 rack_power_draw_kva: 1.0,
    #                 rack_weight_lbs: 1.0,
    #                 rack_height_inches: 1.0,
    #                 rack_width_inches: 1.0,
    #                 rack_depth_inches: 1.0,
    #                 rack_unit_height: "HEIGHT_42U" # One of: ["HEIGHT_42U", "HEIGHT_2U", "HEIGHT_1U"],
    #                 ec2_capacities: [
    #                   {
    #                     family: "Family",
    #                     max_size: "MaxSize",
    #                     quantity: "Quantity"
    #                   }
    #                 ]
    #               },
    #               server_specification_details: {
    #                 server_power_draw_kva: 1.0,
    #                 server_weight_lbs: 1.0,
    #                 server_height_inches: 1.0,
    #                 server_width_inches: 1.0,
    #                 server_depth_inches: 1.0,
    #                 rack_unit_height: "HEIGHT_42U" # One of: ["HEIGHT_42U", "HEIGHT_2U", "HEIGHT_1U"],
    #                 ec2_capacities: [
    #                   {
    #                     family: "Family",
    #                     max_size: "MaxSize",
    #                     quantity: "Quantity"
    #                   }
    #                 ]
    #               }
    #             }
    #           ],
    #           pricing_options: [
    #             {
    #               pricing_type: "SUBSCRIPTION" # One of: ["SUBSCRIPTION"],
    #               subscription_pricing_details: {
    #                 payment_option: "ALL_UPFRONT" # One of: ["ALL_UPFRONT", "NO_UPFRONT", "PARTIAL_UPFRONT"],
    #                 payment_term: "THREE_YEARS" # One of: ["THREE_YEARS", "ONE_YEAR", "FIVE_YEARS"],
    #                 upfront_price: 1.0,
    #                 monthly_recurring_price: 1.0,
    #                 currency: "USD" # One of: ["USD"]
    #               }
    #             }
    #           ]
    #         }
    #       ],
    #       ordering_requirements: [
    #         {
    #           status_message: "StatusMessage",
    #           ordering_requirement_type: "OUTPOST_ACTIVE_CHECK_ERROR" # One of: ["OUTPOST_ACTIVE_CHECK_ERROR", "MAXIMUM_ALLOWED_ORDERS_CHECK_ERROR", "VALID_ZIP_CODE_CHECK_ERROR", "RACK_PHYSICAL_PROPERTIES_CHECK_ERROR", "OPERATING_ADDRESS_EXISTENCE_CHECK_ERROR", "SHIPPING_ADDRESS_EXISTENCE_CHECK_ERROR", "COUNTRY_CODE_MISMATCH_CHECK_ERROR", "OUTPOST_GENERATION_MISMATCH_ERROR", "UNSUPPORTED", "OUTPOST_ID_MISSING_ON_QUOTE_ERROR", "ENTERPRISE_SUPPORT_ERROR", "SHIPPING_ADDRESS_MISSING_CONTACT_NAME_ERROR", "SHIPPING_ADDRESS_MISSING_CONTACT_NUMBER_ERROR", "SHIPPING_ADDRESS_MISSING_CONTACT_INFO_ERROR", "OUTPOST_STATE_CHANGED_ERROR", "OUTPOST_NOT_FOUND_ERROR", "OUTPOST_RENEWAL_REQUIRED_ERROR"],
    #           status: "PASS" # One of: ["PASS", "FAIL", "EXEMPT"]
    #         }
    #       ],
    #       submitted_order_id: "OrderIdentifier",
    #       created_date: Time.now,
    #       expiration_date: Time.now,
    #       description: "QuoteDescription"
    #     }
    #   }
    # @return [Types::GetQuoteOutput]
    def get_quote(params = {}, options = {})
      request = build_request(:get_quote, params)
      request.send_request(options)
    end

    # <p>Gets all available renewal pricing options for the specified Outpost.</p>
    # @param [Hash, Types::GetRenewalPricingInput] params
    # @option params [String] :outpost_identifier
    #   <p>The ID or ARN of the Outpost.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     outpost_identifier: "OutpostIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_renewal_pricing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pricing_result: "PRICED" # One of: ["PRICED", "UNABLE_TO_PRICE"],
    #     pricing_options: [
    #       {
    #         pricing_type: "SUBSCRIPTION" # One of: ["SUBSCRIPTION"],
    #         subscription_pricing_details: {
    #           payment_option: "ALL_UPFRONT" # One of: ["ALL_UPFRONT", "NO_UPFRONT", "PARTIAL_UPFRONT"],
    #           payment_term: "THREE_YEARS" # One of: ["THREE_YEARS", "ONE_YEAR", "FIVE_YEARS"],
    #           upfront_price: 1.0,
    #           monthly_recurring_price: 1.0,
    #           currency: "USD" # One of: ["USD"]
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetRenewalPricingOutput]
    def get_renewal_pricing(params = {}, options = {})
      request = build_request(:get_renewal_pricing, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified Outpost site.</p>
    # @param [Hash, Types::GetSiteInput] params
    # @option params [String] :site_id
    #   <p> The ID or the Amazon Resource Name (ARN) of the site. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     site_id: "SiteId", # required
    #   }
    #   options = {}
    #   response = client.get_site(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     site: {
    #       site_id: "SiteId",
    #       account_id: "AccountId",
    #       name: "SiteName",
    #       description: "SiteDescription",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       site_arn: "SiteArn",
    #       notes: "SiteNotes",
    #       operating_address_country_code: "CountryCode",
    #       operating_address_state_or_region: "StateOrRegion",
    #       operating_address_city: "City",
    #       rack_physical_properties: {
    #         power_draw_kva: "POWER_5_KVA" # One of: ["POWER_5_KVA", "POWER_10_KVA", "POWER_15_KVA", "POWER_30_KVA"],
    #         power_phase: "SINGLE_PHASE" # One of: ["SINGLE_PHASE", "THREE_PHASE"],
    #         power_connector: "L6_30P" # One of: ["L6_30P", "IEC309", "AH530P7W", "AH532P6W", "CS8365C"],
    #         power_feed_drop: "ABOVE_RACK" # One of: ["ABOVE_RACK", "BELOW_RACK"],
    #         uplink_gbps: "UPLINK_1G" # One of: ["UPLINK_1G", "UPLINK_10G", "UPLINK_40G", "UPLINK_100G"],
    #         uplink_count: "UPLINK_COUNT_1" # One of: ["UPLINK_COUNT_1", "UPLINK_COUNT_2", "UPLINK_COUNT_3", "UPLINK_COUNT_4", "UPLINK_COUNT_5", "UPLINK_COUNT_6", "UPLINK_COUNT_7", "UPLINK_COUNT_8", "UPLINK_COUNT_12", "UPLINK_COUNT_16"],
    #         fiber_optic_cable_type: "SINGLE_MODE" # One of: ["SINGLE_MODE", "MULTI_MODE"],
    #         optical_standard: "OPTIC_10GBASE_SR" # One of: ["OPTIC_10GBASE_SR", "OPTIC_10GBASE_IR", "OPTIC_10GBASE_LR", "OPTIC_40GBASE_SR", "OPTIC_40GBASE_ESR", "OPTIC_40GBASE_IR4_LR4L", "OPTIC_40GBASE_LR4", "OPTIC_100GBASE_SR4", "OPTIC_100GBASE_CWDM4", "OPTIC_100GBASE_LR4", "OPTIC_100G_PSM4_MSA", "OPTIC_1000BASE_LX", "OPTIC_1000BASE_SX"],
    #         maximum_supported_weight_lbs: "NO_LIMIT" # One of: ["NO_LIMIT", "MAX_1400_LBS", "MAX_1600_LBS", "MAX_1800_LBS", "MAX_2000_LBS"]
    #       }
    #     }
    #   }
    # @return [Types::GetSiteOutput]
    def get_site(params = {}, options = {})
      request = build_request(:get_site, params)
      request.send_request(options)
    end

    # <p> Gets the site address of the specified site. </p>
    # @param [Hash, Types::GetSiteAddressInput] params
    # @option params [String] :site_id
    #   <p> The ID or the Amazon Resource Name (ARN) of the site. </p>
    # @option params [String] :address_type
    #   <p>The type of the address you request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     site_id: "SiteId", # required
    #     address_type: "SHIPPING_ADDRESS" # One of: ["SHIPPING_ADDRESS", "OPERATING_ADDRESS"], # required
    #   }
    #   options = {}
    #   response = client.get_site_address(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     site_id: "SiteId",
    #     address_type: "SHIPPING_ADDRESS" # One of: ["SHIPPING_ADDRESS", "OPERATING_ADDRESS"],
    #     address: {
    #       contact_name: "ContactName", # required
    #       contact_phone_number: "ContactPhoneNumber", # required
    #       address_line1: "AddressLine1", # required
    #       address_line2: "AddressLine2",
    #       address_line3: "AddressLine3",
    #       city: "City", # required
    #       state_or_region: "StateOrRegion", # required
    #       district_or_county: "DistrictOrCounty",
    #       postal_code: "PostalCode", # required
    #       country_code: "CountryCode", # required
    #       municipality: "Municipality"
    #     }
    #   }
    # @return [Types::GetSiteAddressOutput]
    def get_site_address(params = {}, options = {})
      request = build_request(:get_site_address, params)
      request.send_request(options)
    end

    # <p>A list of Amazon EC2 instances, belonging to all accounts, running on the specified Outpost.
    #       Does not include Amazon EBS or Amazon S3 instances.</p>
    # @param [Hash, Types::ListAssetInstancesInput] params
    # @option params [String] :outpost_identifier
    #   <p>The ID of the Outpost.</p>
    # @option params [Array<String>] :asset_id_filter
    #   <p>Filters the results by asset ID.</p>
    # @option params [Array<String>] :instance_type_filter
    #   <p>Filters the results by instance ID.</p>
    # @option params [Array<String>] :account_id_filter
    #   <p>Filters the results by account ID.</p>
    # @option params [Array<String>] :aws_service_filter
    #   <p>Filters the results by Amazon Web Services service.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum page size.</p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     outpost_identifier: "OutpostIdentifier", # required
    #     asset_id_filter: ["AssetId"],
    #     instance_type_filter: ["OutpostInstanceType"],
    #     account_id_filter: ["AccountId"],
    #     aws_service_filter: ["AWS" # One of: ["AWS", "EC2", "EKS", "ELASTICACHE", "ELB", "RDS", "ROUTE53"]],
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_asset_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset_instances: [
    #       {
    #         instance_id: "InstanceId",
    #         instance_type: "OutpostInstanceType",
    #         asset_id: "AssetId",
    #         account_id: "AccountId",
    #         aws_service_name: "AWS" # One of: ["AWS", "EC2", "EKS", "ELASTICACHE", "ELB", "RDS", "ROUTE53"]
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListAssetInstancesOutput]
    def list_asset_instances(params = {}, options = {})
      request = build_request(:list_asset_instances, params)
      request.send_request(options)
    end

    # <p>Lists the hardware assets for the specified Outpost.</p>
    #          <p>Use filters to return specific results. If you specify multiple filters, the results include only the resources that match
    #  all of the specified filters. For a filter where you can specify multiple values, the results include
    #  items that match any of the values that you specify for the filter.</p>
    # @param [Hash, Types::ListAssetsInput] params
    # @option params [String] :outpost_identifier
    #   <p> The ID or the Amazon Resource Name (ARN) of the Outpost. </p>
    # @option params [Array<String>] :host_id_filter
    #   <p>Filters the results by the host ID of a Dedicated Host.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum page size.</p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [Array<String>] :status_filter
    #   <p>Filters the results by state.</p>
    # @option params [Array<String>] :asset_type_filter
    #   <p>Filters the results by asset type.</p>
    #            <ul>
    #               <li>
    #                  <p>COMPUTE - Server asset used for customer compute </p>
    #               </li>
    #               <li>
    #                  <p>STORAGE - Server asset used by storage services </p>
    #               </li>
    #               <li>
    #                  <p>POWERSHELF - Powershelf assets </p>
    #               </li>
    #               <li>
    #                  <p>SWITCH - Switch assets </p>
    #               </li>
    #               <li>
    #                  <p>NETWORKING - Asset managed by Amazon Web Services for networking purposes </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     outpost_identifier: "OutpostIdentifier", # required
    #     host_id_filter: ["HostId"],
    #     max_results: 1,
    #     next_token: "Token",
    #     status_filter: ["ACTIVE" # One of: ["ACTIVE", "RETIRING", "ISOLATED", "INSTALLING"]],
    #     asset_type_filter: ["COMPUTE" # One of: ["COMPUTE", "STORAGE", "POWERSHELF", "SWITCH", "NETWORKING"]]
    #   }
    #   options = {}
    #   response = client.list_assets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assets: [
    #       {
    #         asset_id: "AssetId",
    #         rack_id: "RackId",
    #         asset_type: "COMPUTE" # One of: ["COMPUTE", "STORAGE", "POWERSHELF", "SWITCH", "NETWORKING"],
    #         compute_attributes: {
    #           host_id: "HostId",
    #           state: "ACTIVE" # One of: ["ACTIVE", "ISOLATED", "RETIRING", "INSTALLING"],
    #           instance_families: ["InstanceFamilyName"],
    #           instance_type_capacities: [
    #             {
    #               instance_type: "InstanceTypeName", # required
    #               count: 1, # required
    #             }
    #           ],
    #           max_vcpus: 1
    #         },
    #         asset_location: {
    #           rack_elevation: 1.0
    #         }
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListAssetsOutput]
    def list_assets(params = {}, options = {})
      request = build_request(:list_assets, params)
      request.send_request(options)
    end

    # <p>A list of Amazon EC2 instances running on the Outpost and belonging to the account that
    #       initiated the capacity task. Use this list to specify the instances you cannot stop to free up
    #       capacity to run the capacity task.</p>
    # @param [Hash, Types::ListBlockingInstancesForCapacityTaskInput] params
    # @option params [String] :outpost_identifier
    #   <p>The ID or ARN of the Outpost associated with the specified capacity task.</p>
    # @option params [String] :capacity_task_id
    #   <p>The ID of the capacity task.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum page size.</p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     outpost_identifier: "OutpostIdentifier", # required
    #     capacity_task_id: "CapacityTaskId", # required
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_blocking_instances_for_capacity_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     blocking_instances: [
    #       {
    #         instance_id: "InstanceId",
    #         account_id: "AccountId",
    #         aws_service_name: "AWS" # One of: ["AWS", "EC2", "EKS", "ELASTICACHE", "ELB", "RDS", "ROUTE53"]
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListBlockingInstancesForCapacityTaskOutput]
    def list_blocking_instances_for_capacity_task(params = {}, options = {})
      request = build_request(:list_blocking_instances_for_capacity_task, params)
      request.send_request(options)
    end

    # <p>Lists the capacity tasks for your Amazon Web Services account.</p>
    #          <p>Use filters to return specific results. If you specify multiple filters, the results include only the resources that match
    #  all of the specified filters. For a filter where you can specify multiple values, the results include
    #  items that match any of the values that you specify for the filter.</p>
    # @param [Hash, Types::ListCapacityTasksInput] params
    # @option params [String] :outpost_identifier_filter
    #   <p>Filters the results by an Outpost ID or an Outpost ARN.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum page size.</p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [Array<String>] :capacity_task_status_filter
    #   <p>A list of statuses. For example, <code>REQUESTED</code> or
    #           <code>WAITING_FOR_EVACUATION</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     outpost_identifier_filter: "OutpostIdentifier",
    #     max_results: 1,
    #     next_token: "Token",
    #     capacity_task_status_filter: ["REQUESTED" # One of: ["REQUESTED", "IN_PROGRESS", "FAILED", "COMPLETED", "WAITING_FOR_EVACUATION", "CANCELLATION_IN_PROGRESS", "CANCELLED"]]
    #   }
    #   options = {}
    #   response = client.list_capacity_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     capacity_tasks: [
    #       {
    #         capacity_task_id: "CapacityTaskId",
    #         outpost_id: "OutpostId",
    #         order_id: "OrderId",
    #         asset_id: "AssetId",
    #         capacity_task_status: "REQUESTED" # One of: ["REQUESTED", "IN_PROGRESS", "FAILED", "COMPLETED", "WAITING_FOR_EVACUATION", "CANCELLATION_IN_PROGRESS", "CANCELLED"],
    #         creation_date: Time.now,
    #         completion_date: Time.now,
    #         last_modified_date: Time.now
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListCapacityTasksOutput]
    def list_capacity_tasks(params = {}, options = {})
      request = build_request(:list_capacity_tasks, params)
      request.send_request(options)
    end

    # <p>Lists the items in the catalog.</p>
    #          <p>Use filters to return specific results. If you specify multiple filters, the results include only the resources that match
    #  all of the specified filters. For a filter where you can specify multiple values, the results include
    #  items that match any of the values that you specify for the filter.</p>
    # @param [Hash, Types::ListCatalogItemsInput] params
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum page size.</p>
    # @option params [Array<String>] :item_class_filter
    #   <p>Filters the results by item class.</p>
    # @option params [Array<String>] :supported_storage_filter
    #   <p>Filters the results by storage option.</p>
    # @option params [Array<String>] :ec2_family_filter
    #   <p>Filters the results by EC2 family (for example, M5).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "Token",
    #     max_results: 1,
    #     item_class_filter: ["RACK" # One of: ["RACK", "SERVER"]],
    #     supported_storage_filter: ["EBS" # One of: ["EBS", "S3"]],
    #     ec2_family_filter: ["Family"]
    #   }
    #   options = {}
    #   response = client.list_catalog_items(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog_items: [
    #       {
    #         catalog_item_id: "SkuCode",
    #         item_status: "AVAILABLE" # One of: ["AVAILABLE", "DISCONTINUED"],
    #         ec2_capacities: [
    #           {
    #             family: "Family",
    #             max_size: "MaxSize",
    #             quantity: "Quantity"
    #           }
    #         ],
    #         power_kva: 1.0,
    #         weight_lbs: 1,
    #         supported_uplink_gbps: [1],
    #         supported_storage: ["EBS" # One of: ["EBS", "S3"]],
    #         rack_scaling_type: "SINGLE_RACK" # One of: ["SINGLE_RACK", "MULTI_RACK"]
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListCatalogItemsOutput]
    def list_catalog_items(params = {}, options = {})
      request = build_request(:list_catalog_items, params)
      request.send_request(options)
    end

    # <p>Lists the instance types that can be ordered for an Outpost. You can filter the results
    #       by Outpost generation.</p>
    # @param [Hash, Types::ListOrderableInstanceTypesInput] params
    # @option params [String] :outpost_generation_filter
    #   <p>Filters the results by Outpost generation. Specify <code>GENERATION_1</code> for
    #         first-generation rack deployments or <code>GENERATION_2</code> for second-generation rack
    #         deployments.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum page size.</p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     outpost_generation_filter: "GENERATION_2" # One of: ["GENERATION_2", "GENERATION_1"],
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_orderable_instance_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_types: [
    #       {
    #         instance_type: "InstanceType",
    #         vcp_us: 1,
    #         memory_in_mib: 1,
    #         network_performance: "NetworkPerformance",
    #         form_factor_configs: [
    #           {
    #             form_factor: "RACK" # One of: ["RACK", "SERVER"],
    #             outpost_generation: "GENERATION_2" # One of: ["GENERATION_2", "GENERATION_1"]
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListOrderableInstanceTypesOutput]
    def list_orderable_instance_types(params = {}, options = {})
      request = build_request(:list_orderable_instance_types, params)
      request.send_request(options)
    end

    # <p>Lists the Outpost orders for your Amazon Web Services account.</p>
    # @param [Hash, Types::ListOrdersInput] params
    # @option params [String] :outpost_identifier_filter
    #   <p> The ID or the Amazon Resource Name (ARN) of the Outpost. </p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum page size.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     outpost_identifier_filter: "OutpostIdentifier",
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_orders(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     orders: [
    #       {
    #         outpost_id: "OutpostIdOnly",
    #         order_id: "OrderId",
    #         order_type: "OUTPOST" # One of: ["OUTPOST", "REPLACEMENT"],
    #         status: "RECEIVED" # One of: ["RECEIVED", "PENDING", "PROCESSING", "INSTALLING", "FULFILLED", "CANCELLED", "PREPARING", "IN_PROGRESS", "DELIVERED", "COMPLETED", "ERROR"],
    #         line_item_counts_by_status: {
    #           "LineItemStatus" => 1
    #         },
    #         order_submission_date: Time.now,
    #         order_fulfilled_date: Time.now
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListOrdersOutput]
    def list_orders(params = {}, options = {})
      request = build_request(:list_orders, params)
      request.send_request(options)
    end

    # <p>Lists the Outposts for your Amazon Web Services account.</p>
    #          <p>Use filters to return specific results. If you specify multiple filters, the results include only the resources that match
    #  all of the specified filters. For a filter where you can specify multiple values, the results include
    #  items that match any of the values that you specify for the filter.</p>
    # @param [Hash, Types::ListOutpostsInput] params
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum page size.</p>
    # @option params [Array<String>] :life_cycle_status_filter
    #   <p>Filters the results by the lifecycle status.</p>
    # @option params [Array<String>] :availability_zone_filter
    #   <p>Filters the results by Availability Zone (for example, <code>us-east-1a</code>).</p>
    # @option params [Array<String>] :availability_zone_id_filter
    #   <p>Filters the results by AZ ID (for example, <code>use1-az1</code>).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "Token",
    #     max_results: 1,
    #     life_cycle_status_filter: ["LifeCycleStatus"],
    #     availability_zone_filter: ["AvailabilityZone"],
    #     availability_zone_id_filter: ["AvailabilityZoneId"]
    #   }
    #   options = {}
    #   response = client.list_outposts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     outposts: [
    #       {
    #         outpost_id: "OutpostId",
    #         owner_id: "OwnerId",
    #         outpost_arn: "OutpostArn",
    #         site_id: "SiteId",
    #         name: "OutpostName",
    #         description: "OutpostDescription",
    #         life_cycle_status: "LifeCycleStatus",
    #         availability_zone: "AvailabilityZone",
    #         availability_zone_id: "AvailabilityZoneId",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         site_arn: "SiteArn",
    #         supported_hardware_type: "RACK" # One of: ["RACK", "SERVER"],
    #         generation: "GENERATION_2" # One of: ["GENERATION_2", "GENERATION_1"],
    #         rack_scaling_type: "SINGLE_RACK" # One of: ["SINGLE_RACK", "MULTI_RACK"]
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListOutpostsOutput]
    def list_outposts(params = {}, options = {})
      request = build_request(:list_outposts, params)
      request.send_request(options)
    end

    # <p>Lists the quotes for your Amazon Web Services account.</p>
    # @param [Hash, Types::ListQuotesInput] params
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum page size.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_quotes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     quotes: [
    #       {
    #         quote_id: "QuoteId",
    #         account_id: "AccountId",
    #         quote_status: "CREATED" # One of: ["CREATED", "ORDER_SUBMITTED", "EXPIRED"],
    #         status_message: "StatusMessage",
    #         outpost_arn: "OutpostArn",
    #         country_code: "CountryCode",
    #         requested_capacities: [
    #           {
    #             quote_capacity_type: "EC2" # One of: ["EC2", "EBS", "S3"],
    #             unit: "String",
    #             quantity: 1.0
    #           }
    #         ],
    #         requested_constraints: [
    #           {
    #             quote_constraint_type: "RACK_MAXIMUM" # One of: ["RACK_MAXIMUM", "RACK_MAX_POWER_KVA", "RACK_MAX_WEIGHT_LBS", "RACK_SPACE_CONSTRAINED"],
    #             value: "ConstraintValue"
    #           }
    #         ],
    #         requested_payment_options: ["ALL_UPFRONT" # One of: ["ALL_UPFRONT", "NO_UPFRONT", "PARTIAL_UPFRONT"]],
    #         requested_payment_terms: ["THREE_YEARS" # One of: ["THREE_YEARS", "ONE_YEAR", "FIVE_YEARS"]],
    #         quote_options: [
    #           {
    #             quote_option_identifier: "QuoteOptionIdentifier",
    #             capacities: [
    #               {
    #                 quote_capacity_type: "EC2" # One of: ["EC2", "EBS", "S3"],
    #                 unit: "String",
    #                 quantity: 1.0
    #               }
    #             ],
    #             capacity_summary: {
    #               existing_capacities: [
    #                 {
    #                   quote_capacity_type: "EC2" # One of: ["EC2", "EBS", "S3"],
    #                   unit: "String",
    #                   quantity: 1.0
    #                 }
    #               ],
    #               final_capacities: [
    #                 {
    #                   quote_capacity_type: "EC2" # One of: ["EC2", "EBS", "S3"],
    #                   unit: "String",
    #                   quantity: 1.0
    #                 }
    #               ],
    #               capacity_change: [
    #                 {
    #                   quote_capacity_type: "EC2" # One of: ["EC2", "EBS", "S3"],
    #                   unit: "String",
    #                   quantity: 1.0
    #                 }
    #               ]
    #             },
    #             specifications: [
    #               {
    #                 quote_specification_type: "UPDATED_RACK" # One of: ["UPDATED_RACK", "NEW_RACK", "EXISTING_RACK", "SERVER"],
    #                 existing_rack_specification_details: {
    #                   rack_id: "RackId",
    #                   rack_use: "NETWORKING" # One of: ["NETWORKING", "COMPUTE"],
    #                   rack_power_draw_kva: 1.0,
    #                   rack_weight_lbs: 1.0,
    #                   rack_height_inches: 1.0,
    #                   rack_width_inches: 1.0,
    #                   rack_depth_inches: 1.0,
    #                   rack_unit_height: "HEIGHT_42U" # One of: ["HEIGHT_42U", "HEIGHT_2U", "HEIGHT_1U"],
    #                   ec2_capacities: [
    #                     {
    #                       family: "Family",
    #                       max_size: "MaxSize",
    #                       quantity: "Quantity"
    #                     }
    #                   ]
    #                 },
    #                 final_rack_specification_details: {
    #                   rack_id: "RackId",
    #                   rack_use: "NETWORKING" # One of: ["NETWORKING", "COMPUTE"],
    #                   rack_power_draw_kva: 1.0,
    #                   rack_weight_lbs: 1.0,
    #                   rack_height_inches: 1.0,
    #                   rack_width_inches: 1.0,
    #                   rack_depth_inches: 1.0,
    #                   rack_unit_height: "HEIGHT_42U" # One of: ["HEIGHT_42U", "HEIGHT_2U", "HEIGHT_1U"],
    #                   ec2_capacities: [
    #                     {
    #                       family: "Family",
    #                       max_size: "MaxSize",
    #                       quantity: "Quantity"
    #                     }
    #                   ]
    #                 },
    #                 server_specification_details: {
    #                   server_power_draw_kva: 1.0,
    #                   server_weight_lbs: 1.0,
    #                   server_height_inches: 1.0,
    #                   server_width_inches: 1.0,
    #                   server_depth_inches: 1.0,
    #                   rack_unit_height: "HEIGHT_42U" # One of: ["HEIGHT_42U", "HEIGHT_2U", "HEIGHT_1U"],
    #                   ec2_capacities: [
    #                     {
    #                       family: "Family",
    #                       max_size: "MaxSize",
    #                       quantity: "Quantity"
    #                     }
    #                   ]
    #                 }
    #               }
    #             ],
    #             pricing_options: [
    #               {
    #                 pricing_type: "SUBSCRIPTION" # One of: ["SUBSCRIPTION"],
    #                 subscription_pricing_details: {
    #                   payment_option: "ALL_UPFRONT" # One of: ["ALL_UPFRONT", "NO_UPFRONT", "PARTIAL_UPFRONT"],
    #                   payment_term: "THREE_YEARS" # One of: ["THREE_YEARS", "ONE_YEAR", "FIVE_YEARS"],
    #                   upfront_price: 1.0,
    #                   monthly_recurring_price: 1.0,
    #                   currency: "USD" # One of: ["USD"]
    #                 }
    #               }
    #             ]
    #           }
    #         ],
    #         submitted_order_id: "OrderIdentifier",
    #         created_date: Time.now,
    #         expiration_date: Time.now,
    #         description: "QuoteDescription"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListQuotesOutput]
    def list_quotes(params = {}, options = {})
      request = build_request(:list_quotes, params)
      request.send_request(options)
    end

    # <p>Lists the Outpost sites for your Amazon Web Services account. Use filters to return specific
    #       results.</p>
    #          <p>Use filters to return specific results. If you specify multiple filters, the results include only the resources that match
    #  all of the specified filters. For a filter where you can specify multiple values, the results include
    #  items that match any of the values that you specify for the filter.</p>
    # @param [Hash, Types::ListSitesInput] params
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum page size.</p>
    # @option params [Array<String>] :operating_address_country_code_filter
    #   <p>Filters the results by country code.</p>
    # @option params [Array<String>] :operating_address_state_or_region_filter
    #   <p>Filters the results by state or region.</p>
    # @option params [Array<String>] :operating_address_city_filter
    #   <p>Filters the results by city.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "Token",
    #     max_results: 1,
    #     operating_address_country_code_filter: ["CountryCode"],
    #     operating_address_state_or_region_filter: ["StateOrRegion"],
    #     operating_address_city_filter: ["City"]
    #   }
    #   options = {}
    #   response = client.list_sites(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sites: [
    #       {
    #         site_id: "SiteId",
    #         account_id: "AccountId",
    #         name: "SiteName",
    #         description: "SiteDescription",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         site_arn: "SiteArn",
    #         notes: "SiteNotes",
    #         operating_address_country_code: "CountryCode",
    #         operating_address_state_or_region: "StateOrRegion",
    #         operating_address_city: "City",
    #         rack_physical_properties: {
    #           power_draw_kva: "POWER_5_KVA" # One of: ["POWER_5_KVA", "POWER_10_KVA", "POWER_15_KVA", "POWER_30_KVA"],
    #           power_phase: "SINGLE_PHASE" # One of: ["SINGLE_PHASE", "THREE_PHASE"],
    #           power_connector: "L6_30P" # One of: ["L6_30P", "IEC309", "AH530P7W", "AH532P6W", "CS8365C"],
    #           power_feed_drop: "ABOVE_RACK" # One of: ["ABOVE_RACK", "BELOW_RACK"],
    #           uplink_gbps: "UPLINK_1G" # One of: ["UPLINK_1G", "UPLINK_10G", "UPLINK_40G", "UPLINK_100G"],
    #           uplink_count: "UPLINK_COUNT_1" # One of: ["UPLINK_COUNT_1", "UPLINK_COUNT_2", "UPLINK_COUNT_3", "UPLINK_COUNT_4", "UPLINK_COUNT_5", "UPLINK_COUNT_6", "UPLINK_COUNT_7", "UPLINK_COUNT_8", "UPLINK_COUNT_12", "UPLINK_COUNT_16"],
    #           fiber_optic_cable_type: "SINGLE_MODE" # One of: ["SINGLE_MODE", "MULTI_MODE"],
    #           optical_standard: "OPTIC_10GBASE_SR" # One of: ["OPTIC_10GBASE_SR", "OPTIC_10GBASE_IR", "OPTIC_10GBASE_LR", "OPTIC_40GBASE_SR", "OPTIC_40GBASE_ESR", "OPTIC_40GBASE_IR4_LR4L", "OPTIC_40GBASE_LR4", "OPTIC_100GBASE_SR4", "OPTIC_100GBASE_CWDM4", "OPTIC_100GBASE_LR4", "OPTIC_100G_PSM4_MSA", "OPTIC_1000BASE_LX", "OPTIC_1000BASE_SX"],
    #           maximum_supported_weight_lbs: "NO_LIMIT" # One of: ["NO_LIMIT", "MAX_1400_LBS", "MAX_1600_LBS", "MAX_1800_LBS", "MAX_2000_LBS"]
    #         }
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListSitesOutput]
    def list_sites(params = {}, options = {})
      request = build_request(:list_sites, params)
      request.send_request(options)
    end

    # <p>Lists the tags for the specified resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Starts the specified capacity task. You can have one active capacity task for each order
    #       and each Outpost.</p>
    # @param [Hash, Types::StartCapacityTaskInput] params
    # @option params [String] :outpost_identifier
    #   <p>The ID or ARN of the Outposts associated with the specified capacity task.</p>
    # @option params [String] :order_id
    #   <p>The ID of the Amazon Web Services Outposts order associated with the specified capacity task.</p>
    # @option params [String] :asset_id
    #   <p>The ID of the Outpost asset. An Outpost asset can be a single server within an Outposts
    #         rack or an Outposts server configuration.</p>
    # @option params [Array<Types::InstanceTypeCapacity>] :instance_pools
    #   <p>The instance pools specified in the capacity task.</p>
    # @option params [Types::InstancesToExclude] :instances_to_exclude
    #   <p>List of user-specified running instances that must not be stopped in order to free up the
    #         capacity needed to run the capacity task.</p>
    # @option params [Boolean] :dry_run
    #   <p>You can request a dry run to determine if the instance type and instance size changes is
    #         above or below available instance capacity. Requesting a dry run does not make any changes to
    #         your plan.</p>
    # @option params [String] :task_action_on_blocking_instances
    #   <p>Specify one of the following options in case an instance is blocking the capacity task
    #         from running.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>WAIT_FOR_EVACUATION</code> - Checks every 10 minutes over 48 hours to determine
    #             if instances have stopped and capacity is available to complete the task.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAIL_TASK</code> - The capacity task fails.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     outpost_identifier: "OutpostIdentifier", # required
    #     order_id: "OrderId",
    #     asset_id: "AssetIdInput",
    #     instance_pools: [ # required
    #       {
    #         instance_type: "InstanceTypeName", # required
    #         count: 1, # required
    #       }
    #     ],
    #     instances_to_exclude: {
    #       instances: ["InstanceId"],
    #       account_ids: ["AccountId"],
    #       services: ["AWS" # One of: ["AWS", "EC2", "EKS", "ELASTICACHE", "ELB", "RDS", "ROUTE53"]]
    #     },
    #     dry_run: false,
    #     task_action_on_blocking_instances: "WAIT_FOR_EVACUATION" # One of: ["WAIT_FOR_EVACUATION", "FAIL_TASK"]
    #   }
    #   options = {}
    #   response = client.start_capacity_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     capacity_task_id: "CapacityTaskId",
    #     outpost_id: "OutpostId",
    #     order_id: "OrderId",
    #     asset_id: "AssetId",
    #     requested_instance_pools: [
    #       {
    #         instance_type: "InstanceTypeName", # required
    #         count: 1, # required
    #       }
    #     ],
    #     instances_to_exclude: {
    #       instances: ["InstanceId"],
    #       account_ids: ["AccountId"],
    #       services: ["AWS" # One of: ["AWS", "EC2", "EKS", "ELASTICACHE", "ELB", "RDS", "ROUTE53"]]
    #     },
    #     dry_run: false,
    #     capacity_task_status: "REQUESTED" # One of: ["REQUESTED", "IN_PROGRESS", "FAILED", "COMPLETED", "WAITING_FOR_EVACUATION", "CANCELLATION_IN_PROGRESS", "CANCELLED"],
    #     failed: {
    #       reason: "CapacityTaskStatusReason", # required
    #       type: "UNSUPPORTED_CAPACITY_CONFIGURATION" # One of: ["UNSUPPORTED_CAPACITY_CONFIGURATION", "UNEXPECTED_ASSET_STATE", "BLOCKING_INSTANCES_NOT_EVACUATED", "INTERNAL_SERVER_ERROR", "RESOURCE_NOT_FOUND"]
    #     },
    #     creation_date: Time.now,
    #     completion_date: Time.now,
    #     last_modified_date: Time.now,
    #     task_action_on_blocking_instances: "WAIT_FOR_EVACUATION" # One of: ["WAIT_FOR_EVACUATION", "FAIL_TASK"]
    #   }
    # @return [Types::StartCapacityTaskOutput]
    def start_capacity_task(params = {}, options = {})
      request = build_request(:start_capacity_task, params)
      request.send_request(options)
    end

    # <note>
    #             <p>
    #       Amazon Web Services uses this action to install Outpost servers.</p>
    #          </note>
    #          <p> Starts the connection required for Outpost server installation. </p>
    #          <p>
    #       Use CloudTrail to monitor this action or Amazon Web Services managed policy for Amazon Web Services Outposts to secure it. For
    #       more information, see <a href="https://docs.aws.amazon.com/outposts/latest/userguide/security-iam-awsmanpol.html">
    #       Amazon Web Services managed policies for Amazon Web Services Outposts</a> and <a href="https://docs.aws.amazon.com/outposts/latest/userguide/logging-using-cloudtrail.html">
    #       Logging Amazon Web Services Outposts API calls with Amazon Web Services CloudTrail</a> in the <i>Amazon Web Services Outposts User Guide</i>.
    #       </p>
    # @param [Hash, Types::StartConnectionRequest] params
    # @option params [String] :device_serial_number
    #   <p> The serial number of the dongle. </p>
    # @option params [String] :asset_id
    #   <p> The ID of the Outpost server.</p>
    # @option params [String] :client_public_key
    #   <p> The public key of the client. </p>
    # @option params [Integer] :network_interface_device_index
    #   <p> The device index of the network interface on the Outpost server. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     device_serial_number: "DeviceSerialNumber",
    #     asset_id: "AssetId", # required
    #     client_public_key: "WireGuardPublicKey", # required
    #     network_interface_device_index: 1, # required
    #   }
    #   options = {}
    #   response = client.start_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection_id: "ConnectionId",
    #     underlay_ip_address: "UnderlayIpAddress"
    #   }
    # @return [Types::StartConnectionResponse]
    def start_connection(params = {}, options = {})
      request = build_request(:start_connection, params)
      request.send_request(options)
    end

    # <p>Starts the decommission process to return the Outposts racks or servers.</p>
    # @param [Hash, Types::StartOutpostDecommissionInput] params
    # @option params [String] :outpost_identifier
    #   <p>The ID or ARN of the Outpost that you want to decommission.</p>
    # @option params [Boolean] :validate_only
    #   <p>Validates the request without starting the decommission process.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     outpost_identifier: "OutpostIdentifier", # required
    #     validate_only: false
    #   }
    #   options = {}
    #   response = client.start_outpost_decommission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "SKIPPED" # One of: ["SKIPPED", "BLOCKED", "REQUESTED"],
    #     blocking_resource_types: ["EC2_INSTANCE" # One of: ["EC2_INSTANCE", "OUTPOST_RAM_SHARE", "LGW_ROUTING_DOMAIN", "LGW_ROUTE_TABLE", "LGW_VIRTUAL_INTERFACE_GROUP", "OUTPOST_ORDER_CANCELLABLE", "OUTPOST_ORDER_INTERVENTION_REQUIRED"]]
    #   }
    # @return [Types::StartOutpostDecommissionOutput]
    def start_outpost_decommission(params = {}, options = {})
      request = build_request(:start_outpost_decommission, params)
      request.send_request(options)
    end

    # <p>Adds tags to the specified resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
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

    # <p>Removes tags from the specified resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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

    # <p> Updates an Outpost. </p>
    # @param [Hash, Types::UpdateOutpostInput] params
    # @option params [String] :outpost_id
    #   <p> The ID or ARN of the Outpost. </p>
    # @option params [String] :name
    #   <p>The name of the Outpost.</p>
    # @option params [String] :description
    #   <p>The description of the Outpost.</p>
    # @option params [String] :supported_hardware_type
    #   <p> The type of hardware for this Outpost. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     outpost_id: "OutpostId", # required
    #     name: "OutpostName",
    #     description: "OutpostDescription",
    #     supported_hardware_type: "RACK" # One of: ["RACK", "SERVER"]
    #   }
    #   options = {}
    #   response = client.update_outpost(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     outpost: {
    #       outpost_id: "OutpostId",
    #       owner_id: "OwnerId",
    #       outpost_arn: "OutpostArn",
    #       site_id: "SiteId",
    #       name: "OutpostName",
    #       description: "OutpostDescription",
    #       life_cycle_status: "LifeCycleStatus",
    #       availability_zone: "AvailabilityZone",
    #       availability_zone_id: "AvailabilityZoneId",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       site_arn: "SiteArn",
    #       supported_hardware_type: "RACK" # One of: ["RACK", "SERVER"],
    #       generation: "GENERATION_2" # One of: ["GENERATION_2", "GENERATION_1"],
    #       rack_scaling_type: "SINGLE_RACK" # One of: ["SINGLE_RACK", "MULTI_RACK"]
    #     }
    #   }
    # @return [Types::UpdateOutpostOutput]
    def update_outpost(params = {}, options = {})
      request = build_request(:update_outpost, params)
      request.send_request(options)
    end

    # <p>Updates the specified quote. You can modify the requested capacities, constraints,
    #       payment options, payment terms, or Outpost association.</p>
    # @param [Hash, Types::UpdateQuoteInput] params
    # @option params [String] :quote_identifier
    #   <p>The ID of the quote.</p>
    # @option params [String] :outpost_identifier
    #   <p>The ID or ARN of the Outpost to associate with the quote. Specify an empty string to
    #         remove the Outpost association.</p>
    # @option params [String] :country_code
    #   <p>The country code for the Outpost site location.</p>
    # @option params [Array<Types::QuoteCapacity>] :requested_capacities
    #   <p>The updated capacity requirements for the quote.</p>
    # @option params [Array<Types::QuoteConstraint>] :requested_constraints
    #   <p>The updated physical constraints for the quote.</p>
    # @option params [Array<String>] :requested_payment_options
    #   <p>The updated payment options to include in the quote pricing.</p>
    # @option params [Array<String>] :requested_payment_terms
    #   <p>The updated payment terms to include in the quote pricing.</p>
    # @option params [String] :description
    #   <p>A description for the quote.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     quote_identifier: "QuoteIdentifier", # required
    #     outpost_identifier: "OutpostIdentifierOrEmpty",
    #     country_code: "CountryCode",
    #     requested_capacities: [
    #       {
    #         quote_capacity_type: "EC2" # One of: ["EC2", "EBS", "S3"],
    #         unit: "String",
    #         quantity: 1.0
    #       }
    #     ],
    #     requested_constraints: [
    #       {
    #         quote_constraint_type: "RACK_MAXIMUM" # One of: ["RACK_MAXIMUM", "RACK_MAX_POWER_KVA", "RACK_MAX_WEIGHT_LBS", "RACK_SPACE_CONSTRAINED"],
    #         value: "ConstraintValue"
    #       }
    #     ],
    #     requested_payment_options: ["ALL_UPFRONT" # One of: ["ALL_UPFRONT", "NO_UPFRONT", "PARTIAL_UPFRONT"]],
    #     requested_payment_terms: ["THREE_YEARS" # One of: ["THREE_YEARS", "ONE_YEAR", "FIVE_YEARS"]],
    #     description: "QuoteDescription"
    #   }
    #   options = {}
    #   response = client.update_quote(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     quote: {
    #       quote_id: "QuoteId",
    #       account_id: "AccountId",
    #       quote_status: "CREATED" # One of: ["CREATED", "ORDER_SUBMITTED", "EXPIRED"],
    #       status_message: "StatusMessage",
    #       outpost_arn: "OutpostArn",
    #       country_code: "CountryCode",
    #       requested_capacities: [
    #         {
    #           quote_capacity_type: "EC2" # One of: ["EC2", "EBS", "S3"],
    #           unit: "String",
    #           quantity: 1.0
    #         }
    #       ],
    #       requested_constraints: [
    #         {
    #           quote_constraint_type: "RACK_MAXIMUM" # One of: ["RACK_MAXIMUM", "RACK_MAX_POWER_KVA", "RACK_MAX_WEIGHT_LBS", "RACK_SPACE_CONSTRAINED"],
    #           value: "ConstraintValue"
    #         }
    #       ],
    #       requested_payment_options: ["ALL_UPFRONT" # One of: ["ALL_UPFRONT", "NO_UPFRONT", "PARTIAL_UPFRONT"]],
    #       requested_payment_terms: ["THREE_YEARS" # One of: ["THREE_YEARS", "ONE_YEAR", "FIVE_YEARS"]],
    #       quote_options: [
    #         {
    #           quote_option_identifier: "QuoteOptionIdentifier",
    #           capacities: [
    #             {
    #               quote_capacity_type: "EC2" # One of: ["EC2", "EBS", "S3"],
    #               unit: "String",
    #               quantity: 1.0
    #             }
    #           ],
    #           capacity_summary: {
    #             existing_capacities: [
    #               {
    #                 quote_capacity_type: "EC2" # One of: ["EC2", "EBS", "S3"],
    #                 unit: "String",
    #                 quantity: 1.0
    #               }
    #             ],
    #             final_capacities: [
    #               {
    #                 quote_capacity_type: "EC2" # One of: ["EC2", "EBS", "S3"],
    #                 unit: "String",
    #                 quantity: 1.0
    #               }
    #             ],
    #             capacity_change: [
    #               {
    #                 quote_capacity_type: "EC2" # One of: ["EC2", "EBS", "S3"],
    #                 unit: "String",
    #                 quantity: 1.0
    #               }
    #             ]
    #           },
    #           specifications: [
    #             {
    #               quote_specification_type: "UPDATED_RACK" # One of: ["UPDATED_RACK", "NEW_RACK", "EXISTING_RACK", "SERVER"],
    #               existing_rack_specification_details: {
    #                 rack_id: "RackId",
    #                 rack_use: "NETWORKING" # One of: ["NETWORKING", "COMPUTE"],
    #                 rack_power_draw_kva: 1.0,
    #                 rack_weight_lbs: 1.0,
    #                 rack_height_inches: 1.0,
    #                 rack_width_inches: 1.0,
    #                 rack_depth_inches: 1.0,
    #                 rack_unit_height: "HEIGHT_42U" # One of: ["HEIGHT_42U", "HEIGHT_2U", "HEIGHT_1U"],
    #                 ec2_capacities: [
    #                   {
    #                     family: "Family",
    #                     max_size: "MaxSize",
    #                     quantity: "Quantity"
    #                   }
    #                 ]
    #               },
    #               final_rack_specification_details: {
    #                 rack_id: "RackId",
    #                 rack_use: "NETWORKING" # One of: ["NETWORKING", "COMPUTE"],
    #                 rack_power_draw_kva: 1.0,
    #                 rack_weight_lbs: 1.0,
    #                 rack_height_inches: 1.0,
    #                 rack_width_inches: 1.0,
    #                 rack_depth_inches: 1.0,
    #                 rack_unit_height: "HEIGHT_42U" # One of: ["HEIGHT_42U", "HEIGHT_2U", "HEIGHT_1U"],
    #                 ec2_capacities: [
    #                   {
    #                     family: "Family",
    #                     max_size: "MaxSize",
    #                     quantity: "Quantity"
    #                   }
    #                 ]
    #               },
    #               server_specification_details: {
    #                 server_power_draw_kva: 1.0,
    #                 server_weight_lbs: 1.0,
    #                 server_height_inches: 1.0,
    #                 server_width_inches: 1.0,
    #                 server_depth_inches: 1.0,
    #                 rack_unit_height: "HEIGHT_42U" # One of: ["HEIGHT_42U", "HEIGHT_2U", "HEIGHT_1U"],
    #                 ec2_capacities: [
    #                   {
    #                     family: "Family",
    #                     max_size: "MaxSize",
    #                     quantity: "Quantity"
    #                   }
    #                 ]
    #               }
    #             }
    #           ],
    #           pricing_options: [
    #             {
    #               pricing_type: "SUBSCRIPTION" # One of: ["SUBSCRIPTION"],
    #               subscription_pricing_details: {
    #                 payment_option: "ALL_UPFRONT" # One of: ["ALL_UPFRONT", "NO_UPFRONT", "PARTIAL_UPFRONT"],
    #                 payment_term: "THREE_YEARS" # One of: ["THREE_YEARS", "ONE_YEAR", "FIVE_YEARS"],
    #                 upfront_price: 1.0,
    #                 monthly_recurring_price: 1.0,
    #                 currency: "USD" # One of: ["USD"]
    #               }
    #             }
    #           ]
    #         }
    #       ],
    #       ordering_requirements: [
    #         {
    #           status_message: "StatusMessage",
    #           ordering_requirement_type: "OUTPOST_ACTIVE_CHECK_ERROR" # One of: ["OUTPOST_ACTIVE_CHECK_ERROR", "MAXIMUM_ALLOWED_ORDERS_CHECK_ERROR", "VALID_ZIP_CODE_CHECK_ERROR", "RACK_PHYSICAL_PROPERTIES_CHECK_ERROR", "OPERATING_ADDRESS_EXISTENCE_CHECK_ERROR", "SHIPPING_ADDRESS_EXISTENCE_CHECK_ERROR", "COUNTRY_CODE_MISMATCH_CHECK_ERROR", "OUTPOST_GENERATION_MISMATCH_ERROR", "UNSUPPORTED", "OUTPOST_ID_MISSING_ON_QUOTE_ERROR", "ENTERPRISE_SUPPORT_ERROR", "SHIPPING_ADDRESS_MISSING_CONTACT_NAME_ERROR", "SHIPPING_ADDRESS_MISSING_CONTACT_NUMBER_ERROR", "SHIPPING_ADDRESS_MISSING_CONTACT_INFO_ERROR", "OUTPOST_STATE_CHANGED_ERROR", "OUTPOST_NOT_FOUND_ERROR", "OUTPOST_RENEWAL_REQUIRED_ERROR"],
    #           status: "PASS" # One of: ["PASS", "FAIL", "EXEMPT"]
    #         }
    #       ],
    #       submitted_order_id: "OrderIdentifier",
    #       created_date: Time.now,
    #       expiration_date: Time.now,
    #       description: "QuoteDescription"
    #     }
    #   }
    # @return [Types::UpdateQuoteOutput]
    def update_quote(params = {}, options = {})
      request = build_request(:update_quote, params)
      request.send_request(options)
    end

    # <p>Updates the specified site.</p>
    # @param [Hash, Types::UpdateSiteInput] params
    # @option params [String] :site_id
    #   <p> The ID or the Amazon Resource Name (ARN) of the site. </p>
    # @option params [String] :name
    #   <p>The name of the site.</p>
    # @option params [String] :description
    #   <p>The description of the site.</p>
    # @option params [String] :notes
    #   <p>Notes about a site.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     site_id: "SiteId", # required
    #     name: "SiteName",
    #     description: "SiteDescription",
    #     notes: "SiteNotes"
    #   }
    #   options = {}
    #   response = client.update_site(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     site: {
    #       site_id: "SiteId",
    #       account_id: "AccountId",
    #       name: "SiteName",
    #       description: "SiteDescription",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       site_arn: "SiteArn",
    #       notes: "SiteNotes",
    #       operating_address_country_code: "CountryCode",
    #       operating_address_state_or_region: "StateOrRegion",
    #       operating_address_city: "City",
    #       rack_physical_properties: {
    #         power_draw_kva: "POWER_5_KVA" # One of: ["POWER_5_KVA", "POWER_10_KVA", "POWER_15_KVA", "POWER_30_KVA"],
    #         power_phase: "SINGLE_PHASE" # One of: ["SINGLE_PHASE", "THREE_PHASE"],
    #         power_connector: "L6_30P" # One of: ["L6_30P", "IEC309", "AH530P7W", "AH532P6W", "CS8365C"],
    #         power_feed_drop: "ABOVE_RACK" # One of: ["ABOVE_RACK", "BELOW_RACK"],
    #         uplink_gbps: "UPLINK_1G" # One of: ["UPLINK_1G", "UPLINK_10G", "UPLINK_40G", "UPLINK_100G"],
    #         uplink_count: "UPLINK_COUNT_1" # One of: ["UPLINK_COUNT_1", "UPLINK_COUNT_2", "UPLINK_COUNT_3", "UPLINK_COUNT_4", "UPLINK_COUNT_5", "UPLINK_COUNT_6", "UPLINK_COUNT_7", "UPLINK_COUNT_8", "UPLINK_COUNT_12", "UPLINK_COUNT_16"],
    #         fiber_optic_cable_type: "SINGLE_MODE" # One of: ["SINGLE_MODE", "MULTI_MODE"],
    #         optical_standard: "OPTIC_10GBASE_SR" # One of: ["OPTIC_10GBASE_SR", "OPTIC_10GBASE_IR", "OPTIC_10GBASE_LR", "OPTIC_40GBASE_SR", "OPTIC_40GBASE_ESR", "OPTIC_40GBASE_IR4_LR4L", "OPTIC_40GBASE_LR4", "OPTIC_100GBASE_SR4", "OPTIC_100GBASE_CWDM4", "OPTIC_100GBASE_LR4", "OPTIC_100G_PSM4_MSA", "OPTIC_1000BASE_LX", "OPTIC_1000BASE_SX"],
    #         maximum_supported_weight_lbs: "NO_LIMIT" # One of: ["NO_LIMIT", "MAX_1400_LBS", "MAX_1600_LBS", "MAX_1800_LBS", "MAX_2000_LBS"]
    #       }
    #     }
    #   }
    # @return [Types::UpdateSiteOutput]
    def update_site(params = {}, options = {})
      request = build_request(:update_site, params)
      request.send_request(options)
    end

    # <p>Updates the address of the specified site.</p>
    #          <p>You can't update a site address if there is an order in progress. You must wait for the
    #       order to complete or cancel the order.</p>
    #          <p>You can update the operating address before you place an order at the site, or after all
    #       Outposts that belong to the site have been deactivated.</p>
    # @param [Hash, Types::UpdateSiteAddressInput] params
    # @option params [String] :site_id
    #   <p> The ID or the Amazon Resource Name (ARN) of the site. </p>
    # @option params [String] :address_type
    #   <p> The type of the address. </p>
    # @option params [Types::Address] :address
    #   <p> The address for the site. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     site_id: "SiteId", # required
    #     address_type: "SHIPPING_ADDRESS" # One of: ["SHIPPING_ADDRESS", "OPERATING_ADDRESS"], # required
    #     address: { # required
    #       contact_name: "ContactName", # required
    #       contact_phone_number: "ContactPhoneNumber", # required
    #       address_line1: "AddressLine1", # required
    #       address_line2: "AddressLine2",
    #       address_line3: "AddressLine3",
    #       city: "City", # required
    #       state_or_region: "StateOrRegion", # required
    #       district_or_county: "DistrictOrCounty",
    #       postal_code: "PostalCode", # required
    #       country_code: "CountryCode", # required
    #       municipality: "Municipality"
    #     }
    #   }
    #   options = {}
    #   response = client.update_site_address(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     address_type: "SHIPPING_ADDRESS" # One of: ["SHIPPING_ADDRESS", "OPERATING_ADDRESS"],
    #     address: {
    #       contact_name: "ContactName", # required
    #       contact_phone_number: "ContactPhoneNumber", # required
    #       address_line1: "AddressLine1", # required
    #       address_line2: "AddressLine2",
    #       address_line3: "AddressLine3",
    #       city: "City", # required
    #       state_or_region: "StateOrRegion", # required
    #       district_or_county: "DistrictOrCounty",
    #       postal_code: "PostalCode", # required
    #       country_code: "CountryCode", # required
    #       municipality: "Municipality"
    #     }
    #   }
    # @return [Types::UpdateSiteAddressOutput]
    def update_site_address(params = {}, options = {})
      request = build_request(:update_site_address, params)
      request.send_request(options)
    end

    # <p>Update the physical and logistical details for a rack at a site. For more information
    #       about hardware requirements for racks, see <a href="https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#checklist">Network
    #         readiness checklist</a> in the Amazon Web Services Outposts User Guide.
    #          </p>
    #          <p>To update a rack at a site with an order of <code>IN_PROGRESS</code>, you must wait for
    #       the order to complete or cancel the order.</p>
    # @param [Hash, Types::UpdateSiteRackPhysicalPropertiesInput] params
    # @option params [String] :site_id
    #   <p> The ID or the Amazon Resource Name (ARN) of the site. </p>
    # @option params [String] :power_draw_kva
    #   <p>The power draw, in kVA, available at the hardware placement position for the rack.</p>
    # @option params [String] :power_phase
    #   <p>The power option that you can provide for hardware. </p>
    #            <ul>
    #               <li>
    #                  <p>Single-phase AC feed: 200 V to 277 V, 50 Hz or 60 Hz</p>
    #               </li>
    #               <li>
    #                  <p>Three-phase AC feed: 346 V to 480 V, 50 Hz or 60 Hz</p>
    #               </li>
    #            </ul>
    # @option params [String] :power_connector
    #   <p>The power connector that Amazon Web Services should plan to provide for connections to the hardware.
    #         Note the correlation between <code>PowerPhase</code> and <code>PowerConnector</code>. </p>
    #            <ul>
    #               <li>
    #                  <p>Single-phase AC feed</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <b>L6-30P</b> – (common in US); 30A; single phase</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>IEC309 (blue)</b> – P+N+E, 6hr; 32 A; single
    #                 phase</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Three-phase AC feed</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <b>AH530P7W (red)</b> – 3P+N+E, 7hr; 30A; three
    #                 phase</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>AH532P6W (red)</b> – 3P+N+E, 6hr; 32A; three
    #                 phase</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>CS8365C</b> – (common in US); 3P+E, 50A; three
    #                 phase</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    # @option params [String] :power_feed_drop
    #   <p>Indicates whether the power feed comes above or below the rack. </p>
    # @option params [String] :uplink_gbps
    #   <p>The uplink speed the rack should support for the connection to the Region. </p>
    # @option params [String] :uplink_count
    #   <p>Racks come with two Outpost network devices. Depending on the supported uplink speed at
    #         the site, the Outpost network devices provide a variable number of uplinks. Specify the number
    #         of uplinks for each Outpost network device that you intend to use to connect the rack to your
    #         network. Note the correlation between <code>UplinkGbps</code> and <code>UplinkCount</code>. </p>
    #            <ul>
    #               <li>
    #                  <p>1Gbps - Uplinks available: 1, 2, 4, 6, 8</p>
    #               </li>
    #               <li>
    #                  <p>10Gbps - Uplinks available: 1, 2, 4, 8, 12, 16</p>
    #               </li>
    #               <li>
    #                  <p>40 and 100 Gbps- Uplinks available: 1, 2, 4</p>
    #               </li>
    #            </ul>
    # @option params [String] :fiber_optic_cable_type
    #   <p>The type of fiber that you will use to attach the Outpost to your network. </p>
    # @option params [String] :optical_standard
    #   <p>The type of optical standard that you will use to attach the Outpost to your network. This
    #         field is dependent on uplink speed, fiber type, and distance to the upstream device.
    #         For more information
    #         about networking requirements for racks, see <a href="https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#facility-networking">Network</a>
    #           in the Amazon Web Services Outposts User Guide.
    #           </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_10GBASE_SR</code>: 10GBASE-SR</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_10GBASE_IR</code>: 10GBASE-IR</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_10GBASE_LR</code>: 10GBASE-LR</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_40GBASE_SR</code>: 40GBASE-SR</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_40GBASE_ESR</code>: 40GBASE-ESR</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_40GBASE_IR4_LR4L</code>: 40GBASE-IR (LR4L)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_40GBASE_LR4</code>: 40GBASE-LR4</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_100GBASE_SR4</code>: 100GBASE-SR4</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_100GBASE_CWDM4</code>: 100GBASE-CWDM4</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_100GBASE_LR4</code>: 100GBASE-LR4</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_100G_PSM4_MSA</code>: 100G PSM4 MSA</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_1000BASE_LX</code>: 1000Base-LX</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_1000BASE_SX</code> : 1000Base-SX</p>
    #               </li>
    #            </ul>
    # @option params [String] :maximum_supported_weight_lbs
    #   <p>The maximum rack weight that this site can support. <code>NO_LIMIT</code> is over 2000lbs.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     site_id: "SiteId", # required
    #     power_draw_kva: "POWER_5_KVA" # One of: ["POWER_5_KVA", "POWER_10_KVA", "POWER_15_KVA", "POWER_30_KVA"],
    #     power_phase: "SINGLE_PHASE" # One of: ["SINGLE_PHASE", "THREE_PHASE"],
    #     power_connector: "L6_30P" # One of: ["L6_30P", "IEC309", "AH530P7W", "AH532P6W", "CS8365C"],
    #     power_feed_drop: "ABOVE_RACK" # One of: ["ABOVE_RACK", "BELOW_RACK"],
    #     uplink_gbps: "UPLINK_1G" # One of: ["UPLINK_1G", "UPLINK_10G", "UPLINK_40G", "UPLINK_100G"],
    #     uplink_count: "UPLINK_COUNT_1" # One of: ["UPLINK_COUNT_1", "UPLINK_COUNT_2", "UPLINK_COUNT_3", "UPLINK_COUNT_4", "UPLINK_COUNT_5", "UPLINK_COUNT_6", "UPLINK_COUNT_7", "UPLINK_COUNT_8", "UPLINK_COUNT_12", "UPLINK_COUNT_16"],
    #     fiber_optic_cable_type: "SINGLE_MODE" # One of: ["SINGLE_MODE", "MULTI_MODE"],
    #     optical_standard: "OPTIC_10GBASE_SR" # One of: ["OPTIC_10GBASE_SR", "OPTIC_10GBASE_IR", "OPTIC_10GBASE_LR", "OPTIC_40GBASE_SR", "OPTIC_40GBASE_ESR", "OPTIC_40GBASE_IR4_LR4L", "OPTIC_40GBASE_LR4", "OPTIC_100GBASE_SR4", "OPTIC_100GBASE_CWDM4", "OPTIC_100GBASE_LR4", "OPTIC_100G_PSM4_MSA", "OPTIC_1000BASE_LX", "OPTIC_1000BASE_SX"],
    #     maximum_supported_weight_lbs: "NO_LIMIT" # One of: ["NO_LIMIT", "MAX_1400_LBS", "MAX_1600_LBS", "MAX_1800_LBS", "MAX_2000_LBS"]
    #   }
    #   options = {}
    #   response = client.update_site_rack_physical_properties(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     site: {
    #       site_id: "SiteId",
    #       account_id: "AccountId",
    #       name: "SiteName",
    #       description: "SiteDescription",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       site_arn: "SiteArn",
    #       notes: "SiteNotes",
    #       operating_address_country_code: "CountryCode",
    #       operating_address_state_or_region: "StateOrRegion",
    #       operating_address_city: "City",
    #       rack_physical_properties: {
    #         power_draw_kva: "POWER_5_KVA" # One of: ["POWER_5_KVA", "POWER_10_KVA", "POWER_15_KVA", "POWER_30_KVA"],
    #         power_phase: "SINGLE_PHASE" # One of: ["SINGLE_PHASE", "THREE_PHASE"],
    #         power_connector: "L6_30P" # One of: ["L6_30P", "IEC309", "AH530P7W", "AH532P6W", "CS8365C"],
    #         power_feed_drop: "ABOVE_RACK" # One of: ["ABOVE_RACK", "BELOW_RACK"],
    #         uplink_gbps: "UPLINK_1G" # One of: ["UPLINK_1G", "UPLINK_10G", "UPLINK_40G", "UPLINK_100G"],
    #         uplink_count: "UPLINK_COUNT_1" # One of: ["UPLINK_COUNT_1", "UPLINK_COUNT_2", "UPLINK_COUNT_3", "UPLINK_COUNT_4", "UPLINK_COUNT_5", "UPLINK_COUNT_6", "UPLINK_COUNT_7", "UPLINK_COUNT_8", "UPLINK_COUNT_12", "UPLINK_COUNT_16"],
    #         fiber_optic_cable_type: "SINGLE_MODE" # One of: ["SINGLE_MODE", "MULTI_MODE"],
    #         optical_standard: "OPTIC_10GBASE_SR" # One of: ["OPTIC_10GBASE_SR", "OPTIC_10GBASE_IR", "OPTIC_10GBASE_LR", "OPTIC_40GBASE_SR", "OPTIC_40GBASE_ESR", "OPTIC_40GBASE_IR4_LR4L", "OPTIC_40GBASE_LR4", "OPTIC_100GBASE_SR4", "OPTIC_100GBASE_CWDM4", "OPTIC_100GBASE_LR4", "OPTIC_100G_PSM4_MSA", "OPTIC_1000BASE_LX", "OPTIC_1000BASE_SX"],
    #         maximum_supported_weight_lbs: "NO_LIMIT" # One of: ["NO_LIMIT", "MAX_1400_LBS", "MAX_1600_LBS", "MAX_1800_LBS", "MAX_2000_LBS"]
    #       }
    #     }
    #   }
    # @return [Types::UpdateSiteRackPhysicalPropertiesOutput]
    def update_site_rack_physical_properties(params = {}, options = {})
      request = build_request(:update_site_rack_physical_properties, params)
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
      context[:gem_name] = 'aws-sdk-outposts'
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
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
