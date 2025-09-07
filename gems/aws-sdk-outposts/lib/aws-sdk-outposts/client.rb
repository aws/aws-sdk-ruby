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
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'

module Aws::Outposts
  # An API client for Aws::Outposts.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::OutpostsOlafService

    add_plugin(::Aws::Outposts::Plugins::Endpoint)
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
    #  An object that resolves authentication schemes for request signing
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::Outposts::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
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
    # @option params [Array<Types::LineItemRequest>] :line_items
    #   <p>The line items that make up the order.</p>
    # @option params [String] :payment_option
    #   <p>The payment option.</p>
    # @option params [String] :payment_term
    #   <p>The payment terms.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     outpost_identifier: "OutpostIdentifier", # required
    #     line_items: [ # required
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
    #       supported_hardware_type: "RACK" # One of: ["RACK", "SERVER"]
    #     }
    #   }
    # @return [Types::CreateOutpostOutput]
    def create_outpost(params = {}, options = {})
      request = build_request(:create_outpost, params)
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
    #       services: ["AWS" # One of: ["AWS", "EC2", "ELASTICACHE", "ELB", "RDS", "ROUTE53"]]
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
    #       supported_storage: ["EBS" # One of: ["EBS", "S3"]]
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
    #       supported_hardware_type: "RACK" # One of: ["RACK", "SERVER"]
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
    #         subscription_status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "CANCELLED"],
    #         order_ids: ["String"],
    #         begin_date: Time.now,
    #         end_date: Time.now,
    #         monthly_recurring_price: 1.0,
    #         upfront_price: 1.0
    #       }
    #     ],
    #     contract_end_date: "String"
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
    #     aws_service_filter: ["AWS" # One of: ["AWS", "EC2", "ELASTICACHE", "ELB", "RDS", "ROUTE53"]],
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
    #         aws_service_name: "AWS" # One of: ["AWS", "EC2", "ELASTICACHE", "ELB", "RDS", "ROUTE53"]
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
    # @example Request syntax with placeholder values
    #   params = {
    #     outpost_identifier: "OutpostIdentifier", # required
    #     host_id_filter: ["HostId"],
    #     max_results: 1,
    #     next_token: "Token",
    #     status_filter: ["ACTIVE" # One of: ["ACTIVE", "RETIRING", "ISOLATED"]]
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
    #         asset_type: "COMPUTE" # One of: ["COMPUTE"],
    #         compute_attributes: {
    #           host_id: "HostId",
    #           state: "ACTIVE" # One of: ["ACTIVE", "ISOLATED", "RETIRING"],
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
    #         aws_service_name: "AWS" # One of: ["AWS", "EC2", "ELASTICACHE", "ELB", "RDS", "ROUTE53"]
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
    #         supported_storage: ["EBS" # One of: ["EBS", "S3"]]
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListCatalogItemsOutput]
    def list_catalog_items(params = {}, options = {})
      request = build_request(:list_catalog_items, params)
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
    #         supported_hardware_type: "RACK" # One of: ["RACK", "SERVER"]
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListOutpostsOutput]
    def list_outposts(params = {}, options = {})
      request = build_request(:list_outposts, params)
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
    #       services: ["AWS" # One of: ["AWS", "EC2", "ELASTICACHE", "ELB", "RDS", "ROUTE53"]]
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
    #       services: ["AWS" # One of: ["AWS", "EC2", "ELASTICACHE", "ELB", "RDS", "ROUTE53"]]
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
    #       supported_hardware_type: "RACK" # One of: ["RACK", "SERVER"]
    #     }
    #   }
    # @return [Types::UpdateOutpostOutput]
    def update_outpost(params = {}, options = {})
      request = build_request(:update_outpost, params)
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
    end
  end
end
