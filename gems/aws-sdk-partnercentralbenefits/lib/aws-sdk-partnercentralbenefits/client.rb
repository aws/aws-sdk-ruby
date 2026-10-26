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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:partnercentralbenefits)

module Aws::PartnerCentralBenefits
  # An API client for Aws::PartnerCentralBenefits.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::PartnerCentralBenefitsService
    @identifier = :partnercentralbenefits

    add_plugin(::Aws::PartnerCentralBenefits::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::PartnerCentralBenefits::EndpointProvider)
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

    # <p>Modifies an existing benefit application by applying amendments to specific fields while maintaining revision control.</p>
    # @param [Hash, Types::AmendBenefitApplicationInput] params
    # @option params [String] :catalog
    #   <p>The catalog identifier that specifies which benefit catalog the application belongs to.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotent processing of the amendment request.</p>
    # @option params [String] :revision
    #   <p>The current revision number of the benefit application to ensure optimistic concurrency control.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the benefit application to be amended.</p>
    # @option params [String] :amendment_reason
    #   <p>A descriptive reason explaining why the benefit application is being amended.</p>
    # @option params [Array<Types::Amendment>] :amendments
    #   <p>A list of specific field amendments to apply to the benefit application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogName", # required
    #     client_token: "String", # required
    #     revision: "String", # required
    #     identifier: "BenefitApplicationIdentifier", # required
    #     amendment_reason: "String", # required
    #     amendments: [ # required
    #       {
    #         field_path: "String", # required
    #         new_value: "String", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.amend_benefit_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AmendBenefitApplicationOutput]
    def amend_benefit_application(params = {}, options = {})
      request = build_request(:amend_benefit_application, params)
      request.send_request(options)
    end

    # <p>Links an AWS resource to an existing benefit application for tracking and management purposes.</p>
    # @param [Hash, Types::AssociateBenefitApplicationResourceInput] params
    # @option params [String] :catalog
    #   <p>The catalog identifier that specifies which benefit catalog the application belongs to.</p>
    # @option params [String] :benefit_application_identifier
    #   <p>The unique identifier of the benefit application to associate the resource with.</p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS resource to associate with the benefit application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogName", # required
    #     benefit_application_identifier: "BenefitApplicationIdentifier", # required
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.associate_benefit_application_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "BenefitApplicationId",
    #     arn: "String",
    #     revision: "String"
    #   }
    # @return [Types::AssociateBenefitApplicationResourceOutput]
    def associate_benefit_application_resource(params = {}, options = {})
      request = build_request(:associate_benefit_application_resource, params)
      request.send_request(options)
    end

    # <p>Cancels a benefit application that is currently in progress, preventing further processing.</p>
    # @param [Hash, Types::CancelBenefitApplicationInput] params
    # @option params [String] :catalog
    #   <p>The catalog identifier that specifies which benefit catalog the application belongs to.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotent processing of the cancellation request.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the benefit application to cancel.</p>
    # @option params [String] :reason
    #   <p>A descriptive reason explaining why the benefit application is being cancelled.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogName", # required
    #     client_token: "String", # required
    #     identifier: "BenefitApplicationIdentifier", # required
    #     reason: "String"
    #   }
    #   options = {}
    #   response = client.cancel_benefit_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelBenefitApplicationOutput]
    def cancel_benefit_application(params = {}, options = {})
      request = build_request(:cancel_benefit_application, params)
      request.send_request(options)
    end

    # <p>Creates a new benefit application for a partner to request access to AWS benefits and programs.</p>
    # @param [Hash, Types::CreateBenefitApplicationInput] params
    # @option params [String] :catalog
    #   <p>The catalog identifier that specifies which benefit catalog to create the application in.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotent processing of the creation request.</p>
    # @option params [String] :name
    #   <p>A human-readable name for the benefit application.</p>
    # @option params [String] :description
    #   <p>A detailed description of the benefit application and its intended use.</p>
    # @option params [String] :benefit_identifier
    #   <p>The unique identifier of the benefit being requested in this application.</p>
    # @option params [Array<String>] :fulfillment_types
    #   <p>The types of fulfillment requested for this benefit application (e.g., credits, access, disbursement).</p>
    # @option params [JSON] :benefit_application_details
    #   <p>Detailed information and requirements specific to the benefit being requested.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Key-value pairs to categorize and organize the benefit application.</p>
    # @option params [Array<String>] :associated_resources
    #   <p>AWS resources that are associated with this benefit application.</p>
    # @option params [Array<Types::Contact>] :partner_contacts
    #   <p>Contact information for partner representatives responsible for this benefit application.</p>
    # @option params [Array<Types::FileInput>] :file_details
    #   <p>Supporting documents and files attached to the benefit application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogName", # required
    #     client_token: "String", # required
    #     name: "BenefitApplicationName",
    #     description: "BenefitApplicationDescription",
    #     benefit_identifier: "String", # required
    #     fulfillment_types: ["CREDITS" # One of: ["CREDITS", "CASH", "ACCESS"]],
    #     benefit_application_details: ""null"",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     associated_resources: ["Arn"],
    #     partner_contacts: [
    #       {
    #         email: "ContactEmail",
    #         first_name: "ContactFirstName",
    #         last_name: "ContactLastName",
    #         business_title: "String",
    #         phone: "ContactPhone"
    #       }
    #     ],
    #     file_details: [
    #       {
    #         file_uri: "FileURI", # required
    #         business_use_case: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_benefit_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "BenefitApplicationId",
    #     arn: "String",
    #     revision: "String"
    #   }
    # @return [Types::CreateBenefitApplicationOutput]
    def create_benefit_application(params = {}, options = {})
      request = build_request(:create_benefit_application, params)
      request.send_request(options)
    end

    # <p>Removes the association between an AWS resource and a benefit application.</p>
    # @param [Hash, Types::DisassociateBenefitApplicationResourceInput] params
    # @option params [String] :catalog
    #   <p>The catalog identifier that specifies which benefit catalog the application belongs to.</p>
    # @option params [String] :benefit_application_identifier
    #   <p>The unique identifier of the benefit application to disassociate the resource from.</p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS resource to disassociate from the benefit application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogName", # required
    #     benefit_application_identifier: "BenefitApplicationIdentifier", # required
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.disassociate_benefit_application_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "BenefitApplicationId",
    #     arn: "String",
    #     revision: "String"
    #   }
    # @return [Types::DisassociateBenefitApplicationResourceOutput]
    def disassociate_benefit_application_resource(params = {}, options = {})
      request = build_request(:disassociate_benefit_application_resource, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a specific benefit available in the partner catalog.</p>
    # @param [Hash, Types::GetBenefitInput] params
    # @option params [String] :catalog
    #   <p>The catalog identifier that specifies which benefit catalog to query.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the benefit to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogName", # required
    #     identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.get_benefit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     catalog: "CatalogName",
    #     arn: "String",
    #     name: "String",
    #     description: "String",
    #     programs: ["Program"],
    #     fulfillment_types: ["CREDITS" # One of: ["CREDITS", "CASH", "ACCESS"]],
    #     benefit_request_schema: ""null"",
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"]
    #   }
    # @return [Types::GetBenefitOutput]
    def get_benefit(params = {}, options = {})
      request = build_request(:get_benefit, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a specific benefit allocation that has been granted to a partner.</p>
    # @param [Hash, Types::GetBenefitAllocationInput] params
    # @option params [String] :catalog
    #   <p>The catalog identifier that specifies which benefit catalog to query.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the benefit allocation to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogName", # required
    #     identifier: "BenefitAllocationIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_benefit_allocation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "BenefitAllocationId",
    #     catalog: "CatalogName",
    #     arn: "BenefitAllocationArn",
    #     name: "String",
    #     description: "String",
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "FULFILLED"],
    #     status_reason: "String",
    #     benefit_application_id: "BenefitApplicationId",
    #     benefit_id: "BenefitId",
    #     fulfillment_type: "CREDITS" # One of: ["CREDITS", "CASH", "ACCESS"],
    #     applicable_benefit_ids: ["BenefitId"],
    #     fulfillment_detail: {
    #       # One of:
    #       disbursement_details: {
    #         disbursed_amount: {
    #           amount: "String", # required
    #           currency_code: "AED" # One of: ["AED", "AMD", "ARS", "AUD", "AWG", "AZN", "BBD", "BDT", "BGN", "BMD", "BND", "BOB", "BRL", "BSD", "BYR", "BZD", "CAD", "CHF", "CLP", "CNY", "COP", "CRC", "CZK", "DKK", "DOP", "EEK", "EGP", "EUR", "GBP", "GEL", "GHS", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "INR", "ISK", "JMD", "JPY", "KES", "KHR", "KRW", "KYD", "KZT", "LBP", "LKR", "LTL", "LVL", "MAD", "MNT", "MOP", "MUR", "MVR", "MXN", "MYR", "NAD", "NGN", "NIO", "NOK", "NZD", "PAB", "PEN", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RUB", "SAR", "SEK", "SGD", "SIT", "SKK", "THB", "TND", "TRY", "TTD", "TWD", "TZS", "UAH", "USD", "UYU", "UZS", "VND", "XAF", "XCD", "XOF", "XPF", "ZAR"], # required
    #         },
    #         issuance_details: {
    #           issuance_id: "String",
    #           issuance_amount: {
    #             amount: "String", # required
    #             currency_code: "AED" # One of: ["AED", "AMD", "ARS", "AUD", "AWG", "AZN", "BBD", "BDT", "BGN", "BMD", "BND", "BOB", "BRL", "BSD", "BYR", "BZD", "CAD", "CHF", "CLP", "CNY", "COP", "CRC", "CZK", "DKK", "DOP", "EEK", "EGP", "EUR", "GBP", "GEL", "GHS", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "INR", "ISK", "JMD", "JPY", "KES", "KHR", "KRW", "KYD", "KZT", "LBP", "LKR", "LTL", "LVL", "MAD", "MNT", "MOP", "MUR", "MVR", "MXN", "MYR", "NAD", "NGN", "NIO", "NOK", "NZD", "PAB", "PEN", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RUB", "SAR", "SEK", "SGD", "SIT", "SKK", "THB", "TND", "TRY", "TTD", "TWD", "TZS", "UAH", "USD", "UYU", "UZS", "VND", "XAF", "XCD", "XOF", "XPF", "ZAR"], # required
    #           },
    #           issued_at: Time.now
    #         }
    #       },
    #       consumable_details: {
    #         allocated_amount: {
    #           amount: "String", # required
    #           currency_code: "AED" # One of: ["AED", "AMD", "ARS", "AUD", "AWG", "AZN", "BBD", "BDT", "BGN", "BMD", "BND", "BOB", "BRL", "BSD", "BYR", "BZD", "CAD", "CHF", "CLP", "CNY", "COP", "CRC", "CZK", "DKK", "DOP", "EEK", "EGP", "EUR", "GBP", "GEL", "GHS", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "INR", "ISK", "JMD", "JPY", "KES", "KHR", "KRW", "KYD", "KZT", "LBP", "LKR", "LTL", "LVL", "MAD", "MNT", "MOP", "MUR", "MVR", "MXN", "MYR", "NAD", "NGN", "NIO", "NOK", "NZD", "PAB", "PEN", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RUB", "SAR", "SEK", "SGD", "SIT", "SKK", "THB", "TND", "TRY", "TTD", "TWD", "TZS", "UAH", "USD", "UYU", "UZS", "VND", "XAF", "XCD", "XOF", "XPF", "ZAR"], # required
    #         },
    #         remaining_amount: {
    #           amount: "String", # required
    #           currency_code: "AED" # One of: ["AED", "AMD", "ARS", "AUD", "AWG", "AZN", "BBD", "BDT", "BGN", "BMD", "BND", "BOB", "BRL", "BSD", "BYR", "BZD", "CAD", "CHF", "CLP", "CNY", "COP", "CRC", "CZK", "DKK", "DOP", "EEK", "EGP", "EUR", "GBP", "GEL", "GHS", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "INR", "ISK", "JMD", "JPY", "KES", "KHR", "KRW", "KYD", "KZT", "LBP", "LKR", "LTL", "LVL", "MAD", "MNT", "MOP", "MUR", "MVR", "MXN", "MYR", "NAD", "NGN", "NIO", "NOK", "NZD", "PAB", "PEN", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RUB", "SAR", "SEK", "SGD", "SIT", "SKK", "THB", "TND", "TRY", "TTD", "TWD", "TZS", "UAH", "USD", "UYU", "UZS", "VND", "XAF", "XCD", "XOF", "XPF", "ZAR"], # required
    #         },
    #         utilized_amount: {
    #           amount: "String", # required
    #           currency_code: "AED" # One of: ["AED", "AMD", "ARS", "AUD", "AWG", "AZN", "BBD", "BDT", "BGN", "BMD", "BND", "BOB", "BRL", "BSD", "BYR", "BZD", "CAD", "CHF", "CLP", "CNY", "COP", "CRC", "CZK", "DKK", "DOP", "EEK", "EGP", "EUR", "GBP", "GEL", "GHS", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "INR", "ISK", "JMD", "JPY", "KES", "KHR", "KRW", "KYD", "KZT", "LBP", "LKR", "LTL", "LVL", "MAD", "MNT", "MOP", "MUR", "MVR", "MXN", "MYR", "NAD", "NGN", "NIO", "NOK", "NZD", "PAB", "PEN", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RUB", "SAR", "SEK", "SGD", "SIT", "SKK", "THB", "TND", "TRY", "TTD", "TWD", "TZS", "UAH", "USD", "UYU", "UZS", "VND", "XAF", "XCD", "XOF", "XPF", "ZAR"], # required
    #         },
    #         issuance_details: {
    #           issuance_id: "String",
    #           issuance_amount: {
    #             amount: "String", # required
    #             currency_code: "AED" # One of: ["AED", "AMD", "ARS", "AUD", "AWG", "AZN", "BBD", "BDT", "BGN", "BMD", "BND", "BOB", "BRL", "BSD", "BYR", "BZD", "CAD", "CHF", "CLP", "CNY", "COP", "CRC", "CZK", "DKK", "DOP", "EEK", "EGP", "EUR", "GBP", "GEL", "GHS", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "INR", "ISK", "JMD", "JPY", "KES", "KHR", "KRW", "KYD", "KZT", "LBP", "LKR", "LTL", "LVL", "MAD", "MNT", "MOP", "MUR", "MVR", "MXN", "MYR", "NAD", "NGN", "NIO", "NOK", "NZD", "PAB", "PEN", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RUB", "SAR", "SEK", "SGD", "SIT", "SKK", "THB", "TND", "TRY", "TTD", "TWD", "TZS", "UAH", "USD", "UYU", "UZS", "VND", "XAF", "XCD", "XOF", "XPF", "ZAR"], # required
    #           },
    #           issued_at: Time.now
    #         }
    #       },
    #       credit_details: {
    #         allocated_amount: { # required
    #           amount: "String", # required
    #           currency_code: "AED" # One of: ["AED", "AMD", "ARS", "AUD", "AWG", "AZN", "BBD", "BDT", "BGN", "BMD", "BND", "BOB", "BRL", "BSD", "BYR", "BZD", "CAD", "CHF", "CLP", "CNY", "COP", "CRC", "CZK", "DKK", "DOP", "EEK", "EGP", "EUR", "GBP", "GEL", "GHS", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "INR", "ISK", "JMD", "JPY", "KES", "KHR", "KRW", "KYD", "KZT", "LBP", "LKR", "LTL", "LVL", "MAD", "MNT", "MOP", "MUR", "MVR", "MXN", "MYR", "NAD", "NGN", "NIO", "NOK", "NZD", "PAB", "PEN", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RUB", "SAR", "SEK", "SGD", "SIT", "SKK", "THB", "TND", "TRY", "TTD", "TWD", "TZS", "UAH", "USD", "UYU", "UZS", "VND", "XAF", "XCD", "XOF", "XPF", "ZAR"], # required
    #         },
    #         issued_amount: { # required
    #           amount: "String", # required
    #           currency_code: "AED" # One of: ["AED", "AMD", "ARS", "AUD", "AWG", "AZN", "BBD", "BDT", "BGN", "BMD", "BND", "BOB", "BRL", "BSD", "BYR", "BZD", "CAD", "CHF", "CLP", "CNY", "COP", "CRC", "CZK", "DKK", "DOP", "EEK", "EGP", "EUR", "GBP", "GEL", "GHS", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "INR", "ISK", "JMD", "JPY", "KES", "KHR", "KRW", "KYD", "KZT", "LBP", "LKR", "LTL", "LVL", "MAD", "MNT", "MOP", "MUR", "MVR", "MXN", "MYR", "NAD", "NGN", "NIO", "NOK", "NZD", "PAB", "PEN", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RUB", "SAR", "SEK", "SGD", "SIT", "SKK", "THB", "TND", "TRY", "TTD", "TWD", "TZS", "UAH", "USD", "UYU", "UZS", "VND", "XAF", "XCD", "XOF", "XPF", "ZAR"], # required
    #         },
    #         codes: [ # required
    #           {
    #             aws_account_id: "String", # required
    #             value: { # required
    #               amount: "String", # required
    #               currency_code: "AED" # One of: ["AED", "AMD", "ARS", "AUD", "AWG", "AZN", "BBD", "BDT", "BGN", "BMD", "BND", "BOB", "BRL", "BSD", "BYR", "BZD", "CAD", "CHF", "CLP", "CNY", "COP", "CRC", "CZK", "DKK", "DOP", "EEK", "EGP", "EUR", "GBP", "GEL", "GHS", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "INR", "ISK", "JMD", "JPY", "KES", "KHR", "KRW", "KYD", "KZT", "LBP", "LKR", "LTL", "LVL", "MAD", "MNT", "MOP", "MUR", "MVR", "MXN", "MYR", "NAD", "NGN", "NIO", "NOK", "NZD", "PAB", "PEN", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RUB", "SAR", "SEK", "SGD", "SIT", "SKK", "THB", "TND", "TRY", "TTD", "TWD", "TZS", "UAH", "USD", "UYU", "UZS", "VND", "XAF", "XCD", "XOF", "XPF", "ZAR"], # required
    #             },
    #             aws_credit_code: "String", # required
    #             status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "FULFILLED"], # required
    #             issued_at: Time.now, # required
    #             expires_at: Time.now, # required
    #           }
    #         ]
    #       },
    #       access_details: {
    #         description: "String"
    #       }
    #     },
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     starts_at: Time.now,
    #     expires_at: Time.now
    #   }
    # @return [Types::GetBenefitAllocationOutput]
    def get_benefit_allocation(params = {}, options = {})
      request = build_request(:get_benefit_allocation, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a specific benefit application.</p>
    # @param [Hash, Types::GetBenefitApplicationInput] params
    # @option params [String] :catalog
    #   <p>The catalog identifier that specifies which benefit catalog to query.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the benefit application to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogName", # required
    #     identifier: "BenefitApplicationIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_benefit_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "BenefitApplicationId",
    #     arn: "Arn",
    #     catalog: "CatalogName",
    #     benefit_id: "BenefitId",
    #     name: "BenefitApplicationName",
    #     description: "BenefitApplicationDescription",
    #     fulfillment_types: ["CREDITS" # One of: ["CREDITS", "CASH", "ACCESS"]],
    #     benefit_application_details: ""null"",
    #     programs: ["Program"],
    #     status: "PENDING_SUBMISSION" # One of: ["PENDING_SUBMISSION", "IN_REVIEW", "ACTION_REQUIRED", "APPROVED", "REJECTED", "CANCELED"],
    #     stage: "BenefitApplicationStage",
    #     status_reason: "String",
    #     status_reason_code: "StatusReasonCode",
    #     status_reason_codes: ["StatusReasonCode"],
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     revision: "String",
    #     associated_resources: ["Arn"],
    #     partner_contacts: [
    #       {
    #         email: "ContactEmail",
    #         first_name: "ContactFirstName",
    #         last_name: "ContactLastName",
    #         business_title: "String",
    #         phone: "ContactPhone"
    #       }
    #     ],
    #     file_details: [
    #       {
    #         file_uri: "FileURI", # required
    #         business_use_case: "String",
    #         file_name: "String",
    #         file_status: "String",
    #         file_status_reason: "String",
    #         file_type: "application/msword" # One of: ["application/msword", "application/vnd.openxmlformats-officedocument.wordprocessingml.document", "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "application/vnd.openxmlformats-officedocument.presentationml.presentation", "application/pdf", "image/png", "image/jpeg", "image/svg+xml", "text/csv"],
    #         created_by: "String",
    #         created_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::GetBenefitApplicationOutput]
    def get_benefit_application(params = {}, options = {})
      request = build_request(:get_benefit_application, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of benefit allocations based on specified filter criteria.</p>
    # @param [Hash, Types::ListBenefitAllocationsInput] params
    # @option params [String] :catalog
    #   <p>The catalog identifier to filter benefit allocations by catalog.</p>
    # @option params [Array<String>] :fulfillment_types
    #   <p>Filter benefit allocations by specific fulfillment types.</p>
    # @option params [Array<String>] :benefit_identifiers
    #   <p>Filter benefit allocations by specific benefit identifiers.</p>
    # @option params [Array<String>] :benefit_application_identifiers
    #   <p>Filter benefit allocations by specific benefit application identifiers.</p>
    # @option params [Array<String>] :status
    #   <p>Filter benefit allocations by their current status.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of benefit allocations to return in a single response.</p>
    # @option params [String] :next_token
    #   <p>A pagination token to retrieve the next set of results from a previous request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogName", # required
    #     fulfillment_types: ["CREDITS" # One of: ["CREDITS", "CASH", "ACCESS"]],
    #     benefit_identifiers: ["BenefitId"],
    #     benefit_application_identifiers: ["BenefitApplicationIdentifier"],
    #     status: ["ACTIVE" # One of: ["ACTIVE", "INACTIVE", "FULFILLED"]],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_benefit_allocations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     benefit_allocation_summaries: [
    #       {
    #         id: "BenefitAllocationId",
    #         catalog: "CatalogName",
    #         arn: "String",
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "FULFILLED"],
    #         status_reason: "String",
    #         name: "BenefitAllocationName",
    #         benefit_id: "BenefitId",
    #         benefit_application_id: "BenefitApplicationId",
    #         fulfillment_types: ["CREDITS" # One of: ["CREDITS", "CASH", "ACCESS"]],
    #         created_at: Time.now,
    #         expires_at: Time.now,
    #         applicable_benefit_ids: ["BenefitId"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListBenefitAllocationsOutput]
    def list_benefit_allocations(params = {}, options = {})
      request = build_request(:list_benefit_allocations, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of benefit applications based on specified filter criteria.</p>
    # @param [Hash, Types::ListBenefitApplicationsInput] params
    # @option params [String] :catalog
    #   <p>The catalog identifier to filter benefit applications by catalog.</p>
    # @option params [Array<String>] :programs
    #   <p>Filter benefit applications by specific AWS partner programs.</p>
    # @option params [Array<String>] :fulfillment_types
    #   <p>Filter benefit applications by specific fulfillment types.</p>
    # @option params [Array<String>] :benefit_identifiers
    #   <p>Filter benefit applications by specific benefit identifiers.</p>
    # @option params [Array<String>] :status
    #   <p>Filter benefit applications by their current processing status.</p>
    # @option params [Array<String>] :stages
    #   <p>Filter benefit applications by their current processing stage.</p>
    # @option params [Array<Types::AssociatedResource>] :associated_resources
    #   <p>Filter benefit applications by associated AWS resources.</p>
    # @option params [Array<String>] :associated_resource_arns
    #   <p>Filter benefit applications by specific AWS resource ARNs.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of benefit applications to return in a single response.</p>
    # @option params [String] :next_token
    #   <p>A pagination token to retrieve the next set of results from a previous request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogName", # required
    #     programs: ["Program"],
    #     fulfillment_types: ["CREDITS" # One of: ["CREDITS", "CASH", "ACCESS"]],
    #     benefit_identifiers: ["BenefitId"],
    #     status: ["PENDING_SUBMISSION" # One of: ["PENDING_SUBMISSION", "IN_REVIEW", "ACTION_REQUIRED", "APPROVED", "REJECTED", "CANCELED"]],
    #     stages: ["BenefitApplicationStage"],
    #     associated_resources: [
    #       {
    #         resource_type: "OPPORTUNITY" # One of: ["OPPORTUNITY", "BENEFIT_ALLOCATION"],
    #         resource_identifier: "String",
    #         resource_arn: "Arn"
    #       }
    #     ],
    #     associated_resource_arns: ["Arn"],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_benefit_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     benefit_application_summaries: [
    #       {
    #         catalog: "CatalogName",
    #         name: "BenefitApplicationName",
    #         id: "BenefitApplicationId",
    #         arn: "String",
    #         benefit_id: "BenefitId",
    #         programs: ["Program"],
    #         fulfillment_types: ["CREDITS" # One of: ["CREDITS", "CASH", "ACCESS"]],
    #         status: "PENDING_SUBMISSION" # One of: ["PENDING_SUBMISSION", "IN_REVIEW", "ACTION_REQUIRED", "APPROVED", "REJECTED", "CANCELED"],
    #         stage: "BenefitApplicationStage",
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         benefit_application_details: {
    #           "String" => "String"
    #         },
    #         associated_resources: ["Arn"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListBenefitApplicationsOutput]
    def list_benefit_applications(params = {}, options = {})
      request = build_request(:list_benefit_applications, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of available benefits based on specified filter criteria.</p>
    # @param [Hash, Types::ListBenefitsInput] params
    # @option params [String] :catalog
    #   <p>The catalog identifier to filter benefits by catalog.</p>
    # @option params [Array<String>] :programs
    #   <p>Filter benefits by specific AWS partner programs.</p>
    # @option params [Array<String>] :fulfillment_types
    #   <p>Filter benefits by specific fulfillment types.</p>
    # @option params [Array<String>] :status
    #   <p>Filter benefits by their current status.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of benefits to return in a single response.</p>
    # @option params [String] :next_token
    #   <p>A pagination token to retrieve the next set of results from a previous request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogName", # required
    #     programs: ["Program"],
    #     fulfillment_types: ["CREDITS" # One of: ["CREDITS", "CASH", "ACCESS"]],
    #     status: ["ACTIVE" # One of: ["ACTIVE", "INACTIVE"]],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_benefits(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     benefit_summaries: [
    #       {
    #         id: "String",
    #         catalog: "CatalogName",
    #         arn: "String",
    #         name: "String",
    #         description: "String",
    #         programs: ["Program"],
    #         fulfillment_types: ["CREDITS" # One of: ["CREDITS", "CASH", "ACCESS"]],
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListBenefitsOutput]
    def list_benefits(params = {}, options = {})
      request = build_request(:list_benefits, params)
      request.send_request(options)
    end

    # <p>Retrieves all tags associated with a specific resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to list tags for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableResourceArn", # required
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
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Recalls a submitted benefit application, returning it to draft status for further modifications.</p>
    # @param [Hash, Types::RecallBenefitApplicationInput] params
    # @option params [String] :catalog
    #   <p>The catalog identifier that specifies which benefit catalog the application belongs to.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotent processing of the recall request.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the benefit application to recall.</p>
    # @option params [String] :reason
    #   <p>A descriptive reason explaining why the benefit application is being recalled.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogName", # required
    #     client_token: "String",
    #     identifier: "BenefitApplicationIdentifier", # required
    #     reason: "String", # required
    #   }
    #   options = {}
    #   response = client.recall_benefit_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RecallBenefitApplicationOutput]
    def recall_benefit_application(params = {}, options = {})
      request = build_request(:recall_benefit_application, params)
      request.send_request(options)
    end

    # <p>Submits a benefit application for review and processing by AWS.</p>
    # @param [Hash, Types::SubmitBenefitApplicationInput] params
    # @option params [String] :catalog
    #   <p>The catalog identifier that specifies which benefit catalog the application belongs to.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the benefit application to submit.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogName", # required
    #     identifier: "BenefitApplicationIdentifier", # required
    #   }
    #   options = {}
    #   response = client.submit_benefit_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SubmitBenefitApplicationOutput]
    def submit_benefit_application(params = {}, options = {})
      request = build_request(:submit_benefit_application, params)
      request.send_request(options)
    end

    # <p>Adds or updates tags for a specified resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to add tags to.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of key-value pairs to add as tags to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableResourceArn", # required
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
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes specified tags from a resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableResourceArn", # required
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

    # <p>Updates an existing benefit application with new information while maintaining revision control.</p>
    # @param [Hash, Types::UpdateBenefitApplicationInput] params
    # @option params [String] :catalog
    #   <p>The catalog identifier that specifies which benefit catalog the application belongs to.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotent processing of the update request.</p>
    # @option params [String] :name
    #   <p>The updated human-readable name for the benefit application.</p>
    # @option params [String] :description
    #   <p>The updated detailed description of the benefit application.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the benefit application to update.</p>
    # @option params [String] :revision
    #   <p>The current revision number of the benefit application to ensure optimistic concurrency control.</p>
    # @option params [JSON] :benefit_application_details
    #   <p>Updated detailed information and requirements specific to the benefit being requested.</p>
    # @option params [Array<Types::Contact>] :partner_contacts
    #   <p>Updated contact information for partner representatives responsible for this benefit application.</p>
    # @option params [Array<Types::FileInput>] :file_details
    #   <p>Updated supporting documents and files attached to the benefit application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogName", # required
    #     client_token: "String", # required
    #     name: "BenefitApplicationName",
    #     description: "BenefitApplicationDescription",
    #     identifier: "BenefitApplicationIdentifier", # required
    #     revision: "String", # required
    #     benefit_application_details: ""null"",
    #     partner_contacts: [
    #       {
    #         email: "ContactEmail",
    #         first_name: "ContactFirstName",
    #         last_name: "ContactLastName",
    #         business_title: "String",
    #         phone: "ContactPhone"
    #       }
    #     ],
    #     file_details: [
    #       {
    #         file_uri: "FileURI", # required
    #         business_use_case: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_benefit_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "BenefitApplicationId",
    #     arn: "String",
    #     revision: "String"
    #   }
    # @return [Types::UpdateBenefitApplicationOutput]
    def update_benefit_application(params = {}, options = {})
      request = build_request(:update_benefit_application, params)
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
      context[:gem_name] = 'aws-sdk-partnercentralbenefits'
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
