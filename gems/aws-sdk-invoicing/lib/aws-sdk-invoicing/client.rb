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
    #     ]
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
    #       linked_accounts: ["AccountIdString"]
    #     },
    #     resource_tags: [
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue", # required
    #       }
    #     ]
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

    # <p>This deletes an invoice unit with the provided invoice unit ARN. </p>
    # @param [Hash, Types::DeleteInvoiceUnitRequest] params
    # @option params [String] :invoice_unit_arn
    #   <p> The ARN to identify an invoice unit. This information can't be modified or deleted. </p>
    # @example DeleteInvoiceUnit
    #   # Example operation for delete_invoice_unit
    #   params = {
    #     invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/12345678"
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
    #       linked_accounts: ["AccountIdString"]
    #     },
    #     last_modified: Time.now
    #   }
    # @return [Types::GetInvoiceUnitResponse]
    def get_invoice_unit(params = {}, options = {})
      request = build_request(:get_invoice_unit, params)
      request.send_request(options)
    end

    # <p>Retrieves your invoice details programmatically, without line item details.</p>
    # @param [Hash, Types::ListInvoiceSummariesRequest] params
    # @option params [Types::InvoiceSummariesSelector] :selector
    #   <p>The option to retrieve details for a specific invoice by providing its unique ID. Alternatively, access information for all invoices linked to the account by providing an account ID.</p>
    # @option params [Types::InvoiceSummariesFilter] :filter
    #   <p>Filters you can use to customize your invoice summary.</p>
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>
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
    #         invoice_type: INVOICE,
    #         issued_date: Time.parse("2025-04-01T01:00:00.000Z"),
    #         due_date: Time.parse("2025-04-01T01:00:00.000Z"),
    #         billing_period: {
    #           month: 1,
    #           year: 2025
    #         },
    #         entity: {
    #           invoicing_entity: "Amazon Web Services, Inc."
    #         },
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
    #         invoice_type: INVOICE,
    #         issued_date: Time.parse("2025-04-01T01:00:00.000Z"),
    #         due_date: Time.parse("2025-04-01T01:00:00.000Z"),
    #         billing_period: {
    #           month: 1,
    #           year: 2025
    #         },
    #         entity: {
    #           invoicing_entity: "Amazon Web Services, Inc."
    #         },
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
    #         invoice_type: INVOICE,
    #         issued_date: Time.parse("2025-04-01T01:00:00.000Z"),
    #         due_date: Time.parse("2025-04-01T01:00:00.000Z"),
    #         billing_period: {
    #           month: 1,
    #           year: 2025
    #         },
    #         entity: {
    #           invoicing_entity: "Amazon Web Services, Inc."
    #         },
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
    #         invoice_type: INVOICE,
    #         issued_date: Time.parse("2025-04-01T01:00:00.000Z"),
    #         due_date: Time.parse("2025-04-01T01:00:00.000Z"),
    #         billing_period: {
    #           month: 1,
    #           year: 2025
    #         },
    #         entity: {
    #           invoicing_entity: "Amazon Web Services, Inc."
    #         },
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
    #         invoice_type: INVOICE,
    #         issued_date: Time.parse("2025-04-01T01:00:00.000Z"),
    #         due_date: Time.parse("2025-04-01T01:00:00.000Z"),
    #         billing_period: {
    #           month: 1,
    #           year: 2025
    #         },
    #         entity: {
    #           invoicing_entity: "Amazon Web Services, Inc."
    #         },
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
    #       invoicing_entity: "BasicString"
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
    #         entity: {
    #           invoicing_entity: "BasicString"
    #         },
    #         billing_period: {
    #           month: 1, # required
    #           year: 1, # required
    #         },
    #         invoice_type: "INVOICE" # One of: ["INVOICE", "CREDIT_MEMO"],
    #         original_invoice_id: "BasicString",
    #         purchase_order_number: "BasicString",
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
    #       accounts: ["AccountIdString"]
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
    #           linked_accounts: ["AccountIdString"]
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
    #     }
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
    #     description: "Updated IU description. All other fields remain unchanged"
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
    #       linked_accounts: ["AccountIdString"]
    #     }
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
