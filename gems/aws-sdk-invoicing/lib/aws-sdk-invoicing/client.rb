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
require 'aws-sdk-core/json_rpc'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:invoicing)

module Aws::Invoicing
  # An API client for Aws::Invoicing.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Invoicing
    @identifier = :invoicing

    add_plugin(::Aws::Invoicing::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Invoicing::EndpointProvider)
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
    #  Supported protocols: +:json_rpc+ (defaults to +:json_rpc+).
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

    # <p>This gets the invoice profile associated with a set of accounts. The accounts must be linked accounts under the requester management account organization.</p>
    # @param [Hash, Types::BatchGetInvoiceProfileRequest] params
    # @option params [Array<String>] :account_ids
    #   <p>Retrieves the corresponding invoice profile data for these account IDs. </p>
    # @example BatchGetInvoiceProfile
    #   # Example operation for batch_get_invoice_profile
    #   params = {
    #     account_ids: [
    #       "111111111111"
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_get_invoice_profile(params, options)
    #   response.to_h #=>
    #   {
    #     profiles: [
    #       {
    #         account_id: "111111111111",
    #         issuer: "Test",
    #         receiver_address: {
    #           address_line1: "Test",
    #           city: "Test",
    #           country_code: "LU",
    #           postal_code: "Test",
    #           state_or_region: "Test"
    #         },
    #         receiver_email: "test@amazon.com",
    #         receiver_name: "TestAccount"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["AccountIdString"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_invoice_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profiles: [
    #       {
    #         account_id: "AccountIdString",
    #         receiver_name: "BasicStringWithoutSpace",
    #         receiver_address: {
    #           address_line1: "BasicString",
    #           address_line2: "BasicString",
    #           address_line3: "BasicString",
    #           district_or_county: "BasicString",
    #           city: "BasicString",
    #           state_or_region: "BasicString",
    #           country_code: "BasicString",
    #           company_name: "BasicString",
    #           postal_code: "BasicString"
    #         },
    #         receiver_email: "SensitiveBasicStringWithoutSpace",
    #         issuer: "BasicStringWithoutSpace",
    #         tax_registration_number: "SensitiveBasicStringWithoutSpace"
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetInvoiceProfileResponse]
    def batch_get_invoice_profile(params = {}, options = {})
      request = build_request(:batch_get_invoice_profile, params)
      request.send_request(options)
    end

    # <p>This creates a new invoice unit with the provided definition.</p>
    # @param [Hash, Types::CreateInvoiceUnitRequest] params
    # @option params [String] :name
    #   <p> The unique name of the invoice unit that is shown on the generated invoice. This can't be changed once it is set. To change this name, you must delete the invoice unit recreate. </p>
    # @option params [String] :invoice_receiver
    #   <p> The Amazon Web Services account ID chosen to be the receiver of an invoice unit. All invoices generated for that invoice unit will be sent to this account ID. </p>
    # @option params [String] :description
    #   <p> The invoice unit's description. This can be changed at a later time. </p>
    # @option params [Boolean] :tax_inheritance_disabled
    #   <p>Whether the invoice unit based tax inheritance is/ should be enabled or disabled. </p>
    # @option params [Types::InvoiceUnitRule] :rule
    #   <p>The <code>InvoiceUnitRule</code> object used to create invoice units. </p>
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   <p> The tag structure that contains a tag key and value. </p>
    # @option params [String] :client_token
    #   <p> A unique, case-sensitive identifier that you provide to ensure idempotency of the request. </p>
    # @example CreateInvoiceUnit
    #   # Example operation for create_invoice_unit
    #   params = {
    #     name: "Example Invoice Unit",
    #     invoice_receiver: "111111111111",
    #     description: "Example Invoice Unit Description",
    #     tax_inheritance_disabled: false,
    #     rule: {
    #       linked_accounts: [
    #         "222222222222"
    #       ]
    #     },
    #     resource_tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     client_token: "e362c68e-4e74-48d7-9228-0bc5aa447b42"
    #   }
    #   options = {}
    #   response = client.create_invoice_unit(params, options)
    #   response.to_h #=>
    #   {
    #     invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/12345678"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "InvoiceUnitName", # required
    #     invoice_receiver: "AccountIdString", # required
    #     description: "DescriptionString",
    #     tax_inheritance_disabled: false,
    #     rule: { # required
    #       linked_accounts: ["AccountIdString"],
    #       bill_source_accounts: ["AccountIdString"]
    #     },
    #     resource_tags: [
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue", # required
    #       }
    #     ],
    #     client_token: "BasicStringWithoutSpace"
    #   }
    #   options = {}
    #   response = client.create_invoice_unit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     invoice_unit_arn: "InvoiceUnitArnString"
    #   }
    # @return [Types::CreateInvoiceUnitResponse]
    def create_invoice_unit(params = {}, options = {})
      request = build_request(:create_invoice_unit, params)
      request.send_request(options)
    end

    # <p> <i> <b>This feature API is subject to changing at any time. For more information, see the <a href="https://aws.amazon.com/service-terms/">Amazon Web Services Service Terms</a> (Betas and Previews).</b> </i> </p> <p>Creates a procurement portal preference configuration for e-invoice delivery and purchase order retrieval. This preference defines how invoices are delivered to a procurement portal and how purchase orders are retrieved.</p>
    # @param [Hash, Types::CreateProcurementPortalPreferenceRequest] params
    # @option params [String] :procurement_portal_name
    #   <p>The name of the procurement portal.</p>
    # @option params [String] :buyer_domain
    #   <p>The domain identifier for the buyer in the procurement portal.</p>
    # @option params [String] :buyer_identifier
    #   <p>The unique identifier for the buyer in the procurement portal. </p>
    # @option params [String] :supplier_domain
    #   <p>The domain identifier for the supplier in the procurement portal.</p>
    # @option params [String] :supplier_identifier
    #   <p>The unique identifier for the supplier in the procurement portal.</p>
    # @option params [Types::ProcurementPortalPreferenceSelector] :selector
    #   <p>Specifies criteria for selecting which invoices should be processed using a particular procurement portal preference.</p>
    # @option params [String] :procurement_portal_shared_secret
    #   <p>The shared secret or authentication credential used to establish secure communication with the procurement portal. This value must be encrypted at rest.</p>
    # @option params [String] :procurement_portal_instance_endpoint
    #   <p>The endpoint URL where e-invoices will be delivered to the procurement portal. Must be a valid HTTPS URL.</p>
    # @option params [Types::TestEnvPreferenceInput] :test_env_preference
    #   <p>Configuration settings for the test environment of the procurement portal. Includes test credentials and endpoints that are used for validation before production deployment.</p>
    # @option params [Boolean] :einvoice_delivery_enabled
    #   <p>Indicates whether e-invoice delivery is enabled for this procurement portal preference. Set to true to enable e-invoice delivery, false to disable.</p>
    # @option params [Types::EinvoiceDeliveryPreference] :einvoice_delivery_preference
    #   <p>Specifies the e-invoice delivery configuration including document types, attachment types, and customization settings for the portal.</p>
    # @option params [Boolean] :purchase_order_retrieval_enabled
    #   <p>Indicates whether purchase order retrieval is enabled for this procurement portal preference. Set to true to enable PO retrieval, false to disable.</p>
    # @option params [Boolean] :marketplace_punch_out_enabled
    #   Defaults to false if not provided.
    # @option params [Types::MarketplacePunchOutPreference] :marketplace_punch_out_preference
    #   Required for Coupa when MarketplacePunchOutEnabled is true.
    # @option params [Array<Types::Contact>] :contacts
    #   <p>List of contact information for portal administrators and technical contacts responsible for the e-invoice integration.</p>
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   <p>The tags to apply to this procurement portal preference resource. Each tag consists of a key and an optional value.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure idempotency of the request.</p>
    # @example CreateProcurementPortalPreference for Coupa
    #   # Example operation for create_procurement_portal_preference
    #   params = {
    #     procurement_portal_name: COUPA,
    #     buyer_domain: NetworkID,
    #     buyer_identifier: "BuyerId_1",
    #     supplier_domain: NetworkID,
    #     supplier_identifier: "SupplierId_1",
    #     selector: {
    #       invoice_unit_arns: [
    #         "arn:aws:invoicing::111111111111:invoice-unit/12345678",
    #         "arn:aws:invoicing::111111111111:invoice-unit/12345679"
    #       ],
    #       seller_of_records: [
    #         "AWS_INC",
    #         "AWS_EUROPE"
    #       ]
    #     },
    #     procurement_portal_shared_secret: "Coupa_Secret",
    #     procurement_portal_instance_endpoint: "https://www.placeholder-domain.test",
    #     test_env_preference: {
    #       buyer_domain: NetworkID,
    #       buyer_identifier: "BuyerId_1_Test",
    #       supplier_domain: NetworkID,
    #       supplier_identifier: "SupplierId_1_Test",
    #       procurement_portal_shared_secret: "Coupa_Secret_test",
    #       procurement_portal_instance_endpoint: "https://www.placeholder-domain.test"
    #     },
    #     einvoice_delivery_enabled: true,
    #     einvoice_delivery_preference: {
    #       einvoice_delivery_document_types: [
    #         AWS_CLOUD_INVOICE
    #       ],
    #       einvoice_delivery_attachment_types: [
    #         INVOICE_PDF
    #       ],
    #       protocol: CXML,
    #       purchase_order_data_sources: [
    #         {
    #           einvoice_delivery_document_type: AWS_CLOUD_INVOICE,
    #           purchase_order_data_source_type: ASSOCIATED_PURCHASE_ORDER_REQUIRED
    #         }
    #       ],
    #       connection_testing_method: PROD_ENV_DOLLAR_TEST,
    #       einvoice_delivery_activation_date: Time.parse(1750279280.091)
    #     },
    #     purchase_order_retrieval_enabled: true,
    #     marketplace_punch_out_enabled: true,
    #     marketplace_punch_out_preference: {
    #       approval_request_redirect_url: "https://www.placeholder-domain.test/approvals"
    #     },
    #     contacts: [
    #       {
    #         name: "John Doe",
    #         email: "example-placeholder@amazon.com"
    #       }
    #     ],
    #     resource_tags: [
    #       {
    #         key: "testKey",
    #         value: "testValue"
    #       }
    #     ],
    #     client_token: "e362c68e-4e74-48d7-9228-0bc5aa447b42"
    #   }
    #   options = {}
    #   response = client.create_procurement_portal_preference(params, options)
    #   response.to_h #=>
    #   {
    #     procurement_portal_preference_arn: "arn:aws:invoicing::111111111111:procurement-portal-preference/a34fd666-7810-4414-9360-aaa4bcab0abd"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     procurement_portal_name: "SAP_BUSINESS_NETWORK" # One of: ["SAP_BUSINESS_NETWORK", "COUPA"], # required
    #     buyer_domain: "NetworkID" # One of: ["NetworkID"], # required
    #     buyer_identifier: "BasicStringWithoutSpace", # required
    #     supplier_domain: "NetworkID" # One of: ["NetworkID"], # required
    #     supplier_identifier: "BasicStringWithoutSpace", # required
    #     selector: {
    #       invoice_unit_arns: ["InvoiceUnitArnString"],
    #       seller_of_records: ["BasicStringWithoutSpace"]
    #     },
    #     procurement_portal_shared_secret: "SensitiveBasicStringWithoutSpace",
    #     procurement_portal_instance_endpoint: "BasicStringWithoutSpace",
    #     test_env_preference: {
    #       buyer_domain: "NetworkID" # One of: ["NetworkID"], # required
    #       buyer_identifier: "BasicStringWithoutSpace", # required
    #       supplier_domain: "NetworkID" # One of: ["NetworkID"], # required
    #       supplier_identifier: "BasicStringWithoutSpace", # required
    #       procurement_portal_shared_secret: "BasicStringWithoutSpace",
    #       procurement_portal_instance_endpoint: "BasicStringWithoutSpace"
    #     },
    #     einvoice_delivery_enabled: false, # required
    #     einvoice_delivery_preference: {
    #       einvoice_delivery_document_types: ["AWS_CLOUD_INVOICE" # One of: ["AWS_CLOUD_INVOICE", "AWS_CLOUD_CREDIT_MEMO", "AWS_MARKETPLACE_INVOICE", "AWS_MARKETPLACE_CREDIT_MEMO", "AWS_REQUEST_FOR_PAYMENT"]], # required
    #       einvoice_delivery_attachment_types: ["INVOICE_PDF" # One of: ["INVOICE_PDF", "RFP_PDF"]],
    #       protocol: "CXML" # One of: ["CXML"], # required
    #       purchase_order_data_sources: [ # required
    #         {
    #           einvoice_delivery_document_type: "AWS_CLOUD_INVOICE" # One of: ["AWS_CLOUD_INVOICE", "AWS_CLOUD_CREDIT_MEMO", "AWS_MARKETPLACE_INVOICE", "AWS_MARKETPLACE_CREDIT_MEMO", "AWS_REQUEST_FOR_PAYMENT"],
    #           purchase_order_data_source_type: "ASSOCIATED_PURCHASE_ORDER_REQUIRED" # One of: ["ASSOCIATED_PURCHASE_ORDER_REQUIRED", "PURCHASE_ORDER_NOT_REQUIRED"]
    #         }
    #       ],
    #       connection_testing_method: "PROD_ENV_DOLLAR_TEST" # One of: ["PROD_ENV_DOLLAR_TEST", "TEST_ENV_REPLAY_TEST"], # required
    #       einvoice_delivery_activation_date: Time.now, # required
    #     },
    #     purchase_order_retrieval_enabled: false, # required
    #     marketplace_punch_out_enabled: false,
    #     marketplace_punch_out_preference: {
    #       approval_request_redirect_url: "BasicStringWithoutSpace"
    #     },
    #     contacts: [ # required
    #       {
    #         name: "BasicString",
    #         email: "EmailString"
    #       }
    #     ],
    #     resource_tags: [
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue", # required
    #       }
    #     ],
    #     client_token: "BasicStringWithoutSpace"
    #   }
    #   options = {}
    #   response = client.create_procurement_portal_preference(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     procurement_portal_preference_arn: "ProcurementPortalPreferenceArnString", # required
    #   }
    # @return [Types::CreateProcurementPortalPreferenceResponse]
    def create_procurement_portal_preference(params = {}, options = {})
      request = build_request(:create_procurement_portal_preference, params)
      request.send_request(options)
    end

    # <p>This deletes an invoice unit with the provided invoice unit ARN. </p>
    # @param [Hash, Types::DeleteInvoiceUnitRequest] params
    # @option params [String] :invoice_unit_arn
    #   <p> The ARN to identify an invoice unit. This information can't be modified or deleted. </p>
    # @option params [String] :client_token
    #   <p> A unique, case-sensitive identifier that you provide to ensure idempotency of the request. </p>
    # @example DeleteInvoiceUnit
    #   # Example operation for delete_invoice_unit
    #   params = {
    #     invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/12345678",
    #     client_token: "e362c68e-4e74-48d7-9228-0bc5aa447b44"
    #   }
    #   options = {}
    #   response = client.delete_invoice_unit(params, options)
    #   response.to_h #=>
    #   {
    #     invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/12345678"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     invoice_unit_arn: "InvoiceUnitArnString", # required
    #     client_token: "BasicStringWithoutSpace"
    #   }
    #   options = {}
    #   response = client.delete_invoice_unit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     invoice_unit_arn: "InvoiceUnitArnString"
    #   }
    # @return [Types::DeleteInvoiceUnitResponse]
    def delete_invoice_unit(params = {}, options = {})
      request = build_request(:delete_invoice_unit, params)
      request.send_request(options)
    end

    # <p> <i> <b>This feature API is subject to changing at any time. For more information, see the <a href="https://aws.amazon.com/service-terms/">Amazon Web Services Service Terms</a> (Betas and Previews).</b> </i> </p> <p>Deletes an existing procurement portal preference. This action cannot be undone. Active e-invoice delivery and PO retrieval configurations will be terminated.</p>
    # @param [Hash, Types::DeleteProcurementPortalPreferenceRequest] params
    # @option params [String] :procurement_portal_preference_arn
    #   <p>The Amazon Resource Name (ARN) of the procurement portal preference to delete.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure idempotency of the request.</p>
    # @example DeleteProcurementPortalPreference call
    #   # Example operation for delete_procurement_portal_preference
    #   params = {
    #     procurement_portal_preference_arn: "arn:aws:invoicing::111111111111:procurement-portal-preference/f71dd02e-f855-4b13-b793-0fd25c0b3ecd",
    #     client_token: "e362c68e-4e74-48d7-9228-0bc5aa447b47"
    #   }
    #   options = {}
    #   response = client.delete_procurement_portal_preference(params, options)
    #   response.to_h #=>
    #   {
    #     procurement_portal_preference_arn: "arn:aws:invoicing::111111111111:procurement-portal-preference/f71dd02e-f855-4b13-b793-0fd25c0b3ecd"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     procurement_portal_preference_arn: "ProcurementPortalPreferenceArnString", # required
    #     client_token: "BasicStringWithoutSpace"
    #   }
    #   options = {}
    #   response = client.delete_procurement_portal_preference(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     procurement_portal_preference_arn: "ProcurementPortalPreferenceArnString", # required
    #   }
    # @return [Types::DeleteProcurementPortalPreferenceResponse]
    def delete_procurement_portal_preference(params = {}, options = {})
      request = build_request(:delete_procurement_portal_preference, params)
      request.send_request(options)
    end

    # <p>Returns a URL to download the invoice document and supplemental documents associated with an invoice. The URLs are pre-signed and have expiration time. For special cases like Brazil, where Amazon Web Services generated invoice identifiers and government provided identifiers do not match, use the Amazon Web Services generated invoice identifier when making API requests. To grant IAM permission to use this operation, the caller needs the <code>invoicing:GetInvoicePDF</code> policy action.</p>
    # @param [Hash, Types::GetInvoicePDFRequest] params
    # @option params [String] :invoice_id
    #   <p> Your unique invoice ID. </p>
    # @example GetInvoicePDF without supplemental documents
    #   # Example operation for get_invoice_pdf
    #   params = {
    #     invoice_id: "abc123"
    #   }
    #   options = {}
    #   response = client.get_invoice_pdf(params, options)
    #   response.to_h #=>
    #   {
    #     invoice_pdf: {
    #       invoice_id: "abc123",
    #       document_url: "https://abcd123.com?securityTokenForDoc",
    #       document_url_expiration_date: Time.parse("2025-04-01T01:00:00.000Z"),
    #       supplemental_documents: [
    #       ]
    #     }
    #   }
    # @example GetInvoicePDF with supplemental documents
    #   # Example operation for get_invoice_pdf
    #   params = {
    #     invoice_id: "abc123"
    #   }
    #   options = {}
    #   response = client.get_invoice_pdf(params, options)
    #   response.to_h #=>
    #   {
    #     invoice_pdf: {
    #       invoice_id: "abc123",
    #       document_url: "https://abcd123.com?securityTokenForDoc",
    #       document_url_expiration_date: Time.parse("2025-04-01T01:00:00.000Z"),
    #       supplemental_documents: [
    #         {
    #           document_type: TAX_E_INVOICE,
    #           document_id: "supp-doc-1",
    #           document_url: "https://abcd123.com?securityTokenForSupplementalDoc",
    #           document_url_expiration_date: Time.parse("2025-04-01T01:00:00.000Z")
    #         }
    #       ]
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     invoice_id: "StringWithoutNewLine", # required
    #   }
    #   options = {}
    #   response = client.get_invoice_pdf(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     invoice_pdf: {
    #       invoice_id: "StringWithoutNewLine",
    #       document_url: "StringWithoutNewLine",
    #       document_url_expiration_date: Time.now,
    #       supplemental_documents: [
    #         {
    #           document_type: "GOVERNMENT_INVOICE" # One of: ["GOVERNMENT_INVOICE", "TAX_E_INVOICE", "PAYMENT_RECEIPT", "SUPPLEMENT"],
    #           document_id: "StringWithoutNewLine",
    #           document_url: "StringWithoutNewLine",
    #           document_url_expiration_date: Time.now
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetInvoicePDFResponse]
    def get_invoice_pdf(params = {}, options = {})
      request = build_request(:get_invoice_pdf, params)
      request.send_request(options)
    end

    # <p>This retrieves the invoice unit definition.</p>
    # @param [Hash, Types::GetInvoiceUnitRequest] params
    # @option params [String] :invoice_unit_arn
    #   <p> The ARN to identify an invoice unit. This information can't be modified or deleted. </p>
    # @option params [Time] :as_of
    #   <p> The state of an invoice unit at a specified time. You can see legacy invoice units that are currently deleted if the <code>AsOf</code> time is set to before it was deleted. If an <code>AsOf</code> is not provided, the default value is the current time. </p>
    # @example GetInvoiceUnit as of current time
    #   # Example operation for get_invoice_unit
    #   params = {
    #     invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/12345678"
    #   }
    #   options = {}
    #   response = client.get_invoice_unit(params, options)
    #   response.to_h #=>
    #   {
    #     invoice_receiver: "111111111111",
    #     invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/12345678",
    #     last_modified: Time.parse(1733788800),
    #     name: "Example Invoice Unit A",
    #     description: "Description changed on 1733788800",
    #     rule: {
    #       linked_accounts: [
    #         "222222222222"
    #       ]
    #     },
    #     tax_inheritance_disabled: false
    #   }
    # @example GetInvoiceUnit as of specified time
    #   # Example operation for get_invoice_unit
    #   params = {
    #     invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/87654321",
    #     as_of: Time.parse(1733097600)
    #   }
    #   options = {}
    #   response = client.get_invoice_unit(params, options)
    #   response.to_h #=>
    #   {
    #     invoice_receiver: "333333333333",
    #     invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/87654321",
    #     last_modified: Time.parse(1733011200),
    #     name: "Example Invoice Unit B",
    #     description: "Description changed on 1733011200",
    #     rule: {
    #       linked_accounts: [
    #         "333333333333"
    #       ]
    #     },
    #     tax_inheritance_disabled: false
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     invoice_unit_arn: "InvoiceUnitArnString", # required
    #     as_of: Time.now
    #   }
    #   options = {}
    #   response = client.get_invoice_unit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     invoice_unit_arn: "InvoiceUnitArnString",
    #     invoice_receiver: "AccountIdString",
    #     name: "InvoiceUnitName",
    #     description: "DescriptionString",
    #     tax_inheritance_disabled: false,
    #     rule: {
    #       linked_accounts: ["AccountIdString"],
    #       bill_source_accounts: ["AccountIdString"]
    #     },
    #     last_modified: Time.now
    #   }
    # @return [Types::GetInvoiceUnitResponse]
    def get_invoice_unit(params = {}, options = {})
      request = build_request(:get_invoice_unit, params)
      request.send_request(options)
    end

    # <p> <i> <b>This feature API is subject to changing at any time. For more information, see the <a href="https://aws.amazon.com/service-terms/">Amazon Web Services Service Terms</a> (Betas and Previews).</b> </i> </p> <p>Retrieves the details of a specific procurement portal preference configuration.</p>
    # @param [Hash, Types::GetProcurementPortalPreferenceRequest] params
    # @option params [String] :procurement_portal_preference_arn
    #   <p>The Amazon Resource Name (ARN) of the procurement portal preference to retrieve.</p>
    # @example GetProcurementPortalPreference for Coupa pref
    #   # Example operation for get_procurement_portal_preference
    #   params = {
    #     procurement_portal_preference_arn: "arn:aws:invoicing::111111111111:procurement-portal-preference/a34fd666-7810-4414-9360-aaa4bcab0abd"
    #   }
    #   options = {}
    #   response = client.get_procurement_portal_preference(params, options)
    #   response.to_h #=>
    #   {
    #     procurement_portal_preference: {
    #       aws_account_id: "111111111111",
    #       buyer_domain: NetworkID,
    #       buyer_identifier: "BuyerId_1",
    #       selector: {
    #         invoice_unit_arns: [
    #           "arn:aws:invoicing::111111111111:invoice-unit/12345678",
    #           "arn:aws:invoicing::111111111111:invoice-unit/12345679"
    #         ],
    #         seller_of_records: [
    #           "AWS_INC",
    #           "AWS_EUROPE"
    #         ]
    #       },
    #       contacts: [
    #         {
    #           email: "example-placeholder@amazon.com",
    #           name: "John Doe"
    #         }
    #       ],
    #       create_date: Time.parse(1750375489.242),
    #       einvoice_delivery_enabled: true,
    #       einvoice_delivery_preference: {
    #         connection_testing_method: PROD_ENV_DOLLAR_TEST,
    #         einvoice_delivery_activation_date: Time.parse(1750279280.091),
    #         einvoice_delivery_attachment_types: [
    #           INVOICE_PDF
    #         ],
    #         einvoice_delivery_document_types: [
    #           AWS_CLOUD_INVOICE
    #         ],
    #         protocol: CXML,
    #         purchase_order_data_sources: [
    #           {
    #             einvoice_delivery_document_type: AWS_CLOUD_INVOICE,
    #             purchase_order_data_source_type: ASSOCIATED_PURCHASE_ORDER_REQUIRED
    #           }
    #         ]
    #       },
    #       einvoice_delivery_preference_status: PENDING_VERIFICATION,
    #       last_update_date: Time.parse(1750375489.242),
    #       procurement_portal_instance_endpoint: "https://www.placeholder-domain.test",
    #       procurement_portal_name: COUPA,
    #       procurement_portal_preference_arn: "arn:aws:invoicing::111111111111:procurement-portal-preference/a34fd666-7810-4414-9360-aaa4bcab0abd",
    #       procurement_portal_shared_secret: "Coupa_Secret",
    #       purchase_order_retrieval_enabled: true,
    #       purchase_order_retrieval_endpoint: "https://www.placeholder-domain.test",
    #       purchase_order_retrieval_preference_status: PENDING_VERIFICATION,
    #       marketplace_punch_out_enabled: true,
    #       marketplace_punch_out_preference: {
    #         approval_request_redirect_url: "https://www.placeholder-domain.test/approvals"
    #       },
    #       supplier_domain: NetworkID,
    #       supplier_identifier: "SupplierId_1",
    #       test_env_preference: {
    #         buyer_domain: NetworkID,
    #         buyer_identifier: "BuyerId_1_Test",
    #         procurement_portal_instance_endpoint: "https://www.placeholder-domain.test",
    #         procurement_portal_shared_secret: "Coupa_Secret_test",
    #         purchase_order_retrieval_endpoint: "https://www.placeholder-domain.test",
    #         supplier_domain: NetworkID,
    #         supplier_identifier: "SupplierId_1_Test"
    #       },
    #       version: 1
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     procurement_portal_preference_arn: "ProcurementPortalPreferenceArnString", # required
    #   }
    #   options = {}
    #   response = client.get_procurement_portal_preference(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     procurement_portal_preference: { # required
    #       aws_account_id: "AccountIdString", # required
    #       procurement_portal_preference_arn: "ProcurementPortalPreferenceArnString", # required
    #       procurement_portal_name: "SAP_BUSINESS_NETWORK" # One of: ["SAP_BUSINESS_NETWORK", "COUPA"], # required
    #       buyer_domain: "NetworkID" # One of: ["NetworkID"], # required
    #       buyer_identifier: "BasicStringWithoutSpace", # required
    #       supplier_domain: "NetworkID" # One of: ["NetworkID"], # required
    #       supplier_identifier: "BasicStringWithoutSpace", # required
    #       selector: {
    #         invoice_unit_arns: ["InvoiceUnitArnString"],
    #         seller_of_records: ["BasicStringWithoutSpace"]
    #       },
    #       procurement_portal_shared_secret: "BasicStringWithoutSpace",
    #       procurement_portal_instance_endpoint: "BasicStringWithoutSpace",
    #       purchase_order_retrieval_endpoint: "BasicStringWithoutSpace",
    #       test_env_preference: {
    #         buyer_domain: "NetworkID" # One of: ["NetworkID"], # required
    #         buyer_identifier: "BasicStringWithoutSpace", # required
    #         supplier_domain: "NetworkID" # One of: ["NetworkID"], # required
    #         supplier_identifier: "BasicStringWithoutSpace", # required
    #         procurement_portal_shared_secret: "BasicStringWithoutSpace",
    #         procurement_portal_instance_endpoint: "BasicStringWithoutSpace",
    #         purchase_order_retrieval_endpoint: "BasicStringWithoutSpace"
    #       },
    #       einvoice_delivery_enabled: false, # required
    #       einvoice_delivery_preference: {
    #         einvoice_delivery_document_types: ["AWS_CLOUD_INVOICE" # One of: ["AWS_CLOUD_INVOICE", "AWS_CLOUD_CREDIT_MEMO", "AWS_MARKETPLACE_INVOICE", "AWS_MARKETPLACE_CREDIT_MEMO", "AWS_REQUEST_FOR_PAYMENT"]], # required
    #         einvoice_delivery_attachment_types: ["INVOICE_PDF" # One of: ["INVOICE_PDF", "RFP_PDF"]],
    #         protocol: "CXML" # One of: ["CXML"], # required
    #         purchase_order_data_sources: [ # required
    #           {
    #             einvoice_delivery_document_type: "AWS_CLOUD_INVOICE" # One of: ["AWS_CLOUD_INVOICE", "AWS_CLOUD_CREDIT_MEMO", "AWS_MARKETPLACE_INVOICE", "AWS_MARKETPLACE_CREDIT_MEMO", "AWS_REQUEST_FOR_PAYMENT"],
    #             purchase_order_data_source_type: "ASSOCIATED_PURCHASE_ORDER_REQUIRED" # One of: ["ASSOCIATED_PURCHASE_ORDER_REQUIRED", "PURCHASE_ORDER_NOT_REQUIRED"]
    #           }
    #         ],
    #         connection_testing_method: "PROD_ENV_DOLLAR_TEST" # One of: ["PROD_ENV_DOLLAR_TEST", "TEST_ENV_REPLAY_TEST"], # required
    #         einvoice_delivery_activation_date: Time.now, # required
    #       },
    #       purchase_order_retrieval_enabled: false, # required
    #       marketplace_punch_out_enabled: false,
    #       marketplace_punch_out_preference: {
    #         approval_request_redirect_url: "BasicStringWithoutSpace"
    #       },
    #       contacts: [
    #         {
    #           name: "BasicString",
    #           email: "EmailString"
    #         }
    #       ],
    #       einvoice_delivery_preference_status: "PENDING_VERIFICATION" # One of: ["PENDING_VERIFICATION", "VALIDATED", "TEST_INITIALIZED", "TEST_INITIALIZATION_FAILED", "TEST_FAILED", "ACTIVE", "SUSPENDED"],
    #       einvoice_delivery_preference_status_reason: "BasicString",
    #       purchase_order_retrieval_preference_status: "PENDING_VERIFICATION" # One of: ["PENDING_VERIFICATION", "VALIDATED", "TEST_INITIALIZED", "TEST_INITIALIZATION_FAILED", "TEST_FAILED", "ACTIVE", "SUSPENDED"],
    #       purchase_order_retrieval_preference_status_reason: "BasicString",
    #       version: 1, # required
    #       create_date: Time.now, # required
    #       last_update_date: Time.now, # required
    #     }
    #   }
    # @return [Types::GetProcurementPortalPreferenceResponse]
    def get_procurement_portal_preference(params = {}, options = {})
      request = build_request(:get_procurement_portal_preference, params)
      request.send_request(options)
    end

    # <p>Retrieves your invoice details programmatically, without line item details.</p>
    # @param [Hash, Types::ListInvoiceSummariesRequest] params
    # @option params [Types::InvoiceSummariesSelector] :selector
    #   <p>The option to retrieve details for a specific invoice by providing its unique ID. Alternatively, access information for all invoices linked to the account by providing an account ID.</p>
    # @option params [Types::InvoiceSummariesFilter] :filter
    #   <p>Filters you can use to customize your invoice summary.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. (You received this token from a previous call.)</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of invoice summaries a paginated response can contain.</p>
    # @example ListInvoiceSummaries with InvoiceId as selector
    #   # Example operation for list_invoice_summaries
    #   params = {
    #     selector: {
    #       resource_type: INVOICE_ID,
    #       value: "1111111111"
    #     }
    #   }
    #   options = {}
    #   response = client.list_invoice_summaries(params, options)
    #   response.to_h #=>
    #   {
    #     invoice_summaries: [
    #       {
    #         account_id: "111111111111",
    #         invoice_id: "1111111111",
    #         issued_date: Time.parse("2025-04-01T01:00:00.000Z"),
    #         due_date: Time.parse("2025-04-01T01:00:00.000Z"),
    #         bill_source_accounts: [
    #           "111111111111"
    #         ],
    #         bill_source_accounts_total_count: 1,
    #         receiver_role: BUYER,
    #         entity: {
    #           invoicing_entity: "Amazon Web Services, Inc.",
    #           billing_entity: AWS
    #         },
    #         billing_period: {
    #           month: 1,
    #           year: 2025
    #         },
    #         invoice_frequency: RECURRING,
    #         bill_type: ANNIVERSARY,
    #         invoice_type: INVOICE,
    #         commercial_invoice_id: "2222222222",
    #         original_invoice_id: "1111111111",
    #         purchase_order_number: "PO-12345",
    #         einvoice_delivery_status: DELIVERED,
    #         tax_authority_status: ISSUED,
    #         base_currency_amount: {
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00"
    #             },
    #             sub_total_amount: "1.00",
    #             taxes: {
    #               total_amount: "1.00"
    #             }
    #           },
    #           total_amount: "1.00",
    #           total_amount_before_tax: "1.00",
    #           currency_code: "USD"
    #         },
    #         payment_currency_amount: {
    #           total_amount: "1.00",
    #           total_amount_before_tax: "1.00",
    #           currency_code: "USD",
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00"
    #             },
    #             sub_total_amount: "1.00",
    #             taxes: {
    #               total_amount: "1.00",
    #               breakdown: [
    #                 {
    #                   amount: "1",
    #                   description: "VAT",
    #                   rate: "1.0"
    #                 }
    #               ]
    #             }
    #           },
    #           currency_exchange_details: {
    #             source_currency_code: "USD",
    #             target_currency_code: "USD",
    #             rate: "1.0"
    #           }
    #         },
    #         tax_currency_amount: {
    #           total_amount: "1.00",
    #           total_amount_before_tax: "1.00",
    #           currency_code: "USD",
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00"
    #             },
    #             sub_total_amount: "1.00",
    #             taxes: {
    #               total_amount: "1.00",
    #               breakdown: [
    #                 {
    #                   amount: "1",
    #                   description: "VAT",
    #                   rate: "1.0"
    #                 }
    #               ]
    #             }
    #           },
    #           currency_exchange_details: {
    #             source_currency_code: "USD",
    #             target_currency_code: "USD",
    #             rate: "1.0"
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @example ListInvoiceSummaries with AccountId as selector and billing period
    #   # Example operation for list_invoice_summaries
    #   params = {
    #     selector: {
    #       resource_type: ACCOUNT_ID,
    #       value: "111111111111"
    #     },
    #     filter: {
    #       billing_period: {
    #         month: 1,
    #         year: 2025
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.list_invoice_summaries(params, options)
    #   response.to_h #=>
    #   {
    #     invoice_summaries: [
    #       {
    #         account_id: "111111111111",
    #         invoice_id: "1111111111",
    #         issued_date: Time.parse("2025-04-01T01:00:00.000Z"),
    #         due_date: Time.parse("2025-04-01T01:00:00.000Z"),
    #         bill_source_accounts: [
    #           "111111111111"
    #         ],
    #         bill_source_accounts_total_count: 1,
    #         receiver_role: BUYER,
    #         entity: {
    #           invoicing_entity: "Amazon Web Services, Inc.",
    #           billing_entity: AWS
    #         },
    #         billing_period: {
    #           month: 1,
    #           year: 2025
    #         },
    #         invoice_frequency: RECURRING,
    #         bill_type: ANNIVERSARY,
    #         invoice_type: INVOICE,
    #         einvoice_delivery_status: DELIVERED,
    #         tax_authority_status: ISSUED,
    #         base_currency_amount: {
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00"
    #             },
    #             sub_total_amount: "1.00",
    #             taxes: {
    #               total_amount: "1.00"
    #             }
    #           },
    #           total_amount: "1.00",
    #           total_amount_before_tax: "1.00",
    #           currency_code: "USD"
    #         },
    #         payment_currency_amount: {
    #           total_amount: "1.00",
    #           total_amount_before_tax: "1.00",
    #           currency_code: "USD",
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00"
    #             },
    #             sub_total_amount: "1.00",
    #             taxes: {
    #               total_amount: "1.00",
    #               breakdown: [
    #                 {
    #                   amount: "1",
    #                   description: "VAT",
    #                   rate: "1.0"
    #                 }
    #               ]
    #             }
    #           },
    #           currency_exchange_details: {
    #             source_currency_code: "USD",
    #             target_currency_code: "USD",
    #             rate: "1.0"
    #           }
    #         },
    #         tax_currency_amount: {
    #           total_amount: "1.00",
    #           total_amount_before_tax: "1.00",
    #           currency_code: "USD",
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00"
    #             },
    #             sub_total_amount: "1.00",
    #             taxes: {
    #               total_amount: "1.00",
    #               breakdown: [
    #                 {
    #                   amount: "1",
    #                   description: "VAT",
    #                   rate: "1.0"
    #                 }
    #               ]
    #             }
    #           },
    #           currency_exchange_details: {
    #             source_currency_code: "USD",
    #             target_currency_code: "USD",
    #             rate: "1.0"
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @example ListInvoiceSummaries with AccountId as selector and time interval
    #   # Example operation for list_invoice_summaries
    #   params = {
    #     selector: {
    #       resource_type: ACCOUNT_ID,
    #       value: "111111111111"
    #     },
    #     filter: {
    #       time_interval: {
    #         start_date: Time.parse(1590997407),
    #         end_date: Time.parse(1592639007)
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.list_invoice_summaries(params, options)
    #   response.to_h #=>
    #   {
    #     invoice_summaries: [
    #       {
    #         account_id: "111111111111",
    #         invoice_id: "1111111111",
    #         issued_date: Time.parse("2025-04-01T01:00:00.000Z"),
    #         due_date: Time.parse("2025-04-01T01:00:00.000Z"),
    #         bill_source_accounts: [
    #           "111111111111"
    #         ],
    #         bill_source_accounts_total_count: 1,
    #         receiver_role: BUYER,
    #         entity: {
    #           invoicing_entity: "Amazon Web Services, Inc.",
    #           billing_entity: AWS
    #         },
    #         billing_period: {
    #           month: 1,
    #           year: 2025
    #         },
    #         invoice_frequency: RECURRING,
    #         bill_type: ANNIVERSARY,
    #         invoice_type: INVOICE,
    #         einvoice_delivery_status: DELIVERED,
    #         tax_authority_status: ISSUED,
    #         base_currency_amount: {
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00"
    #             },
    #             sub_total_amount: "1.00",
    #             taxes: {
    #               total_amount: "1.00"
    #             }
    #           },
    #           total_amount: "1.00",
    #           total_amount_before_tax: "1.00",
    #           currency_code: "USD"
    #         },
    #         payment_currency_amount: {
    #           total_amount: "1.00",
    #           total_amount_before_tax: "1.00",
    #           currency_code: "USD",
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00"
    #             },
    #             sub_total_amount: "1.00",
    #             taxes: {
    #               total_amount: "1.00",
    #               breakdown: [
    #                 {
    #                   amount: "1",
    #                   description: "VAT",
    #                   rate: "1.0"
    #                 }
    #               ]
    #             }
    #           },
    #           currency_exchange_details: {
    #             source_currency_code: "USD",
    #             target_currency_code: "USD",
    #             rate: "1.0"
    #           }
    #         },
    #         tax_currency_amount: {
    #           total_amount: "1.00",
    #           total_amount_before_tax: "1.00",
    #           currency_code: "USD",
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00"
    #             },
    #             sub_total_amount: "1.00",
    #             taxes: {
    #               total_amount: "1.00",
    #               breakdown: [
    #                 {
    #                   amount: "1",
    #                   description: "VAT",
    #                   rate: "1.0"
    #                 }
    #               ]
    #             }
    #           },
    #           currency_exchange_details: {
    #             source_currency_code: "USD",
    #             target_currency_code: "USD",
    #             rate: "1.0"
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @example ListInvoiceSummaries filtered by ReceiverRole
    #   # Example operation for list_invoice_summaries
    #   params = {
    #     selector: {
    #       resource_type: ACCOUNT_ID,
    #       value: "111111111111"
    #     },
    #     filter: {
    #       time_interval: {
    #         start_date: Time.parse(1748736000),
    #         end_date: Time.parse(1751328000)
    #       },
    #       receiver_role: SELLER
    #     }
    #   }
    #   options = {}
    #   response = client.list_invoice_summaries(params, options)
    #   response.to_h #=>
    #   {
    #     invoice_summaries: [
    #       {
    #         account_id: "111111111111",
    #         invoice_id: "1111111111",
    #         issued_date: Time.parse("2025-06-15T01:00:00.000Z"),
    #         due_date: Time.parse("2025-07-15T01:00:00.000Z"),
    #         bill_source_accounts: [
    #           "222222222222"
    #         ],
    #         bill_source_accounts_total_count: 1,
    #         receiver_role: SELLER,
    #         entity: {
    #           invoicing_entity: "Amazon Web Services, Inc.",
    #           billing_entity: AWS_MARKETPLACE
    #         },
    #         billing_period: {
    #           month: 6,
    #           year: 2025
    #         },
    #         invoice_frequency: RECURRING,
    #         bill_type: ANNIVERSARY,
    #         invoice_type: INVOICE,
    #         einvoice_delivery_status: DELIVERED,
    #         tax_authority_status: ISSUED,
    #         base_currency_amount: {
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00"
    #             },
    #             sub_total_amount: "1.00",
    #             taxes: {
    #               total_amount: "1.00"
    #             }
    #           },
    #           total_amount: "1.00",
    #           total_amount_before_tax: "1.00",
    #           currency_code: "USD"
    #         },
    #         payment_currency_amount: {
    #           total_amount: "1.00",
    #           total_amount_before_tax: "1.00",
    #           currency_code: "USD",
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00"
    #             },
    #             sub_total_amount: "1.00",
    #             taxes: {
    #               total_amount: "1.00",
    #               breakdown: [
    #                 {
    #                   amount: "1",
    #                   description: "VAT",
    #                   rate: "1.0"
    #                 }
    #               ]
    #             }
    #           },
    #           currency_exchange_details: {
    #             source_currency_code: "USD",
    #             target_currency_code: "USD",
    #             rate: "1.0"
    #           }
    #         },
    #         tax_currency_amount: {
    #           total_amount: "1.00",
    #           total_amount_before_tax: "1.00",
    #           currency_code: "USD",
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00"
    #             },
    #             sub_total_amount: "1.00",
    #             taxes: {
    #               total_amount: "1.00",
    #               breakdown: [
    #                 {
    #                   amount: "1",
    #                   description: "VAT",
    #                   rate: "1.0"
    #                 }
    #               ]
    #             }
    #           },
    #           currency_exchange_details: {
    #             source_currency_code: "USD",
    #             target_currency_code: "USD",
    #             rate: "1.0"
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @example ListInvoiceSummaries with AccountId as selector and a billing period and max results
    #   # Example operation for list_invoice_summaries
    #   params = {
    #     selector: {
    #       resource_type: ACCOUNT_ID,
    #       value: "111111111111"
    #     },
    #     filter: {
    #       billing_period: {
    #         month: 1,
    #         year: 2025
    #       }
    #     },
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_invoice_summaries(params, options)
    #   response.to_h #=>
    #   {
    #     invoice_summaries: [
    #       {
    #         account_id: "111111111111",
    #         invoice_id: "1111111111",
    #         issued_date: Time.parse("2025-04-01T01:00:00.000Z"),
    #         due_date: Time.parse("2025-04-01T01:00:00.000Z"),
    #         bill_source_accounts: [
    #           "111111111111"
    #         ],
    #         bill_source_accounts_total_count: 1,
    #         receiver_role: BUYER,
    #         entity: {
    #           invoicing_entity: "Amazon Web Services, Inc.",
    #           billing_entity: AWS
    #         },
    #         billing_period: {
    #           month: 1,
    #           year: 2025
    #         },
    #         invoice_frequency: RECURRING,
    #         bill_type: ANNIVERSARY,
    #         invoice_type: INVOICE,
    #         einvoice_delivery_status: DELIVERED,
    #         tax_authority_status: ISSUED,
    #         base_currency_amount: {
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00"
    #             },
    #             sub_total_amount: "1.00",
    #             taxes: {
    #               total_amount: "1.00"
    #             }
    #           },
    #           total_amount: "1.00",
    #           total_amount_before_tax: "1.00",
    #           currency_code: "USD"
    #         },
    #         payment_currency_amount: {
    #           total_amount: "1.00",
    #           total_amount_before_tax: "1.00",
    #           currency_code: "USD",
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00"
    #             },
    #             sub_total_amount: "1.00",
    #             taxes: {
    #               total_amount: "1.00",
    #               breakdown: [
    #                 {
    #                   amount: "1",
    #                   description: "VAT",
    #                   rate: "1.0"
    #                 }
    #               ]
    #             }
    #           },
    #           currency_exchange_details: {
    #             source_currency_code: "USD",
    #             target_currency_code: "USD",
    #             rate: "1.0"
    #           }
    #         },
    #         tax_currency_amount: {
    #           total_amount: "1.00",
    #           total_amount_before_tax: "1.00",
    #           currency_code: "USD",
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00"
    #             },
    #             sub_total_amount: "1.00",
    #             taxes: {
    #               total_amount: "1.00",
    #               breakdown: [
    #                 {
    #                   amount: "1",
    #                   description: "VAT",
    #                   rate: "1.0"
    #                 }
    #               ]
    #             }
    #           },
    #           currency_exchange_details: {
    #             source_currency_code: "USD",
    #             target_currency_code: "USD",
    #             rate: "1.0"
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "abcde12345"
    #   }
    # @example ListInvoiceSummaries with AccountId as selector and a billing period and next token
    #   # Example operation for list_invoice_summaries
    #   params = {
    #     selector: {
    #       resource_type: ACCOUNT_ID,
    #       value: "111111111111"
    #     },
    #     filter: {
    #       billing_period: {
    #         month: 1,
    #         year: 2025
    #       }
    #     },
    #     next_token: "abcde12345"
    #   }
    #   options = {}
    #   response = client.list_invoice_summaries(params, options)
    #   response.to_h #=>
    #   {
    #     invoice_summaries: [
    #       {
    #         account_id: "111111111111",
    #         invoice_id: "1111111111",
    #         issued_date: Time.parse("2025-04-01T01:00:00.000Z"),
    #         due_date: Time.parse("2025-04-01T01:00:00.000Z"),
    #         bill_source_accounts: [
    #           "111111111111"
    #         ],
    #         bill_source_accounts_total_count: 1,
    #         receiver_role: BUYER,
    #         entity: {
    #           invoicing_entity: "Amazon Web Services, Inc.",
    #           billing_entity: AWS
    #         },
    #         billing_period: {
    #           month: 1,
    #           year: 2025
    #         },
    #         invoice_frequency: RECURRING,
    #         bill_type: ANNIVERSARY,
    #         invoice_type: INVOICE,
    #         einvoice_delivery_status: DELIVERED,
    #         tax_authority_status: ISSUED,
    #         base_currency_amount: {
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00"
    #             },
    #             sub_total_amount: "1.00",
    #             taxes: {
    #               total_amount: "1.00"
    #             }
    #           },
    #           total_amount: "1.00",
    #           total_amount_before_tax: "1.00",
    #           currency_code: "USD"
    #         },
    #         payment_currency_amount: {
    #           total_amount: "1.00",
    #           total_amount_before_tax: "1.00",
    #           currency_code: "USD",
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00"
    #             },
    #             sub_total_amount: "1.00",
    #             taxes: {
    #               total_amount: "1.00",
    #               breakdown: [
    #                 {
    #                   amount: "1",
    #                   description: "VAT",
    #                   rate: "1.0"
    #                 }
    #               ]
    #             }
    #           },
    #           currency_exchange_details: {
    #             source_currency_code: "USD",
    #             target_currency_code: "USD",
    #             rate: "1.0"
    #           }
    #         },
    #         tax_currency_amount: {
    #           total_amount: "1.00",
    #           total_amount_before_tax: "1.00",
    #           currency_code: "USD",
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00"
    #             },
    #             sub_total_amount: "1.00",
    #             taxes: {
    #               total_amount: "1.00",
    #               breakdown: [
    #                 {
    #                   amount: "1",
    #                   description: "VAT",
    #                   rate: "1.0"
    #                 }
    #               ]
    #             }
    #           },
    #           currency_exchange_details: {
    #             source_currency_code: "USD",
    #             target_currency_code: "USD",
    #             rate: "1.0"
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     selector: { # required
    #       resource_type: "ACCOUNT_ID" # One of: ["ACCOUNT_ID", "INVOICE_ID"], # required
    #       value: "StringWithoutNewLine", # required
    #     },
    #     filter: {
    #       time_interval: {
    #         start_date: Time.now, # required
    #         end_date: Time.now, # required
    #       },
    #       billing_period: {
    #         month: 1, # required
    #         year: 1, # required
    #       },
    #       invoicing_entity: "BasicString",
    #       receiver_role: "SELLER" # One of: ["SELLER", "RESELLER", "BUYER"]
    #     },
    #     next_token: "NextTokenString",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_invoice_summaries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     invoice_summaries: [ # required
    #       {
    #         account_id: "AccountIdString",
    #         invoice_id: "BasicString",
    #         issued_date: Time.now,
    #         due_date: Time.now,
    #         bill_source_accounts: ["AccountIdString"],
    #         bill_source_accounts_total_count: 1,
    #         receiver_role: "SELLER" # One of: ["SELLER", "RESELLER", "BUYER"],
    #         entity: {
    #           invoicing_entity: "BasicString",
    #           billing_entity: "AWS" # One of: ["AWS", "AWS_MARKETPLACE"]
    #         },
    #         billing_period: {
    #           month: 1, # required
    #           year: 1, # required
    #         },
    #         invoice_frequency: "ONE_TIME" # One of: ["ONE_TIME", "RECURRING"],
    #         bill_type: "ANNIVERSARY" # One of: ["ANNIVERSARY", "PURCHASE", "REFUND"],
    #         invoice_type: "INVOICE" # One of: ["INVOICE", "CREDIT_MEMO", "PAYMENT_RECEIPT"],
    #         commercial_invoice_id: "BasicString",
    #         original_invoice_id: "BasicString",
    #         purchase_order_number: "BasicString",
    #         einvoice_delivery_status: "DELIVERED" # One of: ["DELIVERED", "NOT_DELIVERED"],
    #         tax_authority_status: "ISSUED" # One of: ["ISSUED", "CANCELLED"],
    #         base_currency_amount: {
    #           total_amount: "BasicString",
    #           total_amount_before_tax: "BasicString",
    #           currency_code: "CurrencyCode",
    #           amount_breakdown: {
    #             sub_total_amount: "BasicString",
    #             discounts: {
    #               breakdown: [
    #                 {
    #                   description: "BasicString",
    #                   amount: "BasicString",
    #                   rate: "BasicString"
    #                 }
    #               ],
    #               total_amount: "BasicString"
    #             },
    #             taxes: {
    #               breakdown: [
    #                 {
    #                   description: "BasicString",
    #                   amount: "BasicString",
    #                   rate: "BasicString"
    #                 }
    #               ],
    #               total_amount: "BasicString"
    #             },
    #             fees: {
    #               breakdown: [
    #                 {
    #                   description: "BasicString",
    #                   amount: "BasicString",
    #                   rate: "BasicString"
    #                 }
    #               ],
    #               total_amount: "BasicString"
    #             }
    #           },
    #           currency_exchange_details: {
    #             source_currency_code: "BasicString",
    #             target_currency_code: "BasicString",
    #             rate: "BasicString"
    #           }
    #         },
    #         tax_currency_amount: {
    #           total_amount: "BasicString",
    #           total_amount_before_tax: "BasicString",
    #           currency_code: "CurrencyCode",
    #           amount_breakdown: {
    #             sub_total_amount: "BasicString",
    #             discounts: {
    #               breakdown: [
    #                 {
    #                   description: "BasicString",
    #                   amount: "BasicString",
    #                   rate: "BasicString"
    #                 }
    #               ],
    #               total_amount: "BasicString"
    #             },
    #             taxes: {
    #               breakdown: [
    #                 {
    #                   description: "BasicString",
    #                   amount: "BasicString",
    #                   rate: "BasicString"
    #                 }
    #               ],
    #               total_amount: "BasicString"
    #             },
    #             fees: {
    #               breakdown: [
    #                 {
    #                   description: "BasicString",
    #                   amount: "BasicString",
    #                   rate: "BasicString"
    #                 }
    #               ],
    #               total_amount: "BasicString"
    #             }
    #           },
    #           currency_exchange_details: {
    #             source_currency_code: "BasicString",
    #             target_currency_code: "BasicString",
    #             rate: "BasicString"
    #           }
    #         },
    #         payment_currency_amount: {
    #           total_amount: "BasicString",
    #           total_amount_before_tax: "BasicString",
    #           currency_code: "CurrencyCode",
    #           amount_breakdown: {
    #             sub_total_amount: "BasicString",
    #             discounts: {
    #               breakdown: [
    #                 {
    #                   description: "BasicString",
    #                   amount: "BasicString",
    #                   rate: "BasicString"
    #                 }
    #               ],
    #               total_amount: "BasicString"
    #             },
    #             taxes: {
    #               breakdown: [
    #                 {
    #                   description: "BasicString",
    #                   amount: "BasicString",
    #                   rate: "BasicString"
    #                 }
    #               ],
    #               total_amount: "BasicString"
    #             },
    #             fees: {
    #               breakdown: [
    #                 {
    #                   description: "BasicString",
    #                   amount: "BasicString",
    #                   rate: "BasicString"
    #                 }
    #               ],
    #               total_amount: "BasicString"
    #             }
    #           },
    #           currency_exchange_details: {
    #             source_currency_code: "BasicString",
    #             target_currency_code: "BasicString",
    #             rate: "BasicString"
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextTokenString"
    #   }
    # @return [Types::ListInvoiceSummariesResponse]
    def list_invoice_summaries(params = {}, options = {})
      request = build_request(:list_invoice_summaries, params)
      request.send_request(options)
    end

    # <p>This fetches a list of all invoice unit definitions for a given account, as of the provided <code>AsOf</code> date.</p>
    # @param [Hash, Types::ListInvoiceUnitsRequest] params
    # @option params [Types::Filters] :filters
    #   <p> An optional input to the list API. If multiple filters are specified, the returned list will be a configuration that match all of the provided filters. Supported filter types are <code>InvoiceReceivers</code>, <code>Names</code>, and <code>Accounts</code>. </p>
    # @option params [String] :next_token
    #   <p>The next token used to indicate where the returned list should start from. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of invoice units that can be returned. </p>
    # @option params [Time] :as_of
    #   <p> The state of an invoice unit at a specified time. You can see legacy invoice units that are currently deleted if the <code>AsOf</code> time is set to before it was deleted. If an <code>AsOf</code> is not provided, the default value is the current time. </p>
    # @example ListInvoiceUnits without filters as of current time
    #   # Example operation for list_invoice_units
    #   params = {}
    #   options = {}
    #   response = client.list_invoice_units(params, options)
    #   response.to_h #=>
    #   {
    #     invoice_units: [
    #       {
    #         invoice_receiver: "111111111111",
    #         invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/12345678",
    #         last_modified: Time.parse(1733788800),
    #         name: "Example Invoice Unit A",
    #         description: "Description changed on 1733788800",
    #         rule: {
    #           linked_accounts: [
    #             "222222222222"
    #           ]
    #         },
    #         tax_inheritance_disabled: false
    #       },
    #       {
    #         invoice_receiver: "333333333333",
    #         invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/87654321",
    #         last_modified: Time.parse(1733788800),
    #         name: "Example Invoice Unit B",
    #         description: "Description changed on 1733788800",
    #         rule: {
    #           linked_accounts: [
    #             "333333333333"
    #           ]
    #         },
    #         tax_inheritance_disabled: true
    #       }
    #     ]
    #   }
    # @example ListInvoiceUnits with filters as of specified time
    #   # Example operation for list_invoice_units
    #   params = {
    #     as_of: Time.parse(1733097600),
    #     filters: {
    #       invoice_receivers: [
    #         "333333333333"
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.list_invoice_units(params, options)
    #   response.to_h #=>
    #   {
    #     invoice_units: [
    #       {
    #         invoice_receiver: "333333333333",
    #         invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/87654321",
    #         last_modified: Time.parse(1733011200),
    #         name: "Example Invoice Unit B",
    #         description: "Description changed on 1733011200",
    #         rule: {
    #           linked_accounts: [
    #             "333333333333"
    #           ]
    #         },
    #         tax_inheritance_disabled: false
    #       }
    #     ]
    #   }
    # @example ListInvoiceUnits with pagination - first page
    #   # Example operation for list_invoice_units
    #   params = {
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_invoice_units(params, options)
    #   response.to_h #=>
    #   {
    #     invoice_units: [
    #       {
    #         invoice_receiver: "111111111111",
    #         invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/12345678",
    #         last_modified: Time.parse(1733788800),
    #         name: "Example Invoice Unit A",
    #         description: "Description changed on 1733788800",
    #         rule: {
    #           linked_accounts: [
    #             "222222222222"
    #           ]
    #         },
    #         tax_inheritance_disabled: false
    #       }
    #     ],
    #     next_token: "nextTokenExample"
    #   }
    # @example ListInvoiceUnits with pagination - second page
    #   # Example operation for list_invoice_units
    #   params = {
    #     max_results: 1,
    #     next_token: "nextTokenExample"
    #   }
    #   options = {}
    #   response = client.list_invoice_units(params, options)
    #   response.to_h #=>
    #   {
    #     invoice_units: [
    #       {
    #         invoice_receiver: "333333333333",
    #         invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/87654321",
    #         last_modified: Time.parse(1733788800),
    #         name: "Example Invoice Unit B",
    #         description: "Description changed on 1733788800",
    #         rule: {
    #           linked_accounts: [
    #             "333333333333"
    #           ]
    #         },
    #         tax_inheritance_disabled: true
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: {
    #       names: ["InvoiceUnitName"],
    #       invoice_receivers: ["AccountIdString"],
    #       accounts: ["AccountIdString"],
    #       bill_source_accounts: ["AccountIdString"]
    #     },
    #     next_token: "NextTokenString",
    #     max_results: 1,
    #     as_of: Time.now
    #   }
    #   options = {}
    #   response = client.list_invoice_units(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     invoice_units: [
    #       {
    #         invoice_unit_arn: "InvoiceUnitArnString",
    #         invoice_receiver: "AccountIdString",
    #         name: "InvoiceUnitName",
    #         description: "DescriptionString",
    #         tax_inheritance_disabled: false,
    #         rule: {
    #           linked_accounts: ["AccountIdString"],
    #           bill_source_accounts: ["AccountIdString"]
    #         },
    #         last_modified: Time.now
    #       }
    #     ],
    #     next_token: "NextTokenString"
    #   }
    # @return [Types::ListInvoiceUnitsResponse]
    def list_invoice_units(params = {}, options = {})
      request = build_request(:list_invoice_units, params)
      request.send_request(options)
    end

    # <p> <i> <b>This feature API is subject to changing at any time. For more information, see the <a href="https://aws.amazon.com/service-terms/">Amazon Web Services Service Terms</a> (Betas and Previews).</b> </i> </p> <p>Retrieves a list of procurement portal preferences associated with the Amazon Web Services account.</p>
    # @param [Hash, Types::ListProcurementPortalPreferencesRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results. (You received this token from a previous call.)</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value.</p>
    # @example ListProcurementPortalPreferences for Coupa prefs. First Call with following pages
    #   # Example operation for list_procurement_portal_preferences
    #   params = {
    #     max_results: 2
    #   }
    #   options = {}
    #   response = client.list_procurement_portal_preferences(params, options)
    #   response.to_h #=>
    #   {
    #     next_token: "AAQA-EFRSURBSGpkVFU5MVNUVWNXTzNoUEptWEFGcEt0QzBBeHZaZmRUU2w3L0hRQmdDeEx3R0NuSnF2NjM5NGNmM1I5KzNIQzNnT0FBQUFmakI4QmdrcWhraUc5dzBCQndhZ2J6QnRBZ0VBTUdnR0NTcUdTSWIzRFFFSEFUQWVCZ2xnaGtnQlpRTUVBUzR3RVFRTVhPSnhEQ04rWk1idnAyb1RBZ0VRZ0RzbFJBeFlXMk9RRGFtTU8vdFc0MUJlTFFNU2hPR1E5bDM3MHcyS05mSjIzbU93MG1aVXk1MzBiWWVsZ3FaZzhjMndhTjZtNzNYTWd3bnpsZz09E8JRNUKK1r2-b9X8Qd1RAOSKHZOCy-UCpOQjJdSfZHcUefTH0YmlIW8ykllegYUWB1D1NjDjC3u2z2e4cLBTmQhrQewSBW-I_i8okXup9RWN60eMOnB6dl5jUiinJ-FjY_jGjbOkiWuJhXteDKP16RfVRW7mxp2-v1-B8gPPxGLolXHBHrb8gt18P8eWs8RcvRRmmbGUy5qa6nFH5WiCq9Bx2fTUTy9Iz_xZooNuiqC6y119EGQqJ9WsWsIUa8MbWHFXtn9-Uriz7osYocbFm1Evv_NCn3YK-wFy9rUlUskcM2n9AqvPYhOyf0reV7E8cErZFR_Ev8l008QcxQfaqK19-gKR9clddwoDzMVfVuyiW3vbzUXz7fzQLr-UMLCGdE3yHf1oz2SEbcxhHZ2eh7-9wEYDv0v92wXg7m7xaYvaKuVBPKqBaq66GdpS1HTfakkjRGvsoBStXWVgPahISglPO__-Ym5NnXOw2wENBVXZ7RsVe6nJ1X15bB1RDkqLV8xJD0L83snuCEBtM9pyUUQOPvfGHzC4yRusMgBav_y1kq0wjqsbJV5EhHV_SIwf-WZa_A==",
    #     procurement_portal_preferences: [
    #       {
    #         aws_account_id: "111111111111",
    #         buyer_domain: NetworkID,
    #         buyer_identifier: "BuyerId_2",
    #         create_date: Time.parse(1750375489.242),
    #         einvoice_delivery_enabled: true,
    #         einvoice_delivery_preference_status: PENDING_VERIFICATION,
    #         last_update_date: Time.parse(1750375489.242),
    #         procurement_portal_name: COUPA,
    #         procurement_portal_preference_arn: "arn:aws:invoicing::111111111111:procurement-portal-preference/1c7c6d71-fbc1-45bd-a18c-40cb61810679",
    #         purchase_order_retrieval_enabled: true,
    #         purchase_order_retrieval_preference_status: PENDING_VERIFICATION,
    #         marketplace_punch_out_enabled: false,
    #         supplier_domain: NetworkID,
    #         supplier_identifier: "SupplierId_1",
    #         selector: {
    #           invoice_unit_arns: [
    #             "arn:aws:invoicing::111111111111:invoice-unit/12345679"
    #           ],
    #           seller_of_records: [
    #             "AWS_INC"
    #           ]
    #         },
    #         version: 1
    #       },
    #       {
    #         aws_account_id: "111111111111",
    #         buyer_domain: NetworkID,
    #         buyer_identifier: "BuyerId_4",
    #         create_date: Time.parse(1750375489.242),
    #         einvoice_delivery_enabled: true,
    #         einvoice_delivery_preference_status: PENDING_VERIFICATION,
    #         last_update_date: Time.parse(1750375489.242),
    #         procurement_portal_name: COUPA,
    #         procurement_portal_preference_arn: "arn:aws:invoicing::111111111111:procurement-portal-preference/ae467ebd-ec8c-4089-b904-a7cd9e76f970",
    #         purchase_order_retrieval_enabled: true,
    #         purchase_order_retrieval_preference_status: PENDING_VERIFICATION,
    #         marketplace_punch_out_enabled: false,
    #         supplier_domain: NetworkID,
    #         supplier_identifier: "SupplierId_1",
    #         selector: {
    #           invoice_unit_arns: [
    #             "arn:aws:invoicing::111111111111:invoice-unit/12345678"
    #           ],
    #           seller_of_records: [
    #             "AWS_INC"
    #           ]
    #         },
    #         version: 1
    #       }
    #     ]
    #   }
    # @example ListProcurementPortalPreferences for Coupa prefs. Second Call with the last page
    #   # Example operation for list_procurement_portal_preferences
    #   params = {
    #     next_token: "AAQA-EFRSURBSGpkVFU5MVNUVWNXTzNoUEptWEFGcEt0QzBBeHZaZmRUU2w3L0hRQmdDeEx3R0NuSnF2NjM5NGNmM1I5KzNIQzNnT0FBQUFmakI4QmdrcWhraUc5dzBCQndhZ2J6QnRBZ0VBTUdnR0NTcUdTSWIzRFFFSEFUQWVCZ2xnaGtnQlpRTUVBUzR3RVFRTVhPSnhEQ04rWk1idnAyb1RBZ0VRZ0RzbFJBeFlXMk9RRGFtTU8vdFc0MUJlTFFNU2hPR1E5bDM3MHcyS05mSjIzbU93MG1aVXk1MzBiWWVsZ3FaZzhjMndhTjZtNzNYTWd3bnpsZz09E8JRNUKK1r2-b9X8Qd1RAOSKHZOCy-UCpOQjJdSfZHcUefTH0YmlIW8ykllegYUWB1D1NjDjC3u2z2e4cLBTmQhrQewSBW-I_i8okXup9RWN60eMOnB6dl5jUiinJ-FjY_jGjbOkiWuJhXteDKP16RfVRW7mxp2-v1-B8gPPxGLolXHBHrb8gt18P8eWs8RcvRRmmbGUy5qa6nFH5WiCq9Bx2fTUTy9Iz_xZooNuiqC6y119EGQqJ9WsWsIUa8MbWHFXtn9-Uriz7osYocbFm1Evv_NCn3YK-wFy9rUlUskcM2n9AqvPYhOyf0reV7E8cErZFR_Ev8l008QcxQfaqK19-gKR9clddwoDzMVfVuyiW3vbzUXz7fzQLr-UMLCGdE3yHf1oz2SEbcxhHZ2eh7-9wEYDv0v92wXg7m7xaYvaKuVBPKqBaq66GdpS1HTfakkjRGvsoBStXWVgPahISglPO__-Ym5NnXOw2wENBVXZ7RsVe6nJ1X15bB1RDkqLV8xJD0L83snuCEBtM9pyUUQOPvfGHzC4yRusMgBav_y1kq0wjqsbJV5EhHV_SIwf-WZa_A==",
    #     max_results: 2
    #   }
    #   options = {}
    #   response = client.list_procurement_portal_preferences(params, options)
    #   response.to_h #=>
    #   {
    #     procurement_portal_preferences: [
    #       {
    #         aws_account_id: "111111111111",
    #         buyer_domain: NetworkID,
    #         buyer_identifier: "BuyerId_1",
    #         create_date: Time.parse(1750375489.242),
    #         einvoice_delivery_enabled: true,
    #         einvoice_delivery_preference_status: TEST_INITIALIZED,
    #         einvoice_delivery_preference_status_reason: "test initialized example reason",
    #         last_update_date: Time.parse(1750375489.242),
    #         procurement_portal_name: COUPA,
    #         procurement_portal_preference_arn: "arn:aws:invoicing::111111111111:procurement-portal-preference/f71dd02e-f855-4b13-b793-0fd25c0b3ecd",
    #         purchase_order_retrieval_enabled: true,
    #         purchase_order_retrieval_preference_status: TEST_INITIALIZED,
    #         purchase_order_retrieval_preference_status_reason: "test initialized example reason",
    #         marketplace_punch_out_enabled: true,
    #         supplier_domain: NetworkID,
    #         supplier_identifier: "SupplierId_1",
    #         selector: {
    #           invoice_unit_arns: [
    #             "arn:aws:invoicing::111111111111:invoice-unit/12345678"
    #           ],
    #           seller_of_records: [
    #             "AWS_INC"
    #           ]
    #         },
    #         version: 3
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "BasicStringWithoutSpace",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_procurement_portal_preferences(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     procurement_portal_preferences: [
    #       {
    #         aws_account_id: "AccountIdString", # required
    #         procurement_portal_preference_arn: "ProcurementPortalPreferenceArnString", # required
    #         procurement_portal_name: "SAP_BUSINESS_NETWORK" # One of: ["SAP_BUSINESS_NETWORK", "COUPA"], # required
    #         buyer_domain: "NetworkID" # One of: ["NetworkID"], # required
    #         buyer_identifier: "BasicStringWithoutSpace", # required
    #         supplier_domain: "NetworkID" # One of: ["NetworkID"], # required
    #         supplier_identifier: "BasicStringWithoutSpace", # required
    #         selector: {
    #           invoice_unit_arns: ["InvoiceUnitArnString"],
    #           seller_of_records: ["BasicStringWithoutSpace"]
    #         },
    #         einvoice_delivery_enabled: false, # required
    #         purchase_order_retrieval_enabled: false, # required
    #         marketplace_punch_out_enabled: false,
    #         einvoice_delivery_preference_status: "PENDING_VERIFICATION" # One of: ["PENDING_VERIFICATION", "VALIDATED", "TEST_INITIALIZED", "TEST_INITIALIZATION_FAILED", "TEST_FAILED", "ACTIVE", "SUSPENDED"],
    #         einvoice_delivery_preference_status_reason: "BasicString",
    #         purchase_order_retrieval_preference_status: "PENDING_VERIFICATION" # One of: ["PENDING_VERIFICATION", "VALIDATED", "TEST_INITIALIZED", "TEST_INITIALIZATION_FAILED", "TEST_FAILED", "ACTIVE", "SUSPENDED"],
    #         purchase_order_retrieval_preference_status_reason: "BasicString",
    #         version: 1, # required
    #         create_date: Time.now, # required
    #         last_update_date: Time.now, # required
    #       }
    #     ],
    #     next_token: "BasicStringWithoutSpace"
    #   }
    # @return [Types::ListProcurementPortalPreferencesResponse]
    def list_procurement_portal_preferences(params = {}, options = {})
      request = build_request(:list_procurement_portal_preferences, params)
      request.send_request(options)
    end

    # <p>Returns the suppliers configured for a specified procurement portal, including supplier identifiers and associated metadata. For faster, more reliable responses, use pagination.</p>
    # @param [Hash, Types::ListProcurementPortalSuppliersRequest] params
    # @option params [String] :portal_identifier
    #   <p>The unique identifier of the procurement portal for which to list suppliers. Use the <code>PortalIdentifier</code> value returned by <code>ListProcurementPortals</code>.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You received this token from a previous call.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value. Default is 100.</p>
    # @example ListProcurementPortalSuppliers
    #   # Example operation for list_procurement_portal_suppliers
    #   params = {
    #     portal_identifier: "KXMJQWBRNP"
    #   }
    #   options = {}
    #   response = client.list_procurement_portal_suppliers(params, options)
    #   response.to_h #=>
    #   {
    #     procurement_portal_suppliers: [
    #       {
    #         supplier_identifier: "AN01010639538",
    #         seller_of_record: "AWS_INC",
    #         environment: PROD
    #       },
    #       {
    #         supplier_identifier: "AN01401912735",
    #         seller_of_record: "AWS_EUROPE",
    #         country_code: "DE",
    #         environment: PROD
    #       },
    #       {
    #         supplier_identifier: "AN01010639538-T",
    #         seller_of_record: "AWS_INC",
    #         environment: TEST
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_identifier: "ProcurementPortalIdString", # required
    #     next_token: "BasicStringWithoutSpace",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_procurement_portal_suppliers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     procurement_portal_suppliers: [ # required
    #       {
    #         supplier_identifier: "SupplierIdString", # required
    #         seller_of_record: "BasicStringWithoutSpace",
    #         country_code: "CountryCode",
    #         environment: "PROD" # One of: ["PROD", "TEST"]
    #       }
    #     ],
    #     next_token: "BasicStringWithoutSpace"
    #   }
    # @return [Types::ListProcurementPortalSuppliersResponse]
    def list_procurement_portal_suppliers(params = {}, options = {})
      request = build_request(:list_procurement_portal_suppliers, params)
      request.send_request(options)
    end

    # <p>Returns the Amazon Web Services-supported procurement portals for e-invoice delivery and purchase order retrieval. Each entry includes the portal identifier, name, and default feature configurations, which define the supported document and attachment types. For faster, more reliable responses, use pagination.</p>
    # @param [Hash, Types::ListProcurementPortalsRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You received this token from a previous call.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value. Default is 100.</p>
    # @example ListProcurementPortals
    #   # Example operation for list_procurement_portals
    #   params = {}
    #   options = {}
    #   response = client.list_procurement_portals(params, options)
    #   response.to_h #=>
    #   {
    #     procurement_portals: [
    #       {
    #         portal_identifier: "KXMJQWBRNP",
    #         portal_name: SAP_BUSINESS_NETWORK,
    #         portal_display_name: "SAP Business Network",
    #         default_feature_configurations: {
    #           invoice_configuration: {
    #             document_types: [
    #               AWS_CLOUD_INVOICE,
    #               AWS_CLOUD_CREDIT_MEMO,
    #               AWS_MARKETPLACE_INVOICE,
    #               AWS_MARKETPLACE_CREDIT_MEMO,
    #               AWS_REQUEST_FOR_PAYMENT
    #             ],
    #             attachment_types: [
    #               INVOICE_PDF,
    #               RFP_PDF
    #             ]
    #           }
    #         }
    #       },
    #       {
    #         portal_identifier: "THZVCGFLDY",
    #         portal_name: COUPA,
    #         portal_display_name: "Coupa",
    #         default_feature_configurations: {
    #           invoice_configuration: {
    #             document_types: [
    #               AWS_CLOUD_INVOICE,
    #               AWS_CLOUD_CREDIT_MEMO,
    #               AWS_MARKETPLACE_INVOICE,
    #               AWS_MARKETPLACE_CREDIT_MEMO,
    #               AWS_REQUEST_FOR_PAYMENT
    #             ],
    #             attachment_types: [
    #               INVOICE_PDF,
    #               RFP_PDF
    #             ]
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "BasicStringWithoutSpace",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_procurement_portals(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     procurement_portals: [ # required
    #       {
    #         portal_identifier: "ProcurementPortalIdString", # required
    #         portal_name: "SAP_BUSINESS_NETWORK" # One of: ["SAP_BUSINESS_NETWORK", "COUPA"], # required
    #         portal_display_name: "BasicString",
    #         default_feature_configurations: {
    #           invoice_configuration: {
    #             document_types: ["AWS_CLOUD_INVOICE" # One of: ["AWS_CLOUD_INVOICE", "AWS_CLOUD_CREDIT_MEMO", "AWS_MARKETPLACE_INVOICE", "AWS_MARKETPLACE_CREDIT_MEMO", "AWS_REQUEST_FOR_PAYMENT"]],
    #             attachment_types: ["INVOICE_PDF" # One of: ["INVOICE_PDF", "RFP_PDF"]]
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "BasicStringWithoutSpace"
    #   }
    # @return [Types::ListProcurementPortalsResponse]
    def list_procurement_portals(params = {}, options = {})
      request = build_request(:list_procurement_portals, params)
      request.send_request(options)
    end

    # <p>Lists the tags for a resource. </p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of tags to list. </p>
    # @example ListTagsForResource
    #   # Example operation for list_tags_for_resource
    #   params = {
    #     resource_arn: "arn:aws:invoicing::000000000000:invoice-unit/12345678"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {
    #     resource_tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TagrisArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_tags: [
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p> <i> <b>This feature API is subject to changing at any time. For more information, see the <a href="https://aws.amazon.com/service-terms/">Amazon Web Services Service Terms</a> (Betas and Previews).</b> </i> </p> <p>Updates an existing procurement portal preference configuration. This operation can modify settings for e-invoice delivery and purchase order retrieval.</p>
    # @param [Hash, Types::PutProcurementPortalPreferenceRequest] params
    # @option params [String] :procurement_portal_preference_arn
    #   <p>The Amazon Resource Name (ARN) of the procurement portal preference to update.</p>
    # @option params [Types::ProcurementPortalPreferenceSelector] :selector
    #   <p>Specifies criteria for selecting which invoices should be processed using a particular procurement portal preference.</p>
    # @option params [String] :procurement_portal_shared_secret
    #   <p>The updated shared secret or authentication credential for the procurement portal. This value must be encrypted at rest.</p>
    # @option params [String] :procurement_portal_instance_endpoint
    #   <p>The updated endpoint URL where e-invoices will be delivered to the procurement portal. Must be a valid HTTPS URL.</p>
    # @option params [Types::TestEnvPreferenceInput] :test_env_preference
    #   <p>Updated configuration settings for the test environment of the procurement portal.</p>
    # @option params [Boolean] :einvoice_delivery_enabled
    #   <p>Updated flag indicating whether e-invoice delivery is enabled for this procurement portal preference.</p>
    # @option params [Types::EinvoiceDeliveryPreference] :einvoice_delivery_preference
    #   <p>Updated e-invoice delivery configuration including document types, attachment types, and customization settings for the portal.</p>
    # @option params [Boolean] :purchase_order_retrieval_enabled
    #   <p>Updated flag indicating whether purchase order retrieval is enabled for this procurement portal preference.</p>
    # @option params [Boolean] :marketplace_punch_out_enabled
    #   Whether Marketplace PunchOut is enabled for this connection. Defaults to false if not provided.
    # @option params [Types::MarketplacePunchOutPreference] :marketplace_punch_out_preference
    #   Configuration for Marketplace PunchOut. Required when MarketplacePunchOutEnabled is true.
    # @option params [Array<Types::Contact>] :contacts
    #   <p>Updated list of contact information for portal administrators and technical contacts.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure idempotency of the request.</p>
    # @example PutProcurementPortalPreference for Coupa pref
    #   # Example operation for put_procurement_portal_preference
    #   params = {
    #     procurement_portal_preference_arn: "arn:aws:invoicing::111111111111:procurement-portal-preference/f71dd02e-f855-4b13-b793-0fd25c0b3ecd",
    #     procurement_portal_shared_secret: "Coupa_Secret_2",
    #     procurement_portal_instance_endpoint: "https://www.placeholder-domain.test",
    #     selector: {
    #       invoice_unit_arns: [
    #         "arn:aws:invoicing::111111111111:invoice-unit/12345679"
    #       ],
    #       seller_of_records: [
    #         "AWS_INC"
    #       ]
    #     },
    #     test_env_preference: {
    #       buyer_domain: NetworkID,
    #       buyer_identifier: "BuyerId_1_Test",
    #       supplier_domain: NetworkID,
    #       supplier_identifier: "SupplierId_1_Test",
    #       procurement_portal_shared_secret: "Coupa_Secret_test_2",
    #       procurement_portal_instance_endpoint: "https://www.placeholder-domain.test"
    #     },
    #     einvoice_delivery_enabled: true,
    #     einvoice_delivery_preference: {
    #       einvoice_delivery_document_types: [
    #         AWS_CLOUD_INVOICE
    #       ],
    #       einvoice_delivery_attachment_types: [
    #         INVOICE_PDF
    #       ],
    #       protocol: CXML,
    #       purchase_order_data_sources: [
    #         {
    #           einvoice_delivery_document_type: AWS_CLOUD_INVOICE,
    #           purchase_order_data_source_type: ASSOCIATED_PURCHASE_ORDER_REQUIRED
    #         }
    #       ],
    #       connection_testing_method: PROD_ENV_DOLLAR_TEST,
    #       einvoice_delivery_activation_date: Time.parse(1750279280.091)
    #     },
    #     purchase_order_retrieval_enabled: true,
    #     marketplace_punch_out_enabled: true,
    #     contacts: [
    #       {
    #         name: "John Doe2",
    #         email: "example-placeholder2@amazon.com"
    #       }
    #     ],
    #     client_token: "e362c68e-4e74-48d7-9228-0bc5aa447b45"
    #   }
    #   options = {}
    #   response = client.put_procurement_portal_preference(params, options)
    #   response.to_h #=>
    #   {
    #     procurement_portal_preference_arn: "arn:aws:invoicing::111111111111:procurement-portal-preference/f71dd02e-f855-4b13-b793-0fd25c0b3ecd"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     procurement_portal_preference_arn: "ProcurementPortalPreferenceArnString", # required
    #     selector: {
    #       invoice_unit_arns: ["InvoiceUnitArnString"],
    #       seller_of_records: ["BasicStringWithoutSpace"]
    #     },
    #     procurement_portal_shared_secret: "SensitiveBasicStringWithoutSpace",
    #     procurement_portal_instance_endpoint: "BasicStringWithoutSpace",
    #     test_env_preference: {
    #       buyer_domain: "NetworkID" # One of: ["NetworkID"], # required
    #       buyer_identifier: "BasicStringWithoutSpace", # required
    #       supplier_domain: "NetworkID" # One of: ["NetworkID"], # required
    #       supplier_identifier: "BasicStringWithoutSpace", # required
    #       procurement_portal_shared_secret: "BasicStringWithoutSpace",
    #       procurement_portal_instance_endpoint: "BasicStringWithoutSpace"
    #     },
    #     einvoice_delivery_enabled: false, # required
    #     einvoice_delivery_preference: {
    #       einvoice_delivery_document_types: ["AWS_CLOUD_INVOICE" # One of: ["AWS_CLOUD_INVOICE", "AWS_CLOUD_CREDIT_MEMO", "AWS_MARKETPLACE_INVOICE", "AWS_MARKETPLACE_CREDIT_MEMO", "AWS_REQUEST_FOR_PAYMENT"]], # required
    #       einvoice_delivery_attachment_types: ["INVOICE_PDF" # One of: ["INVOICE_PDF", "RFP_PDF"]],
    #       protocol: "CXML" # One of: ["CXML"], # required
    #       purchase_order_data_sources: [ # required
    #         {
    #           einvoice_delivery_document_type: "AWS_CLOUD_INVOICE" # One of: ["AWS_CLOUD_INVOICE", "AWS_CLOUD_CREDIT_MEMO", "AWS_MARKETPLACE_INVOICE", "AWS_MARKETPLACE_CREDIT_MEMO", "AWS_REQUEST_FOR_PAYMENT"],
    #           purchase_order_data_source_type: "ASSOCIATED_PURCHASE_ORDER_REQUIRED" # One of: ["ASSOCIATED_PURCHASE_ORDER_REQUIRED", "PURCHASE_ORDER_NOT_REQUIRED"]
    #         }
    #       ],
    #       connection_testing_method: "PROD_ENV_DOLLAR_TEST" # One of: ["PROD_ENV_DOLLAR_TEST", "TEST_ENV_REPLAY_TEST"], # required
    #       einvoice_delivery_activation_date: Time.now, # required
    #     },
    #     purchase_order_retrieval_enabled: false, # required
    #     marketplace_punch_out_enabled: false,
    #     marketplace_punch_out_preference: {
    #       approval_request_redirect_url: "BasicStringWithoutSpace"
    #     },
    #     contacts: [ # required
    #       {
    #         name: "BasicString",
    #         email: "EmailString"
    #       }
    #     ],
    #     client_token: "BasicStringWithoutSpace"
    #   }
    #   options = {}
    #   response = client.put_procurement_portal_preference(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     procurement_portal_preference_arn: "ProcurementPortalPreferenceArnString", # required
    #   }
    # @return [Types::PutProcurementPortalPreferenceResponse]
    def put_procurement_portal_preference(params = {}, options = {})
      request = build_request(:put_procurement_portal_preference, params)
      request.send_request(options)
    end

    # <p> <i> <b>This feature API is subject to changing at any time. For more information, see the <a href="https://aws.amazon.com/service-terms/">Amazon Web Services Service Terms</a> (Betas and Previews).</b> </i> </p> <p>Sends a validation request for a procurement portal preference. This operation initiates the validation process by issuing a validation code that confirms ownership and connectivity of the configured procurement portal endpoint. Use <code>VerifyProcurementPortalValidation</code> to submit the received code and complete validation.</p>
    # @param [Hash, Types::SendProcurementPortalValidationRequest] params
    # @option params [String] :procurement_portal_preference_arn
    #   <p>The Amazon Resource Name (ARN) of the procurement portal preference to validate.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure idempotency of the request.</p>
    # @example SendProcurementPortalValidation call
    #   # Example operation for send_procurement_portal_validation
    #   params = {
    #     procurement_portal_preference_arn: "arn:aws:invoicing::111111111111:procurement-portal-preference/f71dd02e-f855-4b13-b793-0fd25c0b3ecd"
    #   }
    #   options = {}
    #   response = client.send_procurement_portal_validation(params, options)
    #   response.to_h #=>
    #   {
    #     procurement_portal_preference_arn: "arn:aws:invoicing::111111111111:procurement-portal-preference/f71dd02e-f855-4b13-b793-0fd25c0b3ecd"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     procurement_portal_preference_arn: "ProcurementPortalPreferenceArnString", # required
    #     client_token: "BasicStringWithoutSpace"
    #   }
    #   options = {}
    #   response = client.send_procurement_portal_validation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     procurement_portal_preference_arn: "ProcurementPortalPreferenceArnString", # required
    #   }
    # @return [Types::SendProcurementPortalValidationResponse]
    def send_procurement_portal_validation(params = {}, options = {})
      request = build_request(:send_procurement_portal_validation, params)
      request.send_request(options)
    end

    # <p>Adds a tag to a resource. </p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the tags. </p>
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   <p> Adds a tag to a resource. </p>
    # @example TagResource
    #   # Example operation for tag_resource
    #   params = {
    #     resource_arn: "arn:aws:invoicing::000000000000:invoice-unit/12345678",
    #     resource_tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TagrisArn", # required
    #     resource_tags: [ # required
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue", # required
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

    # <p> Removes a tag from a resource. </p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) to untag. </p>
    # @option params [Array<String>] :resource_tag_keys
    #   <p> Keys for the tags to be removed. </p>
    # @example UntagResource
    #   # Example operation for untag_resource
    #   params = {
    #     resource_arn: "arn:aws:invoicing::000000000000:invoice-unit/12345678",
    #     resource_tag_keys: [
    #       "TagKey"
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TagrisArn", # required
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

    # <p>You can update the invoice unit configuration at any time, and Amazon Web Services will use the latest configuration at the end of the month.</p>
    # @param [Hash, Types::UpdateInvoiceUnitRequest] params
    # @option params [String] :invoice_unit_arn
    #   <p>The ARN to identify an invoice unit. This information can't be modified or deleted. </p>
    # @option params [String] :description
    #   <p>The assigned description for an invoice unit. This information can't be modified or deleted. </p>
    # @option params [Boolean] :tax_inheritance_disabled
    #   <p>Whether the invoice unit based tax inheritance is/ should be enabled or disabled. </p>
    # @option params [Types::InvoiceUnitRule] :rule
    #   <p>The <code>InvoiceUnitRule</code> object used to update invoice units. </p>
    # @option params [String] :client_token
    #   <p> A unique, case-sensitive identifier that you provide to ensure idempotency of the request. </p>
    # @example UpdateInvoiceUnit with all updatable fields
    #   # Example operation for update_invoice_unit
    #   params = {
    #     invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/12345678",
    #     description: "Updated IU description",
    #     tax_inheritance_disabled: false,
    #     rule: {
    #       linked_accounts: [
    #         "111111111111",
    #         "222222222222"
    #       ]
    #     },
    #     client_token: "e362c68e-4e74-48d7-9228-0bc5aa447b42"
    #   }
    #   options = {}
    #   response = client.update_invoice_unit(params, options)
    #   response.to_h #=>
    #   {
    #     invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/12345678"
    #   }
    # @example UpdateInvoiceUnit with specific fields
    #   # Example operation for update_invoice_unit
    #   params = {
    #     invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/12345678",
    #     description: "Updated IU description. All other fields remain unchanged",
    #     client_token: "e362c68e-4e74-48d7-9228-0bc5aa447b43"
    #   }
    #   options = {}
    #   response = client.update_invoice_unit(params, options)
    #   response.to_h #=>
    #   {
    #     invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/12345678"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     invoice_unit_arn: "InvoiceUnitArnString", # required
    #     description: "DescriptionString",
    #     tax_inheritance_disabled: false,
    #     rule: {
    #       linked_accounts: ["AccountIdString"],
    #       bill_source_accounts: ["AccountIdString"]
    #     },
    #     client_token: "BasicStringWithoutSpace"
    #   }
    #   options = {}
    #   response = client.update_invoice_unit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     invoice_unit_arn: "InvoiceUnitArnString"
    #   }
    # @return [Types::UpdateInvoiceUnitResponse]
    def update_invoice_unit(params = {}, options = {})
      request = build_request(:update_invoice_unit, params)
      request.send_request(options)
    end

    # <p> <i> <b>This feature API is subject to changing at any time. For more information, see the <a href="https://aws.amazon.com/service-terms/">Amazon Web Services Service Terms</a> (Betas and Previews).</b> </i> </p> <p>Updates the status of a procurement portal preference, including the activation state of e-invoice delivery and purchase order retrieval features.</p>
    # @param [Hash, Types::UpdateProcurementPortalPreferenceStatusRequest] params
    # @option params [String] :procurement_portal_preference_arn
    #   <p>The Amazon Resource Name (ARN) of the procurement portal preference to update.</p>
    # @option params [String] :einvoice_delivery_preference_status
    #   <p>The updated status of the e-invoice delivery preference.</p>
    # @option params [String] :einvoice_delivery_preference_status_reason
    #   <p>The reason for the e-invoice delivery preference status update, providing context for the change.</p>
    # @option params [String] :purchase_order_retrieval_preference_status
    #   <p>The updated status of the purchase order retrieval preference.</p>
    # @option params [String] :purchase_order_retrieval_preference_status_reason
    #   <p>The reason for the purchase order retrieval preference status update, providing context for the change.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure idempotency of the request.</p>
    # @example UpdateProcurementPortalPreference for EinvoiceDeliveryPreferenceStatus and PurchaseOrderRetrievalPreferenceStatus
    #   # Example operation for update_procurement_portal_preference_status
    #   params = {
    #     procurement_portal_preference_arn: "arn:aws:invoicing::111111111111:procurement-portal-preference/f71dd02e-f855-4b13-b793-0fd25c0b3ecd",
    #     einvoice_delivery_preference_status: SUSPENDED,
    #     einvoice_delivery_preference_status_reason: "suspended example reason",
    #     purchase_order_retrieval_preference_status: SUSPENDED,
    #     purchase_order_retrieval_preference_status_reason: "suspended example reason",
    #     client_token: "e362c68e-4e74-48d7-9228-0bc5aa447b46"
    #   }
    #   options = {}
    #   response = client.update_procurement_portal_preference_status(params, options)
    #   response.to_h #=>
    #   {
    #     procurement_portal_preference_arn: "arn:aws:invoicing::111111111111:procurement-portal-preference/f71dd02e-f855-4b13-b793-0fd25c0b3ecd"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     procurement_portal_preference_arn: "ProcurementPortalPreferenceArnString", # required
    #     einvoice_delivery_preference_status: "PENDING_VERIFICATION" # One of: ["PENDING_VERIFICATION", "VALIDATED", "TEST_INITIALIZED", "TEST_INITIALIZATION_FAILED", "TEST_FAILED", "ACTIVE", "SUSPENDED"],
    #     einvoice_delivery_preference_status_reason: "BasicString",
    #     purchase_order_retrieval_preference_status: "PENDING_VERIFICATION" # One of: ["PENDING_VERIFICATION", "VALIDATED", "TEST_INITIALIZED", "TEST_INITIALIZATION_FAILED", "TEST_FAILED", "ACTIVE", "SUSPENDED"],
    #     purchase_order_retrieval_preference_status_reason: "BasicString",
    #     client_token: "BasicStringWithoutSpace"
    #   }
    #   options = {}
    #   response = client.update_procurement_portal_preference_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     procurement_portal_preference_arn: "ProcurementPortalPreferenceArnString", # required
    #   }
    # @return [Types::UpdateProcurementPortalPreferenceStatusResponse]
    def update_procurement_portal_preference_status(params = {}, options = {})
      request = build_request(:update_procurement_portal_preference_status, params)
      request.send_request(options)
    end

    # <p> <i> <b>This feature API is subject to changing at any time. For more information, see the <a href="https://aws.amazon.com/service-terms/">Amazon Web Services Service Terms</a> (Betas and Previews).</b> </i> </p> <p>Submits a validation code to complete the validation of a procurement portal preference. Use this operation after calling <code>SendProcurementPortalValidation</code> to confirm ownership and connectivity of the configured procurement portal endpoint.</p>
    # @param [Hash, Types::VerifyProcurementPortalValidationRequest] params
    # @option params [String] :procurement_portal_preference_arn
    #   <p>The Amazon Resource Name (ARN) of the procurement portal preference to validate.</p>
    # @option params [String] :code
    #   <p>The validation code received from the procurement portal in response to a previous <code>SendProcurementPortalValidation</code> request.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure idempotency of the request.</p>
    # @example VerifyProcurementPortalValidation call
    #   # Example operation for verify_procurement_portal_validation
    #   params = {
    #     procurement_portal_preference_arn: "arn:aws:invoicing::111111111111:procurement-portal-preference/f71dd02e-f855-4b13-b793-0fd25c0b3ecd",
    #     code: "validation-code-123"
    #   }
    #   options = {}
    #   response = client.verify_procurement_portal_validation(params, options)
    #   response.to_h #=>
    #   {
    #     procurement_portal_preference_arn: "arn:aws:invoicing::111111111111:procurement-portal-preference/f71dd02e-f855-4b13-b793-0fd25c0b3ecd"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     procurement_portal_preference_arn: "ProcurementPortalPreferenceArnString", # required
    #     code: "BasicStringWithoutSpace", # required
    #     client_token: "BasicStringWithoutSpace"
    #   }
    #   options = {}
    #   response = client.verify_procurement_portal_validation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     procurement_portal_preference_arn: "ProcurementPortalPreferenceArnString", # required
    #   }
    # @return [Types::VerifyProcurementPortalValidationResponse]
    def verify_procurement_portal_validation(params = {}, options = {})
      request = build_request(:verify_procurement_portal_validation, params)
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
      context[:gem_name] = 'aws-sdk-invoicing'
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
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end
