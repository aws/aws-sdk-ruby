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
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::MarketplaceAgreement
  # An API client for Aws::MarketplaceAgreement.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSMPCommerceServiceV20200301

    add_plugin(::Aws::MarketplaceAgreement::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::MarketplaceAgreement::EndpointProvider)
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
    #       offer_id: "OfferId"
    #     },
    #     status: "ACTIVE" # One of: ["ACTIVE", "ARCHIVED", "CANCELLED", "EXPIRED", "RENEWED", "REPLACED", "ROLLED_BACK", "SUPERSEDED", "TERMINATED"]
    #   }
    # @return [Types::DescribeAgreementOutput]
    def describe_agreement(params = {}, options = {})
      request = build_request(:describe_agreement, params)
      request.send_request(options)
    end

    # <p>Obtains details about the terms in an agreement that you participated in as proposer or
    #          acceptor.</p>
    #          <p>The details include:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>TermType</code> – The type of term, such as <code>LegalTerm</code>,
    #                   <code>RenewalTerm</code>, or <code>ConfigurableUpfrontPricingTerm</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>TermID</code> – The ID of the particular term, which is common between offer
    #                and agreement.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>TermPayload</code> – The key information contained in the term, such as the
    #                EULA for <code>LegalTerm</code> or pricing and dimensions for various pricing terms,
    #                such as <code>ConfigurableUpfrontPricingTerm</code> or
    #                   <code>UsageBasedPricingTerm</code>.</p>
    #             </li>
    #          </ul>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>Configuration</code> – The buyer/acceptor's selection at the time of
    #                agreement creation, such as the number of units purchased for a dimension or setting
    #                the <code>EnableAutoRenew</code> flag.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::GetAgreementTermsInput] params
    # @option params [String] :agreement_id
    #   <p>The unique identifier of the agreement.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of agreements to return in the response.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start pagination</p>
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
    #         refund_policy: "BoundedString"
    #       },
    #       renewal_term: {
    #         type: "UnversionedTermType",
    #         configuration: {
    #           enable_auto_renew: false, # required
    #         }
    #       },
    #       usage_based_pricing_term: {
    #         type: "UnversionedTermType",
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
    #         type: "UnversionedTermType"
    #       },
    #       recurring_payment_term: {
    #         type: "UnversionedTermType",
    #         currency_code: "CurrencyCode",
    #         billing_period: "BoundedString",
    #         price: "BoundedString"
    #       },
    #       validity_term: {
    #         type: "UnversionedTermType",
    #         agreement_duration: "BoundedString",
    #         agreement_start_date: Time.now,
    #         agreement_end_date: Time.now
    #       },
    #       payment_schedule_term: {
    #         type: "UnversionedTermType",
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
    #         currency_code: "CurrencyCode",
    #         duration: "BoundedString",
    #         price: "BoundedString",
    #         grants: [
    #           {
    #             dimension_key: "BoundedString",
    #             max_quantity: 1
    #           }
    #         ]
    #       }
    #     }],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetAgreementTermsOutput]
    def get_agreement_terms(params = {}, options = {})
      request = build_request(:get_agreement_terms, params)
      request.send_request(options)
    end

    # <p>Searches across all agreements that a proposer or an acceptor has in AWS Marketplace. The search returns a list of agreements with basic agreement information.</p>
    #          <p>The following filter combinations are supported:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>PartyType</code> as <code>Proposer</code> + <code>AgreementType</code> +
    #                   <code>ResourceIdentifier</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>PartyType</code> as <code>Proposer</code> + <code>AgreementType</code> +
    #                   <code>OfferId</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>PartyType</code> as <code>Proposer</code> + <code>AgreementType</code> +
    #                   <code>AcceptorAccountId</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>PartyType</code> as <code>Proposer</code> + <code>AgreementType</code> +
    #                   <code>Status</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>PartyType</code> as <code>Proposer</code> + <code>AgreementType</code> +
    #                   <code>ResourceIdentifier</code> + <code>Status</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>PartyType</code> as <code>Proposer</code> + <code>AgreementType</code> +
    #                   <code>OfferId</code> + <code>Status</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>PartyType</code> as <code>Proposer</code> + <code>AgreementType</code> +
    #                   <code>AcceptorAccountId</code> + <code>Status</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>PartyType</code> as <code>Proposer</code> + <code>AgreementType</code> +
    #                   <code>ResourceType</code> + <code>Status</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>PartyType</code> as <code>Proposer</code> + <code>AgreementType</code> +
    #                   <code>AcceptorAccountId</code> + <code>ResourceType</code> +
    #                <code>Status</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>PartyType</code> as <code>Proposer</code> + <code>AgreementType</code> +
    #                   <code>AcceptorAccountId</code> + <code>OfferId</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>PartyType</code> as <code>Proposer</code> + <code>AgreementType</code> +
    #                   <code>AcceptorAccountId</code> + <code>OfferId</code> + <code>Status</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>PartyType</code> as <code>Proposer</code> + <code>AgreementType</code> +
    #                   <code>AcceptorAccountId</code> + <code>ResourceIdentifier</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>PartyType</code> as <code>Proposer</code> + <code>AgreementType</code> +
    #                   <code>AcceptorAccountId</code> + <code>ResourceIdentifier</code> +
    #                   <code>Status</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>PartyType</code> as <code>Proposer</code> + <code>AgreementType</code> +
    #                   <code>AcceptorAccountId</code> + <code>ResourceType</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::SearchAgreementsInput] params
    # @option params [String] :catalog
    #   <p>The catalog in which the agreement was created.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>The filter name and value pair used to return a specific list of results.</p>
    #            <p>The following filters are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ResourceIdentifier</code> – The unique identifier of the resource.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResourceType</code> – Type of the resource, which is the product
    #                     (<code>AmiProduct</code>, <code>ContainerProduct</code>, or
    #                     <code>SaaSProduct</code>).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PartyType</code> – The party type (either <code>Acceptor</code> or
    #                     <code>Proposer</code>) of the caller. For agreements where the caller is the
    #                  proposer, use the <code>Proposer</code> filter. For agreements where the caller is
    #                  the acceptor, use the <code>Acceptor</code> filter.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AcceptorAccountId</code> – The AWS account ID of the party accepting the
    #                  agreement terms.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OfferId</code> – The unique identifier of the offer in which the terms are
    #                  registered in the agreement token.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code> – The current status of the agreement. Values include
    #                     <code>ACTIVE</code>, <code>ARCHIVED</code>, <code>CANCELLED</code>,
    #                     <code>EXPIRED</code>, <code>RENEWED</code>, <code>REPLACED</code>, and
    #                     <code>TERMINATED</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BeforeEndTime</code> – A date used to filter agreements with a date before
    #                  the <code>endTime</code> of an agreement.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AfterEndTime</code> – A date used to filter agreements with a date after the
    #                     <code>endTime</code> of an agreement.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AgreementType</code> – The type of agreement. Values include
    #                     <code>PurchaseAgreement</code> or <code>VendorInsightsAgreement</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Types::Sort] :sort
    #   <p>An object that contains the <code>SortBy</code> and <code>SortOrder</code>
    #            attributes.</p>
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
    #           offer_id: "OfferId"
    #         },
    #         status: "ACTIVE" # One of: ["ACTIVE", "ARCHIVED", "CANCELLED", "EXPIRED", "RENEWED", "REPLACED", "ROLLED_BACK", "SUPERSEDED", "TERMINATED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::SearchAgreementsOutput]
    def search_agreements(params = {}, options = {})
      request = build_request(:search_agreements, params)
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
    end
  end
end
