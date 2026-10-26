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
require 'aws-sdk-core/json_rpc'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:marketplaceagreement)

module Aws::MarketplaceAgreement
  # An API client for Aws::MarketplaceAgreement.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSMPCommerceServiceV20200301
    @identifier = :marketplaceagreement

    add_plugin(::Aws::MarketplaceAgreement::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::MarketplaceAgreement::EndpointProvider)
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
    #  Supported protocols: +:rpc_v2_cbor+, +:json_rpc+ (defaults to +:rpc_v2_cbor+).
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

    # <p>Allows buyers (acceptors) to accept a cancellation request that is in <code>PENDING_APPROVAL</code> status. Once accepted, the cancellation request transitions to <code>APPROVED</code> status and the agreement cancellation will be processed.</p> <note> <p>Only cancellation requests in <code>PENDING_APPROVAL</code> status can be accepted. A <code>ConflictException</code> is thrown if the cancellation request is in any other status.</p> </note>
    # @param [Hash, Types::AcceptAgreementCancellationRequestInput] params
    # @option params [String] :agreement_id
    #   <p>The unique identifier of the agreement associated with the cancellation request.</p>
    # @option params [String] :agreement_cancellation_request_id
    #   <p>The unique identifier of the cancellation request to accept.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agreement_id: "AgreementId", # required
    #     agreement_cancellation_request_id: "AgreementCancellationRequestId", # required
    #   }
    #   options = {}
    #   response = client.accept_agreement_cancellation_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agreement_id: "AgreementId",
    #     agreement_cancellation_request_id: "AgreementCancellationRequestId",
    #     status: "PENDING_APPROVAL" # One of: ["PENDING_APPROVAL", "APPROVED", "REJECTED", "CANCELLED", "VALIDATION_FAILED"],
    #     reason_code: "INCORRECT_TERMS_ACCEPTED" # One of: ["INCORRECT_TERMS_ACCEPTED", "REPLACING_AGREEMENT", "TEST_AGREEMENT", "ALTERNATIVE_PROCUREMENT_CHANNEL", "PRODUCT_DISCONTINUED", "UNINTENDED_RENEWAL", "BUYER_DISSATISFACTION", "OTHER"],
    #     description: "AgreementCancellationRequestDescription",
    #     created_at: Time.now,
    #     updated_at: Time.now
    #   }
    # @return [Types::AcceptAgreementCancellationRequestOutput]
    def accept_agreement_cancellation_request(params = {}, options = {})
      request = build_request(:accept_agreement_cancellation_request, params)
      request.send_request(options)
    end

    # <p>Allows buyers (acceptors) to accept a payment request that is in <code>PENDING_APPROVAL</code> status. Once accepted, the payment request transitions to <code>APPROVED</code> status and the charge will be processed. Buyers can optionally provide a purchase order reference for their internal tracking.</p> <note> <p>Only payment requests in <code>PENDING_APPROVAL</code> status can be accepted. A <code>ConflictException</code> is thrown if the payment request is in any other status.</p> </note>
    # @param [Hash, Types::AcceptAgreementPaymentRequestInput] params
    # @option params [String] :payment_request_id
    #   <p>The unique identifier of the payment request to accept.</p>
    # @option params [String] :agreement_id
    #   <p>The unique identifier of the agreement associated with the payment request.</p>
    # @option params [String] :purchase_order_reference
    #   <p>An optional purchase order reference that buyers can provide to associate the payment request with their internal purchase order system.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     payment_request_id: "PaymentRequestId", # required
    #     agreement_id: "AgreementId", # required
    #     purchase_order_reference: "PurchaseOrderReference"
    #   }
    #   options = {}
    #   response = client.accept_agreement_payment_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payment_request_id: "PaymentRequestId",
    #     agreement_id: "AgreementId",
    #     status: "VALIDATING" # One of: ["VALIDATING", "VALIDATION_FAILED", "PENDING_APPROVAL", "APPROVED", "REJECTED", "CANCELLED"],
    #     name: "PaymentRequestName",
    #     description: "PaymentRequestDescription",
    #     charge_amount: "PositiveAmountUpto8Decimals",
    #     currency_code: "CurrencyCode",
    #     created_at: Time.now,
    #     updated_at: Time.now
    #   }
    # @return [Types::AcceptAgreementPaymentRequestOutput]
    def accept_agreement_payment_request(params = {}, options = {})
      request = build_request(:accept_agreement_payment_request, params)
      request.send_request(options)
    end

    # <p>Accepts an agreement request to finalize the agreement. The acceptor can optionally provide purchase orders to associate with the agreement charges.</p>
    # @param [Hash, Types::AcceptAgreementRequestInput] params
    # @option params [String] :agreement_request_id
    #   <p>The unique identifier of the agreement request.</p>
    # @option params [Array<Types::PurchaseOrder>] :purchase_orders
    #   <p>A list of purchase orders associated with accepting a marketplace agreement request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agreement_request_id: "AgreementRequestId", # required
    #     purchase_orders: [
    #       {
    #         charge_id: "ResourceId", # required
    #         charge_revision: 1,
    #         agreement_id: "ResourceId",
    #         purchase_order_reference: "PurchaseOrderReference"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.accept_agreement_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agreement_id: "ResourceId"
    #   }
    # @return [Types::AcceptAgreementRequestOutput]
    def accept_agreement_request(params = {}, options = {})
      request = build_request(:accept_agreement_request, params)
      request.send_request(options)
    end

    # <p>Allows sellers (proposers) to submit billing adjustment requests for one or more invoices within an agreement. Each entry in the batch specifies an invoice and the adjustment amount. The operation returns successfully created adjustment request IDs and any errors for entries that failed to process.</p> <note> <p>Each entry requires a unique <code>clientToken</code> for idempotency.</p> </note>
    # @param [Hash, Types::BatchCreateBillingAdjustmentRequestInput] params
    # @option params [Array<Types::BatchCreateBillingAdjustmentRequestEntry>] :billing_adjustment_request_entries
    #   <p>A list of billing adjustment request entries. Each entry specifies the invoice and adjustment details.</p>
    # @example Create billing adjustment requests
    #   # Example operation for batch_create_billing_adjustment_request
    #   params = {
    #     billing_adjustment_request_entries: [
    #       {
    #         original_invoice_id: "E2E20230929a108cfae",
    #         agreement_id: "agmt-SvIzsqYMyQwI3GWgJAe17URx",
    #         adjustment_amount: "500.00",
    #         currency_code: "USD",
    #         client_token: "71a5e82e-a49b-4075-8c7f-52df1d294379",
    #         adjustment_reason_code: OTHER,
    #         description: "Customer requested adjustment due to service outage during critical business period."
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_create_billing_adjustment_request(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         billing_adjustment_request_id: "ba-1a2b3c4d5e6f7g",
    #         client_token: "71a5e82e-a49b-4075-8c7f-52df1d294379"
    #       }
    #     ],
    #     errors: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     billing_adjustment_request_entries: [ # required
    #       {
    #         agreement_id: "AgreementId", # required
    #         original_invoice_id: "InvoiceId", # required
    #         adjustment_amount: "PositiveAmountUpto8Decimals", # required
    #         currency_code: "CurrencyCode", # required
    #         adjustment_reason_code: "INCORRECT_TERMS_ACCEPTED" # One of: ["INCORRECT_TERMS_ACCEPTED", "INCORRECT_METERING", "TEST_ENVIRONMENT_CHARGES", "ALTERNATIVE_PROCUREMENT_CHANNEL", "UNINTENDED_RENEWAL", "BUYER_DISSATISFACTION", "OTHER"], # required
    #         description: "BillingAdjustmentDescription",
    #         client_token: "ClientToken", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_create_billing_adjustment_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         billing_adjustment_request_id: "BillingAdjustmentRequestId", # required
    #         client_token: "ClientToken", # required
    #       }
    #     ],
    #     errors: [ # required
    #       {
    #         code: "CONFLICT_EXCEPTION" # One of: ["CONFLICT_EXCEPTION", "VALIDATION_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "INTERNAL_FAILURE"], # required
    #         message: "String", # required
    #         client_token: "ClientToken", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchCreateBillingAdjustmentRequestOutput]
    def batch_create_billing_adjustment_request(params = {}, options = {})
      request = build_request(:batch_create_billing_adjustment_request, params)
      request.send_request(options)
    end

    # <p>Allows an acceptor to cancel an active agreement. Not all agreements are eligible for cancellation. Use the error response to determine why a cancellation request was rejected.</p>
    # @param [Hash, Types::CancelAgreementInput] params
    # @option params [String] :agreement_id
    #   <p>The unique identifier of the agreement.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agreement_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.cancel_agreement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelAgreementOutput]
    def cancel_agreement(params = {}, options = {})
      request = build_request(:cancel_agreement, params)
      request.send_request(options)
    end

    # <p>Allows sellers (proposers) to withdraw an existing agreement cancellation request that is in a pending state. Once cancelled, the cancellation request transitions to <code>CANCELLED</code> status and can no longer be approved or rejected by the buyer.</p> <note> <p>Only cancellation requests in <code>PENDING_APPROVAL</code> status can be cancelled. A <code>ConflictException</code> is thrown if the cancellation request is in any other status.</p> </note>
    # @param [Hash, Types::CancelAgreementCancellationRequestInput] params
    # @option params [String] :agreement_id
    #   <p>The unique identifier of the agreement associated with the cancellation request.</p>
    # @option params [String] :agreement_cancellation_request_id
    #   <p>The unique identifier of the cancellation request to cancel.</p>
    # @option params [String] :cancellation_reason
    #   <p>A required message explaining why the cancellation request is being withdrawn (1-2000 characters).</p>
    # @example Cancel a cancellation request
    #   # Example operation for cancel_agreement_cancellation_request
    #   params = {
    #     agreement_cancellation_request_id: "acr-752jqvg74yo7k4h56cakk6396",
    #     agreement_id: "agmt-752jqvg74yo7k4h56cakk6396",
    #     cancellation_reason: "Requested agreement cancellation by mistake"
    #   }
    #   options = {}
    #   response = client.cancel_agreement_cancellation_request(params, options)
    #   response.to_h #=>
    #   {
    #     agreement_cancellation_request_id: "acr-752jqvg74yo7k4h56cakk6396",
    #     agreement_id: "agmt-752jqvg74yo7k4h56cakk6396",
    #     reason_code: PRODUCT_DISCONTINUED,
    #     description: "Product is being discontinued and no longer supported",
    #     status: CANCELLED,
    #     status_message: "Cancellation requested by seller",
    #     created_at: Time.parse("2025-01-15T10:30:00Z"),
    #     updated_at: Time.parse("2025-01-16T10:30:00Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     agreement_id: "AgreementId", # required
    #     agreement_cancellation_request_id: "AgreementCancellationRequestId", # required
    #     cancellation_reason: "AgreementCancellationRequestCancellationReason", # required
    #   }
    #   options = {}
    #   response = client.cancel_agreement_cancellation_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agreement_cancellation_request_id: "AgreementCancellationRequestId",
    #     agreement_id: "AgreementId",
    #     reason_code: "INCORRECT_TERMS_ACCEPTED" # One of: ["INCORRECT_TERMS_ACCEPTED", "REPLACING_AGREEMENT", "TEST_AGREEMENT", "ALTERNATIVE_PROCUREMENT_CHANNEL", "PRODUCT_DISCONTINUED", "UNINTENDED_RENEWAL", "BUYER_DISSATISFACTION", "OTHER"],
    #     description: "AgreementCancellationRequestDescription",
    #     status: "PENDING_APPROVAL" # One of: ["PENDING_APPROVAL", "APPROVED", "REJECTED", "CANCELLED", "VALIDATION_FAILED"],
    #     status_message: "AgreementCancellationRequestStatusMessage",
    #     created_at: Time.now,
    #     updated_at: Time.now
    #   }
    # @return [Types::CancelAgreementCancellationRequestOutput]
    def cancel_agreement_cancellation_request(params = {}, options = {})
      request = build_request(:cancel_agreement_cancellation_request, params)
      request.send_request(options)
    end

    # <p>Allows sellers (proposers) to cancel a payment request that is in <code>PENDING_APPROVAL</code> status. Once cancelled, the payment request transitions to <code>CANCELLED</code> status and can no longer be accepted or rejected by the buyer.</p> <note> <p>Only payment requests in <code>PENDING_APPROVAL</code> status can be cancelled. A <code>ConflictException</code> is thrown if the payment request is in any other status.</p> </note>
    # @param [Hash, Types::CancelAgreementPaymentRequestInput] params
    # @option params [String] :payment_request_id
    #   <p>The unique identifier of the payment request to cancel.</p>
    # @option params [String] :agreement_id
    #   <p>The unique identifier of the agreement associated with the payment request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     payment_request_id: "PaymentRequestId", # required
    #     agreement_id: "AgreementId", # required
    #   }
    #   options = {}
    #   response = client.cancel_agreement_payment_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payment_request_id: "PaymentRequestId",
    #     agreement_id: "AgreementId",
    #     status: "VALIDATING" # One of: ["VALIDATING", "VALIDATION_FAILED", "PENDING_APPROVAL", "APPROVED", "REJECTED", "CANCELLED"],
    #     name: "PaymentRequestName",
    #     description: "PaymentRequestDescription",
    #     charge_amount: "PositiveAmountUpto8Decimals",
    #     currency_code: "CurrencyCode",
    #     created_at: Time.now,
    #     updated_at: Time.now
    #   }
    # @return [Types::CancelAgreementPaymentRequestOutput]
    def cancel_agreement_payment_request(params = {}, options = {})
      request = build_request(:cancel_agreement_payment_request, params)
      request.send_request(options)
    end

    # <p>Creates an agreement request that acts as a quote for the terms you want to accept. The agreement request captures the requested terms, calculates charges, and returns a summary. Use <code>AcceptAgreementRequest</code> with the returned <code>agreementRequestId</code> to finalize the agreement.</p>
    # @param [Hash, Types::CreateAgreementRequestInput] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @option params [String] :intent
    #   <p>The purpose and desired outcome of the agreement request. This is a required parameter that determines how the agreement request is processed.</p> <ul> <li> <p> <code>NEW</code> – Creates a new agreement for terms in the request.</p> </li> <li> <p> <code>AMEND</code> – Modifies an existing agreement with terms that are accepted in the request.</p> </li> <li> <p> <code>REPLACE</code> – Creates a new agreement with accepted terms and replaces the existing agreement.</p> </li> </ul>
    # @option params [Array<Types::RequestedTerm>] :requested_terms
    #   <p>A list of terms that define what is being accepted as part of the agreement. Some terms require configuration.</p>
    # @option params [String] :source_agreement_identifier
    #   <p>The agreement's identifier that the request acts upon.</p> <important> <p> This parameter is required for all non-<code>NEW</code> intents (i.e., <code>AMEND</code> or <code>REPLACE</code>). Don't provide this parameter if the intent is <code>NEW</code>. </p> </important>
    # @option params [String] :agreement_proposal_identifier
    #   <p>The agreement proposal signed by the proposer. The proposal includes the requested resources and the terms that outline an agreement outcome.</p> <important> <p> This parameter is required if the intent is not <code>AMEND</code>.</p> </important>
    # @option params [Types::TaxConfiguration] :tax_configuration
    #   <p>Configuration for tax estimation in the agreement request response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     intent: "NEW" # One of: ["NEW", "AMEND", "REPLACE"], # required
    #     requested_terms: [ # required
    #       {
    #         id: "TermId", # required
    #         configuration: {
    #           # One of:
    #           configurable_upfront_pricing_term_configuration: {
    #             selector_value: "BoundedString", # required
    #             dimensions: [ # required
    #               {
    #                 dimension_key: "BoundedString", # required
    #                 dimension_value: 1, # required
    #               }
    #             ]
    #           },
    #           renewal_term_configuration: {
    #             enable_auto_renew: false, # required
    #           },
    #           variable_payment_term_configuration: {
    #             payment_request_approval_strategy: "AUTO_APPROVE_ON_EXPIRATION" # One of: ["AUTO_APPROVE_ON_EXPIRATION", "WAIT_FOR_APPROVAL"], # required
    #             expiration_duration: "ISO8601Duration"
    #           }
    #         }
    #       }
    #     ],
    #     source_agreement_identifier: "ResourceId",
    #     agreement_proposal_identifier: "AgreementProposalId",
    #     tax_configuration: {
    #       tax_estimation: "DISABLED" # One of: ["DISABLED", "ENABLED"]
    #     }
    #   }
    #   options = {}
    #   response = client.create_agreement_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agreement_request_id: "AgreementRequestId",
    #     charge_summary: {
    #       currency_code: "CurrencyCode",
    #       new_agreement_value: "BoundedString",
    #       new_agreement_value_after_tax: "BoundedString",
    #       expected_charges: [
    #         {
    #           id: "ResourceId",
    #           time: Time.now,
    #           amount: "BoundedString",
    #           amount_after_tax: "BoundedString",
    #           timing: "ON_ACCEPTANCE" # One of: ["ON_ACCEPTANCE", "SCHEDULED", "BILLING_PERIOD"],
    #           estimated_taxes: {
    #             breakdown: [
    #               {
    #                 amount: "BoundedString",
    #                 rate: "BoundedString",
    #                 type: "BoundedString"
    #               }
    #             ],
    #             total_amount: "BoundedString"
    #           }
    #         }
    #       ],
    #       estimated_taxes: {
    #         breakdown: [
    #           {
    #             amount: "BoundedString",
    #             rate: "BoundedString",
    #             type: "BoundedString"
    #           }
    #         ],
    #         total_amount: "BoundedString"
    #       },
    #       itemized_charges: [
    #         {
    #           dimension_key: "BoundedString",
    #           new_quantity: 1,
    #           old_quantity: 1,
    #           charge_reference: "ResourceId",
    #           incremental_charge_amount: "BoundedString"
    #         }
    #       ],
    #       invoicing_entity: {
    #         legal_name: "BoundedString",
    #         branch_name: "BoundedString"
    #       }
    #     }
    #   }
    # @return [Types::CreateAgreementRequestOutput]
    def create_agreement_request(params = {}, options = {})
      request = build_request(:create_agreement_request, params)
      request.send_request(options)
    end

    # <p>Provides details about an agreement, such as the proposer, acceptor, start date, and end date.</p>
    # @param [Hash, Types::DescribeAgreementInput] params
    # @option params [String] :agreement_id
    #   <p>The unique identifier of the agreement.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agreement_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.describe_agreement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agreement_id: "ResourceId",
    #     acceptor: {
    #       account_id: "AWSAccountId"
    #     },
    #     proposer: {
    #       account_id: "AWSAccountId"
    #     },
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     acceptance_time: Time.now,
    #     agreement_type: "AgreementType",
    #     estimated_charges: {
    #       currency_code: "CurrencyCode",
    #       agreement_value: "BoundedString"
    #     },
    #     proposal_summary: {
    #       resources: [
    #         {
    #           id: "ResourceId",
    #           type: "AgreementResourceType"
    #         }
    #       ],
    #       offer_id: "OfferId",
    #       offer_set_id: "OfferSetId"
    #     },
    #     status: "ACTIVE" # One of: ["ACTIVE", "ARCHIVED", "CANCELLED", "EXPIRED", "RENEWED", "REPLACED", "ROLLED_BACK", "SUPERSEDED", "TERMINATED"],
    #     initial_agreement_id: "ResourceId",
    #     end_time_behavior: {
    #       type: "RENEW" # One of: ["RENEW", "REPLACE", "EXPIRE"], # required
    #       reason_code: "PROPOSER_RENEW_OPTED_OUT" # One of: ["PROPOSER_RENEW_OPTED_OUT", "ACCEPTOR_RENEW_OPTED_OUT", "NO_RENEWAL_TERM", "RENEWAL_LIMIT_EXHAUSTED"],
    #       renewal_summary: {
    #         offer_id: "OfferId"
    #       }
    #     }
    #   }
    # @return [Types::DescribeAgreementOutput]
    def describe_agreement(params = {}, options = {})
      request = build_request(:describe_agreement, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a specific agreement cancellation request. Both sellers (proposers) and buyers (acceptors) can use this operation to view cancellation requests associated with their agreements.</p>
    # @param [Hash, Types::GetAgreementCancellationRequestInput] params
    # @option params [String] :agreement_cancellation_request_id
    #   <p>The unique identifier of the cancellation request.</p>
    # @option params [String] :agreement_id
    #   <p>The unique identifier of the agreement associated with the cancellation request.</p>
    # @example Get a cancellation request
    #   # Example operation for get_agreement_cancellation_request
    #   params = {
    #     agreement_id: "agmt-752jqvg74yo7k",
    #     agreement_cancellation_request_id: "acr-sgew33rhsds"
    #   }
    #   options = {}
    #   response = client.get_agreement_cancellation_request(params, options)
    #   response.to_h #=>
    #   {
    #     agreement_cancellation_request_id: "acr-sgew33rhsds",
    #     agreement_id: "agmt-752jqvg74yo7k",
    #     reason_code: PRODUCT_DISCONTINUED,
    #     description: "Product is being discontinued and no longer supported",
    #     status: VALIDATION_FAILED,
    #     status_message: "Agreement is not in an active state",
    #     created_at: Time.parse("2025-01-15T10:30:00Z"),
    #     updated_at: Time.parse("2025-01-16T10:30:00Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     agreement_cancellation_request_id: "AgreementCancellationRequestId", # required
    #     agreement_id: "AgreementId", # required
    #   }
    #   options = {}
    #   response = client.get_agreement_cancellation_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agreement_cancellation_request_id: "AgreementCancellationRequestId",
    #     agreement_id: "AgreementId",
    #     reason_code: "INCORRECT_TERMS_ACCEPTED" # One of: ["INCORRECT_TERMS_ACCEPTED", "REPLACING_AGREEMENT", "TEST_AGREEMENT", "ALTERNATIVE_PROCUREMENT_CHANNEL", "PRODUCT_DISCONTINUED", "UNINTENDED_RENEWAL", "BUYER_DISSATISFACTION", "OTHER"],
    #     description: "AgreementCancellationRequestDescription",
    #     status: "PENDING_APPROVAL" # One of: ["PENDING_APPROVAL", "APPROVED", "REJECTED", "CANCELLED", "VALIDATION_FAILED"],
    #     status_message: "AgreementCancellationRequestStatusMessage",
    #     created_at: Time.now,
    #     updated_at: Time.now
    #   }
    # @return [Types::GetAgreementCancellationRequestOutput]
    def get_agreement_cancellation_request(params = {}, options = {})
      request = build_request(:get_agreement_cancellation_request, params)
      request.send_request(options)
    end

    # <p>Obtains details about the entitlements of an agreement.</p>
    # @param [Hash, Types::GetAgreementEntitlementsInput] params
    # @option params [String] :agreement_id
    #   <p>The unique identifier of the agreement.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of agreement entitlements to return in the response.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start pagination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agreement_id: "ResourceId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_agreement_entitlements(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agreement_entitlements: [
    #       {
    #         resource: {
    #           id: "ResourceId",
    #           type: "AgreementResourceType"
    #         },
    #         type: "EntitlementType",
    #         registration_token: "RegistrationToken",
    #         status: "PROVISIONED" # One of: ["PROVISIONED", "SCHEDULED", "PENDING", "FAILED", "DEPROVISIONED"],
    #         status_reason_code: "PROVISIONING_IN_PROGRESS" # One of: ["PROVISIONING_IN_PROGRESS", "FUTURE_START_DATE", "INVALID_PAYMENT_INSTRUMENT", "INCOMPATIBLE_CURRENCY", "ACCOUNT_SUSPENDED", "UNSUPPORTED_OPERATION", "AGREEMENT_INACTIVE", "AGREEMENT_ACTIVE", "PRODUCT_RESTRICTED"],
    #         license_arn: "AwsArn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetAgreementEntitlementsOutput]
    def get_agreement_entitlements(params = {}, options = {})
      request = build_request(:get_agreement_entitlements, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a specific payment request. Both sellers (proposers) and buyers (acceptors) can use this operation to view payment requests associated with their agreements. The response includes the current status, charge details, timestamps, and the charge ID if the request has been approved.</p> <note> <p>The calling identity must be either the acceptor or proposer of the payment request. A <code>ResourceNotFoundException</code> is returned if the payment request does not exist.</p> </note>
    # @param [Hash, Types::GetAgreementPaymentRequestInput] params
    # @option params [String] :payment_request_id
    #   <p>The identifier of the payment request.</p>
    # @option params [String] :agreement_id
    #   <p>The unique identifier of the agreement associated with the payment request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     payment_request_id: "PaymentRequestId", # required
    #     agreement_id: "AgreementId", # required
    #   }
    #   options = {}
    #   response = client.get_agreement_payment_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payment_request_id: "PaymentRequestId",
    #     agreement_id: "AgreementId",
    #     status: "VALIDATING" # One of: ["VALIDATING", "VALIDATION_FAILED", "PENDING_APPROVAL", "APPROVED", "REJECTED", "CANCELLED"],
    #     status_message: "PaymentRequestStatusMessage",
    #     name: "PaymentRequestName",
    #     description: "PaymentRequestDescription",
    #     charge_id: "ChargeId",
    #     charge_amount: "PositiveAmountUpto8Decimals",
    #     currency_code: "CurrencyCode",
    #     created_at: Time.now,
    #     updated_at: Time.now
    #   }
    # @return [Types::GetAgreementPaymentRequestOutput]
    def get_agreement_payment_request(params = {}, options = {})
      request = build_request(:get_agreement_payment_request, params)
      request.send_request(options)
    end

    # <p>Obtains details about the terms in an agreement that you participated in as proposer or acceptor.</p> <p>The details include:</p> <ul> <li> <p> <code>TermType</code> – The type of term, such as <code>LegalTerm</code>, <code>RenewalTerm</code>, or <code>ConfigurableUpfrontPricingTerm</code>.</p> </li> <li> <p> <code>TermID</code> – The ID of the particular term, which is common between offer and agreement.</p> </li> <li> <p> <code>TermPayload</code> – The key information contained in the term, such as the EULA for <code>LegalTerm</code> or pricing and dimensions for various pricing terms, such as <code>ConfigurableUpfrontPricingTerm</code> or <code>UsageBasedPricingTerm</code>.</p> </li> </ul> <ul> <li> <p> <code>Configuration</code> – The buyer/acceptor's selection at the time of agreement creation, such as the number of units purchased for a dimension or setting the <code>EnableAutoRenew</code> flag.</p> </li> </ul>
    # @param [Hash, Types::GetAgreementTermsInput] params
    # @option params [String] :agreement_id
    #   <p>The unique identifier of the agreement.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of agreements to return in the response.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start pagination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agreement_id: "ResourceId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_agreement_terms(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     accepted_terms: [{
    #       # One of:
    #       legal_term: {
    #         type: "UnversionedTermType",
    #         id: "TermId",
    #         documents: [
    #           {
    #             type: "BoundedString",
    #             url: "BoundedString",
    #             version: "BoundedString"
    #           }
    #         ]
    #       },
    #       support_term: {
    #         type: "UnversionedTermType",
    #         id: "TermId",
    #         refund_policy: "BoundedString"
    #       },
    #       renewal_term: {
    #         type: "UnversionedTermType",
    #         id: "TermId",
    #         configuration: {
    #           enable_auto_renew: false, # required
    #         },
    #         lockout_period: "DayDuration",
    #         max_renewals: 1,
    #         adjustment_deadline: "DayDuration",
    #         price_increase: {
    #           # One of:
    #           fixed_percentage: {
    #             value: "PriceIncreasePercentage"
    #           },
    #           percentage_range: {
    #             min_value: "PriceIncreasePercentage",
    #             max_value: "PriceIncreasePercentage",
    #             default_value: "PriceIncreasePercentage"
    #           }
    #         },
    #         term_templates: [{
    #           # One of:
    #           payment_schedule_term_template: {
    #             schedule: [
    #               {
    #                 charge_date_offset: "OffsetDuration",
    #                 charge_percentage: "ChargePercentage",
    #                 day_of_month: 1
    #               }
    #             ]
    #           }
    #         }]
    #       },
    #       usage_based_pricing_term: {
    #         type: "UnversionedTermType",
    #         id: "TermId",
    #         currency_code: "CurrencyCode",
    #         rate_cards: [
    #           {
    #             rate_card: [
    #               {
    #                 dimension_key: "BoundedString",
    #                 price: "BoundedString"
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       configurable_upfront_pricing_term: {
    #         type: "UnversionedTermType",
    #         id: "TermId",
    #         currency_code: "CurrencyCode",
    #         rate_cards: [
    #           {
    #             selector: {
    #               type: "BoundedString",
    #               value: "BoundedString"
    #             },
    #             constraints: {
    #               multiple_dimension_selection: "BoundedString",
    #               quantity_configuration: "BoundedString"
    #             },
    #             rate_card: [
    #               {
    #                 dimension_key: "BoundedString",
    #                 price: "BoundedString"
    #               }
    #             ]
    #           }
    #         ],
    #         configuration: {
    #           selector_value: "BoundedString", # required
    #           dimensions: [ # required
    #             {
    #               dimension_key: "BoundedString", # required
    #               dimension_value: 1, # required
    #             }
    #           ]
    #         }
    #       },
    #       byol_pricing_term: {
    #         type: "UnversionedTermType",
    #         id: "TermId"
    #       },
    #       recurring_payment_term: {
    #         type: "UnversionedTermType",
    #         id: "TermId",
    #         currency_code: "CurrencyCode",
    #         billing_period: "BoundedString",
    #         price: "BoundedString"
    #       },
    #       validity_term: {
    #         type: "UnversionedTermType",
    #         id: "TermId",
    #         agreement_duration: "BoundedString",
    #         agreement_start_date: Time.now,
    #         agreement_end_date: Time.now
    #       },
    #       payment_schedule_term: {
    #         type: "UnversionedTermType",
    #         id: "TermId",
    #         currency_code: "CurrencyCode",
    #         schedule: [
    #           {
    #             charge_date: Time.now,
    #             charge_amount: "BoundedString"
    #           }
    #         ]
    #       },
    #       free_trial_pricing_term: {
    #         type: "UnversionedTermType",
    #         id: "TermId",
    #         duration: "BoundedString",
    #         grants: [
    #           {
    #             dimension_key: "BoundedString",
    #             max_quantity: 1
    #           }
    #         ]
    #       },
    #       fixed_upfront_pricing_term: {
    #         type: "UnversionedTermType",
    #         id: "TermId",
    #         currency_code: "CurrencyCode",
    #         duration: "BoundedString",
    #         price: "BoundedString",
    #         grants: [
    #           {
    #             dimension_key: "BoundedString",
    #             max_quantity: 1
    #           }
    #         ]
    #       },
    #       variable_payment_term: {
    #         type: "UnversionedTermType",
    #         id: "TermId",
    #         currency_code: "CurrencyCode",
    #         max_total_charge_amount: "BoundedString",
    #         configuration: {
    #           payment_request_approval_strategy: "AUTO_APPROVE_ON_EXPIRATION" # One of: ["AUTO_APPROVE_ON_EXPIRATION", "WAIT_FOR_APPROVAL"], # required
    #           expiration_duration: "ISO8601Duration"
    #         }
    #       },
    #       net_payment_term: {
    #         type: "UnversionedTermType",
    #         id: "TermId",
    #         payment_due_period: "BoundedString"
    #       }
    #     }],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetAgreementTermsOutput]
    def get_agreement_terms(params = {}, options = {})
      request = build_request(:get_agreement_terms, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a specific billing adjustment request. Sellers (proposers) can use this operation to view the status and details of a billing adjustment request they submitted.</p>
    # @param [Hash, Types::GetBillingAdjustmentRequestInput] params
    # @option params [String] :agreement_id
    #   <p>The unique identifier of the agreement associated with the billing adjustment request.</p>
    # @option params [String] :billing_adjustment_request_id
    #   <p>The unique identifier of the billing adjustment request.</p>
    # @example Get a billing adjustment request
    #   # Example operation for get_billing_adjustment_request
    #   params = {
    #     billing_adjustment_request_id: "ba-1a2b3c4d5e6f7g",
    #     agreement_id: "agmt-SvIzsqYMyQwI3GWgJAe17URx"
    #   }
    #   options = {}
    #   response = client.get_billing_adjustment_request(params, options)
    #   response.to_h #=>
    #   {
    #     billing_adjustment_request_id: "ba-1a2b3c4d5e6f7g",
    #     agreement_id: "agmt-SvIzsqYMyQwI3GWgJAe17URx",
    #     adjustment_reason_code: OTHER,
    #     original_invoice_id: "E2E20230929a108cfae",
    #     adjustment_amount: "500.00",
    #     currency_code: "USD",
    #     status: PENDING,
    #     description: "Customer requested adjustment",
    #     created_at: Time.parse("2025-06-24T19:30:00Z"),
    #     updated_at: Time.parse("2025-06-24T19:30:00Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     agreement_id: "AgreementId", # required
    #     billing_adjustment_request_id: "BillingAdjustmentRequestId", # required
    #   }
    #   options = {}
    #   response = client.get_billing_adjustment_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     billing_adjustment_request_id: "BillingAdjustmentRequestId", # required
    #     agreement_id: "AgreementId", # required
    #     adjustment_reason_code: "INCORRECT_TERMS_ACCEPTED" # One of: ["INCORRECT_TERMS_ACCEPTED", "INCORRECT_METERING", "TEST_ENVIRONMENT_CHARGES", "ALTERNATIVE_PROCUREMENT_CHANNEL", "UNINTENDED_RENEWAL", "BUYER_DISSATISFACTION", "OTHER"], # required
    #     description: "String",
    #     original_invoice_id: "InvoiceId", # required
    #     adjustment_amount: "PositiveAmountUpto8Decimals", # required
    #     currency_code: "CurrencyCode", # required
    #     status: "PENDING" # One of: ["PENDING", "VALIDATION_FAILED", "COMPLETED"], # required
    #     status_message: "BillingAdjustmentStatusMessage",
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::GetBillingAdjustmentRequestOutput]
    def get_billing_adjustment_request(params = {}, options = {})
      request = build_request(:get_billing_adjustment_request, params)
      request.send_request(options)
    end

    # <p>Lists agreement cancellation requests available to you as a seller or buyer. Both sellers (proposers) and buyers (acceptors) can use this operation to find cancellation requests by specifying their party type and applying optional filters.</p> <note> <p> <code>PartyType</code> is a required parameter. A <code>ValidationException</code> is returned if <code>PartyType</code> is not provided.</p> </note>
    # @param [Hash, Types::ListAgreementCancellationRequestsInput] params
    # @option params [String] :party_type
    #   <p>The party type for the cancellation requests. Required parameter. Use <code>Proposer</code> to list cancellation requests where you are the seller, or <code>Acceptor</code> to list cancellation requests where you are the buyer.</p>
    # @option params [String] :agreement_id
    #   <p>An optional parameter to filter cancellation requests for a specific agreement.</p>
    # @option params [String] :status
    #   <p>An optional parameter to filter cancellation requests by status.</p>
    # @option params [String] :agreement_type
    #   <p>An optional parameter to filter cancellation requests by agreement type (e.g., <code>PurchaseAgreement</code>).</p>
    # @option params [String] :catalog
    #   <p>An optional parameter to filter cancellation requests by catalog (e.g., <code>AWSMarketplace</code>).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of cancellation requests to return in the response.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start pagination.</p>
    # @example List cancellation requests
    #   # Example operation for list_agreement_cancellation_requests
    #   params = {
    #     party_type: "Proposer",
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_agreement_cancellation_requests(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         agreement_cancellation_request_id: "acr-sgew33rhsds",
    #         agreement_id: "agmt-752jqvg74yo7k",
    #         status: PENDING_APPROVAL,
    #         reason_code: OTHER,
    #         agreement_type: "PurchaseAgreement",
    #         catalog: "AWSMarketplace",
    #         created_at: Time.parse("2025-01-15T10:30:00Z"),
    #         updated_at: Time.parse("2025-01-16T10:30:00Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     party_type: "PartyType", # required
    #     agreement_id: "AgreementId",
    #     status: "PENDING_APPROVAL" # One of: ["PENDING_APPROVAL", "APPROVED", "REJECTED", "CANCELLED", "VALIDATION_FAILED"],
    #     agreement_type: "AgreementType",
    #     catalog: "Catalog",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_agreement_cancellation_requests(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     items: [
    #       {
    #         agreement_cancellation_request_id: "AgreementCancellationRequestId",
    #         agreement_id: "AgreementId",
    #         status: "PENDING_APPROVAL" # One of: ["PENDING_APPROVAL", "APPROVED", "REJECTED", "CANCELLED", "VALIDATION_FAILED"],
    #         reason_code: "INCORRECT_TERMS_ACCEPTED" # One of: ["INCORRECT_TERMS_ACCEPTED", "REPLACING_AGREEMENT", "TEST_AGREEMENT", "ALTERNATIVE_PROCUREMENT_CHANNEL", "PRODUCT_DISCONTINUED", "UNINTENDED_RENEWAL", "BUYER_DISSATISFACTION", "OTHER"],
    #         agreement_type: "AgreementType",
    #         catalog: "Catalog",
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListAgreementCancellationRequestsOutput]
    def list_agreement_cancellation_requests(params = {}, options = {})
      request = build_request(:list_agreement_cancellation_requests, params)
      request.send_request(options)
    end

    # <p>Allows acceptors to view charges and purchase orders that are associated with an agreement. The response includes details about all charges regardless of whether a purchase order is linked to each charge.</p>
    # @param [Hash, Types::ListAgreementChargesInput] params
    # @option params [String] :catalog
    #   <p>The catalog in which the charges were created.</p>
    # @option params [String] :agreement_id
    #   <p>The unique identifier of the agreement.</p>
    # @option params [String] :agreement_type
    #   <p>Filter to retrieve charges of a specific agreement type (for example, <code>PurchaseAgreement</code>).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of charges to return in the response.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start pagination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog",
    #     agreement_id: "ResourceId",
    #     agreement_type: "AgreementType",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_agreement_charges(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "ResourceId",
    #         revision: 1,
    #         agreement_id: "ResourceId",
    #         agreement_type: "AgreementType",
    #         purchase_order_reference: "PurchaseOrderReference",
    #         currency_code: "CurrencyCode",
    #         amount: "BoundedString",
    #         time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAgreementChargesOutput]
    def list_agreement_charges(params = {}, options = {})
      request = build_request(:list_agreement_charges, params)
      request.send_request(options)
    end

    # <p>Allows sellers (proposers) to retrieve aggregated billing data from AWS Marketplace agreements using flexible grouping. Supports invoice-level aggregation with filtering by billing period, invoice type, and issued date.</p> <note> <p>The <code>groupBy</code> parameter is required and supports only <code>INVOICE_ID</code> as a value. The <code>agreementId</code> parameter is required.</p> </note>
    # @param [Hash, Types::ListAgreementInvoiceLineItemsInput] params
    # @option params [String] :agreement_id
    #   <p>The unique identifier of the agreement.</p>
    # @option params [String] :group_by
    #   <p>Specifies a grouping strategy for line items. Currently supports <code>INVOICE_ID</code>.</p>
    # @option params [String] :invoice_id
    #   <p>An optional filter to retrieve invoice information for a specific invoice.</p>
    # @option params [String] :invoice_type
    #   <p>An optional filter for the type of invoice. Valid values are <code>INVOICE</code> and <code>CREDIT_MEMO</code>.</p>
    # @option params [Types::InvoiceBillingPeriod] :invoice_billing_period
    #   <p>An optional filter for the billing period associated with the invoice.</p>
    # @option params [Time] :before_issued_time
    #   <p>An optional filter for invoices issued before the specified timestamp.</p>
    # @option params [Time] :after_issued_time
    #   <p>An optional filter for invoices issued after the specified timestamp.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start pagination.</p>
    # @example List agreement invoice line items
    #   # Example operation for list_agreement_invoice_line_items
    #   params = {
    #     agreement_id: "agmt-EXAMPLESvIzsqYMyQwI3",
    #     group_by: INVOICE_ID
    #   }
    #   options = {}
    #   response = client.list_agreement_invoice_line_items(params, options)
    #   response.to_h #=>
    #   {
    #     agreement_invoice_line_item_group_summaries: [
    #       {
    #         agreement_id: "agmt-EXAMPLESvIzsqYMyQwI3",
    #         invoice_id: "E2E20250105a108cfae",
    #         pricing_currency_amount: {
    #           amount: "1080.00",
    #           max_adjustment_amount: "1000.00",
    #           currency_code: "USD"
    #         },
    #         invoice_billing_period: {
    #           month: 1,
    #           year: 2025
    #         },
    #         issued_time: Time.parse("2025-01-05T18:59:09Z"),
    #         invoice_type: INVOICE,
    #         invoicing_entity: {
    #           legal_name: "Amazon Web Services, Inc."
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     agreement_id: "ResourceId", # required
    #     group_by: "INVOICE_ID" # One of: ["INVOICE_ID"], # required
    #     invoice_id: "ResourceId",
    #     invoice_type: "INVOICE" # One of: ["INVOICE", "CREDIT_MEMO"],
    #     invoice_billing_period: {
    #       month: 1, # required
    #       year: 1, # required
    #     },
    #     before_issued_time: Time.now,
    #     after_issued_time: Time.now,
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_agreement_invoice_line_items(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agreement_invoice_line_item_group_summaries: [
    #       {
    #         agreement_id: "ResourceId",
    #         invoice_id: "ResourceId",
    #         pricing_currency_amount: {
    #           amount: "BoundedString",
    #           max_adjustment_amount: "BoundedString",
    #           currency_code: "CurrencyCode"
    #         },
    #         invoice_billing_period: {
    #           month: 1, # required
    #           year: 1, # required
    #         },
    #         issued_time: Time.now,
    #         invoice_type: "INVOICE" # One of: ["INVOICE", "CREDIT_MEMO"],
    #         invoicing_entity: {
    #           legal_name: "BoundedString",
    #           branch_name: "BoundedString"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAgreementInvoiceLineItemsOutput]
    def list_agreement_invoice_line_items(params = {}, options = {})
      request = build_request(:list_agreement_invoice_line_items, params)
      request.send_request(options)
    end

    # <p>Lists payment requests available to you as a seller or buyer. Both sellers (proposers) and buyers (acceptors) can use this operation to find payment requests by specifying their party type and applying optional parameters.</p> <note> <p> <code>PartyType</code> is a required parameter. A <code>ValidationException</code> is returned if <code>PartyType</code> is not provided. Pagination is supported through <code>maxResults</code> (1-50, default 50) and <code>nextToken</code> parameters.</p> </note>
    # @param [Hash, Types::ListAgreementPaymentRequestsInput] params
    # @option params [String] :party_type
    #   <p>The party type for the payment requests. Required parameter. Use <code>Proposer</code> to list payment requests where you are the seller, or <code>Acceptor</code> to list payment requests where you are the buyer.</p>
    # @option params [String] :agreement_type
    #   <p>An optional parameter to list payment requests by agreement type (e.g., <code>PurchaseAgreement</code>).</p>
    # @option params [String] :catalog
    #   <p>An optional parameter to list payment requests by catalog (e.g., <code>AWSMarketplace</code>).</p>
    # @option params [String] :agreement_id
    #   <p>An optional parameter to list payment requests for a specific agreement.</p>
    # @option params [String] :status
    #   <p>An optional parameter to list payment requests by status. Valid values include <code>VALIDATING</code>, <code>VALIDATION_FAILED</code>, <code>PENDING_APPROVAL</code>, <code>APPROVED</code>, <code>REJECTED</code>, and <code>CANCELLED</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of payment requests to return in a single response (1-50). Default is 50.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start pagination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     party_type: "PartyType", # required
    #     agreement_type: "AgreementType",
    #     catalog: "Catalog",
    #     agreement_id: "AgreementId",
    #     status: "VALIDATING" # One of: ["VALIDATING", "VALIDATION_FAILED", "PENDING_APPROVAL", "APPROVED", "REJECTED", "CANCELLED"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_agreement_payment_requests(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     items: [ # required
    #       {
    #         payment_request_id: "PaymentRequestId",
    #         agreement_id: "AgreementId",
    #         status: "VALIDATING" # One of: ["VALIDATING", "VALIDATION_FAILED", "PENDING_APPROVAL", "APPROVED", "REJECTED", "CANCELLED"],
    #         name: "PaymentRequestName",
    #         charge_id: "ChargeId",
    #         charge_amount: "PositiveAmountUpto8Decimals",
    #         currency_code: "CurrencyCode",
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListAgreementPaymentRequestsOutput]
    def list_agreement_payment_requests(params = {}, options = {})
      request = build_request(:list_agreement_payment_requests, params)
      request.send_request(options)
    end

    # <p>Lists billing adjustment requests for a specific agreement. Sellers (proposers) can use this operation to view all billing adjustment requests associated with an agreement.</p>
    # @param [Hash, Types::ListBillingAdjustmentRequestsInput] params
    # @option params [String] :agreement_id
    #   <p>The unique identifier of the agreement to list billing adjustment requests for.</p>
    # @option params [String] :status
    #   <p>An optional filter to return billing adjustment requests with the specified status.</p>
    # @option params [Time] :created_after
    #   <p>An optional filter to return billing adjustment requests created after the specified timestamp.</p>
    # @option params [Time] :created_before
    #   <p>An optional filter to return billing adjustment requests created before the specified timestamp.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of billing adjustment requests to return in the response.</p>
    # @option params [String] :catalog
    #   <p>An optional filter to return billing adjustment requests by catalog (e.g., <code>AWSMarketplace</code>).</p>
    # @option params [String] :agreement_type
    #   <p>An optional filter to return billing adjustment requests by agreement type (e.g., <code>PurchaseAgreement</code>).</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start pagination.</p>
    # @example List billing adjustment requests
    #   # Example operation for list_billing_adjustment_requests
    #   params = {
    #     agreement_id: "agmt-SvIzsqYMyQwI3GWgJAe17URx"
    #   }
    #   options = {}
    #   response = client.list_billing_adjustment_requests(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         billing_adjustment_request_id: "ba-1a2b3c4d5e6f7g",
    #         status: PENDING,
    #         agreement_id: "agmt-SvIzsqYMyQwI3GWgJAe17URx",
    #         original_invoice_id: "E2E20230929a108cfae",
    #         adjustment_amount: "500.00",
    #         currency_code: "USD",
    #         agreement_type: "PurchaseAgreement",
    #         catalog: "AWSMarketplace",
    #         created_at: Time.parse("2025-06-24T19:30:00Z"),
    #         updated_at: Time.parse("2025-06-24T19:30:00Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     agreement_id: "AgreementId",
    #     status: "PENDING" # One of: ["PENDING", "VALIDATION_FAILED", "COMPLETED"],
    #     created_after: Time.now,
    #     created_before: Time.now,
    #     max_results: 1,
    #     catalog: "Catalog",
    #     agreement_type: "AgreementType",
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_billing_adjustment_requests(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     items: [ # required
    #       {
    #         billing_adjustment_request_id: "BillingAdjustmentRequestId", # required
    #         original_invoice_id: "InvoiceId", # required
    #         adjustment_amount: "PositiveAmountUpto8Decimals", # required
    #         currency_code: "CurrencyCode", # required
    #         status: "PENDING" # One of: ["PENDING", "VALIDATION_FAILED", "COMPLETED"], # required
    #         agreement_id: "AgreementId", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         agreement_type: "AgreementType", # required
    #         catalog: "Catalog", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListBillingAdjustmentRequestsOutput]
    def list_billing_adjustment_requests(params = {}, options = {})
      request = build_request(:list_billing_adjustment_requests, params)
      request.send_request(options)
    end

    # <p>Allows buyers (acceptors) to reject a cancellation request that is in <code>PENDING_APPROVAL</code> status. Once rejected, the cancellation request transitions to <code>REJECTED</code> status and the agreement remains active. Buyers must provide a reason for the rejection.</p> <note> <p>Only cancellation requests in <code>PENDING_APPROVAL</code> status can be rejected. A <code>ConflictException</code> is thrown if the cancellation request is in any other status.</p> </note>
    # @param [Hash, Types::RejectAgreementCancellationRequestInput] params
    # @option params [String] :agreement_id
    #   <p>The unique identifier of the agreement associated with the cancellation request.</p>
    # @option params [String] :agreement_cancellation_request_id
    #   <p>The unique identifier of the cancellation request to reject.</p>
    # @option params [String] :rejection_reason
    #   <p>The reason for rejecting the cancellation request (1-2000 characters). This message is visible to the seller.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agreement_id: "AgreementId", # required
    #     agreement_cancellation_request_id: "AgreementCancellationRequestId", # required
    #     rejection_reason: "AgreementCancellationRequestRejectionReason", # required
    #   }
    #   options = {}
    #   response = client.reject_agreement_cancellation_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agreement_id: "AgreementId",
    #     agreement_cancellation_request_id: "AgreementCancellationRequestId",
    #     status: "PENDING_APPROVAL" # One of: ["PENDING_APPROVAL", "APPROVED", "REJECTED", "CANCELLED", "VALIDATION_FAILED"],
    #     status_message: "AgreementCancellationRequestStatusMessage",
    #     reason_code: "INCORRECT_TERMS_ACCEPTED" # One of: ["INCORRECT_TERMS_ACCEPTED", "REPLACING_AGREEMENT", "TEST_AGREEMENT", "ALTERNATIVE_PROCUREMENT_CHANNEL", "PRODUCT_DISCONTINUED", "UNINTENDED_RENEWAL", "BUYER_DISSATISFACTION", "OTHER"],
    #     description: "AgreementCancellationRequestDescription",
    #     created_at: Time.now,
    #     updated_at: Time.now
    #   }
    # @return [Types::RejectAgreementCancellationRequestOutput]
    def reject_agreement_cancellation_request(params = {}, options = {})
      request = build_request(:reject_agreement_cancellation_request, params)
      request.send_request(options)
    end

    # <p>Allows buyers (acceptors) to reject a payment request that is in <code>PENDING_APPROVAL</code> status. Once rejected, the payment request transitions to <code>REJECTED</code> status and cannot be accepted. Buyers can optionally provide a reason for the rejection.</p> <note> <p>Only payment requests in <code>PENDING_APPROVAL</code> status can be rejected. A <code>ConflictException</code> is thrown if the payment request is in any other status.</p> </note>
    # @param [Hash, Types::RejectAgreementPaymentRequestInput] params
    # @option params [String] :payment_request_id
    #   <p>The unique identifier of the payment request to reject.</p>
    # @option params [String] :agreement_id
    #   <p>The unique identifier of the agreement associated with the payment request.</p>
    # @option params [String] :rejection_reason
    #   <p>An optional reason for rejecting the payment request (1-250 characters). This message is visible to the seller.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     payment_request_id: "PaymentRequestId", # required
    #     agreement_id: "AgreementId", # required
    #     rejection_reason: "PaymentRequestRejectionReason"
    #   }
    #   options = {}
    #   response = client.reject_agreement_payment_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payment_request_id: "PaymentRequestId",
    #     agreement_id: "AgreementId",
    #     status: "VALIDATING" # One of: ["VALIDATING", "VALIDATION_FAILED", "PENDING_APPROVAL", "APPROVED", "REJECTED", "CANCELLED"],
    #     status_message: "PaymentRequestStatusMessage",
    #     name: "PaymentRequestName",
    #     description: "PaymentRequestDescription",
    #     charge_amount: "PositiveAmountUpto8Decimals",
    #     currency_code: "CurrencyCode",
    #     created_at: Time.now,
    #     updated_at: Time.now
    #   }
    # @return [Types::RejectAgreementPaymentRequestOutput]
    def reject_agreement_payment_request(params = {}, options = {})
      request = build_request(:reject_agreement_payment_request, params)
      request.send_request(options)
    end

    # <p>Searches across all agreements that a proposer or an acceptor has in AWS Marketplace. The search returns a list of agreements with basic agreement information.</p>
    # @param [Hash, Types::SearchAgreementsInput] params
    # @option params [String] :catalog
    #   <p>The catalog in which the agreement was created.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>The filter name and value pair used to return a specific list of results.</p> <p>The following filters are supported:</p> <ul> <li> <p> <code>ResourceIdentifier</code> – The unique identifier of the resource.</p> </li> <li> <p> <code>ResourceType</code> – Type of the resource, which is the product (<code>AmiProduct</code>, <code>ContainerProduct</code>, <code>SaaSProduct</code>, <code>ProfessionalServicesProduct</code>, or <code>MachineLearningProduct</code>).</p> </li> <li> <p> <code>PartyType</code> – The party type of the caller. Use <code>Proposer</code> or <code>Acceptor</code>.</p> </li> <li> <p> <code>AcceptorAccountId</code> – The AWS account ID of the party accepting the agreement terms.</p> </li> <li> <p> <code>OfferId</code> – The unique identifier of the offer in which the terms are registered in the agreement token.</p> </li> <li> <p> <code>Status</code> – The current status of the agreement. Values include <code>ACTIVE</code>, <code>CANCELLED</code>, <code>EXPIRED</code>, <code>RENEWED</code>, <code>REPLACED</code>, and <code>TERMINATED</code>.</p> </li> <li> <p> <code>BeforeEndTime</code> – A date used to filter agreements with a date before the <code>endTime</code> of an agreement.</p> </li> <li> <p> <code>AfterEndTime</code> – A date used to filter agreements with a date after the <code>endTime</code> of an agreement.</p> </li> <li> <p> <code>BeforeStartTime</code> – A date used to filter agreements with a date before the <code>startTime</code> of an agreement.</p> </li> <li> <p> <code>AfterStartTime</code> – A date used to filter agreements with a date after the <code>startTime</code> of an agreement.</p> </li> <li> <p> <code>BeforeLastUpdateTime</code> – A date used to filter agreements with a date before the <code>lastUpdateTime</code> of an agreement.</p> </li> <li> <p> <code>AfterLastUpdateTime</code> – A date used to filter agreements with a date after the <code>lastUpdateTime</code> of an agreement.</p> </li> <li> <p> <code>AgreementType</code> – The type of agreement. Supported value includes <code>PurchaseAgreement</code>.</p> </li> <li> <p> <code>OfferSetId</code> – A unique identifier for the offer set containing this offer. All agreements created from offers in this set include this identifier as context.</p> </li> <li> <p> <code>EndTimeBehaviorType</code> – What happens to the agreement when it reaches its end date. Values include <code>RENEW</code>, <code>REPLACE</code>, and <code>EXPIRE</code>.</p> </li> <li> <p> <code>EndTimeBehaviorReasonCode</code> – The reason why the agreement doesn't renew at its end date. Values include <code>PROPOSER_RENEW_OPTED_OUT</code>, <code>ACCEPTOR_RENEW_OPTED_OUT</code>, <code>NO_RENEWAL_TERM</code>, and <code>RENEWAL_LIMIT_EXHAUSTED</code>.</p> </li> <li> <p> <code>InitialAgreementId</code> – The unique identifier of the very first agreement in a chain of related agreements. Use this filter to return every agreement in the same chain.</p> </li> <li> <p> <code>LicenseArn</code> – The Amazon Resource Name (ARN) of the AWS License Manager license associated with an entitlement granted by the agreement.</p> </li> </ul> <p>A proposer can use any combination of the preceding filters along with <code>AgreementType</code>, which is required.</p> <p>The following filter combinations are supported when the <code>PartyType</code> is <code>Acceptor</code>:</p> <ul> <li> <p> <code>AgreementType</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>Status</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>EndTime</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>Status</code> + <code>EndTime</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>ResourceIdentifier</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>ResourceIdentifier</code> + <code>EndTime</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>ResourceIdentifier</code> + <code>Status</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>ResourceIdentifier</code> + <code>Status</code> + <code>EndTime</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>ResourceType</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>ResourceType</code> + <code>EndTime</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>OfferId</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>OfferId</code> + <code>EndTime</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>OfferId</code> + <code>Status</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>OfferId</code> + <code>Status</code> + <code>EndTime</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>OfferSetId</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>OfferSetId</code> + <code>EndTime</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>OfferSetId</code> + <code>Status</code> </p> </li> <li> <p> <code>AgreementType</code> + <code>OfferSetId</code> + <code>Status</code> + <code>EndTime</code> </p> </li> </ul> <note> <p>To filter by <code>EndTime</code>, you can use <code>BeforeEndTime</code>, <code>AfterEndTime</code>, or both.</p> </note>
    # @option params [Types::Sort] :sort
    #   <p>An object that contains the <code>SortBy</code> and <code>SortOrder</code> attributes. For <code>SearchAgreements</code>, <code>SortBy</code> supports <code>EndTime</code> for both party types, and <code>StartTime</code> and <code>LastUpdateTime</code> only when <code>PartyType</code> is <code>Proposer</code>. The default <code>SortBy</code> value is <code>EndTime</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of agreements to return in the response.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start pagination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog",
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
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
    #   response = client.search_agreements(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agreement_view_summaries: [
    #       {
    #         agreement_id: "ResourceId",
    #         acceptance_time: Time.now,
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         last_update_time: Time.now,
    #         agreement_type: "AgreementType",
    #         acceptor: {
    #           account_id: "AWSAccountId"
    #         },
    #         proposer: {
    #           account_id: "AWSAccountId"
    #         },
    #         proposal_summary: {
    #           resources: [
    #             {
    #               id: "ResourceId",
    #               type: "AgreementResourceType"
    #             }
    #           ],
    #           offer_id: "OfferId",
    #           offer_set_id: "OfferSetId"
    #         },
    #         status: "ACTIVE" # One of: ["ACTIVE", "ARCHIVED", "CANCELLED", "EXPIRED", "RENEWED", "REPLACED", "ROLLED_BACK", "SUPERSEDED", "TERMINATED"],
    #         entitlements: [
    #           {
    #             license_arn: "String"
    #           }
    #         ],
    #         initial_agreement_id: "ResourceId",
    #         end_time_behavior_type: "RENEW" # One of: ["RENEW", "REPLACE", "EXPIRE"],
    #         end_time_behavior_reason_code: "PROPOSER_RENEW_OPTED_OUT" # One of: ["PROPOSER_RENEW_OPTED_OUT", "ACCEPTOR_RENEW_OPTED_OUT", "NO_RENEWAL_TERM", "RENEWAL_LIMIT_EXHAUSTED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::SearchAgreementsOutput]
    def search_agreements(params = {}, options = {})
      request = build_request(:search_agreements, params)
      request.send_request(options)
    end

    # <p>Allows sellers (proposers) to submit a cancellation request for an active agreement. The cancellation request is created in <code>PENDING_APPROVAL</code> status, at which point the buyer can review it.</p>
    # @param [Hash, Types::SendAgreementCancellationRequestInput] params
    # @option params [String] :agreement_id
    #   <p>The unique identifier of the agreement for which the cancellation request is being submitted.</p>
    # @option params [String] :reason_code
    #   <p>The reason code for the cancellation request.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @option params [String] :description
    #   <p>An optional detailed description of the cancellation reason (1-2000 characters).</p>
    # @example Send a cancellation request
    #   # Example operation for send_agreement_cancellation_request
    #   params = {
    #     agreement_id: "agmt-752jqvg74yo7k4h56cakk6396",
    #     reason_code: OTHER,
    #     description: "Due to budget constraints, we are unable to continue with our current subscription",
    #     client_token: "53nQSKWt6AjrsiZPhzQyZT"
    #   }
    #   options = {}
    #   response = client.send_agreement_cancellation_request(params, options)
    #   response.to_h #=>
    #   {
    #     agreement_id: "agmt-752jqvg74yo7k4h56cakk6396",
    #     agreement_cancellation_request_id: "acr-752jqvg74yo7k4h56cakk6396",
    #     status: PENDING_APPROVAL,
    #     reason_code: OTHER,
    #     description: "Due to budget constraints, we are unable to continue with our current subscription",
    #     created_at: Time.parse("2025-01-15T10:30:00Z"),
    #     updated_at: Time.parse("2025-01-15T10:30:00Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     agreement_id: "AgreementId", # required
    #     reason_code: "INCORRECT_TERMS_ACCEPTED" # One of: ["INCORRECT_TERMS_ACCEPTED", "REPLACING_AGREEMENT", "TEST_AGREEMENT", "ALTERNATIVE_PROCUREMENT_CHANNEL", "PRODUCT_DISCONTINUED", "UNINTENDED_RENEWAL", "BUYER_DISSATISFACTION", "OTHER"], # required
    #     client_token: "ClientToken",
    #     description: "AgreementCancellationRequestDescription"
    #   }
    #   options = {}
    #   response = client.send_agreement_cancellation_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agreement_id: "AgreementId",
    #     agreement_cancellation_request_id: "AgreementCancellationRequestId",
    #     status: "PENDING_APPROVAL" # One of: ["PENDING_APPROVAL", "APPROVED", "REJECTED", "CANCELLED", "VALIDATION_FAILED"],
    #     reason_code: "INCORRECT_TERMS_ACCEPTED" # One of: ["INCORRECT_TERMS_ACCEPTED", "REPLACING_AGREEMENT", "TEST_AGREEMENT", "ALTERNATIVE_PROCUREMENT_CHANNEL", "PRODUCT_DISCONTINUED", "UNINTENDED_RENEWAL", "BUYER_DISSATISFACTION", "OTHER"],
    #     description: "AgreementCancellationRequestDescription",
    #     created_at: Time.now,
    #     updated_at: Time.now
    #   }
    # @return [Types::SendAgreementCancellationRequestOutput]
    def send_agreement_cancellation_request(params = {}, options = {})
      request = build_request(:send_agreement_cancellation_request, params)
      request.send_request(options)
    end

    # <p>Allows sellers (proposers) to submit a payment request to buyers (acceptors) for a specific charge amount for an agreement that includes a <code>VariablePaymentTerm</code>. The payment request is created in <code>PENDING_APPROVAL</code> status, at which point the buyer can accept or reject it.</p> <note> <p>The agreement must be active and have a <code>VariablePaymentTerm</code> to support payment requests. The <code>chargeAmount</code> must not exceed the remaining available balance under the <code>VariablePaymentTerm</code> <code>maxTotalChargeAmount</code>.</p> </note>
    # @param [Hash, Types::SendAgreementPaymentRequestInput] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @option params [String] :agreement_id
    #   <p>The unique identifier of the agreement for which the payment request is being submitted. Use <code>GetAgreementTerms</code> to retrieve agreement term details.</p>
    # @option params [String] :term_id
    #   <p>The unique identifier of the <code>VariablePaymentTerm</code> for the agreement that the payment request is being sent for.</p>
    # @option params [String] :name
    #   <p>A descriptive name for the payment request (5-64 characters).</p>
    # @option params [String] :charge_amount
    #   <p>The amount requested to be charged to the buyer, positive decimal value in the currency of the accepted term.</p> <note> <p>A <code>ValidationException</code> is returned if the <code>chargeAmount</code> exceeds the available balance, if the agreement doesn't have an active <code>VariablePaymentTerm</code>, or if the <code>termId</code> is invalid.</p> </note>
    # @option params [String] :description
    #   <p>An optional detailed description of the payment request (1-2000 characters).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     agreement_id: "AgreementId", # required
    #     term_id: "TermId", # required
    #     name: "PaymentRequestName", # required
    #     charge_amount: "PositiveAmountUpto8Decimals", # required
    #     description: "PaymentRequestDescription"
    #   }
    #   options = {}
    #   response = client.send_agreement_payment_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payment_request_id: "PaymentRequestId",
    #     agreement_id: "AgreementId",
    #     status: "VALIDATING" # One of: ["VALIDATING", "VALIDATION_FAILED", "PENDING_APPROVAL", "APPROVED", "REJECTED", "CANCELLED"],
    #     name: "PaymentRequestName",
    #     description: "PaymentRequestDescription",
    #     charge_amount: "PositiveAmountUpto8Decimals",
    #     currency_code: "CurrencyCode",
    #     created_at: Time.now
    #   }
    # @return [Types::SendAgreementPaymentRequestOutput]
    def send_agreement_payment_request(params = {}, options = {})
      request = build_request(:send_agreement_payment_request, params)
      request.send_request(options)
    end

    # <p>Allows acceptors to associate purchase orders with agreement charges after an agreement is created.</p>
    # @param [Hash, Types::UpdatePurchaseOrdersInput] params
    # @option params [Array<Types::PurchaseOrder>] :purchase_orders
    #   <p>Contains information about purchase order associations.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     purchase_orders: [ # required
    #       {
    #         charge_id: "ResourceId", # required
    #         charge_revision: 1,
    #         agreement_id: "ResourceId",
    #         purchase_order_reference: "PurchaseOrderReference"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_purchase_orders(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdatePurchaseOrdersOutput]
    def update_purchase_orders(params = {}, options = {})
      request = build_request(:update_purchase_orders, params)
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
      context[:gem_name] = 'aws-sdk-marketplaceagreement'
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
          rpc_v2_cbor: Smithy::Client::RpcV2Cbor,
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end
